package device

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::NetworkManager::Device type describes a device.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::NetworkManager::Device"
	Properties: #Properties
}
