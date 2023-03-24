FROM node:19-alpine

ENV ROOT "/app"

WORKDIR "$ROOT"

COPY . .

RUN mkdir allure-report
RUN mkdir allure-file

RUN npm install allure-single-html-file-js

RUN chmod +x ./entrypoint.sh
ENTRYPOINT ["/app/entrypoint.sh"]
