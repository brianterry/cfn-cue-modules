package crl

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::RolesAnywhere::CRL Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RolesAnywhere::CRL"
	Properties: #Properties
}
