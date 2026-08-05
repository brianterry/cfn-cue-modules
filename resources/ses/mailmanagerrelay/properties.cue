package mailmanagerrelay

import "strings"

#Properties: {
	Authentication: #RelayAuthentication
	RelayName?: string & =~"^[a-zA-Z0-9-_]+$" & strings.MinRunes(1) & strings.MaxRunes(100)
	ServerName: string & =~"^[a-zA-Z0-9-\\.]+$" & strings.MinRunes(1) & strings.MaxRunes(100)
	ServerPort: number & >=1 & <=65535
	Tags?: [...#Tag]
}

#Tag: {
	Key: string & =~"^[a-zA-Z0-9/_\\+=\\.:@\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^[a-zA-Z0-9/_\\+=\\.:@\\-]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
