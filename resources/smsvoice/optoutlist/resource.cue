package optoutlist

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SMSVOICE::OptOutList
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SMSVOICE::OptOutList"
	Properties: #Properties
}
