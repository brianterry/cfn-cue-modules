package verifiedaccesstrustprovider

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::EC2::VerifiedAccessTrustProvider type describes a verified access trust provider
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::VerifiedAccessTrustProvider"
	Properties: #Properties
}
