package vpclink

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::ApiGatewayV2::VpcLink`` resource creates a VPC link. This VPC link can be used with both REST and HTTP APIs. The VPC link status must transition from ``PENDING`` to ``AVAILABLE`` to successfully create a VPC link, which can take up to 10 minutes. To learn more, see [Working with VPC Links for HTTP APIs](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-vpc-links.html) in the *API Gateway Developer Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ApiGatewayV2::VpcLink"
	Properties: #Properties
}
