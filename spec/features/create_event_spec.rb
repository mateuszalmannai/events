describe 'Creating a new event' do

  it "saves the event and shows the new event's details" do
    setup_new_event

    click_button 'Create Event'

    expect(current_path).to eq(event_path(Event.last))

    expect(page).to have_text('New Event Name')
    expect(page).to have_text('Event successfully created!')
  end

  it "doesn't save the event and goes to listing page when 'Cancel' is pressed" do
    setup_new_event

    click_link "Cancel"

    expect(current_path).to eq(events_path)

    expect(page).to_not have_text('New Event Name')
  end

  it "does not save the event if it's invalid" do
    visit new_event_url

    expect {
      click_button 'Create Event'
    }.not_to change(Event, :count)

    expect(page).to have_text('error')
  end

  it "displays the footer partial" do
    setup_new_event
    expect(page).to have_text("The Pragmatic Studio")
  end
end

private

def setup_new_event
  visit events_url

  click_link 'Add New Event'

  expect(current_path).to eq(new_event_path)

  fill_in "event_name", with: "New Event Name"
  fill_in "event_description", with: "A very fun event you should attend"
  fill_in "event_location", with: "Denver, CO"
  fill_in "event_price", with: "10.00"
  select (Time.now.year + 1).to_s, :from => "event_starts_at_1i" # must be in future
  fill_in "event_capacity", with: "75"
  fill_in "event_image_file_name", with: "event.png"

end


