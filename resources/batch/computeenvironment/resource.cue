package computeenvironment

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Batch::ComputeEnvironment
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Batch::ComputeEnvironment"
	Properties: #Properties
}
