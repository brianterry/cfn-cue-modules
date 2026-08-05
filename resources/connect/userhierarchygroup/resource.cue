package userhierarchygroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Connect::UserHierarchyGroup
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::UserHierarchyGroup"
	Properties: #Properties
}
