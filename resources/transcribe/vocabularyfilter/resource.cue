package vocabularyfilter

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a custom vocabulary filter that you can use to mask, delete, or flag specific words from your transcript.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Transcribe::VocabularyFilter"
	Properties: #Properties
}
