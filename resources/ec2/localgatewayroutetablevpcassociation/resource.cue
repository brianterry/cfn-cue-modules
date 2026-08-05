package localgatewayroutetablevpcassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for Local Gateway Route Table VPC Association which describes an association between a local gateway route table and a VPC.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::LocalGatewayRouteTableVPCAssociation"
	Properties: #Properties
}
