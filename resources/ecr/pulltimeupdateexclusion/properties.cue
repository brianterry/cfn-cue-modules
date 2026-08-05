package pulltimeupdateexclusion

#Properties: {
	// The ARN of the IAM principal to remove from the pull time update exclusion list.
	PrincipalArn: #PrincipalArn
}

#PrincipalArn: string & =~"^arn:aws(-[a-z]+)*:iam::[0-9]{12}:(role|user)/[\\w+=,.@-]+(/[\\w+=,.@-]+)*$" & strings.MaxRunes(200)
