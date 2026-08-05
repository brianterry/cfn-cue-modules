package transitgatewayroutetableattachment

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS::NetworkManager::TransitGatewayRouteTableAttachment Resource Type definition.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::NetworkManager::TransitGatewayRouteTableAttachment"
	Properties: #Properties
}
