package directconnectgateway

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::DirectConnect::DirectConnectGateway
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DirectConnect::DirectConnectGateway"
	Properties: #Properties
}
