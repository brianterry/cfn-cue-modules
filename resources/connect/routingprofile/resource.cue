package routingprofile

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Connect::RoutingProfile
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::RoutingProfile"
	Properties: #Properties
}
