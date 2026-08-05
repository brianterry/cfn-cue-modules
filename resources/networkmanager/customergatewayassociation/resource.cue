package customergatewayassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::NetworkManager::CustomerGatewayAssociation type associates a customer gateway with a device and optionally, with a link.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::NetworkManager::CustomerGatewayAssociation"
	Properties: #Properties
}
