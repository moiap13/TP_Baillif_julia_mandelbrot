clear all

a = -0.7485005;   # Declaration of the variable a
b = 0.099948;     # Declaration of the variable b

array_size = 500; # Size of the grid
iteration = 300; # Number of iterationss

q = 2;

% Ensemble complet
x_1 = -0.6;      # Limit pour les fonctions linspace
x_2 = -0.7;      # Limit pour les fonctions linspace
y_1 = -0.2;      # Limit pour les fonctions linspace
y_2 = 0;      # Limit pour les fonctions linspace

x = linspace(x_1,x_2,array_size); 
y = linspace(y_1,y_2,array_size);

[a,b] = meshgrid(x,y);

c = a + i*b;
z = 0;
m = 0;

for t = 1:iteration
	m = m + (abs(z) <= q);
	z = ((z.^2)+c);
endfor

colormap(jet)
imagesc(x,y,abs(m))