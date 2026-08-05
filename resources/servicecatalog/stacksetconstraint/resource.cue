package stacksetconstraint

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ServiceCatalog::StackSetConstraint
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ServiceCatalog::StackSetConstraint"
	Properties: #Properties
}
