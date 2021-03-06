import graph3;
import apexstyle;


//ASY file for fig13_06_ex_083D.asy in Chapter 13


size(200,200,IgnoreAspect);
//currentprojection=perspective(7,2,1);
currentprojection=orthographic(8.8,7.8,3);
defaultrender.merge=true;

usepackage("mathspec");
texpreamble("\setallmainfonts[Mapping=tex-text]{Calibri}");
texpreamble("\setmainfont[Mapping=tex-text]{Calibri}");
texpreamble("\setsansfont[Mapping=tex-text]{Calibri}");
texpreamble("\setmathsfont(Greek){[cmmi10]}");

// setup and draw the axes
real[] myxchoice={1,2,3};
real[] myychoice={1,2,3};
real[] myzchoice={1};
defaultpen(0.5mm);

pair xbounds=(-0.5,3.5);
pair ybounds=(-0.5,3.5);
pair zbounds=(-0.5,1.75);

xaxis3("",xbounds.x,xbounds.y,black,OutTicks(myxchoice),Arrow3(size=3mm));
yaxis3("",ybounds.x,ybounds.y,black,OutTicks(myychoice),Arrow3(size=3mm));
zaxis3("",zbounds.x,zbounds.y,black,OutTicks(myzchoice),Arrow3(size=3mm));

label("$x$",(xbounds.y+0.05*(xbounds.y-xbounds.x),0,0));
label("$y$",(0,ybounds.y+0.05*(ybounds.y-ybounds.x),0));
label("$z$",(0,0,zbounds.y+0.05*(zbounds.y-zbounds.x)));


//edges of object
draw((1,0,0)--(1,2,0)--(3,2,0)--(3,0,0)--cycle,rgb(.3,.3,.3)+linewidth(2));
draw((3,0,0)--(1,0,1)--(1,2,1)--(3,2,0),rgb(.3,.3,.3)+linewidth(2));
draw((3,0,0)--(1,0,1),rgb(.3,.3,.3)+linewidth(2));
draw((1,0,0)--(1,0,1),rgb(.3,.3,.3)+linewidth(2));
draw((1,2,0)--(1,2,1),rgb(.3,.3,.3)+linewidth(2));

//shade faces
import three;
path3 p=(1,0,0)--(1,2,0)--(3,2,0)--(3,0,0);
draw(surface(p -- cycle), emissive(simplesurfacepen+opacity(0.2)));
path3 p=(1,0,1)--(1,2,1)--(3,2,0)--(3,0,0);
draw(surface(p -- cycle), emissive(simplesurfacepen+opacity(0.2)));
path3 p=(1,0,0)--(1,2,0)--(1,2,1)--(1,0,1);
draw(surface(p -- cycle), emissive(simplesurfacepen+opacity(0.2)));
path3 p=(1,0,0)--(3,0,0)--(1,0,1);
draw(surface(p -- cycle), emissive(simplesurfacepen+opacity(0.2)));
path3 p=(1,2,0)--(3,2,0)--(1,2,1);
draw(surface(p -- cycle), emissive(simplesurfacepen+opacity(0.2)));



//labels and arrow
label("$z=\frac{1}{2}(3-x)$",(3,0,1.1));
draw((3,0.25,1)--(2,1,0.45),Arrow3(size=2mm));



// ////////////////////////////////////
//    SAMPLE CODE

// defaultpen(fontsize(10pt));

//real f(pair z) {return -z.x^4+2*z.x^2-z.y^4+2*z.y^2;}
//surface s=surface(f,(-1.5,-1.5),(1.5,1.5),Spline);
//pen p=rgb(0,0,.7);
//draw(s,emissive(surfacepen),meshpen=apexmeshpen);

//triple f(pair t) {
//  return (cos(t.x)*1.5*cos(t.y),sin(t.x)*cos(t.y),sin(t.y));
//}
//surface s=surface(f,(0,0),(pi,2*pi),8,8,Spline);
//pen p=rgb(0,0,.7);
//draw(s,emissive(surfacepen),meshpen=apexmeshpen);

//draw(s,paleblack);
//draw(s,lightblack,meshpen=black+thick(),nolight,render(merge=true));
//draw(mypath,2bp+black);

//triple g(real t) {return (t,t,-2*t^4+4*t^2);}
//path3 mypath=graph(g,-1,1,operator ..);
//draw(mypath,black+dashed+linewidth(2));

//pen p=rgb(0,0,1);
//draw(s,paleblack+opacity(.5),meshpen=p,render(merge=true));