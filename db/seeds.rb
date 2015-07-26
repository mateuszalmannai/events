# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Event.create!([
  {
    name: 'BugSmash',
    location: 'Wynkoop in LoDo, Denver, CO',
    price: 0.00,
    starts_at: 100.days.from_now,
    description: %{
      Join us for a fun evening of bug smashing! It's a great
      way to get involved in open source projects whether you're
      reporting bugs, fixing bugs, or even inadvertently creating
      a few bugs!
    }
  },
  {
    name: 'Hackathon',
    location: 'Buffalo Billiards, Austin, TX',
    price: 15.00,
    starts_at: 120.days.from_now,
    description: %{
      Got a killer app idea you've been itching to work on? Hunker
      down at the Hackathon! This is an intense, focused day of hacking
      on anything you want. The entry fee goes toward a bounty of cash•
      and prizes for winners in a variety of categories.
    }
  },
  {
    name: 'Kata Camp',
    location: 'Double R Ranch, Dallas, TX',
    price: 75.00,
    starts_at: 150.days.from_now,
    description: %{
      Kata Camp is where developers go to practice their craft without
      the interruptions of a typical project. Forget about having to
      actually ship something. Tell your manager you're going to
      Kata Camp for the day! Price includes a buffet lunch and a
      leather-bound journal to record your kata achievements.
    }
  }
])

