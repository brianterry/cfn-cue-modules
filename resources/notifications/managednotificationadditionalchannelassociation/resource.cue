package managednotificationadditionalchannelassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Notifications::ManagedNotificationAdditionalChannelAssociation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Notifications::ManagedNotificationAdditionalChannelAssociation"
	Properties: #Properties
}
