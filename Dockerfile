FROM python:3

COPY  /var/log/server.log  echo-server ./

EXPOSE 65432

ENTRYPOINT ["python3", "echo-server"]
