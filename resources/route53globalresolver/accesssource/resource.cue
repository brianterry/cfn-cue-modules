package accesssource

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::Route53GlobalResolver::AccessSource
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Route53GlobalResolver::AccessSource"
	Properties: #Properties
}
