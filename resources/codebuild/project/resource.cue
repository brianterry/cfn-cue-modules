package project

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::CodeBuild::Project
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CodeBuild::Project"
	Properties: #Properties
}
