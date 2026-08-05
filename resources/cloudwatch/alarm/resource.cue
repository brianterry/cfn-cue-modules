package alarm

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::CloudWatch::Alarm`` type specifies an alarm and associates it with the specified metric or metric math expression.
 When this operation creates an alarm, the alarm state is immediately set to ``INSUFFICIENT_DATA``. The alarm is then evaluated and its state is set appropriately. Any actions associated with the new state are then executed.
 When you update an existing alarm, its state is left unchanged, but the update completely overwrites the previous configuration of the alarm.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudWatch::Alarm"
	Properties: #Properties
}
