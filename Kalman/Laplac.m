[x,y] = meshgrid(-5:0.25:5,-5:0.25:5);
U = 1/3.*(x.^4+y.^4);
figure
surf(x,y,U)
grid on
xlabel('x')
ylabel('y')
zlabel('z')
view(35,14)