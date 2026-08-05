package waitconditionhandle

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::CloudFormation::WaitConditionHandle
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFormation::WaitConditionHandle"
	Properties: #Properties
}
