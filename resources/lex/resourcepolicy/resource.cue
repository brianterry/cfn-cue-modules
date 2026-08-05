package resourcepolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for a resource policy with specified policy statements that attaches to a Lex bot or bot alias.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Lex::ResourcePolicy"
	Properties: #Properties
}
