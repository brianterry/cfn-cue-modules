package waitcondition

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::CloudFormation::WaitCondition
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFormation::WaitCondition"
	Properties: #Properties
}
