#!/bin/bash
set -eou pipefail
d=$PWD
chown -R vagrant: .
exec su - vagrant <<EOF
set -eou pipefail
set -x
cd '$d'
pip install git+https://github.com/radiasoft/pykern.git
pip install -e .
pykern test
EOF
