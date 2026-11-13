# frozen_string_literal: true

# Renders the word "L∃∀N" with a mirrored E and an upside-down A instead of the
# ∃/∀ characters, which the site's web fonts do not contain (the browser would
# otherwise take them from a fallback font of a different weight and height).
# Styling lives in .lean-logo in _sass/_base.scss.
#
# Runs on every rendered HTML page, so titles in post headers, the blog list,
# "latest posts" on the homepage, archives, etc. are all covered. Only text is
# changed: tag attributes and the contents of <title>, <script>, <style>,
# <textarea>, <pre> and <code> keep the plain characters.
module LeanLogo
  WORD = "L∃∀N"
  MARKUP = '<span class="lean-logo">L<span class="flip-x">E</span>' \
           '<span class="flip-y">A</span>N</span>'
  # Group 1 matches the things to leave alone; anything else matched is WORD.
  PATTERN = %r{(<(title|script|style|textarea|pre|code)\b.*?</\2>|<[^>]*>)|L∃∀N}m

  def self.process(doc)
    return unless doc.output_ext == ".html" && doc.output&.include?(WORD)

    doc.output = doc.output.gsub(PATTERN) { Regexp.last_match(1) || MARKUP }
  end
end

Jekyll::Hooks.register [:pages, :documents], :post_render do |doc|
  LeanLogo.process(doc)
end
