FROM        golang:1.13.5-alpine

RUN         apk update && apk upgrade && \
            apk add --no-cache bash git make curl openssh-client

RUN         go get github.com/astaxie/beego/migration && \
            go get github.com/astaxie/beego/orm && \
            go get github.com/go-sql-driver/mysql && \
            go get github.com/lib/pq
