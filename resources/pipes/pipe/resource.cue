package pipe

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Pipes::Pipe Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Pipes::Pipe"
	Properties: #Properties
}
