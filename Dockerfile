FROM maven:3-jdk-8

RUN useradd -m smartcheck

USER smartcheck

COPY --chown=smartcheck:smartcheck . /home/smartcheck/smartcheck

WORKDIR /home/smartcheck/smartcheck

RUN mvn clean package

ENTRYPOINT ["java", "target/smartcheck-2.1-SNAPSHOT-jar-with-dependencies.jar"]
