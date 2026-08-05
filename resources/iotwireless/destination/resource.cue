package destination

import "github.com/brianterry/cfn-cue-modules/cfn"

// Destination's resource schema demonstrating some basic constructs and validation rules.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTWireless::Destination"
	Properties: #Properties
}
