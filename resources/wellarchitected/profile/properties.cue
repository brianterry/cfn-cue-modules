package profile

import "strings"

#Properties: {
	// The profile description.
	ProfileDescription: string & strings.MinRunes(3) & strings.MaxRunes(100)
	// The name of the profile.
	ProfileName: string & strings.MinRunes(3) & strings.MaxRunes(100)
	// The profile questions.
	ProfileQuestions: [...#ProfileQuestionUpdate]
	// The tags assigned to the profile.
	Tags?: [...#Tag]
}

#ProfileQuestionUpdate: {
	// The ID of the question.
	QuestionId?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The selected choices.
	SelectedChoiceIds?: [...string & strings.MinRunes(1) & strings.MaxRunes(64)]
}

#Tag: {
	// The key name of the tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
