package keyvaluestore

import "strings"

#Properties: {
	// A comment to describe the Key Value Store. Omitting ``Comment`` from the template during updates will clear the existing comment (set to empty string). To preserve an existing comment, you must explicitly include it in the template.
	Comment?: string
	// The import source for the key value store.
	ImportSource?: #ImportSource
	// The name of the key value store.
	Name: string
	// A complex type that contains zero or more ``Tag`` elements.
	Tags?: [...#Tag]
}

#ImportSource: {
	// The Amazon Resource Name (ARN) of the import source for the key value store.
	SourceArn: string
	// The source type of the import source for the key value store.
	SourceType: string
}

#Tag: {
	// A string that contains ``Tag`` key.
	// The string length should be between 1 and 128 characters. Valid characters include ``a-z``, ``A-Z``, ``0-9``, space, and the special characters ``_ - . : / = + @``.
	Key: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// A string that contains an optional ``Tag`` value.
	// The string length should be between 0 and 256 characters. Valid characters include ``a-z``, ``A-Z``, ``0-9``, space, and the special characters ``_ - . : / = + @``.
	Value: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
