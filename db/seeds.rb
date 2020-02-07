languages = ["HTML", "CSS", "JavaScript"]
languages.each do |language|
  Language.create(name: language)
end