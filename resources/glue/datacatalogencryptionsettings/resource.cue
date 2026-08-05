package datacatalogencryptionsettings

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Glue::DataCatalogEncryptionSettings
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Glue::DataCatalogEncryptionSettings"
	Properties: #Properties
}
