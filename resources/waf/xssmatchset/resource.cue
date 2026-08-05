package xssmatchset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::WAF::XssMatchSet
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WAF::XssMatchSet"
	Properties: #Properties
}
