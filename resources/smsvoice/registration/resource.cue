package registration

import "github.com/brianterry/cfn-cue-modules/cfn"

// A registration that has been created.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SMSVOICE::Registration"
	Properties: #Properties
}
