# Use a Tomcat image with JDK 21 support
FROM tomcat:10.1-jdk21-temurin

# Remove default apps (optional)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR to Tomcat’s webapps directory
COPY target/05-spring-mvc-starter.war /usr/local/tomcat/webapps/spring-mvc.war

# Expose port
EXPOSE 8080

# No need for ENTRYPOINT; Tomcat will auto-deploy
