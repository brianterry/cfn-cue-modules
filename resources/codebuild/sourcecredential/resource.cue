package sourcecredential

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::CodeBuild::SourceCredential
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CodeBuild::SourceCredential"
	Properties: #Properties
}
