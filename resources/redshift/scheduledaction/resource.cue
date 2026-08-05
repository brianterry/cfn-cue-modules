package scheduledaction

import "github.com/brianterry/cfn-cue-modules/cfn"

// The `AWS::Redshift::ScheduledAction` resource creates an Amazon Redshift Scheduled Action.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Redshift::ScheduledAction"
	Properties: #Properties
}
