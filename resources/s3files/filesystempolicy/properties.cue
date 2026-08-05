package filesystempolicy

import "strings"

#Properties: {
	FileSystemId: string & =~"^(arn:aws[-a-z]*:s3files:[0-9a-z-:]+:file-system/fs-[0-9a-f]{17,40}|fs-[0-9a-f]{17,40})$" & strings.MaxRunes(128)
	Policy: {...}
}
