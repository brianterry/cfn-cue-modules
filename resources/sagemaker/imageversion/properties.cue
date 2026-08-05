package imageversion

#Properties: {
	Alias?: #Alias
	Aliases?: #Aliases
	BaseImage: #BaseImage
	Horovod?: #Horovod
	ImageName: #ImageName
	JobType?: #JobType
	MLFramework?: #MLFramework
	Processor?: #Processor
	ProgrammingLang?: #ProgrammingLang
	ReleaseNotes?: #ReleaseNotes
	VendorGuidance?: #VendorGuidance
}

#Alias: string & =~"(?!^[.-])^([a-zA-Z0-9-_.]+)$" & strings.MinRunes(1) & strings.MaxRunes(128)

#Aliases: [...#Alias]

#BaseImage: string & =~".+" & strings.MinRunes(1) & strings.MaxRunes(255)

#ContainerImage: string & =~".+" & strings.MinRunes(1) & strings.MaxRunes(255)

#Horovod: bool

#ImageArn: string & =~"^arn:aws(-[\\w]+)*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:image\\/[a-zA-Z0-9]([-.]?[a-zA-Z0-9])*$" & strings.MinRunes(1) & strings.MaxRunes(256)

#ImageName: string & =~"^[A-Za-z0-9]([-.]?[A-Za-z0-9])*$" & strings.MinRunes(1) & strings.MaxRunes(63)

#ImageVersionArn: string & =~"^arn:aws(-[\\w]+)*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:image-version\\/[a-zA-Z0-9]([-.]?[a-zA-Z0-9])*\\/[0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(256)

#JobType: "TRAINING" | "INFERENCE" | "NOTEBOOK_KERNEL"

#MLFramework: string & =~"^[a-zA-Z]+ ?\\d+\\.\\d+(\\.\\d+)?$" & strings.MinRunes(1) & strings.MaxRunes(128)

#Processor: "CPU" | "GPU"

#ProgrammingLang: string & =~"^[a-zA-Z]+ ?\\d+\\.\\d+(\\.\\d+)?$" & strings.MinRunes(1) & strings.MaxRunes(128)

#ReleaseNotes: string & =~".*" & strings.MinRunes(1) & strings.MaxRunes(255)

#VendorGuidance: "NOT_PROVIDED" | "STABLE" | "TO_BE_ARCHIVED" | "ARCHIVED"

#Version: int & >=1
