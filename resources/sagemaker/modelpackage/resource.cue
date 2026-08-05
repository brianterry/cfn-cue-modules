package modelpackage

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SageMaker::ModelPackage
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::ModelPackage"
	Properties: #Properties
}
