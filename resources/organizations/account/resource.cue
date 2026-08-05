package account

import "github.com/brianterry/cfn-cue-modules/cfn"

// You can use AWS::Organizations::Account to manage accounts in organization.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Organizations::Account"
	Properties: #Properties
}
