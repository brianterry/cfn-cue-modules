package knowledgebasepolicy

import "strings"

#Properties: {
	// The unique identifier of the knowledge base
	KnowledgeBaseId: string & =~"^[0-9a-zA-Z]+$" & strings.MinRunes(1) & strings.MaxRunes(10)
	// The IAM policy document defining access permissions for the knowledge base
	PolicyDocument: {...}
}
