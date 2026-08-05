package field

import "github.com/brianterry/cfn-cue-modules/cfn"

// A field in the Cases domain. This field is used to define the case object model (that is, defines what data can be captured on cases) in a Cases domain.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Cases::Field"
	Properties: #Properties
}
