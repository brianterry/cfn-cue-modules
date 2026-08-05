package contactlist

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::SES::ContactList.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SES::ContactList"
	Properties: #Properties
}
