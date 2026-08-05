package tableoptimizer

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Glue::TableOptimizer
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Glue::TableOptimizer"
	Properties: #Properties
}
