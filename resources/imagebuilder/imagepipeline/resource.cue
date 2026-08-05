package imagepipeline

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ImageBuilder::ImagePipeline
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ImageBuilder::ImagePipeline"
	Properties: #Properties
}
