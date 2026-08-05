package repository

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::CodeCommit::Repository
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CodeCommit::Repository"
	Properties: #Properties
}
