package notificationchannel

import "github.com/brianterry/cfn-cue-modules/cfn"

// Designates the IAM role and Amazon Simple Notification Service (SNS) topic that AWS Firewall Manager uses to record SNS logs.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::FMS::NotificationChannel"
	Properties: #Properties
}
