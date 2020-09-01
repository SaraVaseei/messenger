FROM python:3.6
ENV PYTHONUNBUFFERED 1
RUN mkdir /chatroom
WORKDIR /chatroom
ADD requirements.txt /chatroom/
RUN pip3 install --upgrade pip && pip3 install -r requirements.txt
RUN pip3 install mysqlclient
ADD . /chatroom/