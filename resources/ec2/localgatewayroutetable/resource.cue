package localgatewayroutetable

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for Local Gateway Route Table which describes a route table for a local gateway.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::LocalGatewayRouteTable"
	Properties: #Properties
}
