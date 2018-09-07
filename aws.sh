#!/bin/bash
# source https://github.com/jonniedarko/docker-awscli
if [ -f "${HOME}/.aws/credentials.sh" ]; then
  source ${HOME}/.aws/credentials.sh
fi

if [[ "$(docker images -q jonnie/awscli:1.16.9 2> /dev/null)" == "" ]]; then
  # should only happen first time but needs to be silenced
  # to prevent output that would cause issues with caller
  docker pull jonnie/awscli:1.16.9 > /dev/null
fi


docker run \
  --rm \
  -it \
  -e AWS_DEFAULT_REGION="us-east-1" \
  -e AWS_ACCESS_KEY_ID="${AWS_ACCESS_KEY_ID}" \
  -e AWS_SECRET_ACCESS_KEY="${AWS_SECRET_ACCESS_KEY}" \
  jonnie/awscli:1.16.9 "$@"
