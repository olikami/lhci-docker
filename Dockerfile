FROM node:14-alpine

RUN apk add --no-cache chromium && npm install -g @lhci/cli@0.7.2

RUN addgroup lhci \
    && adduser --disabled-password --gecos "" --home /home/lhci --ingroup lhci lhci

USER lhci
WORKDIR /home/lhci

CMD ["lhci","healthcheck"]