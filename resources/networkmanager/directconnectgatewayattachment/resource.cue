package directconnectgatewayattachment

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS::NetworkManager::DirectConnectGatewayAttachment Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::NetworkManager::DirectConnectGatewayAttachment"
	Properties: #Properties
}
