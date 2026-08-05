package resourcegroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Inspector::ResourceGroup
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Inspector::ResourceGroup"
	Properties: #Properties
}
