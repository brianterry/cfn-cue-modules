package encryptionconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::IoT::EncryptionConfiguration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoT::EncryptionConfiguration"
	Properties: #Properties
}
