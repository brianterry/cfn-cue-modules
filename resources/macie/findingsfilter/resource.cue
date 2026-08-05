package findingsfilter

import "github.com/brianterry/cfn-cue-modules/cfn"

// Macie FindingsFilter resource schema.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Macie::FindingsFilter"
	Properties: #Properties
}
