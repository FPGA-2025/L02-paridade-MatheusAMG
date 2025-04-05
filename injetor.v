module injetor(
  input [8:0] entrada,
  input [3:0] n,
  input erro,
  output reg [8:0] saida
);
 
always @(*) begin // injetar erro
 
  if (erro) begin // se erro 1 entao injeta
    saida = entrada ^ (1 << n); // Se XOR 1 inverte o bit. Entao desloco o bit 1 para posicao e faco XOR nele
  end
  else begin
    saida = entrada; // Nao injeta erro
  end
  
end

endmodule
