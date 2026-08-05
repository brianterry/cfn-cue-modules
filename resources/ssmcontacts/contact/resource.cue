package contact

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SSMContacts::Contact
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SSMContacts::Contact"
	Properties: #Properties
}
