package publickey

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::IVS::PublicKey
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IVS::PublicKey"
	Properties: #Properties
}
