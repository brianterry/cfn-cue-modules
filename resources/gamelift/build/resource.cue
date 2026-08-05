package build

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::GameLift::Build
#Resource: cfn.#ResourceBase & {
	Type: "AWS::GameLift::Build"
	Properties: #Properties
}
