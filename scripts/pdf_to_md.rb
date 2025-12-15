#!/usr/bin/env ruby
# frozen_string_literal: true

require 'pdf-reader'
require 'fileutils'

# Convertit les PDFs du dossier DCE en fichiers Markdown

DCE_DIR = File.expand_path('../DCE_2025_TMA AQUAREEL_ (1)', __dir__)
OUTPUT_DIR = File.expand_path('../DCE_md', __dir__)

FileUtils.mkdir_p(OUTPUT_DIR)

def clean_text(text)
  return '' if text.nil?

  # Nettoie le texte extrait du PDF
  text
    .gsub(/\r\n?/, "\n")           # Normalise les fins de ligne
    .gsub(/\f/, "\n\n---\n\n")     # Sauts de page -> séparateurs markdown
    .gsub(/[ \t]+$/, '')           # Supprime espaces en fin de ligne
    .gsub(/\n{3,}/, "\n\n")        # Max 2 sauts de ligne consécutifs
    .strip
end

def pdf_to_markdown(pdf_path, output_path)
  puts "Conversion: #{File.basename(pdf_path)}"

  begin
    reader = PDF::Reader.new(pdf_path)

    content = []
    content << "# #{File.basename(pdf_path, '.pdf')}"
    content << ""
    content << "> Converti automatiquement depuis le PDF source"
    content << "> Pages: #{reader.page_count}"
    content << ""
    content << "---"
    content << ""

    reader.pages.each_with_index do |page, index|
      content << "## Page #{index + 1}"
      content << ""
      content << clean_text(page.text)
      content << ""
      content << "---" if index < reader.page_count - 1
      content << ""
    end

    File.write(output_path, content.join("\n"))
    puts "  -> #{File.basename(output_path)} (#{reader.page_count} pages)"
    true
  rescue StandardError => e
    puts "  ERREUR: #{e.message}"
    false
  end
end

# Liste tous les PDFs du dossier DCE
pdf_files = Dir.glob(File.join(DCE_DIR, '*.pdf'))

puts "="*60
puts "Conversion PDF -> Markdown"
puts "Source: #{DCE_DIR}"
puts "Destination: #{OUTPUT_DIR}"
puts "Fichiers trouvés: #{pdf_files.count}"
puts "="*60
puts ""

success_count = 0
pdf_files.each do |pdf_path|
  output_name = File.basename(pdf_path, '.pdf') + '.md'
  output_path = File.join(OUTPUT_DIR, output_name)

  success_count += 1 if pdf_to_markdown(pdf_path, output_path)
end

puts ""
puts "="*60
puts "Terminé: #{success_count}/#{pdf_files.count} fichiers convertis"
puts "="*60
