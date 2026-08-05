package datatableattribute

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Connect::DataTableAttribute
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::DataTableAttribute"
	Properties: #Properties
}
