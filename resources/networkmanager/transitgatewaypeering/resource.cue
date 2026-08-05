package transitgatewaypeering

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS::NetworkManager::TransitGatewayPeering Resoruce Type.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::NetworkManager::TransitGatewayPeering"
	Properties: #Properties
}
