class Calendar
  FIRST_ID = 'is6tkoosdic12kgm0bpsuvb0b0'
  SECOND_ID = 'tqvb0959ftb5qdfarnc5mecqc8'
  BROWN = '%23A32929'
  GREEN = '%2328754E'
  DARK_BLUE = '%2329527A'
  GREEN2 = '%231B887A'

  def initialize
  end

  def cal id, color
    "src=#{id}%40group.calendar.google.com&color=#{color}&"
  end

  def url
    cals = cal(FIRST_ID, BROWN)
    cals += cal(SECOND_ID, GREEN)
    cals += "src=cucocalendar%40gmail.com&color=#{DARK_BLUE}&"
    "https://calendar.google.com/calendar/embed?title=CUCO%20Calendar&height=600&wkst=1&bgcolor=%23FFFFFF&#{cals}ctz=America%2FNew_York"
  end
end
