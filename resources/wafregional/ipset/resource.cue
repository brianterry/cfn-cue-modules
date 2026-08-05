package ipset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::WAFRegional::IPSet
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WAFRegional::IPSet"
	Properties: #Properties
}
