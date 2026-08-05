package project

#Properties: {
	ProjectName: #ProjectName
}

#Arn: string & strings.MaxRunes(1000)

#ProjectName: string & =~"[a-zA-Z0-9][a-zA-Z0-9_\\-]*" & strings.MinRunes(1) & strings.MaxRunes(255)
