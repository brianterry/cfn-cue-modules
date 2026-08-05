package project

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::DataBrew::Project.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataBrew::Project"
	Properties: #Properties
}
