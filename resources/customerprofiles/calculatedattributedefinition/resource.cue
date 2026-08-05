package calculatedattributedefinition

import "github.com/brianterry/cfn-cue-modules/cfn"

// A calculated attribute definition for Customer Profiles
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CustomerProfiles::CalculatedAttributeDefinition"
	Properties: #Properties
}
