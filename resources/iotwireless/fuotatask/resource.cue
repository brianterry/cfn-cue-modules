package fuotatask

import "github.com/brianterry/cfn-cue-modules/cfn"

// Create and manage FUOTA tasks.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTWireless::FuotaTask"
	Properties: #Properties
}
