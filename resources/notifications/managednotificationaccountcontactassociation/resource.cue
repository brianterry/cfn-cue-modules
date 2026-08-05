package managednotificationaccountcontactassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for ManagedNotificationAccountContactAssociation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Notifications::ManagedNotificationAccountContactAssociation"
	Properties: #Properties
}
