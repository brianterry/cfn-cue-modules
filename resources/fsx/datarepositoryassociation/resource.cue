package datarepositoryassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::FSx::DataRepositoryAssociation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::FSx::DataRepositoryAssociation"
	Properties: #Properties
}
