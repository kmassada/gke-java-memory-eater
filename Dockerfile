FROM openjdk:8-jdk-slim AS build-env
ADD . /app/
WORKDIR /app
RUN javac ./*.java
RUN jar cfe main.jar MemoryEater ./*.class 

FROM gcr.io/distroless/java
COPY --from=build-env /app /app
WORKDIR /app
CMD ["main.jar"]