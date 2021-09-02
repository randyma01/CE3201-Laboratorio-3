module alu_module
(
  input logic [3:0] a, 
  input logic [3:0] b, 
  input logic [3:0] uc, 
  output logic [3:0] temp_results, 
  output logic [3:0] temp_flags
);

  // const carry
  logic [4:0]temp_carry = 5'b00000;
  
  // temp results
  logic [3:0]temp_result_add;
  logic [3:0]temp_result_substract;
  logic [3:0]temp_result_and;
  logic [3:0]temp_result_or;
  logic [3:0]temp_result_xor;
  logic [3:0]temp_result_sll;
  logic [3:0]temp_result_srl;
  
  // temp flags
  logic [3:0]temp_flag_add;
  logic [3:0]temp_flag_substract;
  logic [3:0]temp_flag_and;
  logic [3:0]temp_flag_or;
  logic [3:0]temp_flag_xor;
  logic [3:0]temp_flag_sll;
  logic [3:0]temp_flag_srl;
  
  
  fourBitAdder_module add_operation(a, b, temp_carry, temp_result_add, temp_flag_add);
  
  fourBitSubstractor_module subs_operation(a, b, temp_carry, temp_result_substract, temp_flag_substract);
  
  and_module and_operation(a, b, temp_result_and, temp_flag_and);
  
  or_module or_operation(a, b, temp_result_or, temp_flag_or);
  
  xor_module xor_operation(a, b, temp_result_xor, temp_flag_xor);
  
  sll_module sll_opertion(a, b, temp_result_sll, temp_flag_sll);
  
  srl_module srl_operation(a, b, temp_result_srl, temp_flag_srl);

  always @(uc)

    begin
      case (uc)
        0 : temp_results = temp_result_add; //temp_flags = temp_flag_add;

        1 : temp_results = temp_result_substract; //temp_flags = temp_flag_substract;
		
        2 : temp_results = temp_result_and; //temp_flags = temp_flag_and;

        3 : temp_results = temp_result_or; //temp_flags = temp_flag_or;

        4 : temp_results = temp_result_xor; //temp_flags = temp_flag_xor;

        5 : temp_results = temp_result_sll; //temp_flags = temp_flag_sll;

        6 : temp_results = temp_result_srl; //temp_flags = temp_flag_srl;

      endcase
		
      case (uc)
        0 : temp_flags = temp_flag_add;

        1 : temp_flags = temp_flag_substract;
		
        2 : temp_flags = temp_flag_and;

        3 : temp_flags = temp_flag_or;

        4 : temp_flags = temp_flag_xor;

        5 : temp_flags = temp_flag_sll;

        6 : temp_flags = temp_flag_srl;

      endcase
    end

endmodule 