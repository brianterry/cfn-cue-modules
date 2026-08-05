package prefixlist

import "strings"

#Properties: {
	// Ip Version of Prefix List.
	AddressFamily: "IPv4" | "IPv6"
	// Entries of Prefix List.
	Entries?: [...#Entry]
	// Max Entries of Prefix List.
	MaxEntries?: int & >=1
	// Name of Prefix List.
	PrefixListName: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// Tags for Prefix List
	Tags?: [...#Tag]
}

#Entry: {
	Cidr: string & strings.MinRunes(1) & strings.MaxRunes(46)
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(255)
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value?: string & strings.MaxRunes(256)
}
