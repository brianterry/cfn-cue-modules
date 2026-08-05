package bytematchset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::WAFRegional::ByteMatchSet
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WAFRegional::ByteMatchSet"
	Properties: #Properties
}
