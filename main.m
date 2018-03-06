%%Define a slit
clear
sleft = Slit(2,1000,10,400);
sright = Slit(10,10,10,400);

space = 6;

simpleDoubleSlits(space,5000,5000,sleft,sright);

scenter = Slit(40,40,100,14);

%simpleSlits(5000,5000,scenter);