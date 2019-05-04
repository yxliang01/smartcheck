FROM maven

RUN useradd -m smartcheck

USER smartcheck

COPY --chown=smartcheck:smartcheck . /home/smartcheck/smartcheck

WORKDIR /home/smartcheck/smartcheck

RUN mvn clean package

ENTRYPOINT ["java", "target/smartcheck-2.0-SNAPSHOT-jar-with-dependencies.jar"]
