package flow

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::MediaConnect::Flow
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaConnect::Flow"
	Properties: #Properties
}
