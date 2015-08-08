# pass in an overrides parameter, who's default is is an empty hash.
# However, if a hash is passed in as a parameter, it will get merged
# with the set of attributes in the method body.
# This lets us override any of the attribute values very easily if
# necessary.
def event_attributes(overrides = {})
  {
      name: "BugSmash",
      location: "Denver",
      price: 10.00,
      description: 'A fun evening of bug smashing!',
      starts_at: 10.days.from_now,
      image_file_name: 'bugsmash.png',
      capacity: 75
  }.merge(overrides)
end
