from jenkins/jenkins:lts

# Distributed Builds plugins
RUN /usr/local/bin/install-plugins.sh ssh-slaves \
 && /usr/local/bin/install-plugins.sh email-ext \
 && /usr/local/bin/install-plugins.sh mailer \
 && /usr/local/bin/install-plugins.sh slack \
 && /usr/local/bin/install-plugins.sh htmlpublisher \
 && /usr/local/bin/install-plugins.sh greenballs \
 && /usr/local/bin/install-plugins.sh simple-theme-plugin \
 && /usr/local/bin/install-plugins.sh kubernetes

# install Maven
USER root
RUN apt-get update && apt-get install -y coreutils curl gradle groff maven netcat screen jq unzip vim
USER jenkins
