package autoshiftobservernotificationstatus

#Properties: {
	Status: #AutoshiftObserverNotificationStatus
}

#AccountId: string & =~"^\\d{12}$"

#AutoshiftObserverNotificationStatus: "ENABLED"

#Region: string & =~"^[a-z0-9-]*$" & strings.MinRunes(5) & strings.MaxRunes(30)
