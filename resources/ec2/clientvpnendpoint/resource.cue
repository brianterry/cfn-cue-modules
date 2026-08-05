package clientvpnendpoint

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::ClientVpnEndpoint
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::ClientVpnEndpoint"
	Properties: #Properties
}
