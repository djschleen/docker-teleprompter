FROM nginx:alpine

RUN apk add git
WORKDIR /usr/share/nginx
RUN rm -rf html
RUN git clone --depth=1 https://github.com/djschleen/teleprompter.git html
RUN apk del git