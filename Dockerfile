FROM node:14-alpine

RUN apk add --no-cache chromium && npm install -g @lhci/cli@0.7.2


CMD ["lhci","healthcheck"]