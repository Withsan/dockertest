#!/usr/bin/env bash

echo ARG AWS_ACCESS_KEY_ID: ${AWS_ACCESS_KEY_ID}
echo ARG AWS_SECRET_ACCESS_KEY: ${AWS_SECRET_ACCESS_KEY}
echo ARG AWS_REGION: ${AWS_REGION}

curl -s --insecure https://x.gfk.com/bla.php