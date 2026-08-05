package privacybudgettemplate

import "github.com/brianterry/cfn-cue-modules/cfn"

// Represents a privacy budget within a collaboration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CleanRooms::PrivacyBudgetTemplate"
	Properties: #Properties
}
