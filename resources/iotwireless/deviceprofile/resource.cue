package deviceprofile

import "github.com/brianterry/cfn-cue-modules/cfn"

// Device Profile's resource schema demonstrating some basic constructs and validation rules.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTWireless::DeviceProfile"
	Properties: #Properties
}
