FROM alpine:3.10
RUN wget https://github.com/QuickBase/quickbase-cli/releases/download/v0.2.6/quickbase-cli_amd64.apk
RUN apk add --allow-untrusted quickbase-cli_amd64.apk
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]