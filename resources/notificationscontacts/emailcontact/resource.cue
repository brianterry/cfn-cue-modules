package emailcontact

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::NotificationsContacts::EmailContact Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::NotificationsContacts::EmailContact"
	Properties: #Properties
}
