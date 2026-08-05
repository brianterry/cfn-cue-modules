package plan

import "github.com/brianterry/cfn-cue-modules/cfn"

// Engagement Plan for a SSM Incident Manager Contact.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SSMContacts::Plan"
	Properties: #Properties
}
