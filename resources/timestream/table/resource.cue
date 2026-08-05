package table

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::Timestream::Table resource creates a Timestream Table.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Timestream::Table"
	Properties: #Properties
}
