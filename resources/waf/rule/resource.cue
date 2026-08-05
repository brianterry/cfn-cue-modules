package rule

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::WAF::Rule
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WAF::Rule"
	Properties: #Properties
}
