package contactchannel

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SSMContacts::ContactChannel
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SSMContacts::ContactChannel"
	Properties: #Properties
}
