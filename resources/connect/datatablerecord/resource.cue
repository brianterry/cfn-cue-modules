package datatablerecord

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Connect::DataTableRecord
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::DataTableRecord"
	Properties: #Properties
}
