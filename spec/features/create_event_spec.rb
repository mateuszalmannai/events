describe 'Creating a new event' do

  it "saves the event and shows the new event's details" do
    setup_new_event

    click_button 'Create Event'

    expect(current_path).to eq(event_path(Event.last))

    expect(page).to have_text('New Event Name')
  end

  it "doesn't save the event and goes to listing page when 'Cancel' is pressed" do
    setup_new_event

    click_link "Cancel"

    expect(current_path).to eq(events_path)

    expect(page).to_not have_text('New Event Name')
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
end


