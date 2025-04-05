module verifica_paridade (
  input [8:0] dado, // a paridade é o bit mais significativo (dado[8]) 8 bits de dados + 1 paridade
  output erro
);

wire p;

calcula_paridade u1 (
  .dado(dado[7:0]),
  .paridade(p)
);

assign erro = dado[8]^p;

endmodule
