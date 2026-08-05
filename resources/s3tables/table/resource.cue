package table

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::S3Tables::Table
#Resource: cfn.#ResourceBase & {
	Type: "AWS::S3Tables::Table"
	Properties: #Properties
}
