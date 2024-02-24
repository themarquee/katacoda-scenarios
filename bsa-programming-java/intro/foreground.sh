#echo waiting for step1-background-script to finish
#while [ ! -f /tmp/background1 ]; do sleep 1; done
#echo BACKGROUND DONE
apt-get -y install zip \
    && curl -s "https://get.sdkman.io" | bash \
    && source "$HOME/.sdkman/bin/sdkman-init.sh" \
    && sdk version \
    && sdk install java 17.0.10-tem \
    && sdk install springboot 2.7.9 \
    && mkdir java \
    && touch java/JavaExample.groovy
