package privatednsnamespace

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ServiceDiscovery::PrivateDnsNamespace
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ServiceDiscovery::PrivateDnsNamespace"
	Properties: #Properties
}
