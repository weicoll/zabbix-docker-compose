#!/bin/bash
#CropID='wx680aff590e7d2141'
#Secret='ihX_v1lSO2-XAmUAmIorGDzNaBHXIM2jemWYxlvY5dI'
CropID='ww15359fa0759e434d'
Secret='O7HW-FdcYSq4CAmg0mVp2dGr4JKmnBOqquKO0dQO9A8'
GURL="https://qyapi.weixin.qq.com/cgi-bin/gettoken?corpid=$CropID&corpsecret=$Secret" 
Gtoken=$(`which curl` -s -G $GURL | awk -F\" '{print $10}')

PURL="https://qyapi.weixin.qq.com/cgi-bin/message/send?access_token=$Gtoken"

function body() {
        local int AppID=1000002
        local UserID=
        local PartyID=$1
        Ent=$'\n'
        local Msg=$Ent$(echo "$@" | cut -d" " -f2-)
        #Msg=$Ent$msg
        printf '{\n'
        printf '\t"touser": "'"$UserID"\"",\n"
        printf '\t"toparty": "'"$PartyID"\"",\n"
        printf '\t"msgtype": "text",\n'
        printf '\t"agentid": "'" $AppID "\"",\n"
        printf '\t"text": {\n'
        printf '\t\t"content": "'"$Msg"\""\n"
        printf '\t},\n'
        printf '\t"safe":"0"\n'
        printf '}\n'
}


/usr/bin/curl --data-ascii "$(body $1 $2 $3 $4 $5 $6 $7)" $PURL
