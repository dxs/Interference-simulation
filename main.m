%%Define a slit
clear
sleft = Slit(1,10,10,400);
sright = Slit(1,10,10,400);

space = 10;

simpleDoubleSlits(space,50,50,sleft,sright);

scenter = Slit(4,4,1,14);

simpleSlits(50,50,scenter);