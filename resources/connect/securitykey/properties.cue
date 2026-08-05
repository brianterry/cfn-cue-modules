package securitykey

#Properties: {
	InstanceId: #InstanceId
	Key: #Key
}

#AssociationId: string & =~"^[-a-z0-9]*$" & strings.MinRunes(1) & strings.MaxRunes(100)

#InstanceId: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*$" & strings.MinRunes(1) & strings.MaxRunes(100)

#Key: string & strings.MinRunes(1) & strings.MaxRunes(1024)
