package dataqualityruleset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Glue::DataQualityRuleset
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Glue::DataQualityRuleset"
	Properties: #Properties
}
