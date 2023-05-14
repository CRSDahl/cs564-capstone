FROM python:3.8-alpine

RUN pip3 install httpserver 

WORKDIR /C2

COPY ["set_up_server.sh", "/docker-entrypoint.d/my-script.sh"]

ADD C2_code clean_image.png get_data.sh index.html set_code.sh mainImage.png set_up_server.sh found_secret_data.txt ./

RUN chmod 700 set_up_server.sh

RUN chmod 700 get_data.sh

RUN chmod 700 set_code.sh

CMD python3 -m http.server 8000

EXPOSE 8000 