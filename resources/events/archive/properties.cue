package archive

import "strings"

#Properties: {
	ArchiveName?: string & =~"[\\.\\-_A-Za-z0-9]+" & strings.MinRunes(1) & strings.MaxRunes(48)
	Description?: string
	EventPattern?: {...}
	KmsKeyIdentifier?: string & strings.MinRunes(0) & strings.MaxRunes(2048)
	RetentionDays?: int
	SourceArn: string
}
