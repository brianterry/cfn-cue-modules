package preferences

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::SSMGuiConnect::Preferences Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SSMGuiConnect::Preferences"
	Properties: #Properties
}
