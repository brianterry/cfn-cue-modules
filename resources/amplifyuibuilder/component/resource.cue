package component

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::AmplifyUIBuilder::Component Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AmplifyUIBuilder::Component"
	Properties: #Properties
}
