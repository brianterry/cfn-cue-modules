package vectorbucket

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::S3Vectors::VectorBucket
#Resource: cfn.#ResourceBase & {
	Type: "AWS::S3Vectors::VectorBucket"
	Properties: #Properties
}
