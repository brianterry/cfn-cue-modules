package graphqlschema

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppSync::GraphQLSchema
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppSync::GraphQLSchema"
	Properties: #Properties
}
