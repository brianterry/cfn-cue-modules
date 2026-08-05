package tablepolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::S3Tables::TablePolicy
#Resource: cfn.#ResourceBase & {
	Type: "AWS::S3Tables::TablePolicy"
	Properties: #Properties
}
