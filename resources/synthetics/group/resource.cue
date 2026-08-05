package group

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Synthetics::Group
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Synthetics::Group"
	Properties: #Properties
}
