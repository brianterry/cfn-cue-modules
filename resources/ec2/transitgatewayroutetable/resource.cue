package transitgatewayroutetable

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::TransitGatewayRouteTable
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::TransitGatewayRouteTable"
	Properties: #Properties
}
