package sqlinjectionmatchset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::WAF::SqlInjectionMatchSet
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WAF::SqlInjectionMatchSet"
	Properties: #Properties
}
