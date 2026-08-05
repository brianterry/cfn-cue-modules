package policy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Policies in AWS Organizations enable you to manage different features of the AWS accounts in your organization.  You can use policies when all features are enabled in your organization.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Organizations::Policy"
	Properties: #Properties
}
