package registrypolicy

#Properties: {
	// The JSON policy text for your registry.
	PolicyText: {...}
}

#RegistryId: string & =~"^[0-9]{12}$" & strings.MinRunes(12) & strings.MaxRunes(12)
