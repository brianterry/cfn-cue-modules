package webacl

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::WAFRegional::WebACL
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WAFRegional::WebACL"
	Properties: #Properties
}
