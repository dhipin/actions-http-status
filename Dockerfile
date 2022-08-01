FROM alpine:latest

LABEL version="1.0"
LABEL repository="https://github.com/dhipin/actions-http-status"
LABEL homepage="https://github.com/dhipin/actions-http-status"
LABEL maintainer="Dhipin <dhipin@dhip.in>"

RUN apk add bash curl jq

COPY entrypoint /usr/local/bin/entrypoint
RUN chmod +x /usr/local/bin/entrypoint
ENTRYPOINT ["/usr/local/bin/entrypoint"]
