# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

9.times do |portofolio_items|
    Portofolio.create!(
      title:"Portfolio title: #{portofolio_items}",
      subtitle: "My great service",
      body:"It is a long established fact that a reader
      will be distracted by the readable content of a page
      when looking at its layout. The point of using
      Lorem Ipsum is that it has a more-or-less normal
      distribution of letters, as opposed to using
      'Content here, content here', making it look like
      readable English. Many desktop publishing packages
      and web page editors now use Lorem Ipsum as their
      default model text, and a search for 'lorem ipsum'
      will uncover many web sites still in their infancy.
      Various versions have evolved over the years, sometimes
      by accident, sometimes on purpose (injected humour and
      the like).",
      main_image: "http://placehold.it/600X400",
      thumb_image: "http://placehold.it/350x200"
    )
  end

  puts "9 portofolio items created"
