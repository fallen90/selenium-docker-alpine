FROM fallen90/selenium-alpine-base

ENV SELENIUM_HUB_PORT 4444

EXPOSE ${SELENIUM_HUB_PORT}

COPY entrypoint.sh ${SELENIUM_DIR}
ENTRYPOINT ["./entrypoint.sh"]
