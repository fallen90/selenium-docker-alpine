FROM fallen90/selenium-alpine-node-base

ENV SELENIUM_PORT 4444

EXPOSE ${SELENIUM_PORT}

RUN apk --no-cache add \
        chromium \
        chromium-chromedriver

COPY create-entrypoint.sh ${SELENIUM_DIR}

RUN ./create-entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]