package connector

import "strings"

#Properties: {
	// The configuration for the connector that specifies the third-party cloud provider connection details.
	ConnectorConfiguration: #ConnectorConfiguration
	// The tags for the connector.
	Tags?: [...#Tag]
}

#AzureConnectorConfiguration: {
	// The Azure client (application) identifier.
	ClientIdentifier: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The Azure tenant identifier.
	TenantIdentifier: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#ConnectorConfiguration: {
	// The configuration for connecting to Microsoft Azure.
	Azure?: #AzureConnectorConfiguration
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
