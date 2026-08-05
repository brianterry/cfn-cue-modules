package resourceversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// A resource that has been registered in the CloudFormation Registry.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFormation::ResourceVersion"
	Properties: #Properties
}
