package route

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::RefactorSpaces::Route Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RefactorSpaces::Route"
	Properties: #Properties
}
