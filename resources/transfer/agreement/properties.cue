package agreement

import "strings"

#Properties: {
	// Specifies the access role for the agreement.
	AccessRole: string & =~"arn:.*role/.*" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// Specifies the base directory for the agreement.
	BaseDirectory?: string & =~"^(|/.*)$" & strings.MaxRunes(1024)
	// Specifies a separate directory for each type of file to store for an AS2 message.
	CustomDirectories?: {
		FailedFilesDirectory: string & =~"(|/.*)"
		MdnFilesDirectory: string & =~"(|/.*)"
		PayloadFilesDirectory: string & =~"(|/.*)"
		StatusFilesDirectory: string & =~"(|/.*)"
		TemporaryFilesDirectory: string & =~"(|/.*)"
	}
	// A textual description for the agreement.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(200)
	// Specifies whether to enforce an AS2 message is signed for this agreement.
	EnforceMessageSigning?: "ENABLED" | "DISABLED"
	// A unique identifier for the local profile.
	LocalProfileId: string & =~"^p-([0-9a-f]{17})$" & strings.MinRunes(19) & strings.MaxRunes(19)
	// A unique identifier for the partner profile.
	PartnerProfileId: string & =~"^p-([0-9a-f]{17})$" & strings.MinRunes(19) & strings.MaxRunes(19)
	// Specifies whether to preserve the filename received for this agreement.
	PreserveFilename?: "ENABLED" | "DISABLED"
	// A unique identifier for the server.
	ServerId: string & =~"^s-([0-9a-f]{17})$" & strings.MinRunes(19) & strings.MaxRunes(19)
	// Specifies the status of the agreement.
	Status?: "ACTIVE" | "INACTIVE"
	// Key-value pairs that can be used to group and search for agreements. Tags are metadata attached to agreements for any purpose.
	Tags?: [...#Tag]
}

#Tag: {
	// The name assigned to the tag that you create.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// Contains one or more values that you assigned to the key name you create.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
