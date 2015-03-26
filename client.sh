#!/bin/bash
#usage: ./client.sh [key] [message]
#example: ./client.sh 4e9f "This is my message"
#message is the message to be sent to the sign
#key is the 4 character hex key. It changes once in awhile so don't forget to check the key file for it.
#this script sets the message timer to 30 minutes so the message will be deleted from the sign after 30 minutes has passed

key=\"$1\"
message=\"$2\"
json="{\"key\":$key,\"message\":$message,\"timer\":\"30m\"}"

curl -s -d "$json" localhost:8080/message/new

echo
