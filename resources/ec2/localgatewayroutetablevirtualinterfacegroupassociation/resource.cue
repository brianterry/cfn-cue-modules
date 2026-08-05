package localgatewayroutetablevirtualinterfacegroupassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for Local Gateway Route Table Virtual Interface Group Association which describes a local gateway route table virtual interface group association for a local gateway.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::LocalGatewayRouteTableVirtualInterfaceGroupAssociation"
	Properties: #Properties
}
