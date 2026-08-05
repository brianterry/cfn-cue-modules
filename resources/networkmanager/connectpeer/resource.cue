package connectpeer

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS::NetworkManager::ConnectPeer Resource Type Definition.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::NetworkManager::ConnectPeer"
	Properties: #Properties
}
