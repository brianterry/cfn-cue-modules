package tagsynctask

import "github.com/brianterry/cfn-cue-modules/cfn"

// Schema for ResourceGroups::TagSyncTask
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ResourceGroups::TagSyncTask"
	Properties: #Properties
}
