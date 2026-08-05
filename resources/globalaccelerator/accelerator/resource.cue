package accelerator

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::GlobalAccelerator::Accelerator
#Resource: cfn.#ResourceBase & {
	Type: "AWS::GlobalAccelerator::Accelerator"
	Properties: #Properties
}
