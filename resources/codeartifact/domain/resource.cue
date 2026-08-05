package domain

import "github.com/brianterry/cfn-cue-modules/cfn"

// The resource schema to create a CodeArtifact domain.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CodeArtifact::Domain"
	Properties: #Properties
}
