package vocabularyfilter

import "strings"

#Properties: {
	// The Amazon Resource Name (ARN) of an IAM role that has permissions to access the Amazon S3 bucket that contains your input files.
	DataAccessRoleArn?: string & =~"^arn:(aws|aws-cn|aws-us-gov|aws-iso-{0,1}[a-z]{0,1}):iam::[0-9]{0,63}:role/[A-Za-z0-9:_/+=,@.-]{0,1024}$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// The language code that represents the language of the entries in your vocabulary filter.
	LanguageCode: string
	// Tags associated with the vocabulary filter.
	Tags?: [...#Tag]
	// The Amazon S3 location of the text file that contains your custom vocabulary filter terms.
	VocabularyFilterFileUri?: string & =~"^(s3://|http(s*)://).+$" & strings.MinRunes(1) & strings.MaxRunes(2000)
	// A unique name, chosen by you, for your custom vocabulary filter.
	VocabularyFilterName: string & =~"^[0-9a-zA-Z._-]+$" & strings.MinRunes(1) & strings.MaxRunes(200)
	// Use this parameter if you want to create your custom vocabulary filter by including all desired terms, as comma-separated values, within your request.
	Words?: [...string & strings.MinRunes(1) & strings.MaxRunes(256)]
}

#Tag: {
	// The key of the tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value of the tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
