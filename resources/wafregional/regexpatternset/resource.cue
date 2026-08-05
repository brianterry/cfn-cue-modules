package regexpatternset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::WAFRegional::RegexPatternSet
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WAFRegional::RegexPatternSet"
	Properties: #Properties
}
