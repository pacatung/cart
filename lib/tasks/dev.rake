namespace :dev do

  task :fake => :environment do
    Product.delete_all

    100.times do
      Product.create!(
        :name => Faker::App.name,
        :in_stock_qty => rand(10),
        :price => ( rand(100)+1 ) * 10 ,
        :description => Faker::Lorem.paragraph(2),
        :img_url => Faker::Avatar.image
        )
    end
  end
end
