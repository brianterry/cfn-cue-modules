package trustanchor

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::RolesAnywhere::TrustAnchor Resource Type.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RolesAnywhere::TrustAnchor"
	Properties: #Properties
}
