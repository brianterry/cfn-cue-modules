package resourcepolicy

#Properties: {
	Policy: #Policy
	ResourceArn: #ResourceArn
}

#PhysicalId: string

#Policy: {...}

#ResourceArn: string & strings.MinRunes(1) & strings.MaxRunes(1011)

#RevisionId: string & =~"^[0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(5)
