package instanceaccesscontrolattributeconfiguration

import "strings"

#Properties: {
	AccessControlAttributes?: #AccessControlAttributeList
	// The InstanceAccessControlAttributeConfiguration property has been deprecated but is still supported for backwards compatibility purposes. We recomend that you use  AccessControlAttributes property instead.
	InstanceAccessControlAttributeConfiguration?: {
		AccessControlAttributes: #AccessControlAttributeList
	}
	// The ARN of the AWS SSO instance under which the operation will be executed.
	InstanceArn: string & =~"arn:aws(-[a-z]{1,5}){0,3}:sso:::instance/(sso)?ins-[a-zA-Z0-9-.]{16}" & strings.MinRunes(10) & strings.MaxRunes(1224)
}

#AccessControlAttribute: {
	Key: string & =~"[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: #AccessControlAttributeValue
}

#AccessControlAttributeValue: {
	Source: #AccessControlAttributeValueSourceList
}
