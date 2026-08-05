package githubrepository

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::CodeStar::GitHubRepository
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CodeStar::GitHubRepository"
	Properties: #Properties
}
