package notificationrule

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::CodeStarNotifications::NotificationRule
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CodeStarNotifications::NotificationRule"
	Properties: #Properties
}
