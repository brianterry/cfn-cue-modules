package resourcepolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// You can use AWS::Organizations::ResourcePolicy to delegate policy management for AWS Organizations to specified member accounts to perform policy actions that are by default available only to the management account.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Organizations::ResourcePolicy"
	Properties: #Properties
}
