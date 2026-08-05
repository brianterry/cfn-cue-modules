package appblock

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppStream::AppBlock
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppStream::AppBlock"
	Properties: #Properties
}
