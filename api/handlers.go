package api

import (
	"net/http"
	"github.com/julienschmidt/httprouter"
	"io"
)

func CreateUser(w http.ResponseWriter ,r *http.Request ,p httprouter.Params)  {
	io.WriteString(w,"hhhhhhhh88888")
}
func Login(w http.ResponseWriter ,r *http.Request ,p httprouter.Params){

}
