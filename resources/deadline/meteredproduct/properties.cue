package meteredproduct

#Properties: {
	LicenseEndpointId?: string & =~"^le-[0-9a-f]{32}$"
	ProductId?: string & =~"^[0-9a-z]{1,32}-[.0-9a-z]{1,32}$"
}
