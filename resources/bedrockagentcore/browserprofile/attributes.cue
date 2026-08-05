package browserprofile

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	ProfileId: #BrowserProfileId
	ProfileArn: #BrowserProfileArn
	Status: #BrowserProfileStatus
	CreatedAt: #CreatedAt
	LastUpdatedAt: #LastUpdatedAt
	LastSavedAt: #LastSavedAt
	LastSavedBrowserSessionId: #LastSavedBrowserSessionId
	LastSavedBrowserId: #LastSavedBrowserId
}
