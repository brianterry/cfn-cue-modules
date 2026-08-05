package httpnamespace

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ServiceDiscovery::HttpNamespace
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ServiceDiscovery::HttpNamespace"
	Properties: #Properties
}
