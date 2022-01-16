Setup() {
  if [ -n "$HOST" ]; then
    echo "Configuring with host: $HOST"
    bin/omn config set host "$HOST"
  fi

  if [ -n "$ACCOUNT_ID" ]; then
    echo "Configuring with account id: $ACCOUNT_ID"
    bin/omn config set account_id "$ACCOUNT_ID"
  fi

  if [ -n "$API_TOKEN" ]; then
    echo "Setting API Token: *****"
    bin/omn config set token "$API_TOKEN"
  fi
}

# Will not run if sourced for bats-core tests.
# View src/tests for more information.
ORB_TEST_ENV="bats-core"
if [ "${0#*$ORB_TEST_ENV}" == "$0" ]; then
    Setup
fi
