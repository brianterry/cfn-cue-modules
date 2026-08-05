package repositorylink

import "github.com/brianterry/cfn-cue-modules/cfn"

// Schema for AWS::CodeStarConnections::RepositoryLink resource which is used to aggregate repository metadata relevant to synchronizing source provider content to AWS Resources.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CodeStarConnections::RepositoryLink"
	Properties: #Properties
}
