package serviceaction

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Schema for AWS::ServiceCatalog::ServiceAction
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ServiceCatalog::ServiceAction"
	Properties: #Properties
}
