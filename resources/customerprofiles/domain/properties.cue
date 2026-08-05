package domain

import "strings"

#Properties: {
	// The URL of the SQS dead letter queue
	DeadLetterQueueUrl?: string & strings.MinRunes(0) & strings.MaxRunes(255)
	// The default encryption key
	DefaultEncryptionKey?: string & strings.MinRunes(0) & strings.MaxRunes(255)
	// The default number of days until the data within the domain expires.
	DefaultExpirationDays: int & >=1 & <=1098
	// The unique name of the domain.
	DomainName: string & =~"^[a-zA-Z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	Matching?: #Matching
	// The tags (keys and values) associated with the domain
	Tags?: [...#Tag]
}

#AttributeTypesSelector: {
	// The Address type. You can choose from Address, BusinessAddress, MaillingAddress, and ShippingAddress. You only can use the Address type in the MatchingRule. For example, if you want to match profile based on BusinessAddress.City or MaillingAddress.City, you need to choose the BusinessAddress and the MaillingAddress to represent the Address type and specify the Address.City on the matching rule.
	Address?: [...string & strings.MinRunes(1) & strings.MaxRunes(255)]
	// Configures the AttributeMatchingModel, you can either choose ONE_TO_ONE or MANY_TO_MANY.
	AttributeMatchingModel: "ONE_TO_ONE" | "MANY_TO_MANY"
	// The Email type. You can choose from EmailAddress, BusinessEmailAddress and PersonalEmailAddress. You only can use the EmailAddress type in the MatchingRule. For example, if you want to match profile based on PersonalEmailAddress or BusinessEmailAddress, you need to choose the PersonalEmailAddress and the BusinessEmailAddress to represent the EmailAddress type and only specify the EmailAddress on the matching rule.
	EmailAddress?: [...string & strings.MinRunes(1) & strings.MaxRunes(255)]
	// The PhoneNumber type. You can choose from PhoneNumber, HomePhoneNumber, and MobilePhoneNumber. You only can use the PhoneNumber type in the MatchingRule. For example, if you want to match a profile based on Phone or HomePhone, you need to choose the Phone and the HomePhone to represent the PhoneNumber type and only specify the PhoneNumber on the matching rule.
	PhoneNumber?: [...string & strings.MinRunes(1) & strings.MaxRunes(255)]
}

#AutoMerging: {
	ConflictResolution?: #ConflictResolution
	Consolidation?: #Consolidation
	// The flag that enables the auto-merging of duplicate profiles.
	Enabled: bool
	// A number between 0 and 1 that represents the minimum confidence score required for profiles within a matching group to be merged during the auto-merge process. A higher score means higher similarity required to merge profiles.
	MinAllowedConfidenceScoreForMerging?: number & >=0 & <=1
}

#ConflictResolution: {
	// How the auto-merging process should resolve conflicts between different profiles.
	ConflictResolvingModel: "RECENCY" | "SOURCE"
	// The ObjectType name that is used to resolve profile merging conflicts when choosing SOURCE as the ConflictResolvingModel.
	SourceName?: string & strings.MinRunes(1) & strings.MaxRunes(255)
}

#Consolidation: {
	// A list of matching criteria.
	MatchingAttributesList: [...#MatchingAttributes]
}

#DataStore: {
	// Whether the data store is enabled.
	Enabled?: bool
	Readiness?: #Readiness
}

#DomainStats: {
	// The number of profiles that you are currently paying for in the domain. If you have more than 100 objects associated with a single profile, that profile counts as two profiles. If you have more than 200 objects, that profile counts as three, and so on.
	MeteringProfileCount?: number
	// The total number of objects in domain.
	ObjectCount?: number
	// The total number of profiles currently in the domain.
	ProfileCount?: number
	// The total size, in bytes, of all objects in the domain.
	TotalSize?: number
}

#ExportingConfig: {
	S3Exporting?: #S3ExportingConfig
}

#JobSchedule: {
	// The day when the Identity Resolution Job should run every week.
	DayOfTheWeek: "SUNDAY" | "MONDAY" | "TUESDAY" | "WEDNESDAY" | "THURSDAY" | "FRIDAY" | "SATURDAY"
	// The time when the Identity Resolution Job should run every week.
	Time: string & =~"^([0-9]|0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]$" & strings.MinRunes(3) & strings.MaxRunes(5)
}

#Matching: {
	AutoMerging?: #AutoMerging
	// The flag that enables the matching process of duplicate profiles.
	Enabled: bool
	ExportingConfig?: #ExportingConfig
	JobSchedule?: #JobSchedule
}

#MatchingRule: {
	Rule: #MatchingRuleAttributeList
}

#Readiness: {
	// A message describing the current progress.
	Message?: string
	// The percentage of progress completed.
	ProgressPercentage?: int & >=0 & <=100
}

#RuleBasedMatching: {
	AttributeTypesSelector?: #AttributeTypesSelector
	ConflictResolution?: #ConflictResolution
	// The flag that enables the rule-based matching process of duplicate profiles.
	Enabled: bool
	ExportingConfig?: #ExportingConfig
	// Configures how the rule-based matching process should match profiles. You can have up to 15 MatchingRule in the MatchingRules.
	MatchingRules?: [...#MatchingRule]
	// Indicates the maximum allowed rule level for matching.
	MaxAllowedRuleLevelForMatching?: int & >=1 & <=15
	// Indicates the maximum allowed rule level for merging.
	MaxAllowedRuleLevelForMerging?: int & >=1 & <=15
	Status?: "PENDING" | "IN_PROGRESS" | "ACTIVE"
}

#S3ExportingConfig: {
	// The name of the S3 bucket where Identity Resolution Jobs write result files.
	S3BucketName: string & =~"^[a-z0-9.-]+$" & strings.MinRunes(3) & strings.MaxRunes(63)
	// The S3 key name of the location where Identity Resolution Jobs write result files.
	S3KeyName?: string & =~".*" & strings.MinRunes(1) & strings.MaxRunes(800)
}

#Tag: {
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
