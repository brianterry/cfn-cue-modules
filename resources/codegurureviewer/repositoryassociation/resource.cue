package repositoryassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// This resource schema represents the RepositoryAssociation resource in the Amazon CodeGuru Reviewer service.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CodeGuruReviewer::RepositoryAssociation"
	Properties: #Properties
}
