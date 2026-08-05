package integration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Glue::Integration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Glue::Integration"
	Properties: #Properties
}
