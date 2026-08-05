package vpcorigin

import "github.com/brianterry/cfn-cue-modules/cfn"

// An Amazon CloudFront VPC origin.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFront::VpcOrigin"
	Properties: #Properties
}
