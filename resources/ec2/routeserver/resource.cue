package routeserver

import "github.com/brianterry/cfn-cue-modules/cfn"

// VPC Route Server
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::RouteServer"
	Properties: #Properties
}
