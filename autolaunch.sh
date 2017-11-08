#!/bin/bash
COUNTER=1
while(true) do
./beyond.sh
curl "https://api.telegram.org/bot380932642:AAFetSTehR-NfMKQk-KKdD1k_sIFsATT8VU/sendmessage" -F "chat_id=331480891" -F "text=#NEWCRASH-#TeleBeyond-Reloaded-${COUNTER}-times"
let COUNTER=COUNTER+1 
done