package clientvpnauthorizationrule

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::ClientVpnAuthorizationRule
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::ClientVpnAuthorizationRule"
	Properties: #Properties
}
