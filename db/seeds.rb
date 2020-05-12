puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", stars: 5, chef_name: "Jamie Oliver" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", stars: 4, chef_name: "Eyal Shani" }
abulafia =  { name: "Abulafia", address: "Tel Aviv", stars: 4 , chef_name: "Asaf Granit"}
tony_ve_ester =  { name: "Tony ve Ester", address: "Tel Aviv", stars: 5 , chef_name: "Aharoni"}
mcdonald =  { name: "mcdonald", address: "Tel Aviv", stars: 4, chef_name: "Jamie Oliver" }

[dishoom, pizza_east, abulafia, tony_ve_ester, mcdonald].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
