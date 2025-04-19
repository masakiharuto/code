
n = 20
fp = open("r4-1.txt", mode = "w")
fp.write("0 0\n")
n.times{|i|
  fp.write("#{(i + 1 ) / n.to_f} #{(i + 1) * 180 / n.to_f}\n")
}
fp.close
ret = `gnuplot -e "
set terminal svg;
set output 'r4-1.svg';
plot 'r4-1.txt' w lp"`