package publictypeversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// Test and Publish a resource that has been registered in the CloudFormation Registry.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFormation::PublicTypeVersion"
	Properties: #Properties
}
