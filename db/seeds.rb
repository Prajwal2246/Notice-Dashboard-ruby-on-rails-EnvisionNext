# db/seeds.rb
Notice.destroy_all

notices = [
  { title: "Welcome to the Board", body: "This is a pinned notice for everyone to see first.", author_name: "Admin", category: "General", pinned: true },
  { title: "New Feature Launch", body: "We just added a category filter to the notice board! Try it out above.", author_name: "Dev Team", category: "Other", pinned: false },
  { title: "JS Workshop", body: "Join us this Friday for a deep dive into React and Node.js hooks.", author_name: "Prajwal", category: "Event", pinned: false },
  { title: "Junior Rails Developer", body: "We are looking for an intern to join our Pune office. Apply within!", author_name: "HR Team", category: "Job", pinned: false },
  { title: "Community Meetup", body: "Monthly meetup at the local cafe. Free coffee for all attendees!", author_name: "Sarah", category: "Event", pinned: false },
  { title: "Lost MacBook Air", body: "Found a MacBook with a Kakashi sticker. Contact me to claim.", author_name: "Security", category: "Other", pinned: false }
]

notices.each do |n|
  Notice.create!(n)
end

puts "Seeded #{Notice.count} notices successfully!"