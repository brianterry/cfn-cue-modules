package policystatement

import "github.com/brianterry/cfn-cue-modules/cfn"

// Policy Statement defined in AWS Entity Resolution Service
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EntityResolution::PolicyStatement"
	Properties: #Properties
}
