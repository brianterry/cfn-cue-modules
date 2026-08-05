package xssmatchset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::WAFRegional::XssMatchSet
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WAFRegional::XssMatchSet"
	Properties: #Properties
}
