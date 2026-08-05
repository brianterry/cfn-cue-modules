package datalakeassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::Connect::DataLakeAssociation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::DataLakeAssociation"
	Properties: #Properties
}
