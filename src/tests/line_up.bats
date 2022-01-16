# Runs prior to every test
setup() {
    # Load our script file.
    load install_helper.bash
    InstallWithTarget

    source ./src/scripts/line_up.sh
}

teardown() {
  rm -rf bin
}

@test '1: Without Stage Name Provided' {
    run -! LineUp

    [ "$output" = 'STAGE_NAME is not set' ]
}

@test '2: With Stage Name Provided' {
    export STAGE_NAME="test-stage"

    run -0 LineUp

    [ -f "omn/stage-pass.txt" ]
}

