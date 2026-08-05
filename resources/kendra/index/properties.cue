package index

import "strings"

#Properties: {
	// Capacity units
	CapacityUnits?: #CapacityUnitsConfiguration
	// A description for the index
	Description?: #Description
	// Document metadata configurations
	DocumentMetadataConfigurations?: #DocumentMetadataConfigurationList
	Edition: #Edition
	Name: #Name
	RoleArn: #RoleArn
	// Server side encryption configuration
	ServerSideEncryptionConfiguration?: #ServerSideEncryptionConfiguration
	// Tags for labeling the index
	Tags?: #TagList
	UserContextPolicy?: #UserContextPolicy
	UserTokenConfigurations?: #UserTokenConfigurationList
}

#CapacityUnitsConfiguration: {
	QueryCapacityUnits: #QueryCapacityUnits
	StorageCapacityUnits: #StorageCapacityUnits
}

#DocumentMetadataConfiguration: {
	Name: #DocumentMetadataConfigurationName
	Relevance?: #Relevance
	Search?: #Search
	Type: #DocumentAttributeValueType
}

#JsonTokenTypeConfiguration: {
	GroupAttributeField: #GroupAttributeField
	UserNameAttributeField: #UserNameAttributeField
}

#JwtTokenTypeConfiguration: {
	ClaimRegex?: #ClaimRegex
	GroupAttributeField?: #GroupAttributeField
	Issuer?: #Issuer
	KeyLocation: #KeyLocation
	SecretManagerArn?: #RoleArn
	URL?: #Url
	UserNameAttributeField?: #UserNameAttributeField
}

#Relevance: {
	Duration?: #Duration
	Freshness?: #Freshness
	Importance?: #Importance
	RankOrder?: #Order
	ValueImportanceItems?: #ValueImportanceItems
}

#Search: {
	Displayable?: bool
	Facetable?: bool
	Searchable?: bool
	Sortable?: bool
}

#ServerSideEncryptionConfiguration: {
	KmsKeyId?: #KmsKeyId
}

#Tag: {
	// A string used to identify this tag
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// A string containing the value for the tag
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#UserTokenConfiguration: {
	JsonTokenTypeConfiguration?: #JsonTokenTypeConfiguration
	JwtTokenTypeConfiguration?: #JwtTokenTypeConfiguration
}

#ValueImportanceItem: {
	Key?: #ValueImportanceItemKey
	Value?: #Importance
}
