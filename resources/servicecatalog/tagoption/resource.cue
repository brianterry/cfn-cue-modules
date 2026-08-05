package tagoption

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for AWS::ServiceCatalog::TagOption
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ServiceCatalog::TagOption"
	Properties: #Properties
}
