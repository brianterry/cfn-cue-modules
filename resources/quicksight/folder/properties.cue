package folder

import "strings"

#Properties: {
	AwsAccountId?: string & =~"^[0-9]{12}$" & strings.MinRunes(12) & strings.MaxRunes(12)
	FolderId?: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	FolderType?: #FolderType
	Name?: string & strings.MinRunes(1) & strings.MaxRunes(200)
	ParentFolderArn?: string
	Permissions?: [...#ResourcePermission]
	SharingModel?: #SharingModel
	Tags?: [...#Tag]
}

#ResourcePermission: {
	// <p>The IAM action to grant or revoke permissions on.</p>
	Actions: [...string]
	// <p>The Amazon Resource Name (ARN) of the principal. This can be one of the
	// following:</p>
	// <ul>
	// <li>
	// <p>The ARN of an Amazon QuickSight user or group associated with a data source or dataset. (This is common.)</p>
	// </li>
	// <li>
	// <p>The ARN of an Amazon QuickSight user, group, or namespace associated with an analysis, dashboard, template, or theme. (This is common.)</p>
	// </li>
	// <li>
	// <p>The ARN of an Amazon Web Services account root: This is an IAM ARN rather than a QuickSight
	// ARN. Use this option only to share resources (templates) across Amazon Web Services accounts.
	// (This is less common.) </p>
	// </li>
	// </ul>
	Principal: string & =~"^arn:.*" & strings.MinRunes(1) & strings.MaxRunes(256)
}

#Tag: {
	// <p>Tag key.</p>
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// <p>Tag value.</p>
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
