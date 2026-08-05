package sizeconstraintset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::WAF::SizeConstraintSet
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WAF::SizeConstraintSet"
	Properties: #Properties
}
