package routeserverassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// VPC Route Server Association
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::RouteServerAssociation"
	Properties: #Properties
}
