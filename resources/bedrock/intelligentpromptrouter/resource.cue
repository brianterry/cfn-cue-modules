package intelligentpromptrouter

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Bedrock::IntelligentPromptRouter Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Bedrock::IntelligentPromptRouter"
	Properties: #Properties
}
