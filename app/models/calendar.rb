class Calendar
  attr_reader :signed_in
  SPRING_2016_PUBLIC_ID = 'a8elc993pj7mdgeq5m0knbboc4'
  SPRING_2016_MEMBERS_ONLY_ID = '0g4ch638r3bn787bbpi2pbi5hc'
  RED = '%23FF0000'
  GREEN = '%23008000'

  def initialize
  end

  def public_cal
    "src=#{SPRING_2016_PUBLIC_ID}%40group.calendar.google.com&color=#{RED}&"
  end

  def members_only_cal
    "src=#{SPRING_2016_MEMBERS_ONLY_ID}%40group.calendar.google.com&color=#{GREEN}&"
  end

  def url
    cals = "#{public_cal}#{members_only_cal}"
    "https://calendar.google.com/calendar/embed?title=CUCO%20Calendar&height=600&wkst=1&bgcolor=%23FFFFFF&#{cals}ctz=America%2FNew_York"
  end
end
