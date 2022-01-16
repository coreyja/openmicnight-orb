InstallWithTarget() {
  load ./src/scripts/install.sh

  if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    export TARGET="x86_64-unknown-linux-musl"
  elif [[ "$OSTYPE" == "darwin"* ]]; then
    export TARGET="x86_64-apple-darwin"
  fi

  Install
}
