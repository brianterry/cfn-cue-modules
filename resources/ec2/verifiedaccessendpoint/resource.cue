package verifiedaccessendpoint

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::EC2::VerifiedAccessEndpoint resource creates an AWS EC2 Verified Access Endpoint.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::VerifiedAccessEndpoint"
	Properties: #Properties
}
