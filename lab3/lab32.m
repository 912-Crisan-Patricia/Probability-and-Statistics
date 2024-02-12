pkg load statistics

p = input( "Please give the probability in between 0.05 and 0.95 ")

for n=1:20:1000
  k=0:n
  y= binopdf(k,n,p)
  plot(k,y)
  pause(0.5)
endfor


