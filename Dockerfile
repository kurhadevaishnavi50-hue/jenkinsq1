FROM 		openjdk:17-jdk-headless
WORKDIR 	/app
COPY 		Hello.java .
RUN 		javac Hello.java
CMD 		["java", "Hello"]


