package routingcontrol

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS Route53 Recovery Control Routing Control resource schema .
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Route53RecoveryControl::RoutingControl"
	Properties: #Properties
}
