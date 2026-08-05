package account

#Properties: {
	ExpiryEventsConfiguration: #ExpiryEventsConfiguration
}

#AccountId: string

#ExpiryEventsConfiguration: {
	DaysBeforeExpiry?: int & >=1 & <=45
}
