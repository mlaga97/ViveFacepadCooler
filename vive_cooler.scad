module bottom() {
	difference() {
		cube([210,120,40], center=true);
		
		// Hole for headset bit
		translate([0,0,-5])
			cube([200,120,35], center=true);
		
		// Airflow Hole
		translate([-100,-50,7.5])
			linear_extrude("vive.dxf", height=20);
		
		// Combo Holes
		translate([90,50])
			cylinder(d=3,h=100);
		translate([90,-50])
			cylinder(d=3,h=100);
		translate([-90,50])
			cylinder(d=3,h=100);
		translate([-90,-50])
			cylinder(d=3,h=100);
	}
}

module top() {
	difference() {
		translate([0,0,20])
			cube([210,120,40], center=true);
		hull() {
			translate([-100,-50,0])
				linear_extrude("vive.dxf", height=10);
			cylinder(d=100, h=35);
		};
		cylinder(d=100, h=40);
		
		// Fan mount holes
		translate([105/2,105/2,-25])
			cylinder(d=4.6, h=100);
		translate([105/2,-105/2,-25])
			cylinder(d=4.6, h=100);
		translate([-105/2,105/2,-25])
			cylinder(d=4.6, h=100);
		translate([-105/2,-105/2,-25])
			cylinder(d=4.6, h=100);
		
		// Combo Holes
		translate([90,50])
			cylinder(d=3,h=100);
		translate([90,-50])
			cylinder(d=3,h=100);
		translate([-90,50])
			cylinder(d=3,h=100);
		translate([-90,-50])
			cylinder(d=3,h=100);
	}
}

translate([0,0,20+2])
	top();
*bottom();