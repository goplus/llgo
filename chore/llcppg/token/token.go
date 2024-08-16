package token

type Token uint

const (
	/**
	 * A token that contains some kind of punctuation.
	 */
	PunctuationToken Token = iota
	/**
	 * A language keyword.
	 */
	KeywordToken

	/**
	 * An identifier (that is not a keyword).
	 */
	IdentifierToken
	/**
	 * A numeric, string, or character literal.
	 */
	LiteralToken
	/**
	 * A comment.
	 */
	CommentToken
)
