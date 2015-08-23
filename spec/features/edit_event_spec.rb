describe "Editing an event" do

  it "updates the event and shows the event's updated details" do
    event = setup_event_to_edit

    expect(current_path).to eq(edit_event_path(event))

    expect(find_field('event_name').value).to eq(event.name)

    fill_in "Name", with: "Updated Event Name"

    click_button "Update Event"

    expect(current_path).to eq(event_path(event))

    expect(page).to have_text("Updated Event Name")
  end

  it "does not update the event and goes to listing page when 'Cancel' is pressed" do
    event = setup_event_to_edit

    expect(current_path).to eq(edit_event_path(event))

    expect(find_field('event_name').value).to eq(event.name)

    fill_in "Name", with: "Updated Event Name"

    click_link "Cancel"

    expect(current_path).to eq(events_path)

    expect(page).to_not have_text('Updated Event Name')
  end

  it "does not update the event if it's invalid" do
    event = Event.create(event_attributes)

    visit edit_event_url(event)

    fill_in 'Name', with: " "

    click_button 'Update Event'

    expect(page).to have_text('error')
  end


  it "displays the footer partial" do
    setup_new_event
    expect(page).to have_text("The Pragmatic Studio")
  end
end

private
def setup_event_to_edit
  event = Event.create(event_attributes)

  visit event_url(event)

  click_link 'Edit'
  event
end


