package theme

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::AmplifyUIBuilder::Theme Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AmplifyUIBuilder::Theme"
	Properties: #Properties
}
