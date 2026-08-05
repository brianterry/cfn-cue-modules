package ipset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::WAF::IPSet
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WAF::IPSet"
	Properties: #Properties
}
