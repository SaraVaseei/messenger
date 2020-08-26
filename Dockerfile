FROM python:3.6
ENV PYTHONUNBUFFERED 1
RUN mkdir /chatroom
WORKDIR /chatroom
ADD requirements.txt /chatroom/
RUN pip install --upgrade pip && pip install -r requirements.txt
RUN pip install mysqlclient
ADD . /chatroom/