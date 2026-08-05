package clientvpnroute

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::ClientVpnRoute
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::ClientVpnRoute"
	Properties: #Properties
}
