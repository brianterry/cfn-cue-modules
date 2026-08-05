package globaltable

import "github.com/brianterry/cfn-cue-modules/cfn"

// Version: None. Resource Type definition for AWS::DynamoDB::GlobalTable
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DynamoDB::GlobalTable"
	Properties: #Properties
}
