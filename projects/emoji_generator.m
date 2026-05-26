% (1) This code block generates a Grinning Face Emoji."😀"
%face

r=4;
t1=linspace(0,pi/2,200);
x1=r*cos(t1);
y1=r*sin(t1);
plot(x1,y1,'Color','y');fill([0,x1,0],[0,y1,0],'y','EdgeColor','none');
axis equal;hold on;axis off;
t2 = linspace(pi/2, pi, 200);
x2 = r*cos(t2);
y2 = r*sin(t2);
plot(x2, y2, 'Color','y');fill([0,x2,0],[0,y2,0],'y','EdgeColor','none');
t3 = linspace(pi, 3*pi/2, 200);
x3 = r*cos(t3);
y3 = r*sin(t3);
plot(x3, y3, 'Color','y');fill([0,x3,0],[0,y3,0],'y','EdgeColor','none');
t4=linspace(3*pi/2,2*pi,200);
x4 = r*cos(t4);
y4 = r*sin(t4);
plot(x4, y4, 'Color','y');fill([0,x4,0],[0,y4,0],'y','EdgeColor','none');


%right eye
r1=0.5;
h=1.5;k=1.2;
x5=h+r1*cos(t1);
y5=k+r1*sin(t1);
plot(x5,y5,'Color','#000000');fill([h,x5,h],[k,y5,k],'k','EdgeColor','none');
x6=h+r1*cos(t2);
y6=k+r1*sin(t2);
plot(x6,y6,'Color','#000000');fill([h,x6,h],[k,y6,k],'k','EdgeColor','none');
x7=h+r1*cos(t3);
y7=k+r1*sin(t3);
plot(x7,y7,'Color','#000000');fill([h,x7,h],[k,y7,k],'k','EdgeColor','none');
x8=h+r1*cos(t4);
y8=k+r1*sin(t4);
plot(x8, y8, 'Color','#000000');fill([h,x8,h],[k,y8,k],'k','EdgeColor','none');


%left eye
h=-1.5;k=1.2;
x9=h+r1*cos(t1);
y9=k+r1*sin(t1);
plot(x9,y9,'Color','#000000');fill([h,x9,h],[k,y9,k],'k','EdgeColor','none');
x10=h+r1*cos(t2);
y10=k+r1*sin(t2);
plot(x10,y6,'Color','#000000');fill([h,x10,h],[k,y10,k],'k','EdgeColor','none');
x11=h+r1*cos(t3);
y11=k+r1*sin(t3);
plot(x11,y11,'Color','#000000');fill([h,x11,h],[k,y11,k],'k','EdgeColor','none');
x12=h+r1*cos(t4);
y12=k+r1*sin(t4);
plot(x12, y12, 'Color','#000000');fill([h,x12,h],[k,y12,k],'k','EdgeColor','none');


%black smile
h=0;
k=-0.6;
x=linspace(-2.34,2.34,200);
y=0.08*(x-h).^2+ k;
plot(x,y,'LineWidth',4,'Color','k');
h=0;
k=-0.22;
t=linspace(pi,2*pi,200);
x1=h+2.3*cos(t);
y1=k+2.3*sin(t);
plot(x1,y1,'LineWidth',4,'Color','k');
fill([x, fliplr(x1)], [y, fliplr(y1)], 'k','EdgeColor','none');

%white smile
h=0;
k=-0.8;
x2=linspace(-2.33,2.33,200);
y2=0.08*(x-h).^2+ k;
plot(x2,y2,'LineWidth',4,'Color','w');
fill([x, fliplr(x2)], [y, fliplr(y2)], 'w','EdgeColor','w');


%red part
h=0;
k=-0.22;
t=linspace(4.30,5.123,200);
x3=h+2.3*cos(t);
y3=k+2.3*sin(t);
plot(x3,y3,'LineWidth',4,'Color','#DE4E7D');
h=0;
k=-1.9;
x=linspace(-0.96,0.96,200);
y=-0.51*(x-h).^2+ k;
plot(x,y,'LineWidth',3,'Color','#DE4E7D');
fill([x3, fliplr(x)], [y3, fliplr(y)],[ 222/255, 78/255, 125/255],'EdgeColor','none');

figure

% (2) This code block generates a Grinning Face with Big Eyes Emoji."😃"
r=1;
t1=linspace(0,pi/2,200);
x1=r*cos(t1);
y1=r*sin(t1);
plot(x1,y1,'Color','y');fill([0,x1,0],[0,y1,0],'y','EdgeColor','none');
axis equal;hold on;axis off;
t2 = linspace(pi/2, pi, 200);
x2 = r*cos(t2);
y2 = r*sin(t2);
plot(x2, y2, 'Color','y');fill([0,x2,0],[0,y2,0],'y','EdgeColor','none');
t3 = linspace(pi, 3*pi/2, 200);
x3 = r*cos(t3);
y3 = r*sin(t3);
plot(x3, y3, 'Color','y');fill([0,x3,0],[0,y3,0],'y','EdgeColor','none');
t4=linspace(3*pi/2,2*pi,200);
x4 = r*cos(t4);
y4 = r*sin(t4);
plot(x4, y4, 'Color','y');fill([0,x4,0],[0,y4,0],'y','EdgeColor','none');

hold on
axis equal
axis off

% Eyes
eye_theta = linspace(0, 2*pi, 50);
fill(0.12*cos(eye_theta)-0.33, 0.17*sin(eye_theta)+0.35, [0 0 0]); % Left eye
fill(0.12*cos(eye_theta)+0.33, 0.17*sin(eye_theta)+0.35, [0 0 0]); % Right eye

% Larger Lips base (black semicircle) - increased radius
theta_lips = linspace(pi, 2*pi, 300);
lips_x = 0.6*cos(theta_lips);
lips_y = 0.3*sin(theta_lips) - 0.36;
fill(lips_x, lips_y, [0 0 0]);

% Larger Lower red lips (middle third semicircle) - increased radius
theta_red = linspace(pi + (2*pi - pi)/3, pi + 2*(2*pi - pi)/3, 100);
red_x = 0.58*cos(theta_red);
red_y = 0.28*sin(theta_red) - 0.36;
fill(red_x, red_y, [1 0 0]);

% White line highlight on diameter side (flat side) with thicker and longer line
plot([-0.6 0.6], [-0.36 -0.36], 'w', 'LineWidth', 6);

hold off

figure

% (3) This code block generates a Grinning Face with Smiling Eyes Emoji."😄"
r=1;
t1=linspace(0,pi/2,200);
x1=r*cos(t1);
y1=r*sin(t1);
plot(x1,y1,'Color','y');fill([0,x1,0],[0,y1,0],'y','EdgeColor','none');
axis equal;hold on;axis off;
t2 = linspace(pi/2, pi, 200);
x2 = r*cos(t2);
y2 = r*sin(t2);
plot(x2, y2, 'Color','y');fill([0,x2,0],[0,y2,0],'y','EdgeColor','none');
t3 = linspace(pi, 3*pi/2, 200);
x3 = r*cos(t3);
y3 = r*sin(t3);
plot(x3, y3, 'Color','y');fill([0,x3,0],[0,y3,0],'y','EdgeColor','none');
t4=linspace(3*pi/2,2*pi,200);
x4 = r*cos(t4);
y4 = r*sin(t4);
plot(x4, y4, 'Color','y');fill([0,x4,0],[0,y4,0],'y','EdgeColor','none');

hold on
axis equal
axis off

% Eyes - upward bowl shape outline only (top half circle arcs, no fill)
eye_radius = 0.1;
eye_center_left = [-0.33, 0.36];
eye_center_right = [0.33, 0.36];
theta_eye = linspace(0, pi, 100); % top half circle

% Left eye outline
plot(eye_center_left(1) + eye_radius*cos(theta_eye), ...
     eye_center_left(2) + eye_radius*sin(theta_eye), 'k', 'LineWidth', 3);

% Right eye outline
plot(eye_center_right(1) + eye_radius*cos(theta_eye), ...
     eye_center_right(2) + eye_radius*sin(theta_eye), 'k', 'LineWidth', 3);

% Larger Lips base (black semicircle)
theta_lips = linspace(pi, 2*pi, 300);
lips_x = 0.6*cos(theta_lips);
lips_y = 0.3*sin(theta_lips) - 0.36;
fill(lips_x, lips_y, [0 0 0]);

% Larger Lower red lips (middle third semicircle)
theta_red = linspace(pi + (2*pi - pi)/3, pi + 2*(2*pi - pi)/3, 100);
red_x = 0.58*cos(theta_red);
red_y = 0.28*sin(theta_red) - 0.36;
fill(red_x, red_y, [1 0 0]);

% White line highlight on diameter side (flat side) with thick line
plot([-0.6 0.6], [-0.36 -0.36], 'w', 'LineWidth', 6);
hold off

figure

% (4) This code block generates a Beaming Face with Smiling Eyes Emoji."😁"
r = 4 ;
t1 = linspace(0, pi/2, 100);
x1 = r * cos(t1);
y1 = r * sin(t1);
plot(x1 , y1 , 'Color','#FFFF00');
fill([0,x1,0],[0,y1,0],'y','EdgeColor','none');
axis equal; hold on;axis off;
t2 = linspace(pi/2,pi , 100);
x2 = r * cos(t2);
y2 = r * sin(t2);
plot(x2 , y2 ,'Color','#FFFF00' );
fill([0,x2,0],[0,y2,0],'y','EdgeColor','none');
axis equal; hold on;
t3 = linspace(pi,3*pi/2 , 100);
x3 = r*cos(t3);
y3 = r*sin(t3);
plot(x3 , y3 , 'Color','#FFFF00');
fill([0,x3,0],[0,y3,0],'y','EdgeColor','none');
axis equal; hold on;
t4 = linspace(3*pi/2,2*pi, 100);
x4 = r * cos(t4);
y4 = r * sin(t4);
plot(x4 , y4 , 'Color','#FFFF00');
fill([0,x4,0],[0,y4,0],'y','EdgeColor','none');
axis equal;hold on;
h1 = 0;
k1 = 1.5;
a1 = -6;
x1 = linspace(-0.3 , 0.3 , 100);
y1 = a1*(x1-h1).^2 + k1 ;
plot(x1+1.5 , y1+0.5 ,'LineWidth',6,'Color','k');
h2 = 0;
k2 = 1.5;
a2 = -6;
x2 = linspace(-0.3 , 0.3 , 100);
y2 = a1*(x1-h1).^2 + k1 ;
plot(x2-1.5 , y2+0.5 ,'LineWidth',6,'Color','k');
c = -1.5 ;
x_p = linspace(-1 , 1 , 100);
y_p = 0.9*x_p.^2 + c ;
plot(x_p , y_p , 'LineWidth', 4 ,'Color','k');
h1 = 0;
k1 = 1.5;
a1 = -6;
x1 = linspace(-0.3 , 0.3 , 100);
y1 = a1*(x1-h1).^2 + k1 ;
plot(x1+1.5 , y1+0.5 ,'LineWidth',6,'Color','k');
h2 = 0;
k2 = 1.5;
a2 = -6;
x2 = linspace(-0.3 , 0.3 , 100);
y2 = a1*(x1-h1).^2 + k1 ;
plot(x2-1.5 , y2+0.5 ,'LineWidth',6,'Color','k');
c = -1.5 ;
x_p = linspace(-1 , 1 , 100);
y_p = 0.9*x_p.^2 + c ;
plot(x_p , y_p , 'LineWidth', 4 ,'Color','k');
c2 = -0.9 ;
x_p2 = linspace(-1 , 1 , 100);
y_p2 = 0.3*x_p2.^2 + c2 ;
plot(x_p2 , y_p2 , 'LineWidth', 4 ,'Color','k');



c3 = -1.2 ;
x_p3 = linspace(-0.8 , 0.8 , 100);
y_p3 = 0.3*x_p3.^2 + c3 ;
plot(x_p3 , y_p3 , 'LineWidth', 2 ,'Color','k');
fill([x_p, fliplr(x_p2)] , [y_p , fliplr(y_p2)],'w');
plot(x_p3 , y_p3 , 'LineWidth', 3 ,'Color','k');
text(-0.8,-0.9,'|', 'FontSize',18,'FontWeight','normal','Color','#000000');
text(-0.3,-0.99,'|', 'FontSize',18,'FontWeight','normal','Color','#000000');
text(0.19,-0.99,'|', 'FontSize',18,'FontWeight','normal','Color','#000000');
text(0.6,-0.9,'|', 'FontSize',18,'FontWeight','normal','Color','#000000');
text(-0.33,-1.34,'|', 'FontSize',13,'FontWeight','normal','Color','#000000');
text(0.12,-1.34,'|', 'FontSize',13,'FontWeight','normal','Color','#000000');


figure

% (5) This code block generates a Grinning Squinting Face Emoji."😆"
r = 4 ;
t1 = linspace(0, pi/2, 100);
x1 = r * cos(t1);
y1 = r * sin(t1);
plot(x1 , y1 , 'Color','#FFFF00');
fill([0,x1,0],[0,y1,0],'y','EdgeColor','none');
axis equal; hold on;axis off;
t2 = linspace(pi/2,pi , 100);
x2 = r * cos(t2);
y2 = r * sin(t2);
plot(x2 , y2 , 'Color','#FFFF00');
fill([0,x2,0],[0,y2,0],'y','EdgeColor','none');
axis equal; hold on;
t3 = linspace(pi,3*pi/2 , 100);
x3 = r * cos(t3);
y3 = r * sin(t3);
plot(x3 , y3 , 'Color','#FFFF00');
fill([0,x3,0],[0,y3,0],'y','EdgeColor','none');
axis equal; hold on;
t4 = linspace(3*pi/2,2*pi, 100);
x4 = r * cos(t4);
y4 = r * sin(t4);
plot(x4 , y4 , 'Color','#FFFF00');
fill([0,x4,0],[0,y4,0],'y','EdgeColor','none');
axis equal;hold on;
text(1,1.5,'<', 'FontSize',100,'FontWeight','bold','Color','#000000');
text(-2,1.5,'>', 'FontSize',100,'FontWeight','bold','Color','#000000');
c = -2 ;
x_p = linspace(-1 , 1 , 100);
y_p = x_p.^2 + c ;
plot(x_p , y_p , 'LineWidth', 4 ,'Color','k');
text(0,-1,'-','FontSize',40,'FontWeight','bold','Color','#000000');
text(0.1,-1,'-','FontSize',40,'FontWeight','bold','Color','#000000');
text(0.2,-1,'-','FontSize',40,'FontWeight','bold','Color','#000000');
text(0.3,-1,'-','FontSize',40,'FontWeight','bold','Color','#000000');
text(0.4,-1,'-','FontSize',40,'FontWeight','bold','Color','#000000');
text(0.5,-1,'-','FontSize',40,'FontWeight','bold','Color','#000000');
text(0.6,-1,'-','FontSize',40,'FontWeight','bold','Color','#000000');
text(-0,-1,'-','FontSize',40,'FontWeight','bold','Color','#000000');
text(-0.1,-1,'-','FontSize',40,'FontWeight','bold','Color','#000000');
text(-0.2,-1,'-','FontSize',40,'FontWeight','bold','Color','#000000');
text(-0.3,-1,'-','FontSize',40,'FontWeight','bold','Color','#000000');
text(-0.4,-1,'-','FontSize',40,'FontWeight','bold','Color','#000000');
text(-0.5,-1,'-','FontSize',40,'FontWeight','bold','Color','#000000');
text(-0.6,-1,'-','FontSize',40,'FontWeight','bold','Color','#000000');
text(-0.8,-1,'-','FontSize',40,'FontWeight','bold','Color','#000000');
text(-0.9,-1,'-','FontSize',40,'FontWeight','bold','Color','#000000');
text(-1,-1,'-','FontSize',40,'FontWeight','bold','Color','#000000');
fill([-0.9 0.9 0.6 -0.6],[-1.1 -1.1 -1.5 -1.5],[1 1 1])

figure

% (6) This code block generates a Grinning Face with Sweat Emoji."😅"
r=1;
t1=linspace(0,pi/2,200);
x1=r*cos(t1);
y1=r*sin(t1);
plot(x1,y1,'Color','y');fill([0,x1,0],[0,y1,0],'y','EdgeColor','none');
axis equal;hold on;axis off;
t2 = linspace(pi/2, pi, 200);
x2 = r*cos(t2);
y2 = r*sin(t2);
plot(x2, y2, 'Color','y');fill([0,x2,0],[0,y2,0],'y','EdgeColor','none');
t3 = linspace(pi, 3*pi/2, 200);
x3 = r*cos(t3);
y3 = r*sin(t3);
plot(x3, y3, 'Color','y');fill([0,x3,0],[0,y3,0],'y','EdgeColor','none');
t4=linspace(3*pi/2,2*pi,200);
x4 = r*cos(t4);
y4 = r*sin(t4);
plot(x4, y4, 'Color','y');fill([0,x4,0],[0,y4,0],'y','EdgeColor','none');

hold on;
axis equal;
axis off;

% Eyes - upward bowl shape outline only (top half circle arcs, no fill)
eye_radius = 0.1;
eye_center_left = [-0.33, 0.36];
eye_center_right = [0.33, 0.36];
theta_eye = linspace(0, pi, 100); % top half circle

plot(eye_center_left(1) + eye_radius*cos(theta_eye), ...
     eye_center_left(2) + eye_radius*sin(theta_eye), 'k', 'LineWidth', 3);

plot(eye_center_right(1) + eye_radius*cos(theta_eye), ...
     eye_center_right(2) + eye_radius*sin(theta_eye), 'k', 'LineWidth', 3);

% Larger Lips base (black semicircle)
theta_lips = linspace(pi, 2*pi, 300);
lips_x = 0.6*cos(theta_lips);
lips_y = 0.3*sin(theta_lips) - 0.36;
fill(lips_x, lips_y, [0 0 0]);

% Larger Lower red lips (middle third semicircle)
theta_red = linspace(pi + (2*pi - pi)/3, pi + 2*(2*pi - pi)/3, 100);
red_x = 0.58*cos(theta_red);
red_y = 0.28*sin(theta_red) - 0.36;
fill(red_x, red_y, [1 0 0]);

% White line highlight on diameter side (flat side) with thick line
plot([-0.6 0.6], [-0.36 -0.36], 'w', 'LineWidth', 6);

% Vertical shift offset for water droplet
vertical_shift = 0.1; % adjust this value to shift more/less

% Water droplet triangle top coordinates (shifted to upper right)
triangle_x = [0 0.1 -0.1] + 0.8;
triangle_y = [0.15 0 0] + vertical_shift;

fill(triangle_x, triangle_y, [0.3 0.5 0.7],'EdgeColor','none'); % Dull blue triangle top

% Semicircle below triangle
t = linspace(pi, 2*pi, 100); % bottom half circle
semi_x = 0.1*cos(t) + 0.8;
semi_y = 0.15*sin(t) + vertical_shift;

fill(semi_x, semi_y, [0.3 0.5 0.7],'EdgeColor','none'); % Dull blue semicircle below triangle

hold off

figure

% (7) This code block generates a Rolling on the Floor Laughing Emoji."🤣"
%circle
r=4;
t1=linspace(0,pi/2,200);
x1=r*cos(t1);
y1=r*sin(t1);
plot(x1,y1,'Color','y');fill([0,x1,0],[0,y1,0],'y','EdgeColor','none');
grid off;axis off;
axis equal;hold on;
t2 = linspace(pi/2, pi, 200);
x2 = r*cos(t2);
y2 = r*sin(t2);
plot(x2, y2, 'Color','y');fill([0,x2,0],[0,y2,0],'y','EdgeColor','none');
t3 = linspace(pi, 3*pi/2, 200);
x3 = r*cos(t3);
y3 = r*sin(t3);
plot(x3, y3, 'Color','y');fill([0,x3,0],[0,y3,0],'y','EdgeColor','none');
t4=linspace(3*pi/2,2*pi,200);
x4 = r*cos(t4);
y4 = r*sin(t4);
plot(x4, y4, 'Color','y');fill([0,x4,0],[0,y4,0],'y','EdgeColor','none');


% Define rotation angle in radians (positive for counterclockwise tilt)
theta = deg2rad(25); % Adjust angle as needed

% Pivot point for rotation (center of smile)
pivot_x = 0;
pivot_y = -0.58;

%uper smile and lower smile
h=0;
k=-0.58;
x=linspace(-2.34,2.34,200);
y=(0.08*(x-h).^2+ k);
% Apply rotation to upper smile
x_rot = pivot_x + (x - pivot_x)*cos(theta) - (y - pivot_y)*sin(theta);
y_rot = pivot_y + (x - pivot_x)*sin(theta) + (y - pivot_y)*cos(theta);

plot(x_rot, y_rot, 'LineWidth', 4, 'Color', 'w');


h=0;
k=-0.22;
t=linspace(pi,2*pi,200);
x1=h+2.3*cos(t);
y1=k+2.3*sin(t);
% Apply rotation to lower arc
x1_rot = pivot_x + (x1 - pivot_x)*cos(theta) - (y1 - pivot_y)*sin(theta);
y1_rot = pivot_y + (x1 - pivot_x)*sin(theta) + (y1 - pivot_y)*cos(theta);

plot(x1_rot, y1_rot, 'LineWidth', 4, 'Color', 'k');
fill([x_rot, fliplr(x1_rot)], [y_rot, fliplr(y1_rot)], 'k', 'EdgeColor', 'none');



%white smile
h=0;
k=-0.8;
x2=linspace(-2.33,2.33,200);
y2=0.08*(x-h).^2+ k;
% Apply rotation to white smile
x2_rot = pivot_x + (x2 - pivot_x)*cos(theta) - (y2 - pivot_y)*sin(theta);
y2_rot = pivot_y + (x2 - pivot_x)*sin(theta) + (y2 - pivot_y)*cos(theta);

plot(x2_rot, y2_rot, 'LineWidth', 4, 'Color', 'w');
fill([x_rot, fliplr(x2_rot)], [y_rot, fliplr(y2_rot)], 'w', 'EdgeColor', 'w');

%red part
h=0;
k=-0.22;
t=linspace(4.30,5.123,200);
x3=h+2.3*cos(t);
y3=k+2.3*sin(t);

% Apply rotation to red arc
x3_rot = pivot_x + (x3 - pivot_x)*cos(theta) - (y3 - pivot_y)*sin(theta);
y3_rot = pivot_y + (x3 - pivot_x)*sin(theta) + (y3 - pivot_y)*cos(theta);

plot(x3_rot, y3_rot, 'LineWidth', 4, 'Color', '#DE4E7D');
hold on;

%eyes with greater than and less than

%greatear than
x_gt = [0.8 2.0 2.0 1.2 2.0 2.0 0.8];   
y_gt = [1.5 2.5 2.1 1.5 0.9 0.5 1.5];

%rotation of gt
x_gtr = pivot_x + (x_gt - pivot_x)*cos(theta) - (y_gt - pivot_y)*sin(theta);
y_gtr = pivot_y + (x_gt - pivot_x)*sin(theta) + (y_gt - pivot_y)*cos(theta);


fill(x_gtr, y_gtr, 'k');  

%less than
x_lt = - x_gt;
y_lt = y_gt;

%rotation of less than
x_ltr = pivot_x + (x_lt - pivot_x)*cos(theta) - (y_lt - pivot_y)*sin(theta);
y_ltr = pivot_y + (x_lt - pivot_x)*sin(theta) + (y_lt - pivot_y)*cos(theta);

fill(x_ltr, y_ltr, 'k');  

% left tear without rotation

rt = 0.5;

tt1=linspace(13*pi/18,3*pi/2,500);
tt2=linspace(3*pi/2,35*pi/18,500);

x_ctr1 = -3;
y_ctr1 = -1;

xc1 = x_ctr1 + rt*cos(tt1);
yc1 = y_ctr1 + rt*sin(tt1);
xc2 = x_ctr1 + rt*cos(tt2);
yc2 = y_ctr1 + rt*sin(tt2);
plot(xc1,yc1,'Color','blue');fill([-2.5,xc1,xc2,-2.5],[0,yc1,yc2,0],'blue','EdgeColor','none');

hold on;

% right tear without rotation

rt = 0.5;

tt1=linspace(0,-110*pi/180,500);
tt2=linspace(-290*pi/180,-2*pi,500);

x_ctr1 = 2.4;
y_ctr1 = 1.3;

xc1 = x_ctr1 + rt*cos(tt1);
yc1 = y_ctr1 + rt*sin(tt1);
xc2 = x_ctr1 + rt*cos(tt2);
yc2 = y_ctr1 + rt*sin(tt2);
plot(xc1,yc1,'Color','blue');fill([1.18,xc2,xc1,1.18],[1.60,yc2,yc1,1.60],'blue','EdgeColor','none');

hold on;

axis equal;
grid on;
hold off;

figure

% (8)This code block generates Face with Tears of Joy Emoji."😂"
%circle
r=4;
t1=linspace(0,pi/2,200);
x1=r*cos(t1);
y1=r*sin(t1);
plot(x1,y1,'Color','y');fill([0,x1,0],[0,y1,0],'y','EdgeColor','none');
axis equal;hold on;axis off;
t2 = linspace(pi/2, pi, 200);
x2 = r*cos(t2);
y2 = r*sin(t2);
plot(x2, y2, 'Color','y');fill([0,x2,0],[0,y2,0],'y','EdgeColor','none');
t3 = linspace(pi, 3*pi/2, 200);
x3 = r*cos(t3);
y3 = r*sin(t3);
plot(x3, y3, 'Color','y');fill([0,x3,0],[0,y3,0],'y','EdgeColor','none');
t4=linspace(3*pi/2,2*pi,200);
x4 = r*cos(t4);
y4 = r*sin(t4);
plot(x4, y4, 'Color','y');fill([0,x4,0],[0,y4,0],'y','EdgeColor','none');
%right eye
h=1.35;
k=1;
x=linspace(0.7,2,200);
y=-0.9*(x-h).^2 + k;
plot(x,y,'LineWidth',4,'Color','k');
h=1.35;
k=1.175;
x1=linspace(0.7,2,200);
y1=-1.25*(x-h).^2 + k;
plot(x1,y1,'LineWidth',4,'Color','k');
fill([x, fliplr(x1)], [y, fliplr(y1)], 'k','EdgeColor','none');

%left eye
h=-1.35;
k=1;
x=linspace(-2,-0.7,200);
y=-0.9*(x-h).^2 + k;
plot(x,y,'LineWidth',4,'Color','k');
h=-1.35;
k=1.175;
x1=linspace(-2,-0.7,200);
y1=-1.25*(x-h).^2 + k;
plot(x1,y1,'LineWidth',4,'Color','k');
fill([x, fliplr(x1)], [y, fliplr(y1)], 'k','EdgeColor','none');

%uper smile and lower smile
h=0;
k=-0.58;
x=linspace(-2.34,2.34,200);
y=0.08*(x-h).^2+ k;
plot(x,y,'LineWidth',4,'Color','w');
h=0;
k=-0.22;
t=linspace(pi,2*pi,200);
x1=h+2.3*cos(t);
y1=k+2.3*sin(t);
plot(x1,y1,'LineWidth',4,'Color','k');
fill([x, fliplr(x1)], [y, fliplr(y1)], 'k','EdgeColor','none');

%white smile
h=0;
k=-0.8;
x2=linspace(-2.33,2.33,200);
y2=0.08*(x-h).^2+ k;
plot(x2,y2,'LineWidth',4,'Color','w');
fill([x, fliplr(x2)], [y, fliplr(y2)], 'w','EdgeColor','w');

%red part
h=0;
k=-0.22;
t=linspace(4.30,5.123,200);
x3=h+2.3*cos(t);
y3=k+2.3*sin(t);
plot(x3,y3,'LineWidth',4,'Color','#DE4E7D');
h=0;
k=-1.9;
x=linspace(-0.96,0.96,200);
y=-0.51*(x-h).^2+ k;
plot(x,y,'LineWidth',3,'Color','#DE4E7D');
fill([x3, fliplr(x)], [y3, fliplr(y)],[ 222/255, 78/255, 125/255],'EdgeColor','none');

%eyebrow
h=1.2;
k=1.8;
x=linspace(1.35,2.2,200);
y=-0.9*(x-h).^2 + k;
plot(x,y,'LineWidth',4,'Color','k');
h=-1.2;
k=1.8;
x=linspace(-2.2,-1.35,200);
y=-0.9*(x-h).^2 + k;
plot(x,y,'LineWidth',4,'Color','k');

% left eyedrops
h=-1.8;
k=0.6;
x=linspace(-3.3,-2,200);
y=-0.2*(x-h).^2 + k;
plot(x,y,'LineWidth',4,'Color','#27DAF5');
h=-1.8;
k=0.6;
x2=linspace(-2.8,-2,200);
y2=-0.54*(x-h).^2 + k;
plot(x2,y2,'LineWidth',4,'Color','#27DAF5');
h=-3.05;
k=-0.225;
t=linspace(2.096,5.35,200);
x1=h+0.4507*cos(t);
y1=k+0.4507*sin(t);
plot(x1,y1,'LineWidth',4,'Color','#27DAF5');
xf = [x  fliplr(x2)  fliplr(x1)];
yf = [y  fliplr(y2)  fliplr(y1)];
fill(xf, yf, [39/255,218/255,245/255],'EdgeColor','none'); 


%right eyedrop
h=1.8;
k=0.6;
x=linspace(2,3.3,200);
y=-0.2*(x-h).^2 + k;
plot(x,y,'LineWidth',4,'Color','#27DAF5');
x2=linspace(2,2.8,200);
y2=-1.2*(x2-h).^2 + k;
plot(x2,y2,'LineWidth',4,'Color','#27DAF5');
Xfill = [x2, fliplr(x)];     
Yfill = [y2, fliplr(y(1:length(x2)))]; 
fill(Xfill, Yfill, [39/255,218/255,245/255],'EdgeColor','none');  
axis equal
h=3.05;
k=-0.225;
t=linspace(atan2(y2(end)-k, x2(end)-h), atan2(y(end)-k, x(end)-h),200);
x1=h+0.4507*cos(t);
y1=k+0.4507*sin(t);
plot(x1,y1,'LineWidth',4,'Color','#27DAF5');
X=[x,x1];
Y=[y,y1];
fill(X,Y,[39/255,218/255,245/255],'EdgeColor','none');

figure

% (9) This code block generates a Slightly Smiling Face Emoji."🙂"
%face
r=4;
t1=linspace(0,pi/2,200);
x1=r*cos(t1);
y1=r*sin(t1);
plot(x1,y1,'Color','y');fill([0,x1,0],[0,y1,0],'y','EdgeColor','none');
axis equal;hold on;axis off;
t2 = linspace(pi/2, pi, 200);
x2 = r*cos(t2);
y2 = r*sin(t2);
plot(x2, y2, 'Color','y');fill([0,x2,0],[0,y2,0],'y','EdgeColor','none');
t3 = linspace(pi, 3*pi/2, 200);
x3 = r*cos(t3);
y3 = r*sin(t3);
plot(x3, y3, 'Color','y');fill([0,x3,0],[0,y3,0],'y','EdgeColor','none');
t4=linspace(3*pi/2,2*pi,200);
x4 = r*cos(t4);
y4 = r*sin(t4);
plot(x4, y4, 'Color','y');fill([0,x4,0],[0,y4,0],'y','EdgeColor','none');


%right eye
r1=0.5;
h=1.5;k=1.2;
x5=h+r1*cos(t1);
y5=k+r1*sin(t1);
plot(x5,y5,'Color','#000000');fill([h,x5,h],[k,y5,k],'k','EdgeColor','none');
x6=h+r1*cos(t2);
y6=k+r1*sin(t2);
plot(x6,y6,'Color','#000000');fill([h,x6,h],[k,y6,k],'k','EdgeColor','none');
x7=h+r1*cos(t3);
y7=k+r1*sin(t3);
plot(x7,y7,'Color','#000000');fill([h,x7,h],[k,y7,k],'k','EdgeColor','none');
x8=h+r1*cos(t4);
y8=k+r1*sin(t4);
plot(x8, y8, 'Color','#000000');fill([h,x8,h],[k,y8,k],'k','EdgeColor','none');

%left eye
h=-1.5;k=1.2;
x9=h+r1*cos(t1);
y9=k+r1*sin(t1);
plot(x9,y9,'Color','#000000');fill([h,x9,h],[k,y9,k],'k','EdgeColor','none');
x10=h+r1*cos(t2);
y10=k+r1*sin(t2);
plot(x10,y6,'Color','#000000');fill([h,x10,h],[k,y10,k],'k','EdgeColor','none');
x11=h+r1*cos(t3);
y11=k+r1*sin(t3);
plot(x11,y11,'Color','#000000');fill([h,x11,h],[k,y11,k],'k','EdgeColor','none');
x12=h+r1*cos(t4);
y12=k+r1*sin(t4);
plot(x12, y12, 'Color','#000000');fill([h,x12,h],[k,y12,k],'k','EdgeColor','none');


%smile
h=0;k=-2;
x=linspace(-2,2,200);
y=0.2*(x-h).^2+k;
plot(x,y,'LineWidth',4,'Color','k');
h=0;k=-2.3;
x1=linspace(-2,2,200);
y1=0.27*(x-h).^2+k;
plot(x,y,'LineWidth',4,'Color','k');
fill([x,fliplr(x1)],[y,fliplr(y1)],'k','EdgeColor','none');

figure

% (10) This code block generates a Winking Face Emoji."😉"
%face
r=4;
t1=linspace(0,pi/2,200);
x1=r*cos(t1);
y1=r*sin(t1);
plot(x1,y1,'Color','y');fill([0,x1,0],[0,y1,0],'y','EdgeColor','none');
axis equal;hold on;axis off;
t2 = linspace(pi/2, pi, 200);
x2 = r*cos(t2);
y2 = r*sin(t2);
plot(x2, y2, 'Color','y');fill([0,x2,0],[0,y2,0],'y','EdgeColor','none');
t3 = linspace(pi, 3*pi/2, 200);
x3 = r*cos(t3);
y3 = r*sin(t3);
plot(x3, y3, 'Color','y');fill([0,x3,0],[0,y3,0],'y','EdgeColor','none');
t4=linspace(3*pi/2,2*pi,200);
x4 = r*cos(t4);
y4 = r*sin(t4);
plot(x4, y4, 'Color','y');fill([0,x4,0],[0,y4,0],'y','EdgeColor','none');

%left eye
r1=0.5;
h=-1.5;k=1.2;
x9=h+r1*cos(t1);
y9=k+r1*sin(t1);
plot(x9,y9,'Color','#000000');fill([h,x9,h],[k,y9,k],'k','EdgeColor','none');
x10=h+r1*cos(t2);
y10=k+r1*sin(t2);
plot(x10,y10,'Color','#000000');fill([h,x10,h],[k,y10,k],'k','EdgeColor','none');
x11=h+r1*cos(t3);
y11=k+r1*sin(t3);
plot(x11,y11,'Color','#000000');fill([h,x11,h],[k,y11,k],'k','EdgeColor','none');
x12=h+r1*cos(t4);
y12=k+r1*sin(t4);
plot(x12, y12, 'Color','#000000');fill([h,x12,h],[k,y12,k],'k','EdgeColor','none');


%smile
h=0
k=-1.9;
x=linspace(-2,2,200);
y = 0.19*(x-h).^2  + k;
plot(x,y,'LineWidth',4,'Color','k');
k=-2.4;
x1=linspace(-2,2,200);
y1 = 0.31*(x1-h).^2  + k;
plot(x1,y1,'LineWidth',4,'Color','k');
fill([x, fliplr(x1)], [y, fliplr(y1)], 'k','EdgeColor','none')


%eyebrow
h=-1.6;
k=1.4;
r1=0.8;
t=linspace(1.19626,5*pi/6,200);
x=h+r1*cos(t);
y=k+r1*sin(t);
plot(x,y,'LineWidth',4,'Color','k');

%right eye
h=1.8;
k=1.3;
x=linspace(1,2.6,200);
y=-0.3*(x-h).^2 + k;
plot(x,y,'LineWidth',4,'Color','k');
h=2.2;
k=1.82;
x1=linspace(1,2.6,200);
y1=-0.5*(x1-h).^2+ k;
plot(x1,y1,'LineWidth',4,'Color','k');

figure
%(11) This code block generates a Grinning Face Emoji."😀" 

d=linspace(0,pi,50);
r=1;
% Draw face (circle)
t1=linspace(0,pi/2,200);
x1=r*cos(t1);
y1=r*sin(t1);
plot(x1,y1,'Color','y');fill([0,x1,0],[0,y1,0],'y','EdgeColor','none');
axis equal;hold on;axis off;
t2 = linspace(pi/2, pi, 200);
x2 = r*cos(t2);
y2 = r*sin(t2);
plot(x2, y2, 'Color','y');fill([0,x2,0],[0,y2,0],'y','EdgeColor','none');
t3 = linspace(pi, 3*pi/2, 200);
x3 = r*cos(t3);
y3 = r*sin(t3);
plot(x3, y3, 'Color','y');fill([0,x3,0],[0,y3,0],'y','EdgeColor','none');
t4=linspace(3*pi/2,2*pi,200);
x4 = r*cos(t4);
y4 = r*sin(t4);
plot(x4, y4, 'Color','y');fill([0,x4,0],[0,y4,0],'y','EdgeColor','none');
% For brown color
brown = [0.252 0.1843 0.01569];
% Draw eyes
plot(-0.4+0.18*cos(d), 0.2+0.17*sin(d), 'color', brown,'LineWidth',20); % left eye
plot(0.4+0.18*cos(d), 0.2+0.17*sin(d), 'color', brown,'LineWidth',20);  % right eye
% Draw smile (arc)
t = linspace(0, pi, 50);
plot(0.48*cos(t), -0.21*sin(t)-0.2, 'color', brown, 'LineWidth', 10);
%blush effect
theta=linspace(0,2*pi,200);
blushColor = [1 0.6 0.6];
fill(-0.5+0.15*cos(theta), -0.001+0.05*sin(theta), blushColor,'EdgeColor','none','FaceAlpha',0.6)
fill(0.5+0.15*cos(theta), -0.001+0.05*sin(theta), blushColor,'EdgeColor','none','FaceAlpha',0.6)

axis off;
hold off;


figure

% (12) This code block generates a Smiling Face with Halo Emoji."😇"
r=4;
t1=linspace(0,pi/2,200);
x1=r*cos(t1);
y1=r*sin(t1);
plot(x1,y1,'Color','y');fill([0,x1,0],[0,y1,0],'y','EdgeColor','none');
axis equal;hold on;axis off;
t2 = linspace(pi/2, pi, 200);
x2 = r*cos(t2);
y2 = r*sin(t2);
plot(x2, y2, 'Color','y');fill([0,x2,0],[0,y2,0],'y','EdgeColor','none');
t3 = linspace(pi, 3*pi/2, 200);
x3 = r*cos(t3);
y3 = r*sin(t3);
plot(x3, y3, 'Color','y');fill([0,x3,0],[0,y3,0],'y','EdgeColor','none');
t4=linspace(3*pi/2,2*pi,200);
x4 = r*cos(t4);
y4 = r*sin(t4);
plot(x4, y4, 'Color','y');fill([0,x4,0],[0,y4,0],'y','EdgeColor','none');


%smile
h=0;
k=-2;
x=linspace(-2,2,200);
y = 0.2*(x-h).^2  + k;
plot(x,y,'LineWidth',4,'Color','k');
h=0;
k=-2.3;
x13=linspace(-2,2,200);
y13 = 0.27*(x13-h).^2  + k;
plot(x13,y13,'LineWidth',4,'Color','k');
fill([x, fliplr(x13)], [y, fliplr(y13)], 'k','EdgeColor','none');


%right eye
h=1.35;
k=1;
x=linspace(0.7,2,200);
y=-0.9*(x-h).^2 + k;
plot(x,y,'LineWidth',4,'Color','k');
h=1.35;
k=1.175;
x1=linspace(0.7,2,200);
y1=-1.25*(x-h).^2 + k;
plot(x1,y1,'LineWidth',4,'Color','k');
fill([x, fliplr(x1)], [y, fliplr(y1)], 'k','EdgeColor','none');


%left eye
h=-1.35;
k=1;
x=linspace(-2,-0.7,200);
y=-0.9*(x-h).^2 + k;
plot(x,y,'LineWidth',4,'Color','k');
h=-1.35;
k=1.175;
x1=linspace(-2,-0.7,200);
y1=-1.25*(x-h).^2 + k;
plot(x1,y1,'LineWidth',4,'Color','k');
fill([x, fliplr(x1)], [y, fliplr(y1)], 'k','EdgeColor','none');


%blue ring
t=linspace(0,pi*2,200);
x= 4*cos(t);
y= 3.7 + 0.7*sin(t);
plot(x,y,'LineWidth',3,'Color','#42FFF6');
t=linspace(0,pi*2,200);
x1= 3.8*cos(t);
y1= 3.8 + 0.5*sin(t);
plot(x1,y1,'LineWidth',3,'Color','#42FFF6');
fill([x, fliplr(x1)], [y, fliplr(y1)],[66/255,255/255,246/255],'EdgeColor','none');



%face
r=4;
t1=linspace(0,pi/2,200);
x1=r*cos(t1);
y1=r*sin(t1);
plot(x1,y1,'Color','k');fill([0,x1,0],[0,y1,0],'y','EdgeColor','none');
axis equal;hold on;
t2 = linspace(pi/2, pi, 200);
x2 = r*cos(t2);
y2 = r*sin(t2);
plot(x2, y2, 'Color','k');fill([0,x2,0],[0,y2,0],'y','EdgeColor','none');
t3 = linspace(pi, 3*pi/2, 200);
x3 = r*cos(t3);
y3 = r*sin(t3);
plot(x3, y3, 'Color','k');fill([0,x3,0],[0,y3,0],'y','EdgeColor','none');
t4=linspace(3*pi/2,2*pi,200);
x4 = r*cos(t4);
y4 = r*sin(t4);
plot(x4, y4, 'Color','k');fill([0,x4,0],[0,y4,0],'y','EdgeColor','none');


%smile
h=0;
k=-2;
x=linspace(-2,2,200);
y = 0.2*(x-h).^2  + k;
plot(x,y,'LineWidth',4,'Color','k');
h=0;
k=-2.3;
x13=linspace(-2,2,200);
y13 = 0.27*(x13-h).^2  + k;
plot(x13,y13,'LineWidth',4,'Color','k');
fill([x, fliplr(x13)], [y, fliplr(y13)], 'k','EdgeColor','none');


%right eye
h=1.35;
k=1;
x=linspace(0.7,2,200);
y=-0.9*(x-h).^2 + k;
plot(x,y,'LineWidth',4,'Color','k');
h=1.35;
k=1.175;
x1=linspace(0.7,2,200);
y1=-1.25*(x-h).^2 + k;
plot(x1,y1,'LineWidth',4,'Color','k');
fill([x, fliplr(x1)], [y, fliplr(y1)], 'k','EdgeColor','none');


%left eye
h=-1.35;
k=1;
x=linspace(-2,-0.7,200);
y=-0.9*(x-h).^2 + k;
plot(x,y,'LineWidth',4,'Color','k');
h=-1.35;
k=1.175;
x1=linspace(-2,-0.7,200);
y1=-1.25*(x-h).^2 + k;
plot(x1,y1,'LineWidth',4,'Color','k');
fill([x, fliplr(x1)], [y, fliplr(y1)], 'k','EdgeColor','none');


%blue ring
t=linspace(0,pi*2,200);
x= 4*cos(t);
y= 3.7 + 0.7*sin(t);
plot(x,y,'LineWidth',3,'Color','#42FFF6');
t=linspace(0,pi*2,200);
x1= 3.8*cos(t);
y1= 3.8 + 0.5*sin(t);
plot(x1,y1,'LineWidth',3,'Color','#42FFF6');
fill([x, fliplr(x1)], [y, fliplr(y1)],[66/255,255/255,246/255],'EdgeColor','none');

figure

% (13) This code block generates a Smiling Face with Hearts Emoji."🥰"


theta = linspace(0, 2*pi, 400);
hold on
axis equal off

%% Face 
r=2;
t1=linspace(0,pi/2,200);
x1=r*cos(t1);
y1=r*sin(t1);
plot(x1,y1,'Color','y');fill([0,x1,0],[0,y1,0],'y','EdgeColor','none');
axis equal;hold on;axis off;
t2 = linspace(pi/2, pi, 200);
x2 = r*cos(t2);
y2 = r*sin(t2);
plot(x2, y2, 'Color','y');fill([0,x2,0],[0,y2,0],'y','EdgeColor','none');
t3 = linspace(pi, 3*pi/2, 200);
x3 = r*cos(t3);
y3 = r*sin(t3);
plot(x3, y3, 'Color','y');fill([0,x3,0],[0,y3,0],'y','EdgeColor','none');
t4=linspace(3*pi/2,2*pi,200);
x4 = r*cos(t4);
y4 = r*sin(t4);
plot(x4, y4, 'Color','y');fill([0,x4,0],[0,y4,0],'y','EdgeColor','none');

%% Eyes 
t = linspace(30*pi/180, 150*pi/180, 200);

x_eyeL = -0.7 + 0.5*cos(t);
y_eyeL =  0.5 + 0.5*sin(t);
plot(x_eyeL, y_eyeL, 'k', 'LineWidth', 2.5);

x_eyeR =  0.7 + 0.5*cos(t);
y_eyeR =  0.5 + 0.5*sin(t);
plot(x_eyeR, y_eyeR, 'k', 'LineWidth', 2.5);

%% Mouth 
t2 = linspace(-150*pi/180, -30*pi/180, 200);
x_mouth = 1.2*cos(t2);
y_mouth = -0.3 + 1.2*sin(t2);
plot(x_mouth, y_mouth, 'k', 'LineWidth', 4);

%% Heart (top-left)
x1 = -2.0 + 0.49*cos(theta);
y1 =  1.2 + 0.49*sin(theta);
fill(x1, y1, 'r','EdgeColor','none')

x2 = -1.4 + 0.49*cos(theta);
y2 =  1.2 + 0.49*sin(theta);
fill(x2, y2, 'r','EdgeColor','none')

fill([-2.39, -1.01, -1.7], [0.9, 0.9, 0.16], 'r','EdgeColor','none')

%% Heart (top-right)
x3 =  0.8 + 0.49*cos(theta);
y3 =  1.6 + 0.49*sin(theta);
fill(x3, y3, 'r','EdgeColor','none')

x4 =  1.4 + 0.49*cos(theta);
y4 =  1.6 + 0.49*sin(theta);
fill(x4, y4, 'r','EdgeColor','none')

fill([0.41, 1.79, 1.1], [1.3, 1.3, 0.56], 'r','EdgeColor','none')

%% Heart (bottom)
x5 =  1.6 + 0.49*cos(theta);
y5 = -1.1 + 0.49*sin(theta);
fill(x5, y5, 'r','EdgeColor','none')

x6 =  2.2 + 0.49*cos(theta);
y6 = -1.1 + 0.49*sin(theta);
fill(x6, y6, 'r','EdgeColor','none')

fill([1.21, 2.59, 1.9], [-1.4, -1.4, -2.14], 'r','EdgeColor','none')

hold off


figure

% (14) This code block generates Smiling Face with Heart-Eyes Emoji."😍"
r=2;
t1=linspace(0,pi/2,200);
x1=r*cos(t1);
y1=r*sin(t1);
plot(x1,y1,'Color','y');fill([0,x1,0],[0,y1,0],'y','EdgeColor','none');
axis equal;hold on;axis off;
t2 = linspace(pi/2, pi, 200);
x2 = r*cos(t2);
y2 = r*sin(t2);
plot(x2, y2, 'Color','y');fill([0,x2,0],[0,y2,0],'y','EdgeColor','none');
t3 = linspace(pi, 3*pi/2, 200);
x3 = r*cos(t3);
y3 = r*sin(t3);
plot(x3, y3, 'Color','y');fill([0,x3,0],[0,y3,0],'y','EdgeColor','none');
t4=linspace(3*pi/2,2*pi,200);
x4 = r*cos(t4);
y4 = r*sin(t4);
plot(x4, y4, 'Color','y');fill([0,x4,0],[0,y4,0],'y','EdgeColor','none');



%% Left heart eye
x1 = -1.2 + 0.49*cos(theta);
y1 =  0.9 + 0.49*sin(theta);
fill(x1, y1, 'r')  

x2 = -0.6 + 0.49*cos(theta);
y2 =  0.9 + 0.49*sin(theta);
fill(x2, y2, 'r','EdgeColor','none')

fill([-1.59, -0.21, -0.9], [0.6, 0.6, -0.14], 'r','EdgeColor','none')

%% Right heart eye
x3 =  1.2 + 0.49*cos(theta);
y3 =  0.9 + 0.49*sin(theta);
fill(x3, y3, 'r')

x4 =  0.6 + 0.49*cos(theta);
y4 =  0.9 + 0.49*sin(theta);
fill(x4, y4, 'r','EdgeColor','none')

fill([1.59, 0.21, 0.9], [0.6, 0.6, -0.14], 'r','EdgeColor','none')

%% Mouth
t = linspace(240*pi/180, 300*pi/180, 200);
x_mouth = 1.5*cos(t);
y_mouth = 0.4 + 1.5*sin(t); 
plot(x_mouth, y_mouth, 'k', 'LineWidth', 10)

hold off;


figure;

% (15) This code block generates a Star-Struck Emoji."🤩"
hold on;axis equal;grid off;axis off;
a=linspace(0,2*pi,300); %Circle face
r1=2; %Radius of face
fill(r1*cos(a),r1*sin(a),'y'); %Colour of face
x1=linspace(-r1,r1,400);y1=x1.^2-1.5; %Parabola for the mouth
face=x1.^2+y1.^2<=r1^2; %The parabola lying inside the circle
teeth=face&(y1>=-0.75)&(y1<=-0.5); %Strip of teeth above the mouth
x2=x1(teeth);y2=y1(teeth);
fill([x2 fliplr(x2)],[y2 -0.5*ones(size(x2))],'w'); %Colour of teeth
mouth=face&(y1<-0.75); %Parabola overlapping the circle is mouth
x3=x1(mouth);y3=y1(mouth);
fill([x3 fliplr(x3)],[y3 -0.75*ones(size(x3))],'k'); %Colour of mouth 
b=linspace(0,2*pi,500); %Circle for tongue (an arc)
r2=0.55; %Radius of the circle's arc which represents tongue (self calculated)
x4=0;y4=-1.75; %Centre of the circle's arc which represents the tongue
x5=x4+r2*cos(b);y5=y4+r2*sin(b); %Equation of the circle representing tongue
tongue=y5>=x5.^2-1.5; %Boundary for the tongue
x6=x5(tongue);y6=y5(tongue);
if ~isempty(x6) %To make sure the tongue does go beyond the mouth
    x8=linspace(min(x6),max(x6),100);y8=x8.^2-1.5; %Boundaries of the tongue
    x9=[x6,fliplr(x8)];y9=[y6,fliplr(y8)];
    fill(x9,y9,'r'); %Colour of tongue
end
R=0.5; %Radius of the star (more like the pentagon)
function [star1,star2]=makeStar(R,h2,x10,y10)
    c=(0:4)*(2*pi/5)-pi/2; %Equally divided 5 angles for the star
    x11=R*cos(c)+x10;y11=R*sin(c)+y10; %Pentagon definition
    star1=[];star2=[];
    for k=1:5 %To find the midpoint of each edge(of pentagon)
        % and placing a bisector for perfect orientation at the tip
        x1=x11(k);y1=y11(k);
        x2=x11(mod(k,5)+1);y2=y11(mod(k,5)+1);
        x12=(x1+x2)/2;y12=(y1+y2)/2;
        x13=x2-x1;y13=y2-y1;
        p=[y13,-x13];
        if dot([x12-x10,y12-y10],p)<0
            p=-p;
        end
        s=sqrt(x13^2+y13^2);
        h3=s*h2;  
        x14=x12+h3*p(1)/norm(p);y14=y12+h3*p(2)/norm(p);
        star1=[star1 x1 x14 x2];star2=[star2 y1 y14 y2];
    end
end
shift=1;
h1=1; %The function makeStar used again to make the other eye(star)
[star3,star4]=makeStar(R,h1,-shift,0.7);
fill(star3,star4,'r');
[star3,star4]=makeStar(R,h1,+shift,0.7);
fill(star3,star4,'r');
xlim([-r1 r1]);ylim([-r1 r1]);



figure;

% (16) This code block generates a Face Blowing a Kiss Emoji."😘"
r = 4 ;
t1 = linspace(0, pi/2, 100);
x1 = r * cos(t1);
y1 = r * sin(t1);
plot(x1 , y1 , 'Color','#FFFF00');
fill([0,x1,0],[0,y1,0],'y','EdgeColor','none');
axis equal; hold on;axis off;grid off;
t2 = linspace(pi/2,pi , 100);
x2 = r * cos(t2);
y2 = r * sin(t2);
plot(x2 , y2 , 'Color','#FFFF00');
fill([0,x2,0],[0,y2,0],'y','EdgeColor','none');
axis equal; hold on;
t3 = linspace(pi,3*pi/2 , 100);
x3 = r * cos(t3);
y3 = r * sin(t3);
plot(x3 , y3 , 'Color','#FFFF00');
fill([0,x3,0],[0,y3,0],'y','EdgeColor','none');
axis equal; hold on;
t4 = linspace(3*pi/2,2*pi, 100);
x4 = r * cos(t4);
y4 = r * sin(t4);
plot(x4 , y4 , 'Color','#FFFF00');
fill([0,x4,0],[0,y4,0],'y','EdgeColor','none');
axis equal;hold on;
%right eye parabola
h1 = 0;
k1 = 1.5;
a1 = -1.2;
x1 = linspace(-0.3 , 0.3 , 100);
y1 = a1*(x1-h1).^2 + k1 ;
plot(x1+1.5 , y1+0.5 ,'LineWidth',6,'Color','k');
%left eye circle
r_e = 0.4 ;
t_e = linspace(0,2*pi,20);
x_e = 0.25 * cos(t_e) -1.5;
y_e = 0.4 * sin(t_e) + 1.5;
fill(x_e, y_e, 'k', 'LineWidth', 3, 'EdgeColor', 'k');
%lip_top
a3 = -2 ;
k3 = 1 ;
y3 = linspace(0.5 , -0.5 , 100);
x3 = a3*y3.^2 + k3 ;
plot(x3+0.6,y3-1,'LineWidth',4,'Color','k');
%lip_bottom
a4 = -2 ;
k4 = 1 ;
y4 = linspace(0.5 , -0.5 , 100);
x4 = a4*y4.^2 + k4 ;
plot(x4+0.6,y4-1.9,'LineWidth',4,'Color','k');
%right_eyebrow
h5 = 0;
k5 = 1.5;
a5 = -1.5;
x5 = linspace(-0.4 , 0.49 , 100);
y5 = a5*(x5-h5).^2 + k5 ;
plot(x5+1.5, y5+1 ,'LineWidth',4,'Color','k');
%left_eyebrow
h6 = 0;
k6 = 1.5;
a6 = -0.8;
x6 = linspace(-0.5 , 0.5 , 100);
y6 = a5*(x5-h5).^2 + k6 ;
plot(x6-1.5, y6+1.1 ,'LineWidth',4,'Color','k');
%heart top
a7 = -4.5;
k7 = 1.5
x7 = linspace(-0.559,0.3,100);
y7 = a7*x7.^2 + k7;
x_t = x7+2.9;
y_t = y7-2.1;
fill(x_t , y_t ,'r','LineWidth',3,'EdgeColor','r');
%heart bottom
a8 = -3 ;
k8 = 1 ;
y8 = linspace(0.4 , -0.64 , 100);
x8 = a8*y8.^2 + k8 ;
x_b = x8+2.59;
y_b = y8-1.4;
fill(x_b, y_b, 'r', 'LineWidth', 3, 'EdgeColor', 'r');
axis equal; hold off;

figure;

% (17) This code block generates a Kissing Face Emoji."😗"
theta = linspace(0, 2*pi, 100);
d=linspace(0,2*pi,100);

% Yello face (circle)
x = cos(theta);
y = sin(theta);

hold on;
axis equal;axis off;
fill(x, y, 'yellow'); 
% color
brown = [0.252 0.1843 0.01569]; 
brown1 = [0.769 0.643 0.518]

% Draw eyes
fill(-0.4+0.23*cos(d), 0.3+0.27*sin(d),brown); % left eye
fill(0.4+0.23*cos(d), 0.3+0.27*sin(d), brown);  % right eye

fill(-0.47+0.06*cos(d), 0.39+0.06*sin(d), brown1); % left eye
fill(0.32+0.06*cos(d), 0.39+0.06*sin(d),  brown1);  % right eye



% Draw smile (arc)
t = linspace(-pi/2, pi/2, 200);
plot(0.23*cos(t)-0.06, -0.13*sin(t)-0.3, 'color',brown, 'LineWidth', 8);
c = linspace(-pi/2, 7*pi/12, 200);
plot(0.23*cos(c)-0.06, -0.13*sin(c)-0.56, 'color',brown, 'LineWidth', 8);

%axis off;
%hold off;



figure

% (18) This code block generates a Smiling Face Emoji. "😊"
%face
r=4;
t1=linspace(0,pi/2,200);
x1=r*cos(t1);
y1=r*sin(t1);
plot(x1,y1,'Color','y');fill([0,x1,0],[0,y1,0],'y','EdgeColor','none');
axis equal;hold on;axis off;
t2 = linspace(pi/2, pi, 200);
x2 = r*cos(t2);
y2 = r*sin(t2);
plot(x2, y2, 'Color','y');fill([0,x2,0],[0,y2,0],'y','EdgeColor','none');
t3 = linspace(pi, 3*pi/2, 200);
x3 = r*cos(t3);
y3 = r*sin(t3);
plot(x3, y3, 'Color','y');fill([0,x3,0],[0,y3,0],'y','EdgeColor','none');
t4=linspace(3*pi/2,2*pi,200);
x4 = r*cos(t4);
y4 = r*sin(t4);
plot(x4, y4, 'Color','y');fill([0,x4,0],[0,y4,0],'y','EdgeColor','none');

%smile
h=0;k=-2;
x=linspace(-1.6,1.6,200);
y=0.3*(x-h).^2+k;
plot(x,y,'LineWidth',4,'Color','k');
h=0;k=-2.3;
x1=linspace(-1.6,1.6,200);
y1=0.41*(x-h).^2+k;
plot(x,y,'LineWidth',4,'Color','k');
fill([x,fliplr(x1)],[y,fliplr(y1)],'k','EdgeColor','none');


%right eye
h=1.35;
k=1;
x=linspace(0.7,2,200);
y=-0.8*(x-h).^2 + k;
plot(x,y,'LineWidth',4,'Color','k');
h=1.35;
k=1.175;
x1=linspace(0.7,2,200);
y1=-1.25*(x-h).^2 + k;
plot(x1,y1,'LineWidth',4,'Color','k');
fill([x, fliplr(x1)], [y, fliplr(y1)], 'k','EdgeColor','none');


%left eye
h=-1.35;
k=1;
x=linspace(-2,-0.7,200);
y=-0.9*(x-h).^2 + k;
plot(x,y,'LineWidth',4,'Color','k');
h=-1.35;
k=1.175;
x1=linspace(-2,-0.7,200);
y1=-1.25*(x-h).^2 + k;
plot(x1,y1,'LineWidth',4,'Color','k');
fill([x, fliplr(x1)], [y, fliplr(y1)], 'k','EdgeColor','none');


%eyebrow
h=1.3;
k=1.8;
x=linspace(0.8,2,200);
y=-0.6*(x-h).^2 + k;
plot(x,y,'LineWidth',4,'Color','k');
h=-1.3;
k=1.8;
x=linspace(-2,-0.8,200);
y=-0.6*(x-h).^2 + k;
plot(x,y,'LineWidth',4,'Color','k');

%blush effect
theta=linspace(0,2*pi,200);
blushColor = [1 0.6 0.6];
fill(-2+0.8*cos(theta), -0.1+0.4*sin(theta), blushColor,'EdgeColor','none','FaceAlpha',0.6)
fill(2+0.8*cos(theta), -0.1+0.4*sin(theta), blushColor,'EdgeColor','none','FaceAlpha',0.6)

figure

% (19) This code block generates a Kissing Face with Closed Eyes Emoji."😚"
r = 4 ;
t1 = linspace(0, pi/2, 100);
x1 = r * cos(t1);
y1 = r * sin(t1);
plot(x1 , y1 , 'Color','#FFFF00');
fill([0,x1,0],[0,y1,0],'y','EdgeColor','none');
axis equal; hold on;axis off;
t2 = linspace(pi/2,pi , 100);
x2 = r * cos(t2);
y2 = r * sin(t2);
plot(x2 , y2 , 'Color','#FFFF00');
fill([0,x2,0],[0,y2,0],'y','EdgeColor','none');
axis equal; hold on;
t3 = linspace(pi,3*pi/2 , 100);
x3 = r * cos(t3);
y3 = r * sin(t3);
plot(x3 , y3 , 'Color','#FFFF00');
fill([0,x3,0],[0,y3,0],'y','EdgeColor','none');
axis equal; hold on;
t4 = linspace(3*pi/2,2*pi, 100);
x4 = r * cos(t4);
y4 = r * sin(t4);
plot(x4 , y4 , 'Color','#FFFF00');
fill([0,x4,0],[0,y4,0],'y','EdgeColor','none');
axis equal;hold on;
h1 = 0;
k1 = 1.5;
a1 = -4;
x1 = linspace(-0.3 , 0.3 , 100);
y1 = a1*(x1-h1).^2 + k1 ;
plot(x1+1.5 , y1+0.5 ,'LineWidth',6,'Color','k');
h2 = 0;
k2 = 1.5;
a2 = -4;
x2 = linspace(-0.3 , 0.3 , 100);
y2 = a1*(x1-h1).^2 + k1 ;
plot(x2-1.5 , y2+0.5 ,'LineWidth',6,'Color','k');
a3 = -2 ;
k3 = 1 ;
y3 = linspace(0.4 , -0.4 , 100);
x3 = a3*y3.^2 + k3 ;
plot(x3+0.6,y3-1,'LineWidth',4,'Color','k');
a4 = -2 ;
k4 = 1 ;
y4 = linspace(0.4 , -0.4 , 100);
x4 = a4*y4.^2 + k4 ;
plot(x4+0.6,y4-1.8,'LineWidth',4,'Color','k');
h5 = 0;
k5 = 1.5;
a5 = -3;
x5 = linspace(-0.3 , 0.3 , 100);
y5 = a5*(x5-h5).^2 + k5 ;
plot(x5+1.5, y5+1 ,'LineWidth',4,'Color','k');
h6 = 0;
k6 = 1.5;
a6 = -3;
x6 = linspace(-0.3 , 0.3 , 100);
y6 = a5*(x5-h5).^2 + k6 ;
plot(x6-1.5, y6+1 ,'LineWidth',4,'Color','k');
%blush effect
theta=linspace(0,2*pi,200);
blushColor = [1 0.6 0.6];
fill(-2+0.8*cos(theta), 0.1+0.4*sin(theta), blushColor,'EdgeColor','none','FaceAlpha',0.6)
fill(2+0.8*cos(theta), 0.1+0.4*sin(theta), blushColor,'EdgeColor','none','FaceAlpha',0.6)

figure

% (20) This code block generates a Kissing Face with Smiling Eyes Emoji."😙"
r = 4 ;
t1 = linspace(0, pi/2, 100);
x1 = r * cos(t1);
y1 = r * sin(t1);
plot(x1 , y1 , 'Color','#FFFF00');
fill([0,x1,0],[0,y1,0],'y','EdgeColor','none');
axis equal; hold on;axis off;
t2 = linspace(pi/2,pi , 100);
x2 = r * cos(t2);
y2 = r * sin(t2);
plot(x2 , y2 , 'Color','#FFFF00');
fill([0,x2,0],[0,y2,0],'y','EdgeColor','none');
axis equal; hold on;
t3 = linspace(pi,3*pi/2 , 100);
x3 = r * cos(t3);
y3 = r * sin(t3);
plot(x3 , y3 , 'Color','#FFFF00');
fill([0,x3,0],[0,y3,0],'y','EdgeColor','none');
axis equal; hold on;
t4 = linspace(3*pi/2,2*pi, 100);
x4 = r * cos(t4);
y4 = r * sin(t4);
plot(x4 , y4 , 'Color','#FFFF00');
fill([0,x4,0],[0,y4,0],'y','EdgeColor','none');
axis equal;hold on;
h1 = 0;
k1 = 1.5;
a1 = -10;
x1 = linspace(-0.3 , 0.3 , 100);
y1 = a1*(x1-h1).^2 + k1 ;
plot(x1+1.5 , y1+0.5 ,'LineWidth',8,'Color','k');
h2 = 0;
k2 = 1.5;
a2 = -10;
x2 = linspace(-0.3 , 0.3 , 100);
y2 = a1*(x1-h1).^2 + k1 ;
plot(x2-1.5 , y2+0.5 ,'LineWidth',8,'Color','k');

a3 = -2 ;
k3 = 1 ;
y3 = linspace(0.4 , -0.4 , 100);
x3 = a3*y3.^2 + k3 ;
plot(x3+0.6,y3-1,'LineWidth',4,'Color','k');
a4 = -2 ;
k4 = 1 ;
y4 = linspace(0.4 , -0.4 , 100);
x4 = a4*y4.^2 + k4 ;
plot(x4+0.6,y4-1.8,'LineWidth',4,'Color','k');

figure 

% (21) This code block generates a Smiling Face with Tear Emoji."🥲"
%face
r=5;
t1=linspace(0,pi/2,200);
x1=r*cos(t1);
y1=r*sin(t1);
plot(x1,y1,'Color','y');
fill([0,x1,0],[0,y1,0],'y','EdgeColor','none');
axis equal;axis off;grid off;
hold on;

t2 = linspace(pi/2, pi, 200);
x2 = r*cos(t2);
y2 = r*sin(t2);
plot(x2, y2, 'Color','y');fill([0,x2,0],[0,y2,0],'y','EdgeColor','none');
t3 = linspace(pi, 3*pi/2, 200);
x3 = r*cos(t3);
y3 = r*sin(t3);
plot(x3, y3, 'Color','y');fill([0,x3,0],[0,y3,0],'y','EdgeColor','none');
t4=linspace(3*pi/2,2*pi,200);
x4 = r*cos(t4);
y4 = r*sin(t4);
plot(x4, y4, 'Color','y');fill([0,x4,0],[0,y4,0],'y','EdgeColor','none');
hold on;


%inside eye

r1=0.7;
h=2;k=2;
x5=h+r1*cos(t1);
y5=k+r1*sin(t1);
plot(x5,y5,'Color','#000000');fill([h,x5,h],[k,y5,k],'k','EdgeColor','none');
x6=h+r1*cos(t2);
y6=k+r1*sin(t2);
plot(x6,y6,'Color','#000000');fill([h,x6,h],[k,y6,k],'k','EdgeColor','none');
x7=h+r1*cos(t3);
y7=k+r1*sin(t3);
plot(x7,y7,'Color','#000000');fill([h,x7,h],[k,y7,k],'k','EdgeColor','none');
x8=h+r1*cos(t4);
y8=k+r1*sin(t4);
plot(x8, y8, 'Color','#000000');fill([h,x8,h],[k,y8,k],'k','EdgeColor','none');


h=-2;k=2;
x9=h+r1*cos(t1);
y9=k+r1*sin(t1);
plot(x9,y9,'Color','#000000');fill([h,x9,h],[k,y9,k],'k','EdgeColor','none');
x10=h+r1*cos(t2);
y10=k+r1*sin(t2);
plot(x10,y6,'Color','#000000');fill([h,x10,h],[k,y10,k],'k','EdgeColor','none');
x11=h+r1*cos(t3);
y11=k+r1*sin(t3);
plot(x11,y11,'Color','#000000');fill([h,x11,h],[k,y11,k],'k','EdgeColor','none');
x12=h+r1*cos(t4);
y12=k+r1*sin(t4);
plot(x12, y12, 'Color','#000000');fill([h,x12,h],[k,y12,k],'k','EdgeColor','none');
hold on;


%smile 
h=0;k=-2;
x=linspace(-2,2,200);
y=0.2*(x-h).^2+k;
plot(x,y,'LineWidth',4,'Color','k');
h=0;k=-2.3;
x1=linspace(-2,2,200);
y1=0.27*(x-h).^2+k;
plot(x,y,'LineWidth',4,'Color','k');
fill([x,fliplr(x1)],[y,fliplr(y1)],'k','EdgeColor','none');
hold on;

%half circle for tear(left tear)

r3 = 0.5;
t3=linspace(3*pi/2,2*pi,500);
t4=linspace(pi,3*pi/2,500);

x_center = 2;
y_center = -2;

x3 = x_center + r3*cos(t3);
y3 = y_center + r3*sin(t3);
hold on;

x4 = x_center + r3*cos(t4);
y4 = y_center + r3*sin(t4);
hold on;

x = [x4,x3,2];
y = [y4,y3,1.1];
fill(x, y, 'blue', 'EdgeColor', 'blue', 'LineWidth', 2);
hold on;

axis equal;
hold off;

figure

% (22) This code block generates a 22)	Smirking Face Emoji ."😏"
hold on;axis equal;grid off;axis off;
r1=2; %Radius of face
a=linspace(0,2*pi,500); %Circle for face
fill(r1*cos(a),r1*sin(a),'y'); %Colour of face
r2=0.2; %Radius of the eyes
b=linspace(0,2*pi,400); %Circle for the left eye
x1=-0.6;y1=0.5; %Centre of left eye
x2=x1+r2*cos(b);y2=y1+r2*sin(b); %Definition of the left eye (parametric)
xL=linspace(x1-0.25,x1+0.25,400);yL=-3*(x2-x1).^2+y1+r2-0.05; %Parabolic eyelid(left)
boundL=y2<=yL; %Bounds the circle of left eye in part only
fill(x2(boundL),y2(boundL),'k'); %Colour of the eye
x3=min(xL)-0.1;y3=max(y2(boundL)); %Left eyelid's left end
x4=max(x2(boundL)); %Left eyelid's right end
plot([x3,x4],[y3,y3],'k','LineWidth',4); %Plot of left eye
axis off;grid off;
x5=0.8;y5=0.5; %Centre of the right eye
x2=x5+r2*cos(b);y2=y5+r2*sin(b); %Definition of the right eye (parametric)
xR=linspace(x5-0.25,x5+0.25,400);yR=-3*(x2-x5).^2+y5+r2-0.05; %Parabolic eyelid(right)
boundR=y2<=yR; %Bounds the circle of right eye in part only
fill(x2(boundR),y2(boundR),'k'); %Colour of the eye
x6=min(xR)-0.12;y6=max(y2(boundR)); %Right eyelid's left end
x7=max(x2(boundR)); %Right eyelid's right end
plot([x6,x7],[y6,y6],'k','LineWidth',4); %Plot of right eye
t=linspace(0,1,100); %A variable of quadratic to shape the brows
x8=-1.4+0.9*t;y8=0.8+0.4*(1-t.^2); %Equation for left brow
x9=-fliplr(x8);y9=fliplr(y8); %Equation for the right brow (mirrored/flipped)
plot(x8,y9,'k','LineWidth',4); %Plot of left brow
plot(x9,y8,'k','LineWidth',4); %Plot of right brow
x10=linspace(-0.8,1.0,300);y10=-0.9+0.25*(x10+0.3).^2; %Tilted parabola for the smirk
plot(x10,y10,'k','LineWidth',4); %Plot for the smirk
