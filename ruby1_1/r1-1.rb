data = [["2020-11-23","book",1000],["2020-11-25","taxi",2000],["2020-11-25","kosai",3000],["2020-12-01","book",4000]]
#月毎
year = []
month = []
month_sales = [0]
num_month = 0
fp = open("result_test.txt","w")
fp.write("data\n--------------------------------\n")
data.size.times{|i|
  year.push(data[i][0].slice(0..3))
  month.push(data[i][0].slice(5..6))
  if i == 0 || (year[i] == year[i - 1] && month[i] == month[i - 1]) then #年月の確認
    month_sales[num_month] += data[i][2].to_i
  else
    fp.write("#{year[i - 1]} #{month[i - 1]} #{month_sales[num_month]}\n") #
    num_month += 1
    month_sales[num_month] = data[i][2].to_i
  end
}
fp.write("#{year[data.size - 1]} #{month[data.size - 1]} #{month_sales[num_month]}\n")
fp.write("--------------------------------\n")

#科目毎
month_subject_sales = [0]
check = 0
subject = [data[0][1]]
subject_sales = [0]
data.size.times{|i|
  subject.each_with_index{|val,s|
    if subject[s] == data[i][1] then
      subject_sales[s] += data[i][2].to_i
      check = 0
    elsif check == 1 && subject.size - 1 == s then
      subject.push(data[i][1])
      month_subject_sales.push(0)
      subject_sales[s + 1] = 0
    end	
  }
  check = 1
}
subject.each_with_index{|val,s|
  fp.write("#{val} #{subject_sales[s]}\n")
}
fp.write("--------------------------------\n")

#月＋科目毎
data.size.times{|i|
  if i == 0 || (year[i] == year[i - 1] && month[i] == month[i - 1]) then
    subject.each_with_index{|val,s|
      if val == data[i][1] then
        month_subject_sales[s] += data[i][2].to_i
      end
    }
  else
    subject.each_with_index{|val,s|
      fp.write("#{year[i - 1]} #{month[i - 1]} #{val} #{month_subject_sales[s]}\n")
      month_subject_sales[s] = 0
      if val == data[i][1] then
        month_subject_sales[s] += data[i][2].to_i
      end
    }
  end
}
subject.each_with_index{|val,s|
  fp.write("#{year[data.size - 1]} #{month[data.size - 1]} #{val} #{month_subject_sales[s]}\n")
}
fp.write("--------------------------------\n")
fp.close
