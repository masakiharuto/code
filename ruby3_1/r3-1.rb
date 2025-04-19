require "date"
today = Date.today
first = Date.new(2025, 4, 4)
if today.mon < 10 && today.mday < 10 then
  p sprintf("2025-04-04 から %d-0%d-0%d までの暦日数は %d日",today.year, today.mon, today.mday, today - first)
end
if today.mon < 10 && today.mday >= 10 then
  p sprintf("2025-04-04 から %d-0%d-%d までの暦日数は %d日",today.year, today.mon, today.mday, today - first)
end
if today.mon >= 10 && today.mday < 10 then
  p sprintf("2025-04-04 から %d-%d-0%d までの暦日数は %d日",today.year, today.mon, today.mday, today - first)
end
if today.mon >= 10 && today.mday >= 10 then
  p sprintf("2025-04-04 から %d-%d-%d までの暦日数は %d日",today.year, today.mon, today.mday, today - first)
end