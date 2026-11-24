# Maple source extracted from a Maple worksheet (.mw).
# This file contains only the reliably recoverable plain-text input cells.
# IMPORTANT: 2 encoded 2-D input cells could not be converted automatically.
# They must be exported from Maple to 1-D Maple Input for a complete conversion.
# Worksheet outputs and author names are intentionally omitted.

with(plots);

g:=x ->2/(1+exp(-x));

T := proc (x, a) options operator, arrow; g(a)+(x-a)*(D(g))(a) end proc;

display(plot(g(x), x = -5 .. 5, y = -3 .. 3, thickness = 1, color = orange), animate(T(x, t), x = -5..5, t = -3..3, view = -2 .. 4, color = blue , frames = 60));

restart;
with(plots);

g:=(10/(x^3-10*x-10*x^2+100))

plot(g, x = -12 .. 15, -5 .. 5, color = red,discont=true,scaling=unconstrained);

h:=1+2*sin((1/2)*theta)

polarplot(h, theta = 0 .. 4*Pi);

restart;

with(plots):

eqn:=-27*a^4+(x^2+y^2)^2-8*a*x*(x^2-3*y^2)+18*a^2*(x^2+y^2)=0;

f:=proc(n);
(-27*(n)^4+(x^2+y^2)^2-8*(n)*x*(x^2-3*y^2)+18*(n)^2*(x^2+y^2))
end proc:

P[1]:=implicitplot(f(1),x=-4..4,y=-4..4,color=red,scaling=constrained,grid=[200,200],color=green):

P[2]:=implicitplot(f(2),x=-8..8,y=-8..8,color=red,scaling=constrained,grid=[200,200],color=blue):

P[3]:=implicitplot(f(3),x=-16..16,y=-16..16,color=red,scaling=constrained,grid=[200,200],color=black):

display({seq(P[i],i=1..3)}, thickness = 3);

implicitplot([f(1),f(2),f(3)],x=-4..4,y=-4..4,color=red,scaling=constrained,grid=[200,200],view=[-6..6,-6..6]);

restart;

with(plots);

x:= a*(2*cos(t)+cos(2*t));

y:= a*(2*sin(t)-sin(2*t));

x2:=proc(a);
 a*(2*cos(t)+cos(2*t))
end proc;

y2:=proc(a);
a*(2*sin(t)-sin(2*t))
end proc;

x2(2);

P[1]:=plot([x2(2),y2(2),t=0..2*Pi],color=red):

P[2]:=plot([x2(1),y2(1),t=0..2*Pi],color=blue):

P[3]:=plot([x2(3),y2(3),t=0..2*Pi],color=orange):

display({seq(P[i],i=1..3)}, thickness = 3);

# Worksheet note: Not yet

# Worksheet note: Not Yet

restart;

r:=proc(x)
sin(x)*exp(-x^2)
end proc;

r(2);

plot(r(x),x=-3..3,scaling=unconstrained);

s:=diff(r(x),x);

evalf(solve(s=0,x));

r(.6532711871);

r(-.6532711871);

starttime:=time()

sum('n mod 5,n=1..40000')

elapsed_time:=time() - starttime

starttime:=time()

add(n mod 5,n=1..40000)

elapsed_time:=time() - starttime

for n from 1 to 40000
do add(n mod 5)
end do:

restart;

sum('((-1)^n)/n,n=1..infinity')

add(((-1)^n)/n,n=1..infinity)

restart;

s:=x^2+y^2-5

t:=y^2-x*y-2

evalf(solve(s=0,x));

evalf(solve(t=0,x));

restart;

f:=proc(n)
if n=1 then return 1;
 elif n mod 2 = 0 then (2*f(n/2))-1;
 else 2*f((n-1)/2)+1
 end if;
end proc:

for i from 1 to 16 do f(i)
end do;

f(10000);

restart;

Avg(seq(100-i, i = 1 .. 100))

Avg(seq(modp(n, 111), n = 1 .. 1000))
