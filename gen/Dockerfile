#FROM vwalia/docker-openjdk8-ubuntu-18.04
#ENV LANG C.UTF-8
#COPY . /app
#RUN cp /app/sources.list /etc/apt/sources.list
#RUN apt-get -y update
#RUN apt-get -y upgrade
#RUN apt-get -y install ruby
#RUN apt-get -y install python python-dev python2.7 python2.7-dev python-pip virtualenv libssl-dev libpq-dev git build-essential libfontconfig1 libfontconfig1-dev
#RUN echo 'Acquire::https::repository.walmart.com::Verify-Peer "false";' > /etc/apt/apt.conf
#RUN pip install -r requirements.txt
#RUN python apache-fake-log-gen.py -n 0 -o LOG
FROM vwalia/docker-openjdk8-ubuntu-18.04
COPY . /app
EXPOSE 8080
CMD sh /app/dummyLogs.sh
