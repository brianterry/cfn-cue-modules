package layout

import "github.com/brianterry/cfn-cue-modules/cfn"

// A layout in the Cases domain. Layouts define the following configuration in the top section and More Info tab of the Cases user interface: Fields to display to the users and Field ordering.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Cases::Layout"
	Properties: #Properties
}
