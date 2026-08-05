package testcase

import "github.com/brianterry/cfn-cue-modules/cfn"

// Represents a Test Case that can be captured and executed
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppTest::TestCase"
	Properties: #Properties
}
