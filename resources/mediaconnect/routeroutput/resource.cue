package routeroutput

import "github.com/brianterry/cfn-cue-modules/cfn"

// Represents a router input in AWS Elemental MediaConnect that can be used to egress content transmitted from router inputs
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaConnect::RouterOutput"
	Properties: #Properties
}
