package notificationchannel

#Properties: {
	SnsRoleName: #ResourceArn
	SnsTopicArn: #ResourceArn
}

#ResourceArn: string & =~"^([^\\s]+)$" & strings.MinRunes(1) & strings.MaxRunes(1024)
