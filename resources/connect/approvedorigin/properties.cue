package approvedorigin

#Properties: {
	InstanceId: #InstanceId
	Origin: #Origin
}

#InstanceId: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*$" & strings.MinRunes(1) & strings.MaxRunes(100)

#Origin: string & strings.MaxRunes(267)
