echo waiting for step1-background-script to finish
while [ ! -f /tmp/background1 ]; do sleep 1; done
echo BACKGROUND DONE

curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

sdk version
sdk install java
sdk install springboot
