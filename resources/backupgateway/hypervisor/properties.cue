package hypervisor

import "strings"

#Properties: {
	Host?: string & =~"^.+$" & strings.MinRunes(3) & strings.MaxRunes(128)
	KmsKeyArn?: string & =~"^(^arn:(aws|aws-cn|aws-us-gov):kms:([a-zA-Z0-9-]+):([0-9]+):(key|alias)/(\\S+)$)|(^alias/(\\S+)$)$" & strings.MinRunes(50) & strings.MaxRunes(500)
	LogGroupArn?: string & =~"^$|^arn:(aws|aws-cn|aws-us-gov):logs:([a-zA-Z0-9-]+):([0-9]+):log-group:[a-zA-Z0-9_\\-\\/\\.]+:\\*$" & strings.MinRunes(0) & strings.MaxRunes(2048)
	Name?: string & =~"^[a-zA-Z0-9-]*$" & strings.MinRunes(1) & strings.MaxRunes(100)
	Password?: string & =~"^[ -~]+$" & strings.MinRunes(1) & strings.MaxRunes(100)
	Tags?: [...#Tag]
	Username?: string & =~"^[ -\\.0-\\[\\]-~]*[!-\\.0-\\[\\]-~][ -\\.0-\\[\\]-~]*$" & strings.MinRunes(1) & strings.MaxRunes(100)
}

#HypervisorState: "PENDING" | "ONLINE" | "OFFLINE" | "ERROR"

#SyncMetadataStatus: "PENDING" | "IN_PROGRESS" | "FAILED" | "SUCCEEDED"

#Tag: {
	Key: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
