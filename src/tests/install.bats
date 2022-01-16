# Runs prior to every test
setup() {
    # Load our script file.
    source ./src/scripts/install.sh
}

teardown() {
  rm -rf bin
}

@test '1: Install the OpenMicNight CLI tool' {
    # Capture the output of our "Greet" function
    Install

    [ -f 'bin/omn' ]
}
