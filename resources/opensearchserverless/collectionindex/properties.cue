package collectionindex

import "strings"

#Properties: {
	// The identifier of the collection
	Id: string & =~"^[a-z0-9]{3,40}$" & strings.MinRunes(3) & strings.MaxRunes(40)
	// The name of the collection index
	IndexName: string & =~"^(?![_-])[a-z][a-z0-9_-]*$" & strings.MinRunes(1) & strings.MaxRunes(255)
	// The Mappings for the collection index
	IndexSchema?: string & =~"[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u00A1-\\u00FF]+" & strings.MinRunes(1) & strings.MaxRunes(2480)
}
