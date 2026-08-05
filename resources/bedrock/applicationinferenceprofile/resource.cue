package applicationinferenceprofile

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Bedrock::ApplicationInferenceProfile Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Bedrock::ApplicationInferenceProfile"
	Properties: #Properties
}
