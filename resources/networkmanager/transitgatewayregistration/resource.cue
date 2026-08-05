package transitgatewayregistration

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::NetworkManager::TransitGatewayRegistration type registers a transit gateway in your global network. The transit gateway can be in any AWS Region, but it must be owned by the same AWS account that owns the global network. You cannot register a transit gateway in more than one global network.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::NetworkManager::TransitGatewayRegistration"
	Properties: #Properties
}
