package sizeconstraintset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::WAFRegional::SizeConstraintSet
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WAFRegional::SizeConstraintSet"
	Properties: #Properties
}
