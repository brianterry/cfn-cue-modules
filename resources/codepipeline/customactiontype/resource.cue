package customactiontype

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::CodePipeline::CustomActionType resource creates a custom action for activities that aren't included in the CodePipeline default actions, such as running an internally developed build process or a test suite. You can use these custom actions in the stage of a pipeline.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CodePipeline::CustomActionType"
	Properties: #Properties
}
