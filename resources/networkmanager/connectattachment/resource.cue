package connectattachment

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS::NetworkManager::ConnectAttachment Resource Type Definition
#Resource: cfn.#ResourceBase & {
	Type: "AWS::NetworkManager::ConnectAttachment"
	Properties: #Properties
}
