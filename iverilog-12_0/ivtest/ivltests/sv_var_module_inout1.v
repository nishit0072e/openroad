// Check that using the var keyword for module ANSI inout ports results in an error

module test #(
  inout var x
);

  initial begin
    $display("FAILED");
  end

endmodule
