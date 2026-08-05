package app

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SageMaker::App
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::App"
	Properties: #Properties
}
