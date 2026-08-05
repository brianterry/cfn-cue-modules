package simplead

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::DirectoryService::SimpleAD
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DirectoryService::SimpleAD"
	Properties: #Properties
}
