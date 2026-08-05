package browserprofile

#Properties: {
	Description?: #BrowserProfileDescription
	Name: #BrowserProfileName
	// A map of tag keys and values.
	Tags?: #TagsMap
}

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
