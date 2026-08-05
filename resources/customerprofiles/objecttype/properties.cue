package objecttype

import "strings"

#Properties: {
	// Indicates whether a profile should be created when data is received.
	AllowProfileCreation?: bool
	// Description of the profile object type.
	Description: string & strings.MinRunes(1) & strings.MaxRunes(10000)
	// The unique name of the domain.
	DomainName: string & =~"^[a-zA-Z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// The default encryption key
	EncryptionKey?: string & strings.MinRunes(0) & strings.MaxRunes(255)
	// The default number of days until the data within the domain expires.
	ExpirationDays?: int & >=1 & <=1098
	// A list of the name and ObjectType field.
	Fields?: [...#FieldMap]
	// A list of unique keys that can be used to map data to the profile.
	Keys?: [...#KeyMap]
	// The maximum number of profile objects for this object type
	MaxProfileObjectCount?: int & >=1
	// The name of the profile object type.
	ObjectTypeName: string & =~"^[a-zA-Z_][a-zA-Z_0-9-]*$" & strings.MinRunes(1) & strings.MaxRunes(255)
	// The format of your sourceLastUpdatedTimestamp that was previously set up.
	SourceLastUpdatedTimestampFormat?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// Defines the priority order of object types. Lower value indicates higher priority.
	SourcePriority?: int & >=1
	// The tags (keys and values) associated with the integration.
	Tags?: [...#Tag]
	// A unique identifier for the object template.
	TemplateId?: string & =~"^[a-zA-Z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
}

#FieldMap: {
	Name?: string & =~"^[a-zA-Z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	ObjectTypeField?: #ObjectTypeField
}

#KeyMap: {
	Name?: string & =~"^[a-zA-Z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	ObjectTypeKeyList?: [...#ObjectTypeKey]
}

#ObjectTypeField: {
	// The content type of the field. Used for determining equality when searching.
	ContentType?: "STRING" | "NUMBER" | "PHONE_NUMBER" | "EMAIL_ADDRESS" | "NAME"
	// A field of a ProfileObject. For example: _source.FirstName, where "_source" is a ProfileObjectType of a Zendesk user and "FirstName" is a field in that ObjectType.
	Source?: string & strings.MinRunes(1) & strings.MaxRunes(1000)
	// The location of the data in the standard ProfileObject model. For example: _profile.Address.PostalCode.
	Target?: string & strings.MinRunes(1) & strings.MaxRunes(1000)
}

#ObjectTypeKey: {
	// The reference for the key name of the fields map.
	FieldNames?: [...string & =~"^[a-zA-Z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)]
	// The types of keys that a ProfileObject can have. Each ProfileObject can have only 1 UNIQUE key but multiple PROFILE keys. PROFILE means that this key can be used to tie an object to a PROFILE. UNIQUE means that it can be used to uniquely identify an object. If a key a is marked as SECONDARY, it will be used to search for profiles after all other PROFILE keys have been searched. A LOOKUP_ONLY key is only used to match a profile but is not persisted to be used for searching of the profile. A NEW_ONLY key is only used if the profile does not already exist before the object is ingested, otherwise it is only used for matching objects to profiles.
	StandardIdentifiers?: [..."PROFILE" | "UNIQUE" | "SECONDARY" | "LOOKUP_ONLY" | "NEW_ONLY" | "ASSET" | "CASE" | "ORDER" | "AIR_PREFERENCE" | "AIR_BOOKING" | "AIR_SEGMENT" | "HOTEL_PREFERENCE" | "HOTEL_STAY_REVENUE" | "HOTEL_RESERVATION" | "LOYALTY" | "LOYALTY_TRANSACTION" | "LOYALTY_PROMOTION" | "WEB_ANALYTICS" | "DEVICE"]
}

#Tag: {
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
