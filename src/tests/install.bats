# Runs prior to every test
setup() {
    # Load our script file.
    source ./src/scripts/greet.sh
}

@test '1: Greet the world' {
    # Capture the output of our "Greet" function
    Greet

    [ -f 'bin/omn' ]
}
