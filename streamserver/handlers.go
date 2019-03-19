package main

import (
	"net/http"
	"github.com/julienschmidt/httprouter"
	"os"
	"time"
	"io/ioutil"
	"io"
	"html/template"
)

func streamHandler(w http.ResponseWriter,r *http.Request,p httprouter.Params){
	vid:=p.ByName("vid-id")
	vl:=VIDEO_DIR+vid
	vidoe,err:=os.Open(vl)
	if err!=nil{
		sendErrorResponse(w,http.StatusInternalServerError," inner err.")
	   return
	}
	w.Header().Set("Content_Type","video/mp4")
	http.ServeContent(w,r,"",time.Now(),vidoe)
	defer vidoe.Close()
}

func uploadHandler(w http.ResponseWriter,r *http.Request,p httprouter.Params){
	r.Body=http.MaxBytesReader(w,r.Body,MAX_UPLOAD_SIZE)
	if err:=r.ParseMultipartForm(MAX_UPLOAD_SIZE);err!=nil{
		sendErrorResponse(w,http.StatusBadRequest,"bad request file is too big")
		return
	}
	file,_,err:=r.FormFile("file")
	if err !=nil{
		sendErrorResponse(w,http.StatusInternalServerError,"read form err")
		return
	}
	data,err:=ioutil.ReadAll(file)
	if err!=nil{
	   sendErrorResponse(w,http.StatusInternalServerError," ioutil err")
	}
	filename:=p.ByName("vid-id")
	err=ioutil.WriteFile(VIDEO_DIR+filename,data,0666)
	if err!=nil{
		sendErrorResponse(w,http.StatusInternalServerError,"write err")
	}
	w.WriteHeader(http.StatusCreated)
    io.WriteString(w,"upload succesfully.")


}

func testPageHandler(w http.ResponseWriter,r *http.Request ,p httprouter.Params){
	t,_:=template.ParseFiles(HTML_DIR+"upload.html")
	t.Execute(w,nil)

//////////////////////
}