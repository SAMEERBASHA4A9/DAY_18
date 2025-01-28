module verilog_event_sheduler;

reg [3:0] a,b,c,d,e;

initial
begin
$display("b=%0d",b);
#10;
a=4'd1;
#10;
#0 b=4'd2;
$display("b=%0d",b,$time);
$write("a=%0b,b=%0b,c=%0b,d=%0b,e=%0b",a,b,c,d,e,$time);
$write("a=%0b,b=%0b,c=%0b,d=%0b,e=%0b",a,b,c,d,e,$time);
$display("\n a=%0b,b=%0b,c=%0b,d=%0b,e=%0b",a,b,c,d,e,$time);
$display("a=%0b,b=%0b,c=%0b,d=%0b,e=%0b",a,b,c,d,e,$time);
#10;
b<=4'd3;
$strobe(" STROBE1 a=%0D,b=%0D,c=%0D,d=%0D,e=%0D",a,b,c,d,e,$time);
c<=4'd4;
d<=4'd5;
$monitor(" MONITOR 1 a=%0D,b=%0D,c=%0D,d=%0D,e=%0D",a,b,c,d,e,$time);
$monitor("MONITOR 2 a=%0D,b=%0D,c=%0D,d=%0D,e=%0D",a,b,c,d,e,$time);
$strobe(" STROBE2 a=%0d,b=%0d,c=%0d,d=%0d,e=%0d",a,b,c,d,e,$time);
#10;
e=4'd6;

end

endmodule



