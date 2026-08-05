package customdbengineversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a custom DB engine version (CEV).
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RDS::CustomDBEngineVersion"
	Properties: #Properties
}
