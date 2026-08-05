package reportgroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::CodeBuild::ReportGroup
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CodeBuild::ReportGroup"
	Properties: #Properties
}
