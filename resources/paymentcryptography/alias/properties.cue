package alias

import "strings"

#Properties: {
	AliasName: string & =~"^alias/[a-zA-Z0-9/_-]+$" & strings.MinRunes(7) & strings.MaxRunes(256)
	KeyArn?: string & =~"^arn:aws:payment-cryptography:[a-z]{2}-[a-z]{1,16}-[0-9]+:[0-9]{12}:key/[0-9a-zA-Z]{16,64}$" & strings.MinRunes(70) & strings.MaxRunes(150)
}
