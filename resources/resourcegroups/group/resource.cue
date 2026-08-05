package group

import "github.com/brianterry/cfn-cue-modules/cfn"

// Schema for ResourceGroups::Group
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ResourceGroups::Group"
	Properties: #Properties
}
