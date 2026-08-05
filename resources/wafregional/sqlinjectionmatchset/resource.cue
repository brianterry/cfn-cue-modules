package sqlinjectionmatchset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::WAFRegional::SqlInjectionMatchSet
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WAFRegional::SqlInjectionMatchSet"
	Properties: #Properties
}
