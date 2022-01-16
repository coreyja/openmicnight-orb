# Runs prior to every test
setup() {
    # Load our script file.
    source ./src/scripts/setup.sh
}

@test '1: Setup no-ops when no arguments are passed' {
    # Capture the output of our "Greet" function
    Setup

    [ ! -e 'omn.config.toml' ]
}
