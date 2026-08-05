package alarmmodel

import "github.com/brianterry/cfn-cue-modules/cfn"

// Represents an alarm model to monitor an ITE input attribute. You can use the alarm to get notified when the value is outside a specified range. For more information, see [Create an alarm model](https://docs.aws.amazon.com/iotevents/latest/developerguide/create-alarms.html) in the *Developer Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTEvents::AlarmModel"
	Properties: #Properties
}
