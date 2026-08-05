package clientvpntargetnetworkassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::ClientVpnTargetNetworkAssociation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::ClientVpnTargetNetworkAssociation"
	Properties: #Properties
}
