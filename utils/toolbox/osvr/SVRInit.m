function model = SVRInit(X, y)

eps = 5;
n = size(X,1);

X = [X y+eps;X y-eps];
y = [ones(n,1);zeros(n,1)];

model = SVMInit(X,y);

end