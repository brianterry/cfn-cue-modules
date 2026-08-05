package account

#Properties: {
	ExpiryEventsConfiguration: #ExpiryEventsConfiguration
}

#ExpiryEventsConfiguration: {
	DaysBeforeExpiry?: int & >=1 & <=45
}
