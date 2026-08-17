

insert into clientes (rg, nome_cliente, email, telefone_cliente, endereco_cliente) 
values
('20163263-9', 'Miguel Machado', 'miguel@gmail.com', '(11) 3673-4746', 'Rua Claraboia, 50'),
('44057022-0', 'Marcos Santos', 'Marcos@gmail.com', '(11) 98987-5252', 'Rua Castelo Branco, 10'),
('24365958-1', 'Carlos Silva', 'carlos@hotmail.com.br', '(11) 3251-2587', 'Avenida Paulista, 1500'),
('46435275-7', 'Maria Souza', 'maria@outlook.com', '(21) 2507-8963', 'Rua da Liberdade, 554'),
('27040204-4', 'João Silva', 'joao@gmail.com', '(31) 3571-4285', 'Rua das Flores, 875'),
('16435284-3', 'Ana Souza', 'ana.souza@email.com', '(11) 98765-4321', 'Rua das Flores, 123'),
('36253805-0', 'Bruno Lima', 'bruno.lima@email.com', '(11) 91234-5678', 'Av. Paulista, 500'),
('25910972-1', 'Carla Dias', 'carla.dias@email.com', '(21) 99988-7766', 'Rua Alegre, 45'),
('36156120-9', 'Diego Martins', 'diego.m@email.com', '(31) 98877-6655', 'Rua Central, 320'),
('32763848-5', 'Eliane Rocha', 'eliane.rocha@email.com', '(11) 97744-5533', 'Av. Brasil, 88'),
('24489375-5', 'Felipe Souza', 'felipe.souza@email.com', '(21) 96655-4433', 'Rua do Sol, 12'),
('33265519-2', 'Gabriela Nunes', 'gabriela.nunes@email.com', '(11) 95566-7788', 'Av. Santos Dumont, 1000');

insert into transportadora(id_transportadora, nome_transportadora, telefone_transportadora, tipo_transporte)
values
(1, 'TransLog', '1130304040', 'Rodoviário'),
(2, 'SpeedEntregas', '1140405050', 'Aéreo'),
(3, 'Carga Fácil', '1150506060', 'Rodoviário'),
(4, 'LogExpress', '1160607070', 'Marítimo'),
(5, 'MegaTrans', '1170708080', 'Rodoviário');


insert into entrega (id_entrega, data_entrega, status_entrega, id_transportadora, tipo_carga)
values
(1, '2025-05-01', 'Aguardando envio', 1, 'fragil'),
(2, '2025-05-02', 'Enviado', 2, 'especial'),
(3, '2025-05-03', 'Entregue', 3, 'grande'),
(4, '2025-05-04', 'Em trânsito', 4, 'fragil'),
(5, '2025-05-05', 'Aguardando envio', 5, 'especial'),
(6, '2025-05-06', 'Enviado', 1, 'grande'),
(7, '2025-05-07', 'Entregue', 2, 'fragil'),
(8, '2025-05-08', 'Aguardando envio', 3, 'especial'),
(9, '2025-05-09', 'Em trânsito', 4, 'grande'),
(10, '2025-05-10', 'Entregue', 5, 'fragil'),
(11, '2025-05-11', 'Enviado', 1, 'especial'),
(12, '2025-05-12', 'Aguardando envio', 2, 'grande'),
(13, '2025-05-13', 'Entregue', 3, 'fragil'),
(14, '2025-05-14', 'Enviado', 4, 'especial'),
(15, '2025-05-15', 'Em trânsito', 5, 'grande');

insert into pedido (id_pedido, data_pedido, status_pedido, rg, id_entrega)
values
(1, '2025-05-01 10:00:00', 'Em processamento', '36156120-9', 1),
(2, '2025-05-02 11:30:00', 'Enviado', '24489375-5', 2),
(3, '2025-05-03 14:45:00', 'Entregue', '16435284-3', 3),
(4, '2025-05-04 16:00:00', 'Cancelado', '44057022-0', 4),
(5, '2025-05-05 17:15:00', 'Aguardando pagamento', '25910972-1', 5),
(6, '2025-05-06 09:20:00', 'Em processamento', '46435275-7', 6),
(7, '2025-05-07 12:10:00', 'Enviado', '20163263-9', 7),
(8, '2025-05-08 13:30:00', 'Entregue', '32763848-5', 8),
(9, '2025-05-09 10:50:00', 'Em processamento', '36253805-0', 9),
(10, '2025-05-10 15:25:00', 'Aguardando pagamento', '33265519-2', 10),
(11, '2025-05-11 16:45:00', 'Enviado', '27040204-4', 11),
(12, '2025-05-12 11:00:00', 'Entregue', '24365958-1', 12),
(13, '2025-05-13 09:30:00', 'Em processamento', '44057022-0', 13),
(14, '2025-05-14 14:15:00', 'Enviado', '46435275-7', 14),
(15, '2025-05-15 10:05:00', 'Entregue', '16435284-3', 15);

insert into Itens_pedido (id_item, Quantidade, id_pedido)
values
(1, 2, 1),
(2, 1, 2),
(3, 4, 3),
(4, 1, 4),
(5, 3, 5),
(6, 2, 6),
(7, 5, 7),
(8, 1, 8),
(9, 2, 9),
(10, 1, 10),
(11, 3, 11),
(12, 2, 12),
(13, 1, 13),
(14, 4, 14),
(15, 2, 15);

insert into estoque (id_estoque, quantidade_estoque, localização_estoque)
values
(1, 1000, 'Centro-SP'),
(2, 750, 'Barueri-SP'),
(3, 1200, 'Campinas-SP'),
(4, 500, 'Belo Horizonte-MG'),
(5, 900, 'Curitiba-PR');






insert into fornecedor(id_fornecedor, nome_fornecedor, telefone_fornecedor, endereço_fornecedor)
values
(1, 'Tech Distribuidora', '1133345566', 'Rua Tech, 99'),
(2, 'Max Eletrônicos', '1144456677', 'Av. Central, 45'),
(3, 'Fashion Mix', '1122233344', 'Rua da Moda, 10'),
(4, 'Livros & Cia', '1133366699', 'Av. Leitura, 101'),
(5, 'Top Games', '1166677788', 'Rua Gamer, 22'),
(6, 'EletroPlus', '1177788899', 'Av. Energia, 303');


insert into produtos(id_produto, nome_produto, preço, quantidade_estoque, id_fornecedor, id_estoque)
values
(1, 'Celular Android Avançado', 3599.00, 25, 1, 1),
(2, 'Notebook Intermediário 15"', 4299.00, 10, 1, 2),
(3, 'Camiseta Esportiva Masculina', 129.90, 50, 3, 3),
(4, 'Livro de Aventura Fantástica', 49.90, 100, 4, 4),
(5, 'Mouse Óptico com LED', 159.00, 30, 2, 5),
(6, 'Impressora Multifuncional Básica', 399.00, 15, 1, 1),
(7, 'Tênis Esportivo Masculino', 229.90, 40, 3, 2),
(8, 'Monitor 24" Full HD', 849.00, 20, 1, 3),
(9, 'Máquina de Café Compacta', 349.00, 10, 6, 4),
(10, 'Mochila para Notebook', 299.00, 25, 1, 5),
(11, 'Assistente Virtual Compacto', 379.00, 35, 2, 1),
(12, 'Ventilador de Mesa 40cm', 199.00, 50, 6, 2),
(13, 'Teclado Mecânico Compacto', 249.00, 20, 2, 3),
(14, 'Relógio Digital Retrô', 299.00, 15, 2, 4),
(15, 'Pulseira Inteligente Fitness', 349.00, 25, 2, 5),
(16, 'Liquidificador com Copo de Vidro', 159.90, 40, 6, 1),
(17, 'Câmera de Ação 4K', 2899.00, 10, 2, 2),
(18, 'TV LED 50" Ultra HD', 2299.00, 15, 1, 3),
(19, 'Calça Jeans Slim Masculina', 119.90, 60, 3, 4),
(20, 'Chuteira Campo Adulto', 229.90, 25, 3, 5),
(21, 'Fogão 4 Bocas Inox', 1899.00, 8, 6, 1),
(22, 'Liquidificador de Alta Potência', 229.90, 30, 6, 2),
(23, 'Fone de Ouvido Gamer', 399.90, 18, 2, 3),
(24, 'Poltrona Reclinável Estofada', 899.90, 12, 6, 4),
(25, 'Aquecedor Portátil Elétrico', 249.90, 22, 6, 5),
(26, 'Pneu Aro 15 para Passeio', 499.90, 20, 5, 1),
(27, 'Fraldas Tamanho Extra Grande', 109.90, 50, 5, 2),
(28, 'Toalha de Banho Algodão', 59.90, 70, 5, 3),
(29, 'Conjunto de Panelas Antiaderente', 349.90, 16, 6, 4),
(30, 'Terminal de Pagamento Móvel', 79.90, 40, 5, 5),
(31, 'Tênis de Corrida Premium', 699.90, 25, 3, 1),
(32, 'Aspirador Vertical 2 em 1', 399.90, 19, 6, 2),
(33, 'Óculos de Sol Estilo Aviador', 589.00, 30, 3, 3),
(34, 'Balança Corporal Digital', 149.90, 35, 6, 4),
(35, 'Kit com 10 Meias Cano Médio', 59.90, 90, 3, 5),
(36, 'Cadeira Presidente para Escritório', 899.00, 15, 1, 1),
(37, 'Carregador Rápido USB-C', 89.90, 70, 2, 2),
(38, 'Avental Estampado de Cozinha', 29.90, 80, 5, 3),
(39, 'HD Externo 2TB', 459.90, 25, 2, 4),
(40, 'Tapete Decorativo Antiderrapante', 139.90, 20, 5, 5),
(41, 'Kit Shampoo e Condicionador', 39.90, 100, 5, 1),
(42, 'Jogo de Copos 6 Unidades', 49.90, 60, 5, 2),
(43, 'Carregador Veicular Duplo', 29.90, 85, 2, 3),
(44, 'Chave de Fenda 6mm', 19.90, 120, 6, 4),
(45, 'Cortador de Cabelo Masculino', 159.90, 30, 6, 5),
(46, 'Conjunto Panelas 5 Peças', 299.90, 20, 6, 1),
(47, 'Assistente Virtual com Tela', 499.90, 18, 2, 2),
(48, 'Roteador Wi-Fi Avançado', 299.90, 22, 2, 3),
(49, 'Impressora a Tinta com Tanque', 1199.00, 8, 1, 4),
(50, 'Cortina Blackout 2x1,80m', 89.90, 30, 5, 5),
(51, 'Papel Sulfite 500 Folhas', 29.90, 100, 4, 1),
(52, 'Aparador de Pelos Recarregável', 179.90, 15, 6, 2),
(53, 'Cooler com LED 120mm', 59.90, 50, 2, 3),
(54, 'Cabo HDMI 2m', 29.90, 75, 2, 4),
(55, 'Mochila Escolar Infantil', 119.90, 40, 3, 5),
(56, 'Torneira Elétrica 4 Temperaturas', 129.90, 20, 6, 1),
(57, 'Jogo de Cama Casal 4 Peças', 159.90, 35, 5, 2),
(58, 'Cadeira Gamer Reclinável', 1299.00, 10, 2, 3),
(59, 'Suporte Articulado para TV', 89.90, 25, 6, 4),
(60, 'Travesseiro Espuma Viscoelástica', 79.90, 60, 5, 5);

insert into carga_fragil (id_entrega, Manuseio)
values
(1, 'Manipular com cuidado. Vidro.'),
(4, 'Frágil. Não empilhar.'),
(7, 'Item eletrônico sensível.'),
(10, 'Plásticos frágeis. Evitar impacto.'),
(13, 'Produto delicado. Não tombar.');

insert into carga_especial (id_entrega, cuidado)
values
(2, 'Requer temperatura controlada.'),
(5, 'Não expor à luz solar direta.'),
(8, 'Necessita de embalagem térmica.'),
(11, 'Material inflamável. Atenção no transporte.'),
(14, 'Requer umidade controlada.');

insert into carga_grande (id_entrega, Pessoas_necessarias)
values
(3, 3),
(6, 2),
(9, 4),
(12, 2),
(15, 3)
