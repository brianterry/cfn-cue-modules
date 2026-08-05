package userdefinedfunction

import "github.com/brianterry/cfn-cue-modules/cfn"

// Represents a user-defined function (UDF) definition in the AWS Glue Data Catalog.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Glue::UserDefinedFunction"
	Properties: #Properties
}
