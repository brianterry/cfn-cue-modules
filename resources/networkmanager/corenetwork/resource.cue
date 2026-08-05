package corenetwork

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS::NetworkManager::CoreNetwork Resource Type Definition.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::NetworkManager::CoreNetwork"
	Properties: #Properties
}
