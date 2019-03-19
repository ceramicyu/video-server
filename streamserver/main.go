package main

import (
  "io"
  "net/http"
)

func main(){
  http.HandleFunc("/user", func(writer http.ResponseWriter, request *http.Request) {
    io.WriteString(writer,"this a user page")
  })
  http.ListenAndServe(":80",nil)
}
