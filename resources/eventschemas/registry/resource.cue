package registry

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EventSchemas::Registry
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EventSchemas::Registry"
	Properties: #Properties
}
