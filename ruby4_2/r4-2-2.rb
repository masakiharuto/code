dot = 20
num = dot - 1
fp = open("r4-2-2.txt", mode = "w")
fp.write("0 0\n")
num.times{|i|
  fp.write("#{(i + 1) / dot.to_f} #{180 / (1 + Math::exp(-13 * (i - 9) / dot.to_f))}\n")
}
fp.write("1 180\n")
fp.close
ret = `gnuplot -e "set terminal svg;
set output 'r4-2-2.svg';
plot 'r4-2-2.txt' w lp"`