module alu_module #(parameter N=4)
(
	input logic [N-1:0] A,
	input logic [N-1:0] B,
	input logic [2:0] UC,
	output reg [N-1:0] RESULT,
	output reg [3:0] FLAGS
);


  // Resultados temporales - temp results
  logic [N-1:0]temp_result_add;
  logic [N-1:0]temp_result_substract;
  logic [N-1:0]temp_result_and;
  logic [N-1:0]temp_result_or;
  logic [N-1:0]temp_result_xor;
  logic [N-1:0]temp_result_sll;
  logic [N-1:0]temp_result_srl;
  
  // Flags temporales - temp flags
  logic [3:0]temp_flag_add;
  logic [3:0]temp_flag_substract;
  logic [3:0]temp_flag_and;
  logic [3:0]temp_flag_or;
  logic [3:0]temp_flag_xor;
  logic [3:0]temp_flag_sll;
  logic [3:0]temp_flag_srl;
  
  //"Instancias" de las operaciones 
	nBitAdder_module adderMod (A, B, temp_result_add, temp_flag_add);//Suma
	nBitSubstractor_module subsMod (A, B, temp_result_substract, temp_flag_substract);//Resta
	and_module andMod (A, B, temp_result_and, temp_flag_and);//And
	or_module orMod (A, B, temp_result_or, temp_flag_or);//Or
	xor_module xorMod (A, B, temp_result_xor, temp_flag_xor);//Xor
	sll_module sllMod (A, B, temp_result_sll, temp_flag_sll);//SLL
	srl_module srlMod (A, B, temp_result_srl, temp_flag_slr);//SRL

  
    always @(UC)
		

    begin
	/* 
		if (UC==3'b000)
			begin
				RESULT = temp_result_add;
				FLAGS = temp_flag_add;
			end	 
		else if (UC==3'b001)
			begin
				 RESULT = temp_result_add;
				 FLAGS = temp_flag_add;
			end
		else if (UC==3'b010)
			begin
				 RESULT = temp_result_add;
				 FLAGS = temp_flag_add;
			end
		else if (UC==3'b011)
			begin
				 RESULT = temp_result_add;
				 FLAGS = temp_flag_add;
			end
		else if (UC==3'b100)
			begin
				 RESULT = temp_result_add;
				 FLAGS = temp_flag_add;
			end
		else if (UC==3'b101)
			begin
				 RESULT = temp_result_add;
				 FLAGS = temp_flag_add;
			end
		else if (UC==3'b110)
			begin
				 RESULT = temp_result_add;
				 FLAGS = temp_flag_add;
			end
		else if (UC==3'b111)
			begin
				 RESULT = temp_result_add;
				 FLAGS = temp_flag_add;
			end
	*/		

      case (UC)
        0 : begin 
				 RESULT = temp_result_add;
				 FLAGS = temp_flag_add;
				end

        1 : begin 
				 RESULT = temp_result_substract;
				 FLAGS = temp_flag_substract;
				end
		
        2 : begin 
				 RESULT = temp_result_and;
				 FLAGS = temp_flag_and;
				end

        3 : begin 
				 RESULT = temp_result_or;
				 FLAGS = temp_flag_or;
				end

        4 : begin 
				  RESULT = temp_result_xor;
				 FLAGS = temp_flag_xor;
				end

        5 : begin 
				 RESULT = temp_result_sll;
				 FLAGS = temp_flag_sll;
				end

        6 : begin 
				 RESULT = temp_result_srl;
				 FLAGS = temp_flag_slr;
				end

      endcase
		
	end
	 
endmodule