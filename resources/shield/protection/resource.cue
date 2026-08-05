package protection

import "github.com/brianterry/cfn-cue-modules/cfn"

// Enables AWS Shield Advanced for a specific AWS resource. The resource can be an Amazon CloudFront distribution, Amazon Route 53 hosted zone, AWS Global Accelerator standard accelerator, Elastic IP Address, Application Load Balancer, or a Classic Load Balancer. You can protect Amazon EC2 instances and Network Load Balancers by association with protected Amazon EC2 Elastic IP addresses.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Shield::Protection"
	Properties: #Properties
}
