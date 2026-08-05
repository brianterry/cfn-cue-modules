package directoryregistration

#Properties: {
	DirectoryId: string & =~"^d-[0-9a-f]{10}$"
	Tags?: #Tags
}

#Tags: {...}
