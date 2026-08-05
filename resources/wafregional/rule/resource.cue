package rule

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::WAFRegional::Rule
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WAFRegional::Rule"
	Properties: #Properties
}
