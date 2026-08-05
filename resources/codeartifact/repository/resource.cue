package repository

import "github.com/brianterry/cfn-cue-modules/cfn"

// The resource schema to create a CodeArtifact repository.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CodeArtifact::Repository"
	Properties: #Properties
}
