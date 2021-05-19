FROM ubuntu
RUN apt-get update && apt-get install -y curl build-essential file
COPY build.sh  ./
RUN ./build.sh
