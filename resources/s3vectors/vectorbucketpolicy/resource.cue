package vectorbucketpolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::S3Vectors::VectorBucketPolicy
#Resource: cfn.#ResourceBase & {
	Type: "AWS::S3Vectors::VectorBucketPolicy"
	Properties: #Properties
}
