FROM openjdk:8

WORKDIR /usr/app/bin

ENV PORT 6000

COPY /target/classes /usr/app/bin/classes
COPY /target/dependency /usr/app/bin/dependency

CMD ["java","-cp","./classes:./dependency/*","co.edu.escuelaing.SparkWebServer"]