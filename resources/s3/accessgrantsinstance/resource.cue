package accessgrantsinstance

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::S3::AccessGrantsInstance resource is an Amazon S3 resource type that hosts Access Grants and their associated locations
#Resource: cfn.#ResourceBase & {
	Type: "AWS::S3::AccessGrantsInstance"
	Properties: #Properties
}
