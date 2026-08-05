package dnssec

#Properties: {
	// The unique string (ID) used to identify a hosted zone.
	HostedZoneId: string & =~"^[A-Z0-9]{1,32}$"
}
