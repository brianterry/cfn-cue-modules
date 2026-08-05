package service

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ServiceDiscovery::Service
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ServiceDiscovery::Service"
	Properties: #Properties
}
