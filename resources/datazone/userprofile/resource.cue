package userprofile

import "github.com/brianterry/cfn-cue-modules/cfn"

// A user profile represents Amazon DataZone users. Amazon DataZone supports both IAM roles and SSO identities to interact with the Amazon DataZone Management Console and the data portal for different purposes. Domain administrators use IAM roles to perform the initial administrative domain-related work in the Amazon DataZone Management Console, including creating new Amazon DataZone domains, configuring metadata form types, and implementing policies. Data workers use their SSO corporate identities via Identity Center to log into the Amazon DataZone Data Portal and access projects where they have memberships.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataZone::UserProfile"
	Properties: #Properties
}
