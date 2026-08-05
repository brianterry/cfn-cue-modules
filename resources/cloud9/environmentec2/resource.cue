package environmentec2

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Cloud9::EnvironmentEC2
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Cloud9::EnvironmentEC2"
	Properties: #Properties
}
