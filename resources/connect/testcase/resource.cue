package testcase

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Connect::TestCase
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::TestCase"
	Properties: #Properties
}
