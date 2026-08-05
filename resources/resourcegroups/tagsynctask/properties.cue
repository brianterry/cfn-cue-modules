package tagsynctask

import "strings"

#Properties: {
	// The Amazon resource name (ARN) or name of the application group for which you want to create a tag-sync task
	Group: string & =~"([a-zA-Z0-9_\\\\.-]{1,150}/[a-z0-9]{26})|(arn:aws(-[a-z]+)*:resource-groups(-(test|beta|gamma))?:[a-z]{2}(-[a-z]+)+-\\d{1}:[0-9]{12}:group/[a-zA-Z0-9_\\\\.-]{1,150}/[a-z0-9]{26})" & strings.MinRunes(12) & strings.MaxRunes(1600)
	// The Amazon resource name (ARN) of the role assumed by the service to tag and untag resources on your behalf.
	RoleArn: string & =~"arn:(aws[a-zA-Z-]*)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// The tag key. Resources tagged with this tag key-value pair will be added to the application. If a resource with this tag is later untagged, the tag-sync task removes the resource from the application.
	TagKey: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The tag value. Resources tagged with this tag key-value pair will be added to the application. If a resource with this tag is later untagged, the tag-sync task removes the resource from the application.
	TagValue: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
