require 'csv'

# MARVEL COMIC CHARACTERS
marvel_characters_filepath = File.expand_path('../csvs/comic-characters_marvel-wikia-data.csv', __FILE__)
CSV.foreach(marvel_characters_filepath, headers: true, encoding: 'ISO8859-1') do |row|
  next unless row['name']
  next unless row['Year']

  character_hash = {}.tap do |h|
    h['publisher'] = 'marvel'
    if row['name'].match /\s\(Earth-\d+\)/
      h['real_name'] = row['name'].remove /\s\(Earth-\d+\)/
      h['alias'] = nil
    else
      h['real_name'] = row['name']&.[](/\(.*?\)/)&.[](1..-2)&.gsub('\"', '"')
      h['alias'] = row['name'].remove /\s\(.*?\)/
    end
    h['url'] = 'https://marvel.fandom.com/wiki' + row['urlslug'][1..-1]
    h['appearances'] = row['APPEARANCES']&.to_i
    h['alive'] = row['ALIVE'] == 'Living Characters' ? true : false
    h['gender'] = row['SEX']&.remove(' Characters')&.downcase
    h['identity_type'] = if row['ID'] == 'No Dual Identity'
                          nil
                         else
                          row['ID']&.remove(' Identity')&.downcase
                         end
    h['alignment'] = row['ALIGN']&.remove(' Characters')&.downcase
    h['intro_in'] = row['Year'].to_i
  end

  ComicCharacter.find_or_create_by!(character_hash)
end

# MARVEL COMIC CHARACTERS
dc_characters_filepath = File.expand_path('../csvs/comic-characters_dc-wikia-data.csv', __FILE__)
CSV.foreach(dc_characters_filepath, headers: true, encoding: 'ISO8859-1') do |row|
  next unless row['name']
  next unless row['Year']

  character_hash = {}.tap do |h|
    h['publisher'] = 'dc'
    if row['name'].match /\s\(.*?Earth.*?\)/
      h['real_name'] = row['name'].remove /\s\(.*?Earth.*?\)/
      h['alias'] = nil
    else
      h['real_name'] = row['name']&.[](/\(.*?\)/)&.[](1..-2)&.gsub('\"', '"')
      h['alias'] = row['name'].remove /\s\(.*?\)/
    end
    h['url'] = 'https://dc.fandom.com/wiki' + row['urlslug'][1..-1]
    h['appearances'] = row['APPEARANCES']&.to_i
    h['alive'] = row['ALIVE'] == 'Living Characters' ? true : false
    h['gender'] = row['SEX']&.remove(' Characters')&.downcase
    h['identity_type'] = if row['ID'] == 'Identity Unknown'
                          nil
                         else
                          row['ID']&.remove(' Identity')&.downcase
                         end
    h['alignment'] = row['ALIGN']&.remove(' Characters')&.downcase
    h['intro_in'] = row['Year'].to_i
  end

  ComicCharacter.find_or_create_by!(character_hash)
end
