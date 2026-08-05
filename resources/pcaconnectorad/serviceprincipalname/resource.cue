package serviceprincipalname

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::PCAConnectorAD::ServicePrincipalName Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::PCAConnectorAD::ServicePrincipalName"
	Properties: #Properties
}
