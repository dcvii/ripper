
now=`date -u`
tokenTime=`date -ujv +1d`
if [ -z "${TOKEN_TIMEOUT}" ]; then
    echo "setting token"
    export TOKEN_TIMEOUT=$tokenTime
    aws sts get-session-token > token.json
    export AWS_ACCESS=`cat token.json|jq .Credentials.AccessKeyId`
    export AWS_SECRET=`cat token.json|jq .Credentials.SecretAccessKey`
    export AWS_TOKEN=`cat token.json|jq .Credentials.SessionToken`
elif
    [ ${TOKEN_TIMEOUT} -lt $now ]; then
    echo "reset"
    export TOKEN_TIMEOUT=`date -ujv +1d`
    aws sts get-session-token > token.json
    export AWS_ACCESS=`cat token.json|jq .Credentials.AccessKeyId`
    export AWS_SECRET=`cat token.json|jq .Credentials.SecretAccessKey`
    export AWS_TOKEN=`cat token.json|jq .Credentials.SessionToken`

else
    echo "token still good"
fi



