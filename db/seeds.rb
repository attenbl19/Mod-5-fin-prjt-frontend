############################### SEEDS FOR SHOPS #################################


shops_array = 
[
    {
        
        name: "Paws on Pine",
        location: "New York, NY",
        summary: "Petsitting, Overnight Stays, Dog Walking",
        number: Faker::PhoneNumber.cell_phone,
        website: Faker::Internet.domain_name,
        image: "https://bit.ly/35ouQLu"
        
    },

    {
        
        name: "Jordan's Pet Care",
        location: "Brooklyn, NY",
        summary: "Petsitting, Overnight Stays, Boarding",
        number: Faker::PhoneNumber.cell_phone,
        website: Faker::Internet.domain_name,
        image: "https://bit.ly/3ko67vg",
        
    },

    {
        
        
        name: "Cuddles and Tails Pet Services",
        location: "New York, NY",
        summary: "Petsitting, Overnight Stays, Boarding, Dogwalking, other",
        number: Faker::PhoneNumber.cell_phone,
        website: Faker::Internet.domain_name,
        image: "https://bit.ly/3kncsXY"
    },
    
    {
        
        name: "Anything's Pawsible",
        location: "Jersey City, NJ",
        summary: "Petsitting, Overnight Stays, Boarding, Dogwalking, other",
        number: Faker::PhoneNumber.cell_phone,
        website: Faker::Internet.domain_name,
        image: "https://bit.ly/3eNFwqk",
        
    },

    {
        
        name: "Mobile Mutts Dog Walking and Cat Sitting",
        location: "Brooklyn, NY",
        summary: "Petsitting, Overnight Stays, Boarding",
        number: Faker::PhoneNumber.cell_phone,
        website: Faker::Internet.domain_name,
        image: "https://bit.ly/35nrHvv"
        
    },

    {
        
        name: "Bay Ridge Pet Care",
        location: "Brooklyn, NY",
        summary: "Petsitting, Overnight Stays, Boarding",
        number: Faker::PhoneNumber.cell_phone,
        website: Faker::Internet.domain_name,
        image: "https://bit.ly/32xtZ9C"
        
    },

    {
        
        name: "Pet Sitting Pod",
        location: "New York, NY",
        summary: "Petsitting, Overnight Stays, Boarding, Dogwalking, other",
        number: Faker::PhoneNumber.cell_phone,
        website: Faker::Internet.domain_name,
        image: "https://bit.ly/38B1GuY"
        
    },

    {
        
        name: "Wendy's Pet Care",
        location: "New York, NY",
        summary: "Petsitting, Overnight Stays, Boarding",
        number: Faker::PhoneNumber.cell_phone,
        website: Faker::Internet.domain_name,
        image: "https://bit.ly/2Ug0WTA"
        
    },

    {
        
        name: "Brooklyn Tails & Trails Dog Walkers",
        location: "Brooklyn, NY",
        summary: "Petsitting, Overnight Stays, Dog Walking",
        number: Faker::PhoneNumber.cell_phone,
        website: Faker::Internet.domain_name,
        image: "https://bit.ly/38ybpls"
        
    },

    {
        
        name: "Never Alone Pets",
        location: "Astoria, NY",
        summary: "Petsitting, Overnight Stays, Boarding, Dogwalking, other",
        number: Faker::PhoneNumber.cell_phone,
        website: Faker::Internet.domain_name,
        image: "https://bit.ly/3ntbHyz"
        
    },

    {
        
        name: "Manhattan Pet Service",
        location: "New York, NY",
        summary: "Petsitting, Overnight Stays, Boarding, Dogwalking, other",
        number: Faker::PhoneNumber.cell_phone,
        website: Faker::Internet.domain_name,
        image: "https://bit.ly/32DjC45"
        
    },

    {
        
        name: "WoofMeow",
        location: "Brooklyn, NY",
        summary: "Petsitting, Overnight Stays, Boarding",
        number: Faker::PhoneNumber.cell_phone,
        website: Faker::Internet.domain_name,
        image: "https://bit.ly/2JPIO0H"
        
    },

    {
        
        name: "Jessie's Pet Sitting",
        location: "Bayside, NY",
        summary: "Petsitting, Overnight Stays, Boarding, Dogwalking, other",
        number: Faker::PhoneNumber.cell_phone,
        website: Faker::Internet.domain_name,
        image: "https://bit.ly/3pjQwk0"
        
    },

    {

        name: "Jersey City Tails",
        location: "Jersey City, NJ",
        summary: "Petsitting, Overnight Stays, Boarding",
        number: Faker::PhoneNumber.cell_phone,
        website: Faker::Internet.domain_name,
        image: "https://bit.ly/3eRWcgh"
        
    },

    {
        
        name: "Hudson's Hounds NYC",
        location: "New York, NY",
        summary: "Petsitting, Overnight Stays, Dog Walking",
        number: Faker::PhoneNumber.cell_phone,
        website: Faker::Internet.domain_name,
        image: "https://bit.ly/3eSAatU"
        
    },

    {

        name: "Annella's Trails and Tails",
        location: "Jackson Height, NY",
        summary: "Petsitting, Overnight Stays, Dog Walking",
        number: Faker::PhoneNumber.cell_phone,
        website: Faker::Internet.domain_name,
        image: "https://bit.ly/3kpL0IO"
        
    },

    {
        
        name: "Happy Tails",
        location: "Woodside, NY",
        summary: "Petsitting, Overnight Stays, Boarding",
        number: Faker::PhoneNumber.cell_phone,
        website: Faker::Internet.domain_name,
        image: "https://bit.ly/3eOLxDf"
        
    }
]
shops_array.each do |shop_hash|
    Shop.create!(shop_hash)
end


############################### SEEDS FOR PET TYPES ###########################

# pt_array = 
# [ "Bird", "Cat", "Dog", "Small Animal" ]


54.times do
    PetType.create!(kind: Faker::Creature::Animal.name, shop: Shop.all.sample)
    
    end

    ################################ SEEDS FOR PETS ####################################

    9.times do
        Pet.create!(name: Faker::Name.name, age: rand(12), shop: Shop.all.sample)
    end

    # "https://img.icons8.com/dotty/80/000000/bird.png"
    # "https://img.icons8.com/wired/64/000000/cat.png"
    # "https://img.icons8.com/wired/64/000000/dog.png"
    # "https://img.icons8.com/dotty/80/000000/hamster-wheel.png"
