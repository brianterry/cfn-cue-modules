package canary

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Synthetics::Canary
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Synthetics::Canary"
	Properties: #Properties
}
