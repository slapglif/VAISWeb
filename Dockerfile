FROM ubuntu:14.04
RUN apt-get update -y
RUN apt-get install -y python3-pip python3-setuptools python3 build-essential sqlite3 libsqlite3-dev bcrypt libffi-dev libssl-dev python-dev
RUN easy_install3 pip
COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt
RUN export TERM=xterm
ENTRYPOINT ["python3"]
CMD ["VegaWeb.py"]
