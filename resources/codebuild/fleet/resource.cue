package fleet

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::CodeBuild::Fleet
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CodeBuild::Fleet"
	Properties: #Properties
}
