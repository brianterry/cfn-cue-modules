package compositealarm

import "strings"

#Properties: {
	// Indicates whether actions should be executed during any changes to the alarm state. The default is TRUE.
	ActionsEnabled?: bool
	// Actions will be suppressed if the suppressor alarm is in the ALARM state. ActionsSuppressor can be an AlarmName or an Amazon Resource Name (ARN) from an existing alarm.
	ActionsSuppressor?: string & strings.MinRunes(1) & strings.MaxRunes(1600)
	// Actions will be suppressed if WaitPeriod is active. The length of time that actions are suppressed is in seconds.
	ActionsSuppressorExtensionPeriod?: int & >=0
	// Actions will be suppressed if ExtensionPeriod is active. The length of time that actions are suppressed is in seconds.
	ActionsSuppressorWaitPeriod?: int & >=0
	// The list of actions to execute when this alarm transitions into an ALARM state from any other state. Specify each action as an Amazon Resource Name (ARN).
	AlarmActions?: [...string & strings.MinRunes(1) & strings.MaxRunes(1024)]
	// The description of the alarm
	AlarmDescription?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	// The name of the Composite Alarm
	AlarmName?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// Expression which aggregates the state of other Alarms (Metric or Composite Alarms)
	AlarmRule: string & strings.MinRunes(1) & strings.MaxRunes(10240)
	// The actions to execute when this alarm transitions to the INSUFFICIENT_DATA state from any other state. Each action is specified as an Amazon Resource Name (ARN).
	InsufficientDataActions?: [...string & strings.MinRunes(1) & strings.MaxRunes(1024)]
	// The actions to execute when this alarm transitions to the OK state from any other state. Each action is specified as an Amazon Resource Name (ARN).
	OKActions?: [...string & strings.MinRunes(1) & strings.MaxRunes(1024)]
	// A list of key-value pairs to associate with the composite alarm. You can associate as many as 50 tags with an alarm.
	Tags?: [...#Tag]
}

#AlarmActionARN: string & strings.MinRunes(1) & strings.MaxRunes(1024)

#Tag: {
	// A unique identifier for the tag. The combination of tag keys and values can help you organize and categorize your resources.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the specified tag key.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
