FROM arm32v6/alpine:edge

LABEL AUTHOR=Junv<wahyd4@gmail.com>

RUN apk update && apk add wget bash gnupg --no-cache

WORKDIR /app

#AriaNg
RUN wget -N --no-check-certificate https://github.com/liuzhuoling2011/baidupcs-web/releases/download/3.6.1/BaiduPCS-Go-3.6.1-linux-arm.zip \
 && unzip BaiduPCS-Go-3.6.1-linux-arm.zip && rm BaiduPCS-Go-3.6.1-linux-arm.zip \
 && cd BaiduPCS-Go-3.6.1-linux-arm \
 && mv BaiduPCS-Go .. && cd .. \
 && mv BaiduPCS-Go baidupcs \
 && chmod +x baidupcs

EXPOSE 5299

CMD "/app/baidupcs"


