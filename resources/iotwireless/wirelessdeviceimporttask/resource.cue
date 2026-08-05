package wirelessdeviceimporttask

import "github.com/brianterry/cfn-cue-modules/cfn"

// Wireless Device Import Tasks
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTWireless::WirelessDeviceImportTask"
	Properties: #Properties
}
