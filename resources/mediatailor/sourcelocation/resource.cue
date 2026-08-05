package sourcelocation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::MediaTailor::SourceLocation Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaTailor::SourceLocation"
	Properties: #Properties
}
