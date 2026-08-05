package segmentdefinition

import "strings"

#Properties: {
	// The description of the segment definition.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(4000)
	// The display name of the segment definition.
	DisplayName: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The unique name of the domain.
	DomainName: string & =~"^[a-zA-Z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// The unique name of the segment definition.
	SegmentDefinitionName: string & =~"^[a-zA-Z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// An array that defines the set of segment criteria to evaluate when handling segment groups for the segment.
	SegmentGroups?: #SegmentGroup
	// The segment sort configuration for ordering segment results.
	SegmentSort?: #SegmentSort
	// The SQL query that defines the segment criteria.
	SegmentSqlQuery?: string & strings.MinRunes(1) & strings.MaxRunes(50000)
	// The tags used to organize, track, or control access for this resource.
	Tags?: [...#Tag]
}

#AddressDimension: {
	City?: #ProfileDimension
	Country?: #ProfileDimension
	County?: #ProfileDimension
	PostalCode?: #ProfileDimension
	Province?: #ProfileDimension
	State?: #ProfileDimension
}

#AttributeDimension: {
	DimensionType: #AttributeDimensionType
	Values: [...string & strings.MinRunes(1) & strings.MaxRunes(255)]
}

#AttributeDimensionType: "INCLUSIVE" | "EXCLUSIVE" | "CONTAINS" | "BEGINS_WITH" | "ENDS_WITH" | "BEFORE" | "AFTER" | "BETWEEN" | "NOT_BETWEEN" | "ON" | "GREATER_THAN" | "LESS_THAN" | "GREATER_THAN_OR_EQUAL" | "LESS_THAN_OR_EQUAL" | "EQUAL"

#CalculatedAttributeDimension: {
	ConditionOverrides?: #ConditionOverrides
	DimensionType: #AttributeDimensionType
	Values: [...string & strings.MinRunes(1) & strings.MaxRunes(255)]
}

#CalculatedCustomAttributes: {...}

#ConditionOverrides: {
	Range?: #RangeOverride
}

#CustomAttributes: {...}

#DateDimension: {
	DimensionType: #DateDimensionType
	Values: [...string]
}

#DateDimensionType: "BEFORE" | "AFTER" | "BETWEEN" | "NOT_BETWEEN" | "ON"

#Dimension: {
	ProfileAttributes: #ProfileAttributes
} | {
	CalculatedAttributes?: #CalculatedCustomAttributes
}

#ExtraLengthValueProfileDimension: {
	DimensionType: #StringDimensionType
	Values: [...string & strings.MinRunes(1) & strings.MaxRunes(1000)]
}

#Group: {
	Dimensions?: [...#Dimension]
	SourceSegments?: [...#SourceSegment]
	SourceType?: #IncludeOptions
	Type?: #IncludeOptions
}

#IncludeOptions: "ALL" | "ANY" | "NONE"

#ProfileAttributes: {
	AccountNumber?: #ProfileDimension
	AdditionalInformation?: #ExtraLengthValueProfileDimension
	Address?: #AddressDimension
	Attributes?: #CustomAttributes
	BillingAddress?: #AddressDimension
	BirthDate?: #DateDimension
	BusinessEmailAddress?: #ProfileDimension
	BusinessName?: #ProfileDimension
	BusinessPhoneNumber?: #ProfileDimension
	EmailAddress?: #ProfileDimension
	FirstName?: #ProfileDimension
	GenderString?: #ProfileDimension
	HomePhoneNumber?: #ProfileDimension
	LastName?: #ProfileDimension
	MailingAddress?: #AddressDimension
	MiddleName?: #ProfileDimension
	MobilePhoneNumber?: #ProfileDimension
	PartyTypeString?: #ProfileDimension
	PersonalEmailAddress?: #ProfileDimension
	PhoneNumber?: #ProfileDimension
	ProfileType?: #ProfileTypeDimension
	ShippingAddress?: #AddressDimension
}

#ProfileDimension: {
	DimensionType: #StringDimensionType
	Values: [...string & strings.MinRunes(1) & strings.MaxRunes(255)]
}

#ProfileType: "ACCOUNT_PROFILE" | "PROFILE"

#ProfileTypeDimension: {
	DimensionType: #ProfileTypeDimensionType
	Values: [...#ProfileType]
}

#ProfileTypeDimensionType: "INCLUSIVE" | "EXCLUSIVE"

#RangeOverride: {
	// The ending point for this overridden range. Positive numbers indicate how many days in the past data should be included, and negative numbers indicate how many days in the future.
	End?: int & >=-2147483648 & <=2147483647
	// The starting point for this overridden range. Positive numbers indicate how many days in the past data should be included, and negative numbers indicate how many days in the future.
	Start: int & >=-2147483648 & <=2147483647
	// The unit to be applied to the range.
	Unit: "DAYS"
}

#SegmentGroup: {
	Groups?: [...#Group]
	Include?: #IncludeOptions
}

#SegmentSort: {
	// A list of attributes used to sort the segments and their ordering preferences.
	Attributes: [...#SortAttribute]
}

#SegmentSortDataType: "STRING" | "NUMBER" | "DATE"

#SegmentSortOrder: "ASC" | "DESC"

#SortAttribute: {
	DataType?: #SegmentSortDataType
	// The name of the attribute to sort by.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(255)
	Order: #SegmentSortOrder
	Type?: #SortAttributeType
}

#SortAttributeType: "PROFILE" | "CALCULATED"

#SourceSegment: {
	SegmentDefinitionName?: string & =~"^[a-zA-Z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
}

#StringDimensionType: "INCLUSIVE" | "EXCLUSIVE" | "CONTAINS" | "BEGINS_WITH" | "ENDS_WITH"

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
