clear all

a = -0.7485005;   
b = 0.099948;     

array_size = 1000;
iteration = 500; 

q = 2; %limite

% Ensemble complet
x_1 = -2;      	%Limite pour les fonctions linspace
x_2 = 2;      	%Limite pour les fonctions linspace
y_1 = -1;      	%Limite pour les fonctions linspace
y_2 = 1;      	%Limite pour les fonctions linspace

x = linspace(x_1,x_2,array_size); 
y = linspace(y_1,y_2,array_size);

[a,b] = meshgrid(x,y);

c = a + i*b;
z = 0;
m = 0;

for t = 1:iteration
	m = m + (abs(z) <= q);	%on stoque dans m si le module de z
				%est plus petit que la limite
	z = ((z.^2)+c);	%on met z au carré et on l'incrémente de c
endfor

colormap([jet() ; flipud(ocean())])
imagesc(x,y,abs(m))	%on affiche les couleurs en fonction du nombre 
			%de fois ou la condition fût true

title('X[-2;2] ; Y[-1;1]');
print("mandelbrot_1.png");
