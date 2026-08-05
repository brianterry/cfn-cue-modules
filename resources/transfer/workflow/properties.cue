package workflow

import "strings"

#Properties: {
	// A textual description for the workflow.
	Description?: string & =~"^[\\w\\- ]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
	// Specifies the steps (actions) to take if any errors are encountered during execution of the workflow.
	OnExceptionSteps?: [...#WorkflowStep]
	// Specifies the details for the steps that are in the specified workflow.
	Steps: [...#WorkflowStep]
	// Key-value pairs that can be used to group and search for workflows. Tags are metadata attached to workflows for any purpose.
	Tags?: [...#Tag]
}

#EfsInputFileLocation: {
	// Specifies the EFS filesystem that contains the file.
	FileSystemId?: string & =~"^(arn:aws[-a-z]*:elasticfilesystem:[0-9a-z-:]+:(access-point/fsap|file-system/fs)-[0-9a-f]{8,40}|fs(ap)?-[0-9a-f]{8,40})$" & strings.MinRunes(0) & strings.MaxRunes(128)
	// The name assigned to the file when it was created in EFS. You use the object path to retrieve the object.
	Path?: string & strings.MinRunes(1) & strings.MaxRunes(65536)
}

#InputFileLocation: {
	EfsFileLocation?: #EfsInputFileLocation
	S3FileLocation?: #S3InputFileLocation
}

#S3FileLocation: {
	S3FileLocation?: #S3InputFileLocation
}

#S3InputFileLocation: {
	// Specifies the S3 bucket that contains the file.
	Bucket?: string & =~"^[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$" & strings.MinRunes(3) & strings.MaxRunes(63)
	// The name assigned to the file when it was created in S3. You use the object key to retrieve the object.
	Key?: string & =~".*" & strings.MinRunes(0) & strings.MaxRunes(1024)
}

#S3Tag: {
	// The name assigned to the tag that you create.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value that corresponds to the key.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#Tag: {
	// The name assigned to the tag that you create.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// Contains one or more values that you assigned to the key name you create.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#WorkflowStep: {
	// Details for a step that performs a file copy.
	CopyStepDetails?: {
		DestinationFileLocation?: #S3FileLocation
		Name?: string & =~"^[\\w-]*$" & strings.MinRunes(0) & strings.MaxRunes(30)
		OverwriteExisting?: "TRUE" | "FALSE"
		SourceFileLocation?: string & =~"^\\$\\{(\\w+.)+\\w+\\}$" & strings.MinRunes(0) & strings.MaxRunes(256)
	}
	// Details for a step that invokes a lambda function.
	CustomStepDetails?: {
		Name?: string & =~"^[\\w-]*$" & strings.MinRunes(0) & strings.MaxRunes(30)
		SourceFileLocation?: string & =~"^\\$\\{(\\w+.)+\\w+\\}$" & strings.MinRunes(0) & strings.MaxRunes(256)
		Target?: string & =~"arn:[a-z-]+:lambda:.*$" & strings.MinRunes(0) & strings.MaxRunes(170)
		TimeoutSeconds?: int & >=1 & <=1800
	}
	// Details for a step that performs a file decryption.
	DecryptStepDetails?: {
		DestinationFileLocation: #InputFileLocation
		Name?: string & =~"^[\\w-]*$" & strings.MinRunes(0) & strings.MaxRunes(30)
		OverwriteExisting?: "TRUE" | "FALSE"
		SourceFileLocation?: string & =~"^\\$\\{(\\w+.)+\\w+\\}$" & strings.MinRunes(0) & strings.MaxRunes(256)
		Type: "PGP"
	}
	// Details for a step that deletes the file.
	DeleteStepDetails?: {
		Name?: string & =~"^[\\w-]*$" & strings.MinRunes(0) & strings.MaxRunes(30)
		SourceFileLocation?: string & =~"^\\$\\{(\\w+.)+\\w+\\}$" & strings.MinRunes(0) & strings.MaxRunes(256)
	}
	// Details for a step that creates one or more tags.
	TagStepDetails?: {
		Name?: string & =~"^[\\w-]*$" & strings.MinRunes(0) & strings.MaxRunes(30)
		SourceFileLocation?: string & =~"^\\$\\{(\\w+.)+\\w+\\}$" & strings.MinRunes(0) & strings.MaxRunes(256)
		Tags?: [...#S3Tag]
	}
	Type?: "COPY" | "CUSTOM" | "DECRYPT" | "DELETE" | "TAG"
}
