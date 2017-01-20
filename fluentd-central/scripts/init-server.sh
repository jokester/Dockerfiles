#!/bin/bash

set -ue

# initialize a self-signed CA (private key and
DATA_ROOT=$PWD/data

# const for ca
CA_ROOT=$DATA_ROOT/ca
CA_KEY=$CA_ROOT/ca-key.pem
CA_CERT=$CA_ROOT/ca-cert.pem
CA_TEMPLATE=$CA_ROOT/template

certtool-template () {
echo "
expiration_days=36524
cn=Log-central
uri=https://github.com/jokester/Dockerfiles
ca
cert_signing_key
crl_signing_key
"
}

# initialize a self-signed CA
init-ca () {
  if false && [[ -r $CA_CERT ]]; then
    echo CA already initialized
  else
    echo Initializing CA
    rm -rf $CA_ROOT
    mkdir -pv $CA_ROOT
    certtool-template > $CA_TEMPLATE
    certtool --generate-privkey --sec-param=high --outfile $CA_KEY
    certtool --generate-self-signed --load-privkey $CA_KEY --outfile $CA_CERT --template=$CA_TEMPLATE
    chmod -v 0400 $CA_KEY
    chmod -v 0444 $CA_CERT
  fi

}

init-server-id () {
  local


}

init-ca
init-server-id
