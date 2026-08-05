package bucketpolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type Definition for AWS::S3Outposts::BucketPolicy
#Resource: cfn.#ResourceBase & {
	Type: "AWS::S3Outposts::BucketPolicy"
	Properties: #Properties
}
