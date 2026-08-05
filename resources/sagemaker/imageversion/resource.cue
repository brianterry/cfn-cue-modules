package imageversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SageMaker::ImageVersion
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::ImageVersion"
	Properties: #Properties
}
