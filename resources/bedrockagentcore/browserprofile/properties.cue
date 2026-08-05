package browserprofile

#Properties: {
	Description?: #BrowserProfileDescription
	Name: #BrowserProfileName
	// A map of tag keys and values.
	Tags?: #TagsMap
}

#BrowserProfileArn: string & =~"^arn:(aws(?:-cn|-us-gov|-iso(?:-[bef])?)?):bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:browser-profile/[a-zA-Z][a-zA-Z0-9_]{0,47}-[a-zA-Z0-9]{10}$"

#BrowserProfileDescription: string

#BrowserProfileId: string & =~"^[a-zA-Z][a-zA-Z0-9_]{0,47}-[a-zA-Z0-9]{10}$"

#BrowserProfileName: string & =~"^[a-zA-Z][a-zA-Z0-9_]{0,47}$"

#BrowserProfileStatus: "READY" | "DELETING" | "DELETED" | "SAVING"

#BrowserProfileSummaries: [...#BrowserProfileSummary]

#BrowserProfileSummary: {
	CreatedAt: #CreatedAt
	Description?: #BrowserProfileDescription
	LastSavedAt?: #LastSavedAt
	LastSavedBrowserId?: #LastSavedBrowserId
	LastSavedBrowserSessionId?: #LastSavedBrowserSessionId
	LastUpdatedAt: #LastUpdatedAt
	Name: #BrowserProfileName
	ProfileArn: #BrowserProfileArn
	ProfileId: #BrowserProfileId
	Status: #BrowserProfileStatus
}

#CreatedAt: string

#LastSavedAt: string

#LastSavedBrowserId: string & =~"^((aws\\.browser\\.v1|[a-zA-Z][a-zA-Z0-9_]{0,47}-[a-zA-Z0-9]{10}))?$"

#LastSavedBrowserSessionId: string & =~"^([0-9a-zA-Z]{1,40})?$"

#LastUpdatedAt: string

#TagsMap: {...}
