Install() {
  echo "Downloading latest version of OpenMicNight CLI..."

  local latestVersion
  local target
  local downloadHost

  downloadHost=${DOWNLOAD_HOST:-'https://downloads.openmicnight.dev/cli/'}
  target=${TARGET:-'x86_64-unknown-linux-musl'}

  echo "Configured download host: ${downloadHost}"
  echo "Configured target: ${target}"

  latestVersion=$(curl -s "$downloadHost/latest")

  echo "Latest Version is \"$latestVersion\""
  echo "Downloading now"

  mkdir -p bin
  curl -s "$downloadHost/versions/${latestVersion}/${target}/omn" -o bin/omn
  chmod +x bin/omn
}

# Will not run if sourced for bats-core tests.
# View src/tests for more information.
ORB_TEST_ENV="bats-core"
if [ "${0#*$ORB_TEST_ENV}" == "$0" ]; then
    Install
fi
