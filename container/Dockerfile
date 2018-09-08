# Our app
FROM node:10

WORKDIR /app
EXPOSE 80

ENV MAILTRAIN_VERSION="1.24.0"

ADD . .

RUN chmod +x build.sh; ./build.sh

ENTRYPOINT [ "sh", "entrypoint.sh" ]