Dockerized aws-cli
======

This [docker-alpine](https://hub.docker.com/r/library/alpine/) based image wraps the [AWS CLI](http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html) application.
Hosted on [hub.docker.com](https://hub.docker.com/r/jonnie/awscli/)

### Quick Start:

    docker run \
      --rm \
      -it \
      -e AWS_DEFAULT_REGION="us-east-1" \
      -e AWS_ACCESS_KEY_ID="${AWS_ACCESS_KEY_ID}" \
      -e AWS_SECRET_ACCESS_KEY="${AWS_SECRET_ACCESS_KEY}" \
      jonnie/awscli cloudwatch put-metric-data --metric-name ExampleCustomMetricsCounter --namespace "ExampleCustomMetrics" --value 1.57 --timestamp $(date --utc -Ins)
