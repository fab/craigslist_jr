Category.create(:name => "community")
Category.create(:name => "personals")
Category.create(:name => "housing")
Category.create(:name => "for sale")
Category.create(:name => "services")
Category.create(:name => "jobs")

post1 = Post.create(title: "Guitar lessons with Robert",
            price: 50,
            description: "Get Robert to teach you guitar!",
            email: "robert@gmail.com",
            category_id: 1)

post2 = Post.create(title: "Apartment in Chinatown",
            price: 100,
            description: "Two bedroom. No car park.",
            email: 'niceplace@rentthis.com',
            category_id: 3)
            
post3 = Post.create(title: "Junior Engineer",
            price: 100000,
            description: "You will be building a Craigslist clone.",
            email: 'gethired@jobs.com',
            category_id: 6)
