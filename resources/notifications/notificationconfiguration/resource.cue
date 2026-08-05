package notificationconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Notifications::NotificationConfiguration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Notifications::NotificationConfiguration"
	Properties: #Properties
}
