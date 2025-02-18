`timescale 1ns/1ps
module lab5_tb;
  logic [1:0] p;   
  logic [1:0] q;   
  logic m;
  logic n;
  logic o;
  localparam period = 10;

  lab5 foo(
    .a(p),
    .b(q),
    .r(m),
    .g(n),
    .bl(o)
  );

  initial begin
    p[0] = 0; p[1] = 0; q[0] = 0; q[1] = 0;
    #period;
    p[0] = 0; p[1] = 0; q[0] = 0; q[1] = 1;
    #period;
    p[0] = 0; p[1] = 0; q[0] = 1; q[1] = 0;
    #period;
    p[0] = 0; p[1] = 0; q[0] = 1; q[1] = 1;
    #period;
    p[0] = 0; p[1] = 1; q[0] = 0; q[1] = 0;
    #period;
    p[0] = 0; p[1] = 1; q[0] = 0; q[1] = 1;
    #period;
    p[0] = 0; p[1] = 1; q[0] = 1; q[1] = 0;
    #period;
    p[0] = 0; p[1] = 1; q[0] = 1; q[1] = 1;
    #period;
    p[0] = 1; p[1] = 0; q[0] = 0; q[1] = 0;
    #period;
    p[0] = 1; p[1] = 0; q[0] = 0; q[1] = 1;
    #period;
    p[0] = 1; p[1] = 0; q[0] = 1; q[1] = 0;
    #period;
    p[0] = 1; p[1] = 0; q[0] = 1; q[1] = 1;
    #period;
    p[0] = 1; p[1] = 1; q[0] = 0; q[1] = 0;
    #period;
    p[0] = 1; p[1] = 1; q[0] = 0; q[1] = 1;
    #period;
    p[0] = 1; p[1] = 1; q[0] = 1; q[1] = 0;
    #period;
    p[0] = 1; p[1] = 1; q[0] = 1; q[1] = 1;
    #period;
    $stop;
  end

  initial begin
    $monitor("r=%b, g=%b, bl=%b, a[0]=%b, a[1]=%b, b[0]=%b, b[1]=%b", m, n, o, p[0], p[1], q[0], q[1]);
  end
     
endmodule

