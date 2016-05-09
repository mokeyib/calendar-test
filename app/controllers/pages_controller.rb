class PagesController < ApplicationController
  def calendar
    @calendar_src = Calendar.new.url
  end
  
  def event
    @event = {
      'summary' => 'New Event Title',
      'description' => 'The description',
      'location' => 'Location',
      'start' => { 'dateTime' => DateTime.new(2016, 5, 20, 22, 35, 0) },
      'end' => { 'dateTime' => DateTime.new(2016, 5, 20, 22, 45, 0) }}
  
    client = Google::APIClient.new(:application_name => "ib-calendar-test",
                                   :application_version => "1.0")
    client.authorization.access_token = current_user.token
    service = client.discovered_api('calendar', 'v3')

    @set_event = client.execute(:api_method => service.events.insert,
                                :parameters => {'calendarId' => current_user.email, 'sendNotifications' => false},
                                :body => JSON.dump(@event),
                                :headers => {'Content-Type' => 'application/json'})
    redirect_to pages_calendar_path
  end
end
