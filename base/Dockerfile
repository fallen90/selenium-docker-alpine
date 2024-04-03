FROM alpine:3.18

ARG SELENIUM_JAR_URL=https://github.com/SeleniumHQ/selenium/releases/download/selenium-4.19.0/selenium-server-4.19.0.jar

ENV SELENIUM_DIR /selenium
ENV SELENIUM_JAR selenium-server-standalone.jar
ENV SELENIUM_JAR_URL ${SELENIUM_JAR_URL}

WORKDIR ${SELENIUM_DIR}

RUN apk --no-cache add \
        curl java-cacerts openjdk17-jdk && \
        curl -L ${SELENIUM_JAR_URL} -o ${SELENIUM_DIR}/${SELENIUM_JAR}

COPY stop_trap.sh ${SELENIUM_DIR}
