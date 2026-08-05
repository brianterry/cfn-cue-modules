package accessentry

import "github.com/brianterry/cfn-cue-modules/cfn"

// An object representing an Amazon EKS AccessEntry.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EKS::AccessEntry"
	Properties: #Properties
}
