package notificationhub

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Notifications::NotificationHub
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Notifications::NotificationHub"
	Properties: #Properties
}
