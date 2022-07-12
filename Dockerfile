

# Alpine is chosen for its small footprint
# compared to Ubuntu
# FROM golang:1.16-alpine3.15
#WORKDIR /app
# Download necessary Go modules
#COPY go.mod ./
#COPY go.sum ./
#RUN go mod download
#COPY *.go ./
#RUN go build -o /docker-gs-ping
#EXPOSE 8080
#CMD [ "/docker-gs-ping" ]

# build nje image ne dockerfile dhe beje pull ne docker. Hidhe ne gitlab
FROM node:17-alpine

WORKDIR /app

COPY . .

RUN npm install

EXPOSE 4000

CMD [ "node", "app.js" ]
