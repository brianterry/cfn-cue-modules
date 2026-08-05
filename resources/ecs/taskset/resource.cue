package taskset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Create a task set in the specified cluster and service. This is used when a service uses the EXTERNAL deployment controller type. For more information, see https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.htmlin the Amazon Elastic Container Service Developer Guide.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ECS::TaskSet"
	Properties: #Properties
}
