package packagegroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// The resource schema to create a CodeArtifact package group.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CodeArtifact::PackageGroup"
	Properties: #Properties
}
