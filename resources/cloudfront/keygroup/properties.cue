package keygroup

#Properties: {
	// The key group configuration.
	KeyGroupConfig: #KeyGroupConfig
}

#KeyGroupConfig: {
	// A comment to describe the key group. The comment cannot be longer than 128 characters.
	Comment?: string
	// A list of the identifiers of the public keys in the key group.
	Items: [...string]
	// A name to identify the key group.
	Name: string
}
