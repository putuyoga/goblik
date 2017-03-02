FROM golang:latest
#ENV http_proxy "http://10.0.2.2:3128"
#ENV https_proxy "http://10.0.2.2:3128"
#RUN git config --global http.proxy http://10.0.2.2:3128
#RUN git config --global https.proxy http://10.0.2.2:3128
RUN mkdir /app 
ADD . /app/ 
WORKDIR /app
RUN go get -u github.com/gorilla/mux 
RUN go build
EXPOSE 8080
CMD ["/app/app"]
