package transitgatewayconnectpeer

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::TransitGatewayConnectPeer
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::TransitGatewayConnectPeer"
	Properties: #Properties
}
