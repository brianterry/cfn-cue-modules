package listenerrule

import "github.com/brianterry/cfn-cue-modules/cfn"

// Specifies a listener rule. The listener must be associated with an Application Load Balancer. Each rule consists of a priority, one or more actions, and one or more conditions.
// For more information, see [Quotas for your Application Load Balancers](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-limits.html) in the *User Guide for Application Load Balancers*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ElasticLoadBalancingV2::ListenerRule"
	Properties: #Properties
}
