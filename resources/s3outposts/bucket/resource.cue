package bucket

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type Definition for AWS::S3Outposts::Bucket
#Resource: cfn.#ResourceBase & {
	Type: "AWS::S3Outposts::Bucket"
	Properties: #Properties
}
