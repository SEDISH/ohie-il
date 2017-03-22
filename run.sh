#!/bin/bash

: ${IL_IMPORT_CERT=false}
: ${IL_CERT_PATH=/var/openhim/server.crt}
: ${IL_KEY_PATH=/var/openhim/server.key}

export IL_IMPORT_CERT
export IL_CERT_PATH
export IL_KEY_PATH

/utils/replace-vars /etc/openhim/core.json

openhim-core --conf=/etc/openhim/core.json --cluster=auto
