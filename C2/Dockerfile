FROM python:3.8-alpine

RUN pip3 install httpserver 

WORKDIR /C2

ADD C2_code clean_image.png get_data.sh index.html set_code.sh test.sh secretImage.png ./

CMD python3 -m http.server 8000

EXPOSE 8000 