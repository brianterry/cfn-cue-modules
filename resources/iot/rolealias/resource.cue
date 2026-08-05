package rolealias

import "github.com/brianterry/cfn-cue-modules/cfn"

// Use the AWS::IoT::RoleAlias resource to declare an AWS IoT RoleAlias.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoT::RoleAlias"
	Properties: #Properties
}
