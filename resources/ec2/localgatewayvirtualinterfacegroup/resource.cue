package localgatewayvirtualinterfacegroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for LocalGatewayVirtualInterfaceGroup which describes a group of LocalGateway VirtualInterfaces
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::LocalGatewayVirtualInterfaceGroup"
	Properties: #Properties
}
