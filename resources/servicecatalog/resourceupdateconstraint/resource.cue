package resourceupdateconstraint

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for AWS::ServiceCatalog::ResourceUpdateConstraint
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ServiceCatalog::ResourceUpdateConstraint"
	Properties: #Properties
}
