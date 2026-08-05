package launchnotificationconstraint

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ServiceCatalog::LaunchNotificationConstraint
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ServiceCatalog::LaunchNotificationConstraint"
	Properties: #Properties
}
