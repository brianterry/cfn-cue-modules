package device

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::SageMaker::Device
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::Device"
	Properties: #Properties
}
