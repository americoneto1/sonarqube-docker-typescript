FROM sonarqube:6.5-alpine

#https://github.com/Pablissimo/SonarTsPlugin
ADD sonar-typescript-plugin-1.1.0.jar /opt/sonarqube/extensions/plugins/

RUN apk add --update nodejs nodejs-npm && \
  npm install -g typescript@2.9.2 tslint@5.11.0