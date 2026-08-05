package userhierarchystructure

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Connect::UserHierarchyStructure
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::UserHierarchyStructure"
	Properties: #Properties
}
