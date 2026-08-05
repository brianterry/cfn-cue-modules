package usertogroupaddition

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::IAM::UserToGroupAddition
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IAM::UserToGroupAddition"
	Properties: #Properties
}
