Dir.glob('./chapters/*.md').each do |markdown_file|
  review_file = markdown_file.gsub('./chapters', './reviews').gsub('.md', '.re')
  system("md2review #{markdown_file} > #{review_file}")
end
