package webaclassociation

#Properties: {
	ResourceArn: #ResourceArn
	WebACLArn: #ResourceArn
}

#ResourceArn: string & strings.MinRunes(20) & strings.MaxRunes(2048)
