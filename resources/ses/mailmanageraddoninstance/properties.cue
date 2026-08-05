package mailmanageraddoninstance

import "strings"

#Properties: {
	AddonSubscriptionId: string & =~"^as-[a-zA-Z0-9]{1,64}$" & strings.MinRunes(4) & strings.MaxRunes(67)
	Tags?: [...#Tag]
}

#Tag: {
	Key: string & =~"^[a-zA-Z0-9/_\\+=\\.:@\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^[a-zA-Z0-9/_\\+=\\.:@\\-]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
