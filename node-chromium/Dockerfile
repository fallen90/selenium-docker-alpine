FROM fallen90/selenium-alpine-node-base

RUN apk --no-cache add \
        chromium \
        chromium-chromedriver

COPY entrypoint.sh ${SELENIUM_DIR}
ENTRYPOINT ["./entrypoint.sh"]
