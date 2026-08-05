package receiptfilter

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SES::ReceiptFilter
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SES::ReceiptFilter"
	Properties: #Properties
}
