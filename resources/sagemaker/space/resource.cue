package space

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SageMaker::Space
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::Space"
	Properties: #Properties
}
