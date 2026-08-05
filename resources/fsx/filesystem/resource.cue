package filesystem

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::FSx::FileSystem
#Resource: cfn.#ResourceBase & {
	Type: "AWS::FSx::FileSystem"
	Properties: #Properties
}
