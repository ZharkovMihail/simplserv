FROM python:3

COPY echo-server /

EXPOSE 65432

ENTRYPOINT ["python", "echo-server"]
