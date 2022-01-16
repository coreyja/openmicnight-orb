Install() {
  local latestVersion=$(curl -s https://f004.backblazeb2.com/file/open-mic-night-downloads/cli/latest)
  local target=${TARGET:-'x86_64-unknown-linux-musl'}

  mkdir -p bin
  curl -s https://f004.backblazeb2.com/file/open-mic-night-downloads/cli/versions/${latestVersion}/${target}/omn -o bin/omn
}

# Will not run if sourced for bats-core tests.
# View src/tests for more information.
ORB_TEST_ENV="bats-core"
if [ "${0#*$ORB_TEST_ENV}" == "$0" ]; then
    Install
fi
