package launchroleconstraint

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ServiceCatalog::LaunchRoleConstraint
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ServiceCatalog::LaunchRoleConstraint"
	Properties: #Properties
}
