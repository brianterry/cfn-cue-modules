package environment

import "strings"

#Properties: {
	// ARNs of FinSpace Data Bundles to install
	DataBundles?: [...#DataBundleArn]
	// Description of the Environment
	Description?: string & =~"^[a-zA-Z0-9. ]{1,1000}$"
	// Federation mode used with the Environment
	FederationMode?: "LOCAL" | "FEDERATED"
	FederationParameters?: #FederationParameters
	// KMS key used to encrypt customer data within FinSpace Environment infrastructure
	KmsKeyId?: string & =~"^[a-zA-Z-0-9-:\\/]*{1,1000}$"
	// Name of the Environment
	Name: string & =~"^[a-zA-Z0-9]+[a-zA-Z0-9-]*[a-zA-Z0-9]{1,255}$"
	SuperuserParameters?: #SuperuserParameters
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#FederationParameters: {
	// SAML metadata URL to link with the Environment
	ApplicationCallBackURL?: string & =~"^https?://[-a-zA-Z0-9+&amp;@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&amp;@#/%=~_|]{1,1000}"
	// Attribute map for SAML configuration
	AttributeMap?: [...{
		Key?: string & strings.MinRunes(1) & strings.MaxRunes(128)
		Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
	}]
	// Federation provider name to link with the Environment
	FederationProviderName?: string & =~"[^_\\p{Z}][\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}][^_\\p{Z}]+" & strings.MinRunes(1) & strings.MaxRunes(32)
	// SAML metadata URL to link with the Environment
	FederationURN?: string
	// SAML metadata document to link the federation provider to the Environment
	SamlMetadataDocument?: string & =~".*" & strings.MinRunes(1000) & strings.MaxRunes(10000000)
	// SAML metadata URL to link with the Environment
	SamlMetadataURL?: string & =~"^https?://[-a-zA-Z0-9+&amp;@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&amp;@#/%=~_|]{1,1000}"
}

#SuperuserParameters: {
	// Email address
	EmailAddress?: string & =~"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+[.]+[A-Za-z]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	// First name
	FirstName?: string & =~"^[a-zA-Z0-9]{1,50}$" & strings.MinRunes(1) & strings.MaxRunes(50)
	// Last name
	LastName?: string & =~"^[a-zA-Z0-9]{1,50}$" & strings.MinRunes(1) & strings.MaxRunes(50)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
