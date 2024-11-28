# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Movie.destroy_all

puts "Creating movies..."
Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
puts "Created Titanic"
Movie.create(title: "Arcane", overview: "Championnes de leurs villes jumelles et rivales, deux sœurs se battent dans une guerre où font rage des technologies magiques et des perspectives diamétralement opposées.", poster_url: "https://https://image.tmdb.org/t/p/original/ypS7R36Vjcn51zZsXsta5onnaCo.jpg", rating: 7)
puts "Created Arcane"
Movie.create(title: "Word of Honor", overview: "Après avoir perdu tous les membres de son clan, Zhou Zi-Shu décide de renoncer à sa position de chef des assassins au service du prince Jin et de vivre le reste de sa vie sans se soucier des autres. Mais le destin en décide autrement et il se retrouve à nouveau mêlé aux intrigues politiques le jour où sa route croise celle du mystérieux Wen Ke-Xing.", poster_url: "https://image.tmdb.org/t/p/original/op0ZXBZodAc12CVqEN55KxD0FYe.jpg", rating: 10)
puts "Created Word of Honor"
Movie.create(title: "Harry Potter and the deathly hallows part2", overview: "Le combat entre les puissances du bien et du mal de l’univers des sorciers se transforme en guerre sans merci. L’école Poudlard est désormais sous la coupe du professeur Rogue et des force des ténèbres. Les enjeux sont devenus considérables et personne n’est plus en sécurité alors que se rapproche l’ultime épreuve de force avec Voldemort…", poster_url: "https://image.tmdb.org/t/p/original/alQOPmKEPHkH4BLMEla1vTNYrUr.jpg", rating: 7)
puts "Created harry-potter-and-the-deathly-hallows-part-2"
Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
puts "another movie"
Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
puts "another movie"

puts "Finished! Created #{Movie.count} movies."
