#!/bin/bash
env
echo "$(date) building"
if [[ $TRAVIS_JOB_NUMBER =~ \.1$ ]]; then
    echo "$(date) build OK"
    exit 0
fi
sleep 20
echo "$(date) build FAIL: do not deploy"
exit 1
