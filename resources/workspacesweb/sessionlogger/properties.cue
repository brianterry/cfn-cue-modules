package sessionlogger

import "strings"

#Properties: {
	AdditionalEncryptionContext?: #EncryptionContextMap
	CustomerManagedKey?: string & =~"^arn:[\\w+=\\/,.@-]+:kms:[a-zA-Z0-9\\-]*:[a-zA-Z0-9]{1,12}:key\\/[a-zA-Z0-9-]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	DisplayName?: string & =~"^[ _\\-\\d\\w]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	EventFilter: #EventFilter
	LogConfiguration: #LogConfiguration
	Tags?: [...#Tag]
}

#EncryptionContextMap: {...}

#Event: "WebsiteInteract" | "FileDownloadFromSecureBrowserToRemoteDisk" | "FileTransferFromRemoteToLocalDisk" | "FileTransferFromLocalToRemoteDisk" | "FileUploadFromRemoteDiskToSecureBrowser" | "ContentPasteToWebsite" | "ContentTransferFromLocalToRemoteClipboard" | "ContentCopyFromWebsite" | "UrlLoad" | "TabOpen" | "TabClose" | "PrintJobSubmit" | "SessionConnect" | "SessionStart" | "SessionDisconnect" | "SessionEnd" | "UrlBlockByContentFilter"

#EventFilter: {
	All: #Unit
} | {
	Include: [...#Event]
}

#FolderStructure: "Flat" | "NestedByDate"

#LogConfiguration: {
	S3?: #S3LogConfiguration
}

#LogFileFormat: "JSONLines" | "Json"

#S3LogConfiguration: {
	Bucket: string & =~"^[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$" & strings.MinRunes(1) & strings.MaxRunes(256)
	BucketOwner?: string & =~"^[0-9]{12}$"
	FolderStructure: #FolderStructure
	KeyPrefix?: string & =~"^[\\d\\w\\-_/!().*']+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	LogFileFormat: #LogFileFormat
}

#Tag: {
	Key: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(0) & strings.MaxRunes(256)
}

#Unit: {...}
