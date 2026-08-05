package discoverer

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EventSchemas::Discoverer
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EventSchemas::Discoverer"
	Properties: #Properties
}
