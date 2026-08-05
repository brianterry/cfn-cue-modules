package knowledgebase

import "strings"

#Properties: {
	AccessControlConfiguration?: #AccessControlConfiguration
	AwsAccountId: string & =~"^[0-9]*$" & strings.MinRunes(12) & strings.MaxRunes(12)
	DataSourceArn: string & =~"^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$" & strings.MinRunes(0) & strings.MaxRunes(1284)
	Description?: string & =~"^\\P{C}*$" & strings.MaxRunes(1000)
	IsEmailNotificationOptedForIngestionFailures?: bool
	KnowledgeBaseConfiguration: #KnowledgeBaseConfiguration
	KnowledgeBaseId: string & =~"^[0-9a-zA-Z-_=.+]+$" & strings.MinRunes(1) & strings.MaxRunes(1024)
	MediaExtractionConfiguration?: #MediaExtractionConfiguration
	Name: string & =~"^[\\p{L}\\p{N}][\\p{L}\\p{N} _\\-\\.]*$" & strings.MaxRunes(128)
	Permissions?: [...#ResourcePermission]
	PrimaryOwnerArn?: string
	Tags?: [...#Tag]
}

#AccessControlConfiguration: {
	IsACLEnabled?: bool
}

#AudioExtractionConfiguration: {
	AudioExtractionStatus: #AudioExtractionStatus
}

#ImageExtractionConfiguration: {
	ImageExtractionStatus: #ImageExtractionStatus
}

#KbTemplateConfiguration: {
	Template?: string
}

#KnowledgeBaseConfiguration: {
	TemplateConfiguration?: #KbTemplateConfiguration
}

#MediaExtractionConfiguration: {
	AudioExtractionConfiguration?: #AudioExtractionConfiguration
	ImageExtractionConfiguration?: #ImageExtractionConfiguration
	VideoExtractionConfiguration?: #VideoExtractionConfiguration
}

#ResourcePermission: {
	// <p>The IAM action to grant or revoke permissions on.</p>
	Actions: [...string]
	// <p>The Amazon Resource Name (ARN) of the principal. This can be one of the
	// following:</p>
	// <ul>
	// <li>
	// <p>The ARN of an Amazon Quick user or group associated with a data source or dataset. (This is common.)</p>
	// </li>
	// <li>
	// <p>The ARN of an Amazon Quick user, group, or namespace associated with an analysis, dashboard, template, or theme. (This is common.)</p>
	// </li>
	// <li>
	// <p>The ARN of an Amazon Web Services account root: This is an IAM ARN rather than a QuickSight
	// ARN. Use this option only to share resources (templates) across Amazon Web Services accounts.
	// (This is less common.) </p>
	// </li>
	// </ul>
	Principal: string & strings.MinRunes(1) & strings.MaxRunes(256)
	Resource?: string
}

#Tag: {
	// <p>Tag key.</p>
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// <p>Tag value.</p>
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#VideoExtractionConfiguration: {
	VideoExtractionStatus: #VideoExtractionStatus
	VideoExtractionType?: #VideoExtractionType
}
