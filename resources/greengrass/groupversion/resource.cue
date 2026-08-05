package groupversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Greengrass::GroupVersion
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Greengrass::GroupVersion"
	Properties: #Properties
}
