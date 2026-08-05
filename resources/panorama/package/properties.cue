package package

import "strings"

#Properties: {
	// A name for the package.
	PackageName: #NodePackageName
	// Tags for the package.
	Tags?: #TagList
}

#NodePackageArn: string & strings.MinRunes(1) & strings.MaxRunes(255)

#NodePackageId: string & =~"^[a-zA-Z0-9\\-\\_\\/]+$" & strings.MinRunes(1) & strings.MaxRunes(255)

#NodePackageName: string & =~"^[a-zA-Z0-9\\-\\_]+$" & strings.MinRunes(1) & strings.MaxRunes(128)

#StorageLocation: {
	// The location's binary prefix.
	BinaryPrefixLocation?: string
	// The location's bucket.
	Bucket?: string
	// The location's generated prefix.
	GeneratedPrefixLocation?: string
	// The location's manifest prefix.
	ManifestPrefixLocation?: string
	// The location's repo prefix.
	RepoPrefixLocation?: string
}

#Tag: {
	Key: string & =~"^.+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^.+$" & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TagList: [...#Tag]

#Timestamp: int
