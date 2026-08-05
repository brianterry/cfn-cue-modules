package customdataidentifier

import "github.com/brianterry/cfn-cue-modules/cfn"

// Macie CustomDataIdentifier resource schema
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Macie::CustomDataIdentifier"
	Properties: #Properties
}
