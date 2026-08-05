package resourcepolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Kinesis::ResourcePolicy
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Kinesis::ResourcePolicy"
	Properties: #Properties
}
