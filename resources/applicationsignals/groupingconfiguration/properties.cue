package groupingconfiguration

#Properties: {
	GroupingAttributeDefinitions: #GroupingAttributeDefinitions
}

#AccountId: string & =~"^[0-9]{12}$" & strings.MinRunes(12) & strings.MaxRunes(12)

#GroupingAttributeDefinition: {
	DefaultGroupingValue?: #GroupingString
	GroupingName: #GroupingString
	GroupingSourceKeys: [...#GroupingString]
}

#GroupingAttributeDefinitions: [...#GroupingAttributeDefinition]

#GroupingString: string & strings.MinRunes(1) & strings.MaxRunes(128)

#Timestamp: string
