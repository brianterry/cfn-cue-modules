package pipeline

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::CodePipeline::Pipeline resource creates a CodePipeline pipeline that describes how software changes go through a release process.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CodePipeline::Pipeline"
	Properties: #Properties
}
