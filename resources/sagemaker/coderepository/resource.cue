package coderepository

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SageMaker::CodeRepository
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::CodeRepository"
	Properties: #Properties
}
