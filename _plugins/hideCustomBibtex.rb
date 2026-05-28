module Jekyll
  module HideCustomBibtex
    def hideCustomBibtex(input)
      keywords = Array(@context.registers[:site].config['filtered_bibtex_keywords'])
      return input if keywords.empty?

      pattern = /^\s*(?:#{keywords.map { |k| Regexp.escape(k) }.join('|')})\s*=.*\n?/i
      cleaned = input.gsub(pattern, '')
      cleaned.gsub(/,\n\}/m, "\n}")
    end
  end
end

Liquid::Template.register_filter(Jekyll::HideCustomBibtex)
