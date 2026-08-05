package reviewtemplate

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a review template for the Well-Architected Tool.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WellArchitected::ReviewTemplate"
	Properties: #Properties
}
