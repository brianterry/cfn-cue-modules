package invoiceunit

import "strings"

#Properties: {
	Description?: #Description
	InvoiceReceiver: #InvoiceReceiver
	Name: #Name
	ResourceTags?: #ResourceTags
	Rule: #Rule
	TaxInheritanceDisabled?: #TaxInheritanceDisabled
}

#ResourceTag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(256)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(200)
}

#Rule: {
	LinkedAccounts: [...string & =~"^\\d{12}$" & strings.MinRunes(12) & strings.MaxRunes(12)]
}
