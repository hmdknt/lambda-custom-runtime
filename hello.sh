function handler () {
    EVENT_DATA=$1

    umask 777
    unzip /tmp/hoge.zip
    # ls -lR /tmp/work/hoge


    RESPONSE="{\"statusCode\": 200, \"body\": \"Hello from Lambda!\"}"
    echo $RESPONSE | jq .statusCode
}
