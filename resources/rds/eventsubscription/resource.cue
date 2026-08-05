package eventsubscription

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::RDS::EventSubscription`` resource allows you to receive notifications for Amazon Relational Database Service events through the Amazon Simple Notification Service (Amazon SNS). For more information, see [Using Amazon RDS Event Notification](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html) in the *Amazon RDS User Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RDS::EventSubscription"
	Properties: #Properties
}
