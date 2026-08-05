package profile

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::RolesAnywhere::Profile Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RolesAnywhere::Profile"
	Properties: #Properties
}
