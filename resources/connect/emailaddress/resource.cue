package emailaddress

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Connect::EmailAddress
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::EmailAddress"
	Properties: #Properties
}
