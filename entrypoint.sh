#!/bin/sh -l

CONSUMER_KEY=$1
ACCESS_TOKEN=$2
FILE_NAME=$3

curl --location --request POST 'https://getpocket.com/v3/get' --header 'Content-Type: application/json' --data-binary '{"consumer_key": "'"${CONSUMER_KEY}"'","access_token": "'"${ACCESS_TOKEN}"'", "detailType":"complete"}' > ${FILE_NAME}