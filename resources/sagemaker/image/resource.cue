package image

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SageMaker::Image
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::Image"
	Properties: #Properties
}
