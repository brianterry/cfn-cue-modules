package enforcedguardrailconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Bedrock::EnforcedGuardrailConfiguration Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Bedrock::EnforcedGuardrailConfiguration"
	Properties: #Properties
}
