package gatewayroutetableassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Associates a gateway with a route table. The gateway and route table must be in the same VPC. This association causes the incoming traffic to the gateway to be routed according to the routes in the route table.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::GatewayRouteTableAssociation"
	Properties: #Properties
}
