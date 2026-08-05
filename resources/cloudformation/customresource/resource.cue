package customresource

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::CloudFormation::CustomResource
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFormation::CustomResource"
	Properties: #Properties
}
