package routeserverendpoint

import "github.com/brianterry/cfn-cue-modules/cfn"

// VPC Route Server Endpoint
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::RouteServerEndpoint"
	Properties: #Properties
}
