#!/bin/bash

localstack_endpoint_url="http://localhost:4566"

aws --endpoint-url=$localstack_endpoint_url s3 mb \
    "s3://one" \
    --region "us-east-2" | cat -

aws --endpoint-url=$localstack_endpoint_url s3 mb \
    "s3://two" \
    --region "us-east-2" | cat -

aws --endpoint-url=$localstack_endpoint_url s3 mb \
    "s3://three" \
    --region "us-east-2" | cat -

aws --endpoint-url=$localstack_endpoint_url s3 mb \
    "s3://four" \
    --region "us-east-2" | cat -

aws --endpoint-url=$localstack_endpoint_url s3 mb \
    "s3://five" \
    --region "us-east-2" | cat -