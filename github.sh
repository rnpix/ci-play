#!/bin/bash
set -eou pipefail
d=$PWD
ls -al
chown -R vagrant: .
exec su - vagrant <<EOF
set -eou pipefail
set -x
cd '$d'
ls -al
pip install -e .
pykern test
EOF
