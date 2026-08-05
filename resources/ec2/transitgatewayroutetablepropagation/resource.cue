package transitgatewayroutetablepropagation

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS::EC2::TransitGatewayRouteTablePropagation Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::TransitGatewayRouteTablePropagation"
	Properties: #Properties
}
