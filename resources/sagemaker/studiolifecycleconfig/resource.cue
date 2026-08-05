package studiolifecycleconfig

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SageMaker::StudioLifecycleConfig
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::StudioLifecycleConfig"
	Properties: #Properties
}
