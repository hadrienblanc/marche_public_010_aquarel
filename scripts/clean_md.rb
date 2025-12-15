#!/usr/bin/env ruby
# frozen_string_literal: true

# Nettoie les fichiers Markdown générés depuis les PDFs

DCE_MD_DIR = File.expand_path('../DCE_md', __dir__)

# Remplacements connus pour les titres mal formatés
KNOWN_REPLACEMENTS = {
  'C AHIER des' => 'CAHIER DES',
  'C LAUSES' => 'CLAUSES',
  'M ANUEL U TILISATEUR' => 'MANUEL UTILISATEUR',
  'M ANUEL' => 'MANUEL',
  'U TILISATEUR' => 'UTILISATEUR',
  'A DMINISTRATIVES' => 'ADMINISTRATIVES',
  'P ARTICULIÈRES' => 'PARTICULIÈRES',
  'P ARTICULIERES' => 'PARTICULIERES',
  'T ECHNIQUES' => 'TECHNIQUES',
  'G ÉNÉRALES' => 'GÉNÉRALES',
  'D OCUMENT' => 'DOCUMENT',
  'S OMMAIRE' => 'SOMMAIRE',
  'A NNEXE' => 'ANNEXE',
  'A RTICLE' => 'ARTICLE',
  'B ORDEREAU' => 'BORDEREAU',
  'D ÉCOMPOSITION' => 'DÉCOMPOSITION',
  'F ORFAITAIRES' => 'FORFAITAIRES',
  'U NITAIRES' => 'UNITAIRES',
}.freeze

def clean_spaced_titles(text)
  result = text.dup

  # Appliquer les remplacements connus
  KNOWN_REPLACEMENTS.each do |pattern, replacement|
    result.gsub!(pattern, replacement)
  end

  # Pattern générique: une lettre majuscule isolée suivie d'un espace et de lettres
  # Ex: "C LAUSES" -> "CLAUSES"
  # Répéter plusieurs fois pour capturer les cas multiples
  3.times do
    result.gsub!(/\b([A-ZÀÂÄÉÈÊËÎÏÔÖÙÛÜÇ])\s+([A-ZÀÂÄÉÈÊËÎÏÔÖÙÛÜÇ]{2,})\b/) do
      "#{$1}#{$2}"
    end
  end

  result
end

def clean_markdown(content, filename)
  # Patterns des en-têtes/pieds de page à supprimer
  footer_patterns = [
    /^DGPR\/SRN\/SCV.*$/i,
    /^DGPR\/SRN\/service.*$/i,
    /^DGPR\/SRNH\/SCVigicrues.*$/i,
    /^DGPR\/SRN\/SCCTP.*$/i,
    /^\s*\d+\/\d+\s*$/,  # Numéros de page comme "1/25"
  ]

  lines = content.lines

  cleaned_lines = lines.map do |line|
    # Supprimer les pieds de page
    next nil if footer_patterns.any? { |pattern| line.match?(pattern) }

    # Nettoyer les titres espacés
    line = clean_spaced_titles(line)

    # Nettoyer les espaces multiples (mais garder l'indentation)
    if line.start_with?(' ')
      indent = line[/^\s*/]
      rest = line.strip.gsub(/\s{2,}/, ' ')
      line = "#{indent}#{rest}\n"
    else
      line = line.gsub(/\s{2,}/, ' ')
    end

    line
  end

  cleaned_lines.compact.join
    .gsub(/\n{3,}/, "\n\n")  # Max 2 sauts de ligne
    .gsub(/---\n\n+---/, "---")  # Supprimer doubles séparateurs
    .strip + "\n"
end

# Traiter tous les fichiers MD
md_files = Dir.glob(File.join(DCE_MD_DIR, '*_vd.md')) +
           Dir.glob(File.join(DCE_MD_DIR, '*Manuel_Utilisateur.md'))

puts "="*60
puts "Nettoyage des fichiers Markdown"
puts "="*60
puts ""

md_files.each do |filepath|
  filename = File.basename(filepath)
  puts "Nettoyage: #{filename}"

  content = File.read(filepath)
  original_size = content.bytesize

  cleaned = clean_markdown(content, filename)
  new_size = cleaned.bytesize

  File.write(filepath, cleaned)

  reduction = ((original_size - new_size) / original_size.to_f * 100).round(1)
  puts "  #{original_size} -> #{new_size} octets (#{reduction}% réduit)"
end

puts ""
puts "="*60
puts "Terminé!"
puts "="*60
