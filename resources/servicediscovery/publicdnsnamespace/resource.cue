package publicdnsnamespace

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ServiceDiscovery::PublicDnsNamespace
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ServiceDiscovery::PublicDnsNamespace"
	Properties: #Properties
}
