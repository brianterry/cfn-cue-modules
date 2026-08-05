package opsitem

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::SSM::OpsItem.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SSM::OpsItem"
	Properties: #Properties
}
