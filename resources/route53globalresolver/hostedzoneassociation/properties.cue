package hostedzoneassociation

#Properties: {
	HostedZoneId: #HostedZoneId
	Name: #ResourceName
	ResourceArn: #ResourceArn
}

#HostedZoneAssociationStatus: "CREATING" | "OPERATIONAL" | "DELETING"

#HostedZoneId: string & strings.MinRunes(1) & strings.MaxRunes(32)

#ResourceArn: string & =~"arn:[-.a-z0-9]{1,63}:[-.a-z0-9]{1,63}:[-.a-z0-9]{0,63}:[-.a-z0-9]{0,63}:[^/].{0,1023}" & strings.MinRunes(1) & strings.MaxRunes(2048)

#ResourceName: string & =~"(?!^[0-9]+$)([a-zA-Z0-9-_' ']+)" & strings.MinRunes(1) & strings.MaxRunes(64)
