module labK;
reg a, b, c, flag; 
wire z, bcOut, notCOut, notCIn, aNotCOut;

not my_not_c(notCOut, c);
and my_and_anc(aNotCOut, notCIn, a);
and my_and(bcOut, b, c);
or my_or(z, bcOut, aNotCOut);

assign notCIn = notCOut;

initial
begin

	flag = $value$plusargs("a=%b", a);
	if (a != 0 && a != 1) begin
		$display("ass");
	end
	flag = $value$plusargs("b=%b", b);
	flag = $value$plusargs("c=%b", c);

	#1 $display("a=%b b=%b c=%b z=%b", a, b, c, z);

end

endmodule