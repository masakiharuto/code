array = []
fp = open("kinmu_ueno2025_03Mar_txt.txt")
fp.each{|line|
  line.chomp!
  array.push(line)
}
fp.close
hour = 0
sum = 0
day = array.length - 6
for num in 4..day + 4 do
    if array[num].slice(10) == " " && array[num].slice(16) == " " then #1 2　時間の桁数
        hour = array[num].slice(11..12).to_i - array[num].slice(6).to_i
        sum += 60 * hour + array[num].slice(14..15).to_i - array[num].slice(8..9).to_i
    elsif array[num].slice(10) == " " then #1 1
        hour = array[num].slice(11).to_i - array[num].slice(6).to_i
        sum += 60 * hour + array[num].slice(13..14).to_i - array[num].slice(8..9).to_i
    elsif array[num].slice(16) == " " then #2 1
        hour = array[num].slice(12).to_i - array[num].slice(6..7).to_i
        sum += 60 * hour + array[num].slice(14..15).to_i - array[num].slice(9..10).to_i
    else #2 2
        hour = array[num].slice(12..13).to_i - array[num].slice(6..7).to_i
        sum += 60 * hour + array[num].slice(15..16).to_i - array[num].slice(9..10).to_i
    end
end
p sprintf("ueno %s-%s %dh %dmin",array[0].slice(6..9),array[0].slice(11..12), sum / 60, sum % 60)