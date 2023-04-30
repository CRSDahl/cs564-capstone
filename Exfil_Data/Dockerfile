FROM python:3.8-alpine

RUN pip3 install httpserver 

WORKDIR /Exfil Data

ADD index.html initial_download.sh secret_file.txt secretData.html ./

CMD python3 -m http.server 8080

EXPOSE 8080