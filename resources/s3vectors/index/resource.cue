package index

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::S3Vectors::Index
#Resource: cfn.#ResourceBase & {
	Type: "AWS::S3Vectors::Index"
	Properties: #Properties
}
