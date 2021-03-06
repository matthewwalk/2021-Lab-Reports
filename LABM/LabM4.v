module labM ;
   reg   [31:0] address, memIn;
   reg          clk, read, write;
   wire [31:0]  memOut;
   integer      i;

   mem data(memOut, address, memIn, clk, read, write);

   initial
     begin

        clk = 0;
        memIn = 32'h12345678;
        address = 16;
        write = 1;
        clk = 1;
        #1;

        clk = 0;
        memIn = 32'h89abcdef;
        address = 24;
        clk = 1;
        #1;

        write = 0; //
        read = 1;// finished reading
        address = 16;
        repeat (3)
          begin
             #1 $display("Address %d contains %h", address, memOut);
             address = address + 4;
          end

        /*
        clk = 0; memIn = 32'h12341234;
        address = 17; write = 1; clk = 1;
        #1 $display("Address %d contains %h", address, memOut);
        address = 27;
        $display("Address %d contains %h", address, memOut);
        */

        $finish;
     end

endmodule // labM
