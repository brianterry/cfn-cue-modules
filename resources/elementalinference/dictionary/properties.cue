package dictionary

import "strings"

#Properties: {
	Entries?: string & strings.MaxRunes(40960)
	Language: #DictionaryLanguage
	Name: string & =~"^[a-zA-Z0-9]([a-zA-Z0-9-_]{0,126}[a-zA-Z0-9])?$"
	Tags?: #TagMap
}
