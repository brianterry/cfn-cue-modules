package recipe

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::DataBrew::Recipe.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataBrew::Recipe"
	Properties: #Properties
}
