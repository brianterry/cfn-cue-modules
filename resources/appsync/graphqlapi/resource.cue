package graphqlapi

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppSync::GraphQLApi
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppSync::GraphQLApi"
	Properties: #Properties
}
