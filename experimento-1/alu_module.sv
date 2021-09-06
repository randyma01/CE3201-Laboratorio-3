module alu_module #(parameter N=4)
(
	input logic [N-1:0] A,
	input logic [N-1:0] B,
	input logic [2:0] UC,
	output logic [N-1:0] RESULT,
	output logic [3:0] FLAGS
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
  
  // Variable de resultado final y flag final
  //Dentro de un always -> reg    fuera -> logic
  logic [N-1:0]TRESULT;
  logic [3:0]TFLAGS;
  
  
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
        1 : begin 
				 TRESULT = temp_result_add;
				 TFLAGS = temp_flag_add;
				end

        2 : begin 
				 TRESULT = temp_result_substract;
				 TFLAGS = temp_flag_substract;

				end
		
        3 : begin 
				 TRESULT = temp_result_and;
				 TFLAGS = temp_flag_and;
				end

        4 : begin 
				 TRESULT = temp_result_or;
				 TFLAGS = temp_flag_or;
				end

        5 : begin 
				  TRESULT = temp_result_xor;
				 TFLAGS = temp_flag_xor;
				end

        6 : begin 
				 TRESULT = temp_result_sll;
				 TFLAGS = temp_flag_sll;
				end

        7 : begin 
				 TRESULT = temp_result_srl;
				 TFLAGS = temp_flag_slr;
				end
				
			default : begin 
				 TRESULT = 4'b0000;
				 TFLAGS = 4'b0000;
				end

      endcase
		
	end
	
	assign RESULT = TRESULT;
	assign FLAGS = TFLAGS;
	
	 
endmodule