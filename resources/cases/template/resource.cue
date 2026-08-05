package template

import "github.com/brianterry/cfn-cue-modules/cfn"

// A template in the Cases domain. This template is used to define the case object model (that is, to define what data can be captured on cases) in a Cases domain. A template must have a unique name within a domain, and it must reference existing field IDs and layout IDs.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Cases::Template"
	Properties: #Properties
}
