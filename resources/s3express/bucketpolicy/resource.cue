package bucketpolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::S3Express::BucketPolicy.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::S3Express::BucketPolicy"
	Properties: #Properties
}
