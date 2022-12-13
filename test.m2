R = QQ[x,y]
I = ideal(x^2+y^2, x^2*y^2, x^3*y-x*y^3)

y^4 // gens(I)


restart
R = QQ[x,y]
I = ideal(x^5-3)
J = ideal(y^3-5)
K = R/(I+J)
S = QQ[z]
minpoly = ker map(K, S, {x+y})
(x+y)^(-1)

restart
R = QQ[x_0..x_5]
S = QQ[y,z,w]
I = ker map(S, R, {y^2, z^2, w^2, y*z, y*w, z*w})
dim ideal singularLocus I 

G = gens(I)
p1 = apply(take(gens R, 3), i -> (i => 0)) | apply(take(gens R, -3), i -> i => 1)
p2 = apply(gens R, i -> (i => 1))
sub(G, p1)
sub(G, p2)
L = ideal(x_0 + x_1 + x_2, x_3, x_4, x_5)
J = I+L
dim J

restart
