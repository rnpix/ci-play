#!/bin/bash
set -eou pipefail
d=$PWD
chown -R vagrant: .
exec su - vagrant <<EOF
cd '$d'
pip install -e .
pykern test
EOF
