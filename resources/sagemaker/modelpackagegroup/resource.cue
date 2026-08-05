package modelpackagegroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SageMaker::ModelPackageGroup
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::ModelPackageGroup"
	Properties: #Properties
}
