n = 20
fp = open("r4-2-1.txt", mode = "w")
fp.write("0 0\n")
n.times{|i|
  fp.write("#{(i + 1) / n.to_f} #{180 * (1 - Math.cos(3.14159 / 2 * (i + 1) / n.to_f))}\n")
}
fp.close
ret = `gnuplot -e "
set terminal svg;
set output 'r4-2-1.svg';
plot 'r4-2-1.txt' w lp"`