package notificationhub

#Properties: {
	Region: #Region
}

#NotificationHubStatus: "ACTIVE" | "REGISTERING" | "DEREGISTERING" | "INACTIVE"

#NotificationHubStatusSummary: {
	NotificationHubStatus: #NotificationHubStatus
	NotificationHubStatusReason: string
}

#Region: string & strings.MinRunes(2) & strings.MaxRunes(25)
