package input

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::IoTEvents::Input resource creates an input. To monitor your devices and processes, they must have a way to get telemetry data into ITE. This is done by sending messages as *inputs* to ITE. For more information, see [How to Use](https://docs.aws.amazon.com/iotevents/latest/developerguide/how-to-use-iotevents.html) in the *Developer Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTEvents::Input"
	Properties: #Properties
}
