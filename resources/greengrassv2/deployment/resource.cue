package deployment

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource for Greengrass V2 deployment.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::GreengrassV2::Deployment"
	Properties: #Properties
}
