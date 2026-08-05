package bytematchset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::WAF::ByteMatchSet
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WAF::ByteMatchSet"
	Properties: #Properties
}
