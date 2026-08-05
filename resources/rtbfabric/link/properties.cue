package link

import "strings"

#Properties: {
	GatewayId: #GatewayId
	HttpResponderAllowed?: #HttpResponderAllowed
	LinkAttributes?: #LinkAttributes
	LinkLogSettings: #LinkLogSettings
	ModuleConfigurationList?: #ModuleConfigurationList
	PeerGatewayId: #GatewayId
	Tags?: #Tags
}

#Arn: string & =~"^arn:aws:rtbfabric:[a-zA-Z0-9_-]+:[0-9]{12}:gateway/[a-zA-Z0-9-]+/link/[a-zA-Z0-9-]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)

#CreatedTimestamp: string

#Filter: {
	Criteria: [...#FilterCriterion]
}

#FilterCriterion: {
	Path: string
	Values: [...string]
}

#GatewayId: string & =~"^rtb-gw-[a-z0-9-]{1,25}$"

#HeaderTagAction: {
	Name: string
	Value: string
}

#HttpResponderAllowed: bool

#LinkAttributes: {
	CustomerProvidedId?: string
	ResponderErrorMasking?: [...#ResponderErrorMaskingForHttpCode]
}

#LinkDirection: "REQUEST" | "RESPONSE"

#LinkId: string & =~"^link-[a-z0-9-]{1,25}$"

#LinkLogSettings: {
	ApplicationLogs: {
		LinkApplicationLogSampling: {
			ErrorLog: number & >=0 & <=100
			FilterLog: number & >=0 & <=100
		}
	}
}

#LinkStatus: "PENDING_CREATION" | "PENDING_REQUEST" | "REQUESTED" | "ACCEPTED" | "ACTIVE" | "REJECTED" | "FAILED" | "PENDING_DELETION" | "DELETED" | "PENDING_UPDATE" | "PENDING_ISOLATION" | "ISOLATED" | "PENDING_RESTORATION" | "UNKNOWN_TO_SDK_VERSION"

#ModuleConfiguration: {
	DependsOn?: [...string & =~"^[A-Za-z0-9 -]+$"]
	ModuleParameters?: #ModuleParameters
	Name: string & =~"^[A-Za-z0-9 -]+$"
	Version?: string & =~"^[a-z0-9]{1,25}$"
}

#ModuleConfigurationList: [...#ModuleConfiguration]

#ModuleParameters: {
	NoBid: #NoBidModuleParameters
} | {
	OpenRtbAttribute: #OpenRtbAttributeModuleParameters
}

#NoBidAction: {
	NoBidReasonCode?: int & >=0
}

#NoBidModuleParameters: {
	PassThroughPercentage?: number & >=0 & <=100
	Reason?: string & =~"^[a-zA-Z0-9]*$" & strings.MinRunes(1) & strings.MaxRunes(50)
	ReasonCode?: int & >=0 & <=10
}

#OpenRtbAttributeModuleParameters: {
	Action: {
		NoBid: #NoBidAction
	} | {
		HeaderTag: #HeaderTagAction
	}
	FilterConfiguration: [...#Filter]
	FilterType: "INCLUDE" | "EXCLUDE"
	HoldbackPercentage: number & >=0 & <=100
}

#ResponderErrorMaskingForHttpCode: {
	Action: "NO_BID" | "PASSTHROUGH"
	HttpCode: string & =~"^DEFAULT|4XX|5XX|\\d{3}$" & strings.MinRunes(3) & strings.MaxRunes(7)
	LoggingTypes: [...#ResponderErrorMaskingLoggingType]
	ResponseLoggingPercentage?: number & >=0 & <=100
}

#ResponderErrorMaskingLoggingType: "NONE" | "METRIC" | "RESPONSE"

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^(resourceArn|internalId|[a-zA-Z0-9+\\-=._:/@]+)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#Tags: [...#Tag]

#UpdatedTimestamp: string
