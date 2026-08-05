package mailmanageraddresslist

import "strings"

#Properties: {
	AddressListName?: string & =~"^[a-zA-Z0-9_.-]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	Tags?: [...#Tag]
}

#Tag: {
	Key: string & =~"^[a-zA-Z0-9/_\\+=\\.:@\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^[a-zA-Z0-9/_\\+=\\.:@\\-]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
