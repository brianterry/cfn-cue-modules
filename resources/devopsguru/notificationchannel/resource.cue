package notificationchannel

import "github.com/brianterry/cfn-cue-modules/cfn"

// This resource schema represents the NotificationChannel resource in the Amazon DevOps Guru.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DevOpsGuru::NotificationChannel"
	Properties: #Properties
}
