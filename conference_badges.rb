def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  attendees.map {|attendee| badge_maker(attendee)}
end

def assign_rooms(attendees)
  rm_num = 0
  attendees.map do |attendee|
    rm_num += 1
    "Hello, #{attendee}! You'll be assigned to room #{rm_num}!"
  end
end

def printer(attendees)
    batch_badge_creator(attendees).each do |tag|
      puts tag
    end

    assign_rooms(attendees).each do |room|
      puts room
    end
end