package directconnectgatewayassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::DirectConnect::DirectConnectGatewayAssociation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DirectConnect::DirectConnectGatewayAssociation"
	Properties: #Properties
}
