package macro

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::CloudFormation::Macro
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFormation::Macro"
	Properties: #Properties
}
