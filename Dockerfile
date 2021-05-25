FROM ubuntu as build
RUN apt-get update && apt-get install -y curl build-essential file
COPY build.sh  ./
RUN ./build.sh

FROM scratch
COPY --from=build /gnupg /gnupg
RUN ["/gnupg/bin/gpg", "--version"]
ENTRYPOINT ["/gnupg/bin/gpg"]
