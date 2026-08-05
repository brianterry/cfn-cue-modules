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

#Arn: string & strings.MaxRunes(1000)

#CapacityUnitsConfiguration: {
	QueryCapacityUnits: #QueryCapacityUnits
	StorageCapacityUnits: #StorageCapacityUnits
}

#ClaimRegex: string & strings.MinRunes(1) & strings.MaxRunes(100)

#Description: string & strings.MaxRunes(1000)

#DocumentAttributeValueType: "STRING_VALUE" | "STRING_LIST_VALUE" | "LONG_VALUE" | "DATE_VALUE"

#DocumentMetadataConfiguration: {
	Name: #DocumentMetadataConfigurationName
	Relevance?: #Relevance
	Search?: #Search
	Type: #DocumentAttributeValueType
}

#DocumentMetadataConfigurationList: [...#DocumentMetadataConfiguration]

#DocumentMetadataConfigurationName: string & strings.MinRunes(1) & strings.MaxRunes(30)

#Duration: string & =~"[0-9]+[s]" & strings.MinRunes(1) & strings.MaxRunes(10)

#Edition: "DEVELOPER_EDITION" | "ENTERPRISE_EDITION" | "GEN_AI_ENTERPRISE_EDITION"

#Freshness: bool

#GroupAttributeField: string & strings.MinRunes(1) & strings.MaxRunes(100)

#Id: string & strings.MinRunes(36) & strings.MaxRunes(36)

#Importance: int & >=1 & <=10

#Issuer: string & strings.MinRunes(1) & strings.MaxRunes(65)

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

#KeyLocation: "URL" | "SECRET_MANAGER"

#KmsKeyId: string & strings.MinRunes(1) & strings.MaxRunes(2048)

#Name: string & strings.MinRunes(1) & strings.MaxRunes(1000)

#Order: "ASCENDING" | "DESCENDING"

#QueryCapacityUnits: int & >=0

#Relevance: {
	Duration?: #Duration
	Freshness?: #Freshness
	Importance?: #Importance
	RankOrder?: #Order
	ValueImportanceItems?: #ValueImportanceItems
}

#RoleArn: string & =~"arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}" & strings.MinRunes(1) & strings.MaxRunes(1284)

#Search: {
	Displayable?: bool
	Facetable?: bool
	Searchable?: bool
	Sortable?: bool
}

#ServerSideEncryptionConfiguration: {
	KmsKeyId?: #KmsKeyId
}

#StorageCapacityUnits: int & >=0

#Tag: {
	// A string used to identify this tag
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// A string containing the value for the tag
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TagList: [...#Tag]

#Url: string & =~"^(https?|ftp|file):\\/\\/([^\\s]*)" & strings.MinRunes(1) & strings.MaxRunes(2048)

#UserContextPolicy: "ATTRIBUTE_FILTER" | "USER_TOKEN"

#UserNameAttributeField: string & strings.MinRunes(1) & strings.MaxRunes(100)

#UserTokenConfiguration: {
	JsonTokenTypeConfiguration?: #JsonTokenTypeConfiguration
	JwtTokenTypeConfiguration?: #JwtTokenTypeConfiguration
}

#UserTokenConfigurationList: [...#UserTokenConfiguration]

#ValueImportanceItem: {
	Key?: #ValueImportanceItemKey
	Value?: #Importance
}

#ValueImportanceItemKey: string & strings.MinRunes(1) & strings.MaxRunes(50)

#ValueImportanceItems: [...#ValueImportanceItem]
