package project

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SageMaker::Project
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::Project"
	Properties: #Properties
}
