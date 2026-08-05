package dnsview

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::Route53GlobalResolver::DnsView
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Route53GlobalResolver::DnsView"
	Properties: #Properties
}
