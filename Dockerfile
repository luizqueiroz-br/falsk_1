FROM debian:latest

LABEL maintainer="Testes"


RUN apt upgrade && apt update && apt install git python3 python3-pip -y

RUN pip3 install flask


RUN git clone https://github.com/luizqueiroz-br/falsk_1.git

WORKDIR falsk_1

EXPOSE 5000

CMD ["servidor.py"]
ENTRYPOINT ["python3"]

