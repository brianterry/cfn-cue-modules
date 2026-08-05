package user

import "strings"

#Properties: {
	HomeDirectory?: string & =~"^(|/.*)$" & strings.MinRunes(0) & strings.MaxRunes(1024)
	HomeDirectoryMappings?: [...#HomeDirectoryMapEntry]
	HomeDirectoryType?: #HomeDirectoryType
	Policy?: string & strings.MinRunes(0) & strings.MaxRunes(2048)
	PosixProfile?: #PosixProfile
	Role: string & =~"^arn:.*role/\\S+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	ServerId: string & =~"^s-([0-9a-f]{17})$" & strings.MinRunes(19) & strings.MaxRunes(19)
	// This represents the SSH User Public Keys for CloudFormation resource
	SshPublicKeys?: [...string & =~"^\\s*(ssh|ecdsa)-[a-z0-9-]+[ \\t]+(([A-Za-z0-9+/]{4})*([A-Za-z0-9+/]{1,3})?(={0,3})?)(\\s*|[ \\t]+[\\S \\t]*\\s*)$" & strings.MinRunes(0) & strings.MaxRunes(2048)]
	Tags?: [...#Tag]
	UserName: string & =~"^[\\w][\\w@.-]{2,99}$" & strings.MinRunes(3) & strings.MaxRunes(100)
}

#HomeDirectoryMapEntry: {
	Entry: string & =~"^/.*$" & strings.MinRunes(0) & strings.MaxRunes(1024)
	Target: string & =~"^/.*$" & strings.MinRunes(0) & strings.MaxRunes(1024)
	Type?: #MapType
}

#PosixProfile: {
	Gid: number & >=0 & <=4.294967295e+09
	SecondaryGids?: [...number & >=0 & <=4.294967295e+09]
	Uid: number & >=0 & <=4.294967295e+09
}

#Tag: {
	Key: string & strings.MinRunes(0) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
