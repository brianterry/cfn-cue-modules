package resourceshare

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for AWS::RAM::ResourceShare
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RAM::ResourceShare"
	Properties: #Properties
}
