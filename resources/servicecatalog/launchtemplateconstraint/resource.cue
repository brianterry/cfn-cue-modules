package launchtemplateconstraint

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ServiceCatalog::LaunchTemplateConstraint
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ServiceCatalog::LaunchTemplateConstraint"
	Properties: #Properties
}
