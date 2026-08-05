package profile

import "strings"

#Properties: {
	BusinessName: string & strings.MinRunes(1) & strings.MaxRunes(254)
	Email?: string & =~"^[\\w\\.\\-]+@[\\w\\.\\-]+$" & strings.MinRunes(5) & strings.MaxRunes(254)
	Logging: #Logging
	Name: string & strings.MinRunes(1) & strings.MaxRunes(254)
	Phone: string & =~"^\\+?([0-9 \\t\\-()\\/]{7,})(?:\\s*(?:#|x\\.?|ext\\.?|extension) \\t*(\\d+))?$" & strings.MinRunes(7) & strings.MaxRunes(22)
	Tags?: [...#Tag]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
