module half_adder_tb();
//understand the Data-flow abstraction
reg a,b;
wire sum,carry;
//instantiation 
half_adder DUT(a,b,sum,carry);
integer i;
//stimulus generation 
initial
begin
	for(i=0;i<4;i=i+1)
	begin 
	{a,b}=i;
	#10;

end
end
initial
	$monitor("a=%b,b=%b,sum=%b,carry=%b",a,b,sum,carry);
endmodule
