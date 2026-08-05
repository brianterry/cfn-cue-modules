package recommender

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::CustomerProfiles::Recommender
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CustomerProfiles::Recommender"
	Properties: #Properties
}
