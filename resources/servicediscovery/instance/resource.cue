package instance

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ServiceDiscovery::Instance
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ServiceDiscovery::Instance"
	Properties: #Properties
}
