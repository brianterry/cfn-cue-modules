package ruleset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::DataBrew::Ruleset.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataBrew::Ruleset"
	Properties: #Properties
}
