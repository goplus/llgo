package token

type Token uint

const (
	ILLEGAL Token = iota

	/**
	 * A token that contains some kind of punctuation.
	 */
	PUNCT

	/**
	 * A language keyword.
	 */
	KEYWORD

	/**
	 * An identifier (that is not a keyword).
	 */
	IDENT

	/**
	 * A numeric, string, or character literal.
	 */
	LITERAL

	/**
	 * A comment.
	 */
	COMMENT
)
