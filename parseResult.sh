#!/usr/bin/env bash
mvn compile
mvn exec:exec -Dexec.executable="java" -Dexec.args="-classpath %classpath -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=8040 result.ResultParser"
cat results.txt
