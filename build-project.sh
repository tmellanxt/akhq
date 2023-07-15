#!/usr/bin/env sh

# Read user-defined JVM options from jvm.options file
./gradlew build || cp build/libs/*-all.jar docker/app/akhq.jar

docker build -t nexthink-akhq:latest .

docker run –p=3000:3000 nexthink-akhq:latest
