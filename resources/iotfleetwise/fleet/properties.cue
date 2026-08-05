package fleet

import "strings"

#Properties: {
	Description?: string & =~"^[^\\u0000-\\u001F\\u007F]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	Id: string & =~"^[a-zA-Z0-9:_-]+$" & strings.MinRunes(1) & strings.MaxRunes(100)
	SignalCatalogArn: string
	Tags?: [...#Tag]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
