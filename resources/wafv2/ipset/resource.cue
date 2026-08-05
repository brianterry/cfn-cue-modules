package ipset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Contains a list of IP addresses. This can be either IPV4 or IPV6. The list will be mutually
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WAFv2::IPSet"
	Properties: #Properties
}
