package tablebucketpolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Applies an IAM resource policy to a table bucket.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::S3Tables::TableBucketPolicy"
	Properties: #Properties
}
