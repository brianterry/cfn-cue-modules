package componentversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource for Greengrass component version.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::GreengrassV2::ComponentVersion"
	Properties: #Properties
}
