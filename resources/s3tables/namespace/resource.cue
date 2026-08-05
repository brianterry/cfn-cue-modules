package namespace

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::S3Tables::Namespace
#Resource: cfn.#ResourceBase & {
	Type: "AWS::S3Tables::Namespace"
	Properties: #Properties
}
