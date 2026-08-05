package formtype

import "github.com/brianterry/cfn-cue-modules/cfn"

// Create and manage form types in Amazon Datazone
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataZone::FormType"
	Properties: #Properties
}
