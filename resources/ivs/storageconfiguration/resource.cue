package storageconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::IVS::StorageConfiguration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IVS::StorageConfiguration"
	Properties: #Properties
}
