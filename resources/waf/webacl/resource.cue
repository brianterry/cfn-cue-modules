package webacl

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::WAF::WebACL
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WAF::WebACL"
	Properties: #Properties
}
