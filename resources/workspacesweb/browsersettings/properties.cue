package browsersettings

import "strings"

#Properties: {
	AdditionalEncryptionContext?: #EncryptionContextMap
	BrowserPolicy?: string & =~"^\\{[\\S\\s]*\\}\\s*$" & strings.MinRunes(2) & strings.MaxRunes(131072)
	CustomerManagedKey?: string & =~"^arn:[\\w+=\\/,.@-]+:kms:[a-zA-Z0-9\\-]*:[a-zA-Z0-9]{1,12}:key\\/[a-zA-Z0-9-]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	Tags?: [...#Tag]
	WebContentFilteringPolicy?: #WebContentFilteringPolicy
}

#Category: "Cults" | "Gambling" | "Nudity" | "Pornography" | "SexEducation" | "Tasteless" | "Violence" | "DownloadSites" | "ImageSharing" | "PeerToPeer" | "StreamingMediaAndDownloads" | "GenerativeAI" | "CriminalActivity" | "Hacking" | "HateAndIntolerance" | "IllegalDrug" | "IllegalSoftware" | "SchoolCheating" | "SelfHarm" | "Weapons" | "Chat" | "Games" | "InstantMessaging" | "ProfessionalNetwork" | "SocialNetworking" | "WebBasedEmail" | "ParkedDomains"

#EncryptionContextMap: {...}

#Tag: {
	Key: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(0) & strings.MaxRunes(256)
}

#Unit: {...}

#WebContentFilteringPolicy: {
	AllowedUrls?: [...string & =~"^((([a-zA-Z][a-zA-Z0-9+.-]*):\\/\\/(\\*|[\\w%._\\-\\+~#=@]+)?(\\/[^@\\s]*)?(?:\\?([^*\\s]+(?:\\*?)))?)|(\\*|[\\w%._\\-\\+~#=@]+\\.[\\w%._\\-\\+~#=@]+)(?::(\\d{1,5}))?(\\/[^@\\s]*)?(?:\\?([^*\\s]+(?:\\*?)))?|(([a-zA-Z][a-zA-Z0-9+.-]*):(\\/\\/)?\\*))$"]
	BlockedCategories?: [...#Category]
	BlockedUrls?: [...string & =~"^((([a-zA-Z][a-zA-Z0-9+.-]*):\\/\\/(\\*|[\\w%._\\-\\+~#=@]+)?(\\/[^@\\s]*)?(?:\\?([^*\\s]+(?:\\*?)))?)|(\\*|[\\w%._\\-\\+~#=@]+\\.[\\w%._\\-\\+~#=@]+)(?::(\\d{1,5}))?(\\/[^@\\s]*)?(?:\\?([^*\\s]+(?:\\*?)))?|(([a-zA-Z][a-zA-Z0-9+.-]*):(\\/\\/)?\\*))$"]
}
