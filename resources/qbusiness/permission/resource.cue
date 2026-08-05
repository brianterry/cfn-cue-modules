package permission

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::QBusiness::Permission Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::QBusiness::Permission"
	Properties: #Properties
}
