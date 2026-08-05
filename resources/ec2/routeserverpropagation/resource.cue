package routeserverpropagation

import "github.com/brianterry/cfn-cue-modules/cfn"

// VPC Route Server Propagation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::RouteServerPropagation"
	Properties: #Properties
}
