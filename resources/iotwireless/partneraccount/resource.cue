package partneraccount

import "github.com/brianterry/cfn-cue-modules/cfn"

// Create and manage partner account
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTWireless::PartnerAccount"
	Properties: #Properties
}
