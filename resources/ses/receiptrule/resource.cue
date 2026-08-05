package receiptrule

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SES::ReceiptRule
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SES::ReceiptRule"
	Properties: #Properties
}
