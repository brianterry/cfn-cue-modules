package accountpolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::Logs::AccountPolicy resource specifies a CloudWatch Logs AccountPolicy.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Logs::AccountPolicy"
	Properties: #Properties
}
