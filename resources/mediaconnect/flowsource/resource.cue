package flowsource

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::MediaConnect::FlowSource
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaConnect::FlowSource"
	Properties: #Properties
}
