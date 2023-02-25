apt-get -qq update && apt-get -qq install zip
sleep 10s

curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

sdk version
sdk install java
sdk install springboot
