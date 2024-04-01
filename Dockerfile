FROM alpine:lates
run apk --no-cache add openjdk17
EXPOSE 8091
ADD target/devops_project.jar devops_project.jar
ENTRYPOINT ["java", "-jar", "/devops_project.jar"]