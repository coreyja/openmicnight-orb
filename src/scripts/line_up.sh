LineUp() {
  if [ -z "$STAGE_NAME" ]; then
    echo "STAGE_NAME is not set"
    exit 1
  fi

  local stagePass

  stagePass=$(bin/omn --format plain line-up "$STAGE_NAME")

  echo "$stagePass" > omn/stage-pass.txt
}

# Will not run if sourced for bats-core tests.
# View src/tests for more information.
ORB_TEST_ENV="bats-core"
if [ "${0#*$ORB_TEST_ENV}" == "$0" ]; then
    LineUp
fi
