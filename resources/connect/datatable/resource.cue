package datatable

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Connect::DataTable
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::DataTable"
	Properties: #Properties
}
