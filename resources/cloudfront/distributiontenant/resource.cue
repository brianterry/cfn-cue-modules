package distributiontenant

import "github.com/brianterry/cfn-cue-modules/cfn"

// The distribution tenant.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFront::DistributionTenant"
	Properties: #Properties
}
