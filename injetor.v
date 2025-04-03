module injetor(
  input [8:0] entrada,
  input [3:0] n,
  input erro,
  output reg [8:0] saida
);

reg [8:0] dado_corrompido;
wire erro_saida;

always @(*) begin // injetar erro
 
  if erro begin // se erro 1 entao injeta
    assign dado_corrompido = entrada ^ (1 << n); // XOR 1 inverte o bit entao desloco o bit 1 para posicao e faco XOR nele
  end else begin
    assign dado_corrompido = entrada; // Nao injeta erro
  end
  
end

// Verifica paridade
calcula_paridade u1 (
  .dado(dado_corrompido),
  .erro(erro_saida)
);

// Nao teria que ter um outra saida erro??



endmodule
