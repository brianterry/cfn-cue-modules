package appimageconfig

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SageMaker::AppImageConfig
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::AppImageConfig"
	Properties: #Properties
}
