package storageprofile

import "strings"

#Properties: {
	DisplayName: string & strings.MinRunes(1) & strings.MaxRunes(100)
	FarmId: string & =~"^farm-[0-9a-f]{32}$"
	FileSystemLocations?: [...#FileSystemLocation]
	OsFamily: #StorageProfileOperatingSystemFamily
}

#FileSystemLocation: {
	Name: string & =~"^[0-9A-Za-z ]*$" & strings.MinRunes(1) & strings.MaxRunes(64)
	Path: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	Type: #FileSystemLocationType
}

#FileSystemLocationType: "SHARED" | "LOCAL"

#StorageProfileOperatingSystemFamily: "WINDOWS" | "LINUX" | "MACOS"
