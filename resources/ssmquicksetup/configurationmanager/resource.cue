package configurationmanager

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::SSMQuickSetup::ConfigurationManager Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SSMQuickSetup::ConfigurationManager"
	Properties: #Properties
}
