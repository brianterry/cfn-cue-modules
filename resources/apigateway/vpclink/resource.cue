package vpclink

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::ApiGateway::VpcLink`` resource creates an API Gateway VPC link for a REST API to access resources in an Amazon Virtual Private Cloud (VPC). For more information, see [vpclink:create](https://docs.aws.amazon.com/apigateway/latest/api/API_CreateVpcLink.html) in the ``Amazon API Gateway REST API Reference``.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApiGateway::VpcLink"
	Properties: #Properties
}
