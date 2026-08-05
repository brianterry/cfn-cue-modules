package emailcontact

import "strings"

#Properties: {
	EmailAddress: string & =~"^(.+)@(.+)$" & strings.MinRunes(6) & strings.MaxRunes(254)
	Name: string & =~"[\\w-.~]+" & strings.MinRunes(1) & strings.MaxRunes(64)
	Tags?: #TagMap
}

#EmailContact: {
	Address: string & =~"^(.+)@(.+)$" & strings.MinRunes(6) & strings.MaxRunes(254)
	Arn: string & =~"^arn:aws:notifications-contacts::[0-9]{12}:emailcontact/[a-z0-9]{27}$"
	CreationTime: string
	Name: string & =~"[\\w-.~]+" & strings.MinRunes(1) & strings.MaxRunes(64)
	Status: #EmailContactStatus
	UpdateTime: string
}

#EmailContactStatus: "inactive" | "active"

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TagMap: [...#Tag]
