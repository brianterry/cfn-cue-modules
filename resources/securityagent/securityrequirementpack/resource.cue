package securityrequirementpack

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SecurityAgent::SecurityRequirementPack
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SecurityAgent::SecurityRequirementPack"
	Properties: #Properties
}
