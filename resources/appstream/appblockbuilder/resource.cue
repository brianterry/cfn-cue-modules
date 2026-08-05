package appblockbuilder

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppStream::AppBlockBuilder.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppStream::AppBlockBuilder"
	Properties: #Properties
}
