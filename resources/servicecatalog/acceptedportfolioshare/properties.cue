package acceptedportfolioshare

import "strings"

#Properties: {
	// The language code.
	AcceptLanguage?: string & =~"^(en|jp|zh)$"
	// The portfolio identifier.
	PortfolioId: string & strings.MinRunes(1) & strings.MaxRunes(100)
}
