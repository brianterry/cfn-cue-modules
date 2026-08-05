package datasource

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::QBusiness::DataSource Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::QBusiness::DataSource"
	Properties: #Properties
}
