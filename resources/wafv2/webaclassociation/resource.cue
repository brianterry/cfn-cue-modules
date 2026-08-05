package webaclassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Associates WebACL to Application Load Balancer, CloudFront or API Gateway.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WAFv2::WebACLAssociation"
	Properties: #Properties
}
