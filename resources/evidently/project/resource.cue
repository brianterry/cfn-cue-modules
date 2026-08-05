package project

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Evidently::Project
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Evidently::Project"
	Properties: #Properties
}
