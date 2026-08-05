package link

#Properties: {
	// The Bandwidth for the link.
	Bandwidth: #Bandwidth
	// The description of the link.
	Description?: string
	// The ID of the global network.
	GlobalNetworkId: string
	// The provider of the link.
	Provider?: string
	// The ID of the site
	SiteId: string
	// The tags for the link.
	Tags?: [...#Tag]
	// The type of the link.
	Type?: string
}

#Bandwidth: {
	// Download speed in Mbps.
	DownloadSpeed?: int
	// Upload speed in Mbps.
	UploadSpeed?: int
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string
}
