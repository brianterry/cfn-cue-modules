package resourcedefaultversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// The default version of a resource that has been registered in the CloudFormation Registry.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFormation::ResourceDefaultVersion"
	Properties: #Properties
}
