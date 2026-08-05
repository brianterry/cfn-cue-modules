package compositealarm

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::CloudWatch::CompositeAlarm type specifies an alarm which aggregates the states of other Alarms (Metric or Composite Alarms) as defined by the AlarmRule expression
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudWatch::CompositeAlarm"
	Properties: #Properties
}
