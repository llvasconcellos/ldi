-- phpMyAdmin SQL Dump
-- version 3.0.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: Fev 24, 2017 as 03:13 PM
-- Versão do Servidor: 5.0.51
-- Versão do PHP: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `ldi`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `cd` int(10) unsigned NOT NULL auto_increment,
  `chave` varchar(255) NOT NULL default '',
  `valor` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`cd`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Extraindo dados da tabela `config`
--

INSERT INTO `config` (`cd`, `chave`, `valor`) VALUES
(1, 'senha', '123456'),
(2, 'email', 'ldi@ldi.com.br'),
(3, 'offline', 'n'),
(4, 'nr_boleto', '74'),
(5, 'email_consulta', 'vendas@ldi.com.br'),
(6, 'email_compra', 'vendas@ldi.com.br'),
(7, 'email_cobranca', 'vendas@ldi.com.br'),
(8, 'tam_fonte_menu', '11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contatos`
--

CREATE TABLE IF NOT EXISTS `contatos` (
  `cd` int(10) unsigned NOT NULL auto_increment,
  `categoria` int(10) unsigned NOT NULL default '0',
  `nome` varchar(100) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `telefone` varchar(50) NOT NULL default '',
  `celular` varchar(50) NOT NULL default '',
  `ramal` varchar(5) NOT NULL default '',
  `texto` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`cd`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Extraindo dados da tabela `contatos`
--

INSERT INTO `contatos` (`cd`, `categoria`, `nome`, `email`, `telefone`, `celular`, `ramal`, `texto`) VALUES
(1, 1, 'Camila (Tele-Vendas )', 'vendas@ldi.com.br', '(047) 3026-6500', '', '', 'MSN - ldi-camila@hotmail.com'),
(2, 2, 'Pâmela', 'compras@ldi.com.br', '(47)3026-6500', '', '', 'MSN - pamela_ldi@hotmail.com'),
(3, 3, 'Suelen', 'at@ldi.com.br', '(47)3026-6500', '', '', 'MSN - belasuc@hotmail.com\r\nEste e-mail está disponí­vel para contatos e orçamentos de conserto.'),
(5, 5, 'Rute', 'financeiro@ldi.com.br', '(47)3026-6500', '', '', 'Este email está disponí­vel para contas a pagar e receber.'),
(8, 4, 'Ismar', 'projetos@ldi.com.br', '(47) 3026-6500', '', '', ''),
(7, 4, 'Denis', 'denis@ldi.com.br', '(47)3026-6500', '', '', 'Eng. Controle e Automação Industrial <br>\r\n'),
(25, 8, 'PR - Pinhais', 'pinhais@eletrorastro.com.br', '(41) 3627-1974', '', '', 'Empresa Eletrorastro Materiais Eletricos<br>\r\nContato Geison ou Kiko\r\n'),
(13, 1, 'Reginaldo J. de Souza (Vendas Externa)', 'vendas@ldi.com.br', '(47)3026-6500 (LDI)', '(47)8409-1470', '', 'Atende diretamente Revendas e Fabricantes de Maquinas'),
(11, 6, 'Fama Automação LTDA ME', 'inovaautomacao@yahoo.com.br', '(19)3294-4408', '', '', 'Contatos: Flávio ou Kazuo.<BR>\r\nLocalização: Campinas;<BR> Região: Estado de São Paulo'),
(12, 8, 'PR - Maringa e Regiao', 'magaradl@terra.com.br', '(44)3228-7441', '(44) 88010105', '', 'Empresa Daltecnica <br>\r\nContato: Magara;Marlon e Rafael <br>\r\nLocalização:Maringa'),
(15, 7, 'SC - Videira', 'videmotores@videmotores.com.br', '(49)566-0911', '(49)9980-3432', '', 'Empresa: Videmotores<BR>\r\nRodovia SC-453 - Km 5,3<BR>\r\ncontato: Valdir<BR>\r\n'),
(16, 7, 'SC - Rio do Sul', 'comercial.induelt@brturbo.com.br', '(47)525-2684', '', '', 'Empresa: Induelt<BR>\r\ncontato: João Steffan<BR>'),
(17, 7, 'SC - Rio do Sul', 'ctmeletronica@terra.com.br', '(47)525-3764', '(47)9116-2071', '', 'Empresa: CTM Eletrônica e Automação Industrial<BR>\r\nAv. Gov. Ivo Silveira, 555 - Canta Galo<BR>\r\ncontato: Cleiton Theis<BR>'),
(18, 7, 'SC - Chapecó', 'chapecocme@chapecocme.com.br', '(49)331-4141', '(49)9987-2701', '', 'Empresa: Chapecó Materiais Elétricos<BR>\r\nRua São Pedro, 1280-E<BR>\r\ncontato: Airton Lorenzatto'),
(19, 7, 'SC - Joinville', 'anderson@proelteletro.com.br', '(47)461-2067', '', '', 'Empresa: Proelt Eletro\r\nContato: Anderson Alves'),
(20, 7, 'SC - São Bento do Sul', 'engetronic@engetronic-sc.com.br', '(47) 3634-2287', '', '', 'Empresa - Engetronic Com de Mat Eletr e Eletron LTDA\r\nContato: Cleiton'),
(21, 3, 'Jean Maffezolli', 'at@ldi.com.br', '(47)3026-6500', '', '', ''),
(22, 3, 'Assistência Técnica 24hs', 'at@ldi.com.br', '(47)3026-6500', '(47)8405-5642', '', 'Contato: Geison'),
(23, 7, 'SC Brusque', 'drivetec@brturbo.com.br', '(47) 355-7891', '9113-2962', '', 'Empresa: Inversul Manut. e Aut. Eletro Eletr. Ind.<br> \r\nRua: Blumenau,123 - Sala01 Centro<br>\r\nContato: Evandro L. Fischer<br>\r\nRegião: Brusque'),
(24, 7, 'SC - Lages', 'coisarada@globo.com', '(49) 223-1078', 'plantão', '', 'Empresa: Coisarada Mat. Eletricos, e Instalações <br>\r\nContato: Guiomar / Célio <br>\r\nRegião: Lages\r\n'),
(26, 8, 'PR - Sao Jose dos Pinhais', 'saojose@eletrorastro.com.br', '(41) 3383-8091', '', '', 'Empresa Eletrorastro Materiais Eletricos<br>\r\nContato Leo e Luiz'),
(27, 8, 'PR - Fazenda Rio Grande', 'fazenda@eletrorastro.com.br', '(41) 3627-1974', '', '', 'Empresa Eletrorastro Materiais Eletricos<br>\r\nContato Geison'),
(28, 8, 'PR - Araucaria', 'eletrorastro@eletrorastro.com.br', '(41)3552-1400', '', '', 'Empresa Eletrorastro Materiais Elétricos <br> Contato Márcio ou Ricardo'),
(29, 7, 'SC - Criciuma', 'akilson@celesp.com.br', '(48) 3478-4002', '', '', 'Empresa Comercial Eletrica São Pedro - Celesp\r\n<br> Contato Ivan ou Akilson'),
(30, 7, 'SC - Guabiruba', 'facilityferragens@facilityferragens.com.br', '(47) 3354-4374', '(47) 8803-2752', '', 'Empresa Facility Comércio <br>\r\nContato: Sérgio ou Ricardo'),
(31, 7, 'SC - Mafra', 'www.cmoeletro.com.br', '(47) 3642-1286', '', '', 'Empresa CMO Materiais Eletricos\r\n<br> Contato: Marcelo ou Cidivaldo'),
(32, 7, 'SC - Lages', 'coisarada@globo.com.br', '(49)3223-1078', '', '', 'Empresa Coisarada Materiais Elétricos <br>\r\nContato: Célio ou Guiomar'),
(33, 9, 'SP - Santos', 'lsdrives@bignet.com.br', '(13)3222-4344', '(13)7807-9267', '', 'Empresa: LS Drives<br>\r\ncontato: Ademir / Luiz<br>\r\nLocalização: Amador Bueno, 444'),
(34, 9, 'SP - Campinas', 'inovaautomação@yahoo.com.br', '(19) 3294-4408', '', '', 'Empresa: Inova Automação <br>\r\nContato: Cazu ou Cintia <br>\r\n'),
(35, 7, 'Criciúma - SC', 'ivancelesp@hotmail.com', '(48)3443-2011', '(48)9625-0072', '', 'Ivan Costa<BR>\r\nConsultor vendas'),
(36, 7, 'Braço do Norte-SC', 'compras@eletrojo.com.br', '(48)3658-3202', '(48)9987-3202', '', 'Contato: Engº Fabiano');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato_categoria`
--

CREATE TABLE IF NOT EXISTS `contato_categoria` (
  `cd` int(10) unsigned NOT NULL auto_increment,
  `categoria` varchar(255) NOT NULL default '',
  `ordem` int(11) NOT NULL default '0',
  PRIMARY KEY  (`cd`),
  UNIQUE KEY `categoria` (`categoria`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Extraindo dados da tabela `contato_categoria`
--

INSERT INTO `contato_categoria` (`cd`, `categoria`, `ordem`) VALUES
(1, 'Vendas', 1),
(2, 'Compras', 4),
(3, 'Assistência Técnica - AT', 2),
(4, 'Projetos e desenvolvimento', 5),
(5, 'Financeiro', 11),
(6, 'Representantes', 10),
(7, 'Distribuidores SC', 8),
(8, 'Distribuidores PR', 9),
(9, 'Distribuidor SP', 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `familias`
--

CREATE TABLE IF NOT EXISTS `familias` (
  `cd` int(10) unsigned NOT NULL auto_increment,
  `familia` varchar(255) NOT NULL default '',
  `descricao` text NOT NULL,
  `ordem` int(11) NOT NULL default '0',
  `fornecedor` int(10) unsigned NOT NULL default '0',
  `titulo_mala_direta` text NOT NULL,
  `inclui_mala_direta` char(1) NOT NULL default 's',
  PRIMARY KEY  (`cd`),
  UNIQUE KEY `familia` (`familia`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

--
-- Extraindo dados da tabela `familias`
--

INSERT INTO `familias` (`cd`, `familia`, `descricao`, `ordem`, `fornecedor`, `titulo_mala_direta`, `inclui_mala_direta`) VALUES
(1, 'Acopladores / Interfaces', 'Relé Acoplador/Acopladores a Relé.<BR>\r\nEntrada: 5Vcc, 12Vcc, 24Vcc, 110Vca, 220Vca.<BR>Saí­da: NA, NF ou REV<BR>NÂ° Canais: 1, 4 e 8.', 14, 4, 'Acopladores Interfaces', 's'),
(3, 'Relés de Estado Sólido', 'Entrada: 5-30Vcc, 220Vca<BR>Saí­da: 24-300Vca (15, 40 ou 65 Aca), 180-260Vca (25Aca)', 23, 4, 'Relé Estado Sólido Monofásico e Trifásico', 's'),
(4, 'Variadores de Potência / Dimmer', 'Potenciômetro: 500k Ohns<BR>Saí­da: 24-300Vca (6, 15, 25 ou 40Aca)', 27, 4, 'Variadores de Potência / Dimmer', 's'),
(5, 'Conversores de Sinal', 'Entrada: 4-20mA, 0-10Vcc, 0-100Vcc<BR>Saí­da: 0-10Vcc, 4-20mA', 17, 4, 'Conversores de Sinal', 's'),
(45, 'Tempo + Temperatura', '', 8, 1, 'Tempo + Temperatura', 's'),
(52, 'Indicador Digital', '', 11, 1, '', 'n'),
(48, 'Temporizadores Digitais', '', 4, 1, 'Temporizadores Digitais', 's'),
(50, 'Controladores de Processos', '', 10, 1, 'Controladores de Processos', 's'),
(51, 'Contadores Digitais', '', 12, 1, 'Contadores Digitais', 's'),
(15, 'Fontes de Alimentação', 'Alimentação: 110Vca, 220Vca.<BR>Saí­da: 24Vcc.<BR>Corrente: 0.7A, 1.1A, 1.8A, 2.1A, 2.5A,<BR>4.5A, 6.5A, 8.3A e 15A', 18, 4, 'Fontes de Alimentação', 's'),
(14, 'Transform. de Corrente', 'Entrada: 100, 150, 200, 250, 300, 400, 500, <BR>600, 800, 1000, 1200, 1500, 1600, 2000A.<BR>Saí­da: 5A<BR>Furo: 30x30mm, 60x60mm ou 100x100mm.', 26, 4, 'Transformadores de Corrente - TC', 's'),
(39, 'Controlador Refrigeração', '', 6, 1, 'Controladores de Refrigeração', 's'),
(40, 'Câmeras', '', 29, 3, 'Sistema de Visão DVT (Controle de Qualidade)', 's'),
(41, 'Controlador Aquecimento', '', 7, 1, 'Controladores de Temperatura', 's'),
(24, 'Ventiladores', 'Ventiladores são utilizados para resfriamento.', 28, 4, 'Ventiladores', 's'),
(42, 'Controladores para Gás', '', 9, 1, 'Controladores para Gás', 's'),
(32, 'Fusí­veis', '', 19, 4, 'Fusí­veis', 's'),
(33, 'Sensores de Temperatura', '', 25, 4, 'Sensores de Temperatura', 's'),
(34, 'Sensores de Presença', '', 24, 4, 'Sensores de Presença', 's'),
(35, 'Indicadores Digitais', '', 20, 0, 'Voltí­metros\r\nAmperí­metros \r\nTermômetros\r\nTacômetros', 's'),
(36, 'Controladores de Processo', '', 16, 0, 'Controladores de Processo', 's'),
(37, 'Matriz de Diodos', '', 21, 4, 'Matriz de Diodos', 's'),
(54, 'Filtro Sobretensão/Raios', '     As sobretensões ou surtos de tensão nas redes elétricas ocorrem diversas vezes durante um mesmo dia, estas sobretensões são causadas principalmente pelas descargas atmosféricas e as manobras de cargas como, motores, máquinas de solda, transformadores, etc. Estas sobretensões embora tenham duração de alguns microsegundos, causam a diminuição da vida útil dos equipamentos eletroeletrônicos (televisores, ví­deos, computadores, etc) e motores elétricos (portões eletrônicos, compressores de ar, bombas submersas, geladeiras, etc) podendo chegar a danos irreparáveis.', 13, 11, 'Filtro Sobretensão/Raios', 's'),
(55, 'Painéis de Senha Eletrônico', '- Painéis Digitais.<BR>\r\n', 22, 4, 'Painéis de Senha Eletrônico', 's'),
(56, 'Temporizadores Analógicos', '', 1, 1, '', 'n'),
(57, 'Controlador Molde', '', 15, 4, '', 's');

-- --------------------------------------------------------

--
-- Estrutura da tabela `links`
--

CREATE TABLE IF NOT EXISTS `links` (
  `cd` int(10) unsigned NOT NULL auto_increment,
  `nome` varchar(255) NOT NULL default '',
  `link` varchar(255) NOT NULL default '',
  `tipo` tinyint(4) NOT NULL default '0',
  `ordem` int(11) NOT NULL default '0',
  PRIMARY KEY  (`cd`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `links`
--

INSERT INTO `links` (`cd`, `nome`, `link`, `tipo`, `ordem`) VALUES
(1, 'INOVA', 'www.inova.ind.br', 1, 2),
(2, 'WEG', 'www.weg.com.br', 1, 3),
(4, 'DVT', 'www.dvtsensors.com', 1, 1),
(5, 'Acrobat Reader', 'ardownload.adobe.com/pub/adobe/reader/win/6.x/6.0/ptb/AdbeRdr60_ptb_full.exe', 1, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE IF NOT EXISTS `produtos` (
  `cd` int(10) unsigned NOT NULL auto_increment,
  `familia` int(10) unsigned NOT NULL default '0',
  `codigo` varchar(12) NOT NULL default '',
  `produto` varchar(255) NOT NULL default '',
  `preco` decimal(10,2) NOT NULL default '0.00',
  `preco_promocao` decimal(10,2) NOT NULL default '0.00',
  `imposto` decimal(5,2) NOT NULL default '0.00',
  `prazo` varchar(50) NOT NULL default '',
  `imagem` varchar(255) NOT NULL default '',
  `imagem_thumb` varchar(255) NOT NULL default '',
  `largura_imagem` varchar(10) NOT NULL default '',
  `altura_imagem` varchar(10) NOT NULL default '',
  `tamanho_imagem` varchar(20) NOT NULL default '',
  `pdf` varchar(255) NOT NULL default '',
  `tamanho_pdf` varchar(20) NOT NULL default '',
  `descricao` varchar(255) NOT NULL default '',
  `peso` int(11) NOT NULL default '0',
  `ordem` int(11) NOT NULL default '999',
  `tipo_imposto` varchar(20) NOT NULL default '',
  `promocao` char(1) NOT NULL default 'n',
  `subfamilia` int(10) unsigned NOT NULL default '0',
  `dimensoes` varchar(255) NOT NULL default 'Não Especificado',
  PRIMARY KEY  (`cd`),
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=644 ;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`cd`, `familia`, `codigo`, `produto`, `preco`, `preco_promocao`, `imposto`, `prazo`, `imagem`, `imagem_thumb`, `largura_imagem`, `altura_imagem`, `tamanho_imagem`, `pdf`, `tamanho_pdf`, `descricao`, `peso`, `ordem`, `tipo_imposto`, `promocao`, `subfamilia`, `dimensoes`) VALUES
(308, 1, '1000.0003', 'AR50.5Vcc.1REV', '0.00', '0.00', '0.00', 'Imediato', '', '', '', '', '', '', '', 'Acoplador à Relé - AR50<br>\r\nEntrada: 220Vca;<br>\r\nSaí­da: 1 REV;<br><br>\r\n\r\nDimensões: 20x71x46 (LxAxP)<br>\r\n\r\n', 44, 4, '', 'n', 3, '20x71x46'),
(309, 1, '1000.0006', 'AR50.12Vcc.1REV', '0.00', '0.00', '0.00', 'Imediato', '', '', '', '', '', '', '', 'Acoplador à Relé - AR50<br>\r\nEntrada: 220Vca;<br>\r\nSaí­da: 1 REV;<br><br>\r\n\r\nDimensões: 20x71x46 (LxAxP)<br>\r\n\r\n', 44, 5, '', 'n', 3, '20x71x46'),
(18, 1, '1000.0018', 'AR50.220Vca.1REV', '0.00', '0.00', '0.00', 'Imediato', 'imagens/1000.0018.jpg', 'imagens/thumb/thumb_1000.0018.jpg', '475.366795', '480', '34.98 KB', '', '', 'Acoplador à Relé - AR50<br>\r\nEntrada: 220Vca;<br>\r\nSaí­da: 1 REV;<br><br>\r\n\r\nDimensões: 20x71x46 (LxAxP)<br>\r\n\r\n', 44, 9, '', 'n', 3, '20x71x46'),
(563, 45, '1001.0096', 'CTR 110/220.J.2out(1NA+30A/220).0Âºa255Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 402, '', 'n', 56, '75x75x95'),
(564, 45, '1001.0097', 'CTR 110/220.K.2out(5A a 220+30A/220).0Âºa255Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 403, '', 'n', 56, '75x75x95'),
(565, 42, '1001.0098', 'CTR 110/220.J.1out(BEEP).3out(3NA).0Âºa410Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 386, '', 'n', 57, '75x75x95'),
(34, 1, '1000.0067', 'AR50.24Vcc.1NA/NF.x4.pnp', '0.00', '0.00', '0.00', 'Imediato', 'imagens/1000.0067.jpg', 'imagens/thumb/thumb_1000.0067.jpg', '587', '541', '46.54 KB', '', '', 'Acoplador à Relé - AR50<br>\r\nNúmero de Canais: 4; <br>\r\nEntrada: 24Vcc (negativo comum);<br>\r\nSaí­da: NA ou NF (seleção por jumper);<br><br>\r\n\r\nDimensões: 50x71x46 (LxAxP)<br>\r\n', 167, 15, '', 'n', 1, '50x71x46'),
(35, 1, '1000.0066', 'AR50.24Vcc.1NA/NF.x8.pnp', '72.98', '65.69', '0.00', 'Imediato', 'imagens/1000.0066.jpg', 'imagens/thumb/thumb_1000.0066.jpg', '640', '516.336260', '59.45 KB', '', '', 'Acoplador à Relé - AR50<br>\r\nNúmero de Canais: 8; <br>\r\nEntrada: 24Vcc (negativo comum);<br>\r\nSaí­da: NA ou NF (seleção por jumper);<br><br>\r\nDimensões: 95x71x46 (LxAxP)\r\n', 0, 21, '', 'n', 9, '95x71x46'),
(609, 52, '1001.0147', 'IND. 24/48.J.-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 421, '', 'n', 65, '48x48x95'),
(610, 52, '1001.0148', 'IND. 24/48.K.-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 422, '', 'n', 65, '48x48x95'),
(611, 52, '1001.0149', 'IND. 110/220.J.-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 423, '', 'n', 65, '48x48x95'),
(612, 52, '1001.0150', 'IND. 110/220.K.-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 424, '', 'n', 65, '48x48x95'),
(46, 3, '1000.0035', 'RES.220Vca.180-260Vca.25Aca', '56.90', '51.21', '0.00', 'Imediato', 'imagens/1000.0035.jpg', 'imagens/thumb/thumb_1000.0035.jpg', '316', '318', '21.60 KB', '', '', 'Relés de Estado Sólido-RES<br>\r\nEntrada: 220Vca<br>\r\nSaí­da: 24-300Vca/25Aca<br><br>\r\nDimensões: 43x57x33 (LxAxP)<br>', 138, 40, '', 'n', 11, 'Não Especificado'),
(47, 3, '1000.0036', 'RES.220Vca.180-260Vca.40Aca', '65.56', '59.01', '0.00', 'Imediato', 'imagens/1000.0036.jpg', 'imagens/thumb/thumb_1000.0036.jpg', '438', '424', '34.46 KB', '', '', 'Relés de Estado Sólido-RES<br>\r\nEntrada: 220Vca<br>\r\nSaí­da: 180-260\r\nVca/40Aca<br><br>\r\nDimensões: 43x57x33 (LxAxP)<br>', 138, 41, '', 'n', 11, 'Não Especificado'),
(48, 4, '1000.0059', 'VRP10.24-300Vca.6A', '0.00', '0.00', '0.00', '', 'imagens/1000.0059.jpg', 'imagens/thumb/thumb_1000.0059.jpg', '353', '464', '26.41 KB', '', '', 'Variadores de Potência-VRP<br>\r\nPotenciômetro: 500K ohms<br>\r\nSaí­da: 24-300Vca/6A<br><br>\r\nDimensões: 20x71x75 (LxAxP)', 0, 286, '', 'n', 36, '20x71x72'),
(51, 4, '1000.0062', 'VRP - 10.24-300Vca.40A', '0.00', '0.00', '0.00', '', 'imagens/1000.0062.jpg', 'imagens/thumb/thumb_1000.0062.jpg', '521', '483', '39.85 KB', '', '', 'Variadores de Potência-VRP<br>\r\nPotenciômetro: 500K ohms<br>\r\nSaí­da: 24-300Vca/40A<br><br>\r\nDimensões: 43x57x33 (LxAxP)<br>\r\n', 0, 289, '', 'n', 37, '98x48x101'),
(619, 51, '1001.0161', 'CONT.24/48.1out(1REV).1out(SE).pnp.0-999.999', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 431, '', 'n', 70, '75x75x95'),
(620, 51, '1001.0162', 'CONT.24/48.1out(1REV).1out(SE).npn.0-999.999', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 432, '', 'n', 70, '75x75x95'),
(621, 51, '1001.0163', 'CONT.24/48.1out(1REV).1out(SE).encoder.0-999.999', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 433, '', 'n', 70, '75x75x95'),
(616, 50, '1001.0154', 'INV-26 CTR PRS.110/220.2K.4in.(4NA).6out(1NA).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 428, '', 'n', 67, '98x98x138'),
(617, 51, '1001.0155', 'CONT.24/48.1out(1REV).1out(12Vcc).pnp/NA.0-9999', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 429, '', 'n', 69, '75x33x95'),
(618, 51, '1001.0156', 'CONT.110/220.1out(1REV).1out(12Vcc).pnp/NA.0-9999', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 430, '', 'n', 69, '75x33x95'),
(64, 5, '1000.0063', 'CA30.4-20mA.0-10Vcc', '47.33', '42.60', '0.00', 'Imediato', 'imagens/1000.0063.jpg', 'imagens/thumb/thumb_1000.0063.jpg', '470.927835', '480', '37.21 KB', '', '', 'Conversor de Sinal - CA<br>\r\nEntrada: 4-20mA<br>\r\nSaí­da: 0-10Vcc<br><br>\r\nDimensões: 31x71x43 (LxAxP)\r\n', 34, 50, '', 'n', 0, 'Não Especificado'),
(65, 5, '1000.0064', 'IG30.0-10Vcc.0-10Vcc', '190.00', '0.00', '0.00', 'Imediato', 'imagens/1000.0064.jpg', 'imagens/thumb/thumb_1000.0064.jpg', '334.718100', '480', '26.25 KB', '', '', 'Isolador Galvânico - IG<br>\r\nIsolação Ótica;<br>\r\nEntradas: 4-20mA, 0-10Vcc, 0-100Vcc<br>\r\nSaí­da: 0-10Vcc, 4-20mA<br><br>\r\nDimensões: 55x15x105(LxAxP)<br>\r\n', 317, 999, '', 'n', 31, '55x75x105'),
(606, 52, '1001.0144', 'IND. 110/220.J.-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 419, '', 'n', 65, '75x33x95'),
(607, 52, '1001.0145', 'IND. 110/220.K.-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 429, '', 'n', 65, '75x33x95'),
(608, 52, '1001.0146', 'IND. 110/220.PT-100.-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 420, '', 'n', 65, '75x33x95'),
(602, 52, '1001.0140', 'IND. 110/220.0-255mVca', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 415, '', 'n', 64, '48x48x95'),
(603, 52, '1001.0141', 'IND. 110/220.0-255mVcc', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 417, '', 'n', 64, '48x48x95'),
(604, 52, '1001.0142', 'IND. 110/220.PTC(STI).-30Âºa99Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 418, '', 'n', 65, '75x33x95'),
(605, 52, '1001.0143', 'IND. 110/220.PTC(STI).-50Âºa120Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 416, '', 'n', 65, '75x33x95'),
(599, 48, '1001.0137', 'Temp.Analógico.Bargraf.Potenciômetro/60min.', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 413, '', 'n', 62, '75x75x95'),
(600, 52, '1001.0138', 'IND. 110/220.0-255Vca', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 413, '', 'n', 64, '48x48x95'),
(601, 52, '1001.0139', 'IND. 110/220.0-255Vcc', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 414, '', 'n', 64, '48x48x95'),
(595, 48, '1001.0133', 'AutoCiclo.24.1out(1REV).min/h', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 409, '', 'n', 62, '100x75x40'),
(596, 48, '1001.0134', 'AutoCiclo.48.1out(1REV).min/h', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 410, '', 'n', 62, '100x75x40'),
(597, 48, '1001.0135', 'AutoCiclo.110.1out(1REV).min/h', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 412, '', 'n', 62, '100x75x40'),
(598, 48, '1001.0136', 'AutoCiclo.220.1out(1REV).min/h', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 411, '', 'n', 62, '100x75x40'),
(593, 48, '1001.0130', 'Temp.24/48.3out(3NA).1out(12Vcc).Sensor PNP.0-999.seg/min', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 407, '', 'n', 61, '75x75x95'),
(594, 48, '1001.0131', 'Temp.110/220.3out(3NA).1out(12Vcc).Sensor  PNP.0-999.seg/min', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 408, '', 'n', 61, '75x75x95'),
(590, 48, '1001.0127', 'Temp.220.1out(12Vcc).1out(REV).0-9999.seg/min', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 404, '', 'n', 60, '48x48x95'),
(591, 48, '1001.0128', 'Temp.24/48.3out(3NA).1out(12Vcc).Sensor NPN.0-999.seg/min', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 405, '', 'n', 61, '75x75x95'),
(592, 48, '1001.0129', 'Temp.110/220.3out(3NA).1out(12Vcc).Sensor NPN.0-999.seg/min', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 406, '', 'n', 61, '75x75x95'),
(587, 48, '1001.0124', 'Temp.24.1out(12Vcc).1out(REV).0-9999.seg/min', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 401, '', 'n', 60, '48x48x95'),
(588, 48, '1001.0125', 'Temp.48.1out(12Vcc).1out(REV).0-9999.seg/min', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 402, '', 'n', 60, '48x48x95'),
(589, 48, '1001.0126', 'Temp.110.1out(12Vcc).1out(REV).0-9999.seg/min', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 403, '', 'n', 60, '48x48x95'),
(584, 45, '1001.0117', 'CTR 220.J.1out(Beep-12Vcc).3out(3NA).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 398, '', 'n', 58, '48x48x95'),
(585, 45, '1001.0118', 'CTR 220.K.1out(Beep-12Vcc).3out(3NA).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 399, '', 'n', 58, '48x48x95'),
(586, 45, '1001.0119', 'CTR 220.PT-100.1out(Beep-12Vcc.3out(3NA).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 400, '', 'n', 58, '48x48x95'),
(581, 45, '1001.0114', 'CTR 110.J.1out(Beep-12Vcc).3out(3NA).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 395, '', 'n', 58, '48x48x95'),
(582, 45, '1001.0115', 'CTR 110.K.1out(Beep-12Vcc).3out(3NA).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 396, '', 'n', 58, '48x48x95'),
(583, 45, '1001.0116', 'CTR 110.PT-100.1out(Beep-12Vcc).3out(3NA).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 397, '', 'n', 58, '48x48x95'),
(578, 45, '1001.0111', 'CTR 48.J.1out(Beep-12Vcc).3out(3NA).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 392, '', 'n', 58, '48x48x95'),
(579, 45, '1001.0112', 'CTR 48.K.1out(Beep-12Vcc).3out(3NA).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 393, '', 'n', 58, '48x48x95'),
(580, 45, '1001.0113', 'CTR 48.PT-100.1out(Beep-12Vcc).3out(3NA).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 394, '', 'n', 58, '48x48x95'),
(125, 1, '1000.0007', 'AR50.24Vcc.1NA', '0.00', '0.00', '0.00', 'Imediato', 'imagens/1000.0007.jpg', 'imagens/thumb/thumb_1000.0007.jpg', '440', '365', '28.76 KB', 'pdf/am50.1na.pdf', '', 'Acoplador à Relé - AR50<br>\r\nEntrada: 24Vcc;<br>\r\nSaí­da: 1NA;<br><br>\r\nDimensões: 20x71x46 (LxAxP)', 38, 3, '', 'n', 0, '20x71x46'),
(613, 50, '1001.0151', 'INV-5401 CTR PRS.110.PTC(STI).1out(Beep-24Vcc).1out(12A.1out(5A).-25Âºa100Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 425, '', 'n', 68, '75x75x95'),
(614, 50, '1001.0152', 'INV-5401 CTR PRS.220.PTC(STI).1out(Beep-24Vcc).1out(12A.1out(5A).-25Âºa100Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 426, '', 'n', 68, '75x75x95'),
(615, 50, '1001.0153', 'INV-26 CTR PRS.110/220.2J.4in.(4NA).6out(1NA).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 427, '', 'n', 67, '98x98x138'),
(575, 45, '1001.0108', 'CTR 24.J.1out(Beep-12Vcc).3out(3NA).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 389, '', 'n', 58, '48x48x95'),
(576, 45, '1001.0109', 'CTR 24.K.1out(Beep-12Vcc).3out(3NA).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 390, '', 'n', 58, '48x48x95'),
(577, 45, '1001.0110', 'CTR 24.PT-100.1out(Beep-12Vcc).3out(3NA).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 391, '', 'n', 58, '48x48x95'),
(572, 45, '1001.0105', 'CTR 110.K.3out(3NA)+1out(12Vcc)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 386, '', 'n', 58, '75x75x95'),
(573, 45, '1001.0106', 'CTR 220.J.3out(3NA)+1out(12Vcc)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 387, '', 'n', 58, '75x75x95'),
(574, 45, '1001.0107', 'CTR 220.K.3out(3NA)+1out(12Vcc)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 388, '', 'n', 58, '75x75x95'),
(408, 15, '1002.0010', 'FAC - 110/220Vca-24Vcc/0,7A (15W)', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 1, '', 'n', 7, '99x97x35'),
(409, 15, '1002.0011', 'FAC - 110/220Vca-24Vcc/1,1A (25W)', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 2, '', 'n', 7, '99x97x35'),
(410, 15, '1002.0012', 'FAC - 110/220Vca-24Vcc/1,5A (35W)', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 3, '', 'n', 7, '129x98x38'),
(411, 15, '1002.0013', 'FAC - 110/220Vca-24Vcc/1,8A (40W)', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 4, '', 'n', 7, '129x98x38'),
(412, 15, '1002.0014', 'FAC - 110/220Vca-24Vcc/2,1A (50W)', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 5, '', 'n', 7, '159x97x38'),
(413, 15, '1002.0015', 'FAC - 110/220Vca-24Vcc/2,5A (60W)', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 6, '', 'n', 7, '159x97x38'),
(414, 15, '1002.0016', 'FAC - 110/220Vca-24Vcc/4,5A (100W)', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 7, '', 'n', 7, '199x98x38'),
(415, 15, '1002.0017', 'FAC - 110/220Vca-24Vcc/6,5A (150W)', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 8, '', 'n', 7, '199x98x38'),
(416, 15, '1002.0018', 'FAC - 110/220Vca-24Vcc/8,3A (200W)', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 148, '', 'n', 7, '185x120x92'),
(566, 42, '1001.0099', 'CTR 110/220.K.1out(BEEP).3out(3NA).0Âºa410Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 387, '', 'n', 57, '75x75x95'),
(567, 45, '1001.0100', 'CTR 24.J.3out(3NA)+1out(12Vcc)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 382, '', 'n', 58, '75x75x95'),
(568, 45, '1001.0101', 'CTR 24.K.3out(3NA)+1out(12Vcc)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 383, '', 'n', 58, '75x75x95'),
(569, 45, '1001.0102', 'CTR 48.J.3out(3NA)+1out(12Vcc)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 401, '', 'n', 58, '75x75x95'),
(570, 45, '1001.0103', 'CTR 48.K.3out(3NA)+1out(12Vcc)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 384, '', 'n', 58, '75x75x95'),
(571, 45, '1001.0104', 'CTR 110.J.3out(3NA)+1out(12Vcc)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 385, '', 'n', 58, '75x75x95'),
(419, 14, '1002.0248', 'TC -50/5. diâmetro 30x30', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 1, '', 'n', 23, '80x50x82'),
(420, 14, '1002.0262', 'TC -100/5. diâmetro 30x30', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 2, '', 'n', 23, '80x50x82'),
(421, 14, '1002.0063', 'TC - 150/5. diâmetro 30x30', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 3, '', 'n', 23, '80x50x82'),
(559, 41, '1001.0086', 'CTR 24/48.2PT100.3out(3NA).2(SSR).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 380, '', 'n', 55, '75x75x138'),
(560, 41, '1001.0087', 'CTR 110/220.2J.3out(3NA).2(SSR).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 381, '', 'n', 55, '75x75x138'),
(561, 41, '1001.0088', 'CTR 110/220.2K.3out(3NA).2(SSR).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 382, '', 'n', 55, '75x75x138'),
(562, 41, '1001.0089', 'CTR 110/220.PT100.3out(3NA).2(SSR).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 383, '', 'n', 55, '75x75x138'),
(555, 41, '1001.0094', 'CTR 220.2K.3out(3NA).1(SSR).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 376, '', 'n', 55, '48x48x86'),
(556, 41, '1001.0095', 'CTR 220.2PT100.3out(3NA).1(SSR).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 377, '', 'n', 55, '48x48x86'),
(557, 41, '1001.0084', 'CTR 24/48.2J.3out(3NA).2(SSR).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 378, '', 'n', 55, '75x75x138'),
(558, 41, '1001.0085', 'CTR 24/48.2K.3out(3NA).2(SSR).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 379, '', 'n', 55, '75x75x138'),
(522, 42, '1001.0058', 'CTR Gás.24/48.J.2out(2NA).0Âºa255Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 341, '', 'n', 47, '75x75x95'),
(523, 42, '1001.0059', 'CTR GAS.110/220.J.2out(2NA).0Âºa255Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 342, '', 'n', 47, '75x75x95'),
(524, 41, '1001.0021', 'CTR 110/220.PTC(STI).1out(SSR-12Vcc).2out(2NA).-50Âºa120Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 343, '', 'n', 48, '75x33x59'),
(525, 41, '1001.0024', 'CTR 110/220.J.1out(SSR-12Vcc).2out(2NA).-24Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 345, '', 'n', 48, '75x33x59'),
(526, 41, '1001.0025', 'CTR 110/220.K.1out(SSR-12Vcc).2out(2NA).-24Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 346, '', 'n', 48, '75x33x59'),
(527, 41, '1001.0060', 'CTR 24/48.J.2out(2REV).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 348, '', 'n', 50, '75x75x95'),
(528, 41, '1001.0061', 'CTR 24/48.K.2out(2REV).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 349, '', 'n', 50, '75x75x95'),
(529, 41, '1001.0062', 'CTR 110/220.J.2out(2REV).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 350, '', 'n', 50, '75x75x95'),
(530, 41, '1001.0063', 'CTR 110/220.K.2out(2REV).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 351, '', 'n', 50, '75x75x95'),
(531, 41, '1001.0064', 'CTR 110.J.1out(SSR-12Vcc).1out(1NA).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 352, '', 'n', 50, '48x48x95'),
(532, 41, '1001.0065', 'CTR 110.K.1out(SSR-12Vcc).1out(1NA).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 353, '', 'n', 50, '48x48x95'),
(533, 41, '1001.0066', 'CTR 110.PT-100.1out(SSR-12Vcc).1out(1NA).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 354, '', 'n', 50, '48x48x95'),
(534, 41, '1001.0067', 'CTR 220.J.1out(SSR-12Vcc).1out(1NA).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 355, '', 'n', 50, '48x48x95'),
(535, 41, '1001.0068', 'CTR 220.K.1out(SSR-12Vcc).1out(1NA).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 356, '', 'n', 50, '48x48x95'),
(536, 41, '1001.0069', 'CTR 220.PT-100.1out(SSR-12Vcc).1out(1NA).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 357, '', 'n', 50, '48x48x95'),
(537, 41, '1001.0070', 'CTR 110/220.J.2out(2NA).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 358, '', 'n', 50, '48x48x95'),
(538, 41, '1001.0071', 'CTR 110/220.K.2out(2NA).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 359, '', 'n', 50, '48x48x75'),
(539, 41, '1001.0072', 'CTR 110/220.PT-100.2out(2NA).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 360, '', 'n', 50, '48x48x95'),
(540, 41, '1001.0073', 'CTR 110.J.2out(2NA).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 361, '', 'n', 53, '48x48x95'),
(541, 41, '1001.0074', 'CTR 110.K.2out(2NA).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 362, '', 'n', 53, '48x48x95'),
(542, 41, '1001.0075', 'CTR 220.J.2out(2NA).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 363, '', 'n', 53, '48x48x95'),
(543, 41, '1001.0076', 'CTR 220.K.2out(2NA).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 364, '', 'n', 53, '48x48x95'),
(544, 41, '1001.0077', 'CTR 110/220.PT-100.2out(2NA).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 366, '', 'n', 53, '48x48x95'),
(545, 41, '1001.0079', 'CTR 24/48.2K.2out(2NA).2out(12Vcc -SSR).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 365, '', 'n', 53, '75x75x135'),
(546, 41, '1001.0080', 'CTR 24/48.2PT100.2out(2NA).2out(12Vcc-SSR).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 368, '', 'n', 53, '75x75x135'),
(547, 41, '1001.0078', 'CTR 24/48.2J.2out(2NA).2out(12Vcc-SSR).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 369, '', 'n', 53, '75x75x135'),
(548, 41, '1001.0081', 'CTR 110/220.2J.2out(2NA).2out(12Vcc -SSR).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 370, '', 'n', 53, '48x48x136'),
(549, 41, '1001.0082', 'CTR 110/220.2K.2out(2NA).2out(12Vcc -SSR).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 371, '', 'n', 53, '48x48x136'),
(550, 41, '1001.0083', 'CTR 110/220.2PT100.2out(2NA).2out(12Vcc -SSR).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 372, '', 'n', 53, '48x48x136'),
(551, 41, '1001.0090', 'CTR 110.2J.3out(3NA).1(SSR).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 373, '', 'n', 55, '48x48x86'),
(552, 41, '1001.0091', 'CTR 110.2K.3out(3NA).1(SSR).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 374, '', 'n', 55, '48x48x86'),
(553, 41, '1001.0092', 'CTR 110.2PT100.3out(3NA).1(SSR).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 375, '', 'n', 55, '48x48x86'),
(554, 41, '1001.0093', 'CTR 220.2J.3out(3NA).1(SSR).-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 384, '', 'n', 55, '48x48x86'),
(628, 54, '1006.0002', 'DPD 132M Protetor sob. eletr.DIN 20KA 275V Mono', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 1004, '', 'n', 73, ''),
(627, 54, '1006.0001', 'DPD 131M Protetor sob. eletr.DIN 10KA 275V Mono', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 1, '', 'n', 73, ''),
(486, 39, '1001.0017', 'CTR 24.PTC(STI).1out(1Rev:5AA/220).-30Âºa99Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 302, '', 'n', 42, '75x33x59'),
(487, 39, '1001.0018', 'CTR 48.PTC(STI).1out(1REV:5A/220).-30Âºa99Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 303, '', 'n', 42, '75x33x59'),
(488, 39, '1001.0019', 'CTR 110.PTC(STI).1out(1REV:5AA/220).-30Âºa99Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 304, '', 'n', 42, '75x33x59'),
(489, 39, '1001.0020', 'CTR 220.PTC(STI).1out(1REV:5A/220).-30Âºa99Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 305, '', 'n', 42, '75x33x59'),
(490, 39, '1001.0022', 'CTR 110/220.PTC(STI).2out(2NA).-50Âºa120Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 307, '', 'n', 43, '75x33x59'),
(491, 39, '1001.0023', 'CTR 110/220.PTC(STI).3out(3NA).-50Âºa120Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 309, '', 'n', 43, '75x33x59'),
(492, 41, '1001.0027', 'CTR 24.J.1out(1REV-5A/220)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 310, '', 'n', 50, '48x48x95'),
(493, 41, '1001.0028', 'CTR 24.J.1out(1REV-12A/220)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 311, '', 'n', 45, '48x48x95'),
(494, 41, '1001.0029', 'CTR 24.J.1out(SSR-12Vcc)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 312, '', 'n', 45, '48x48x95'),
(495, 41, '1001.0030', 'CTR 24.K.1out(1REV-5A/220)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 313, '', 'n', 45, '48x48x95'),
(496, 41, '1001.0031', 'CTR 24.K.1out(1REV-12A/220)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 314, '', 'n', 45, '48x48x95'),
(497, 41, '1001.0032', 'CTR 24.K.1out(SSR-12Vcc)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 315, '', 'n', 45, '48x48x95'),
(498, 41, '1001.0033', 'CTR 48.J.1out(1REV-5A/220)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 316, '', 'n', 45, '48x48x95'),
(499, 41, '1001.0034', 'CTR 48.J.1out(1REV-12A/220)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 317, '', 'n', 45, '48x48x95'),
(500, 41, '1001.0035', 'CTR 48.J.1out(SSR-12Vcc)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 318, '', 'n', 45, '48x48x95'),
(501, 41, '1001.0036', 'CTR 48.K.1out(1REV-5A/220)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 319, '', 'n', 45, '48x48x95'),
(502, 41, '1001.0037', 'CTR 48.K.1out(1REV-12A/220)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 320, '', 'n', 45, '48x48x95'),
(503, 41, '1001.0038', 'CTR 48.K.1out(SSR-12Vcc)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 321, '', 'n', 45, '48x48x95'),
(504, 41, '1001.0039', 'CTR 110.J.1out(1REV-5A/220)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 322, '', 'n', 45, '48x48x95'),
(505, 41, '1001.0040', 'CTR 110.J.1out(1REV-12A/220)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 323, '', 'n', 45, '48x48x95'),
(506, 41, '1001.0041', 'CTR 110.J.1out(SSR-12Vcc)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 324, '', 'n', 45, '48x48x95'),
(507, 41, '1001.0042', 'CTR 110.K.1out(1REV-5A/220)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 325, '', 'n', 45, '48x48x95'),
(508, 41, '1001.0043', 'CTR 110.K.1out(1REV-12A/220)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 326, '', 'n', 45, '48x48x96'),
(509, 41, '1001.0044', 'CTR 110.K.1out(SSR-12Vcc)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 327, '', 'n', 45, '48x48x95'),
(510, 41, '1001.0045', 'CTR 220.J.1out(1REV-5A/220)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 328, '', 'n', 45, '48x48x95'),
(511, 41, '1001.0046', 'CTR 220.J.1out(1REV - 12A/220)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 329, '', 'n', 45, '48x48x95'),
(512, 41, '1001.0047', 'CTR 220.J.1out(SSR-12Vcc)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 330, '', 'n', 45, '48x48x95'),
(513, 41, '1001.0048', 'CTR 220.K.1out(1REV-5A/220)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 331, '', 'n', 45, '48x48x95'),
(514, 41, '1001.0049', 'CTR 220.K.1out(1REV-12A/220)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 332, '', 'n', 45, '48x48x95'),
(515, 41, '1001.0050', 'CTR 220.K.1out(SSR-12Vcc)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 333, '', 'n', 45, '48x48x95'),
(516, 41, '1001.0051', 'CTR 24/48.J.1out(1REV)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 335, '', 'n', 45, '75x75x95'),
(517, 41, '1001.0052', 'CTR 24/48.K.1out(1REV)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 337, '', 'n', 45, '75x75x95'),
(518, 41, '1001.0053', 'CTR 24/48.PT-100.1out(1REV)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 336, '', 'n', 45, '75x75x95'),
(519, 41, '1001.0054', 'CTR 110/220.J.1out(1REV)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 367, '', 'n', 45, '75x75x95'),
(520, 41, '1001.0055', 'CTR 110/220.K.1out(1REV)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 339, '', 'n', 45, '75x75x95'),
(521, 41, '1001.0057', 'CTR 110/220.PT-100.1out(1REV)-25Âºa700Âº', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 340, '', 'n', 45, '75x75x95'),
(266, 4, '2090.0001', 'Potenciômetro.470K.1volta', '0.00', '0.00', '0.00', '', 'imagens/2090.0001.jpg', 'imagens/thumb/thumb_2090.0001.jpg', '185', '269', '9.84 KB', '', '', '', 0, 290, '', 'n', 38, 'Padrão'),
(640, 55, '1007.0007', 'Relógio digital com Horas e Minutos - Dí­gito 7cm', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 1, '', 'n', 82, ''),
(643, 1, '1000.0124', 'acopl. relé.AR50.24Vcc.2REV', '33.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 999, '', 'n', 84, ''),
(481, 4, '1000.0060', 'VRP - 10.90-300Vca.15A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 287, '', 'n', 37, '98x48x101'),
(482, 4, '1000.0061', 'VRP - 10.90-300Vca.25A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 288, '', 'n', 37, '98x48x101'),
(483, 4, '0020.0080', 'Knob com Parafuso', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 291, '', 'n', 38, 'Padrão'),
(622, 51, '1001.0164', 'CONT.110/220.1out(1REV).1out(SE).pnp.0-999.999', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 434, '', 'n', 70, '75x75x95'),
(623, 51, '1001.0165', 'CONT.110/220.1out(1REV).1out(SE).npn.0-999.999', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 345, '', 'n', 70, '75x75x95'),
(624, 51, '1001.0166', 'CONT.110/220.1out(1REV).1out(SE).encoder.0-999.999', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 436, '', 'n', 70, '75x75x95'),
(625, 48, '1001.0123', 'Temp.110/220.1out(12Vcc).1out(REV).0-9999.seg/min', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 420, '', 'n', 72, '75x33x59'),
(626, 48, '1001.0122', 'Temp.24/48.1out(12Vcc).1out(REV).0-9999.seg/min', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 309, '', 'n', 72, '75x33x59'),
(629, 54, '1006.0003', 'DPD 133M Protetor sob. eletr.DIN 40KA 275V Mono', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 1003, '', 'n', 73, ''),
(630, 54, '1006.0004', 'DPE 111M Protetor sob. eletr.DIN 10KA 275V Mono', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 1002, '', 'n', 75, ''),
(631, 54, '1006.0005', 'DPE 111T Protetor sob. eletr.DIN 10KA 275V Tripol.', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 1001, '', 'n', 75, ''),
(632, 54, '1006.0006', 'DPC 120M Protetor sob. tipo centelhad. 1500V Mono', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 1000, '', 'n', 74, ''),
(633, 54, '1006.0007', 'DPC 120T Protetor sob. tipo centelhad. 1500V Tripo', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 999, '', 'n', 74, ''),
(634, 55, '10070001', 'Painel Fila Única', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 1006, '', 'n', 76, ''),
(635, 55, '10070002', 'Painel Senha 3 Dí­gitos', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 1005, '', 'n', 77, ''),
(636, 55, '10070003', 'Painel Senha e Guichê 1', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 1004, '', 'n', 78, ''),
(637, 55, '10070004', 'Painel Senha e Guichê 2', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 1003, '', 'n', 79, ''),
(638, 55, '10070005', 'Painel Senha e Guichê com Jornal', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 1002, '', 'n', 80, ''),
(639, 55, '10070006', 'Painel com Relógio de Temperatura', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 1001, '', 'n', 81, ''),
(293, 24, '1002.0078', 'Ventilador.12Vcc.(40x40x10)', '0.00', '0.00', '0.00', '', 'imagens/1002.0078.jpg', 'imagens/thumb/thumb_1002.0078.jpg', '570', '408', '33.16 KB', '', '', '', 0, 291, '', 'n', 40, '40x40x40'),
(296, 24, '1002.0082', 'Ventilador.110/220.(80x80x38)', '0.00', '0.00', '0.00', '', 'imagens/1002.0082.jpg', 'imagens/thumb/thumb_1002.0082.jpg', '450.909090', '480', '36.70 KB', '', '', '', 0, 293, '', 'n', 40, '80x80x38'),
(297, 24, '1002.0083', 'Ventilador.110/220.(120x120x38)', '0.00', '0.00', '0.00', '', 'imagens/1002.0083_b.jpg', 'imagens/thumb/thumb_1002.0083_b.jpg', '450.909090', '480', '36.70 KB', '', '', '', 0, 292, '', 'n', 40, '120x120x38'),
(305, 1, '1000.0076', 'AR50.5Vcc.1NA/NF.x8.npn', '72.98', '65.69', '0.00', 'Imediato', '', '', '', '', '', '', '', 'Acoplador à Relé - AR50<br>\r\nNúmero de Canais: 8; <br>\r\nEntrada: 24Vcc (negativo comum);<br>\r\nSaí­da: NA ou NF (seleção por jumper);<br><br>\r\nDimensões: 95x71x46 (LxAxP)\r\n', 0, 16, '', 'n', 9, '95x71x46'),
(306, 1, '1000.0001', 'AR50.5Vcc.1NA', '0.00', '0.00', '0.00', 'Imediato', '', '', '', '', '', '', '', 'Acoplador à Relé - AR50<br>\r\nEntrada: 24Vcc;<br>\r\nSaí­da: 1NA;<br><br>\r\nDimensões: 20x71x46 (LxAxP)', 38, 1, '', 'n', 0, '20x71x46(LxAxP)'),
(307, 1, '1000.0004', 'AR50.12Vcc.1NA', '0.00', '0.00', '0.00', 'Imediato', '', '', '', '', '', '', '', 'Acoplador à Relé - AR50<br>\r\nEntrada: 24Vcc;<br>\r\nSaí­da: 1NA;<br><br>\r\nDimensões: 20x71x46 (LxAxP)', 38, 2, '', 'n', 0, '20x71x46'),
(310, 1, '1000.0009', 'AR50.24Vcc.1REV', '0.00', '0.00', '0.00', 'Imediato', '', '', '', '', '', '', '', 'Acoplador à Relé - AR50<br>\r\nEntrada: 220Vca;<br>\r\nSaí­da: 1 REV;<br><br>\r\n\r\nDimensões: 20x71x46 (LxAxP)<br>\r\n\r\n', 44, 6, '', 'n', 3, '20x71x46'),
(311, 1, '1000.0012', 'AR50.24Vca.1REV', '0.00', '0.00', '0.00', 'Imediato', '', '', '', '', '', '', '', 'Acoplador à Relé - AR50<br>\r\nEntrada: 220Vca;<br>\r\nSaí­da: 1 REV;<br><br>\r\n\r\nDimensões: 20x71x46 (LxAxP)<br>\r\n\r\n', 44, 7, '', 'n', 3, '20x71x46'),
(312, 1, '1000.0015', 'AR50.110Vca.1REV', '0.00', '0.00', '0.00', 'Imediato', '', '', '', '', '', '', '', 'Acoplador à Relé - AR50<br>\r\nEntrada: 220Vca;<br>\r\nSaí­da: 1 REV;<br><br>\r\n\r\nDimensões: 20x71x46 (LxAxP)<br>\r\n\r\n', 44, 8, '', 'n', 3, '20x71x46'),
(313, 1, '1000.0075', 'AR50.5Vcc.1NA/NF.x4.npn', '0.00', '0.00', '0.00', 'Imediato', '', '', '', '', '', '', '', 'Acoplador à Relé - AR50<br>\r\nNúmero de Canais: 4; <br>\r\nEntrada: 24Vcc (negativo comum);<br>\r\nSaí­da: NA ou NF (seleção por jumper);<br><br>\r\n\r\nDimensões: 50x71x46 (LxAxP)<br>\r\n', 167, 10, '', 'n', 1, '50x71x46'),
(314, 1, '1000.0078', 'AR50.5Vcc.1NA/NF.x4.pnp', '0.00', '0.00', '0.00', 'Imediato', '', '', '', '', '', '', '', 'Acoplador à Relé - AR50<br>\r\nNúmero de Canais: 4; <br>\r\nEntrada: 24Vcc (negativo comum);<br>\r\nSaí­da: NA ou NF (seleção por jumper);<br><br>\r\n\r\nDimensões: 50x71x46 (LxAxP)<br>\r\n', 167, 11, '', 'n', 1, '50x71x46'),
(315, 1, '1000.0081', 'AR50.12Vcc.1NA/NF.x4.npn', '0.00', '0.00', '0.00', 'Imediato', '', '', '', '', '', '', '', 'Acoplador à Relé - AR50<br>\r\nNúmero de Canais: 4; <br>\r\nEntrada: 24Vcc (negativo comum);<br>\r\nSaí­da: NA ou NF (seleção por jumper);<br><br>\r\n\r\nDimensões: 50x71x46 (LxAxP)<br>\r\n', 167, 12, '', 'n', 1, '50x71x46'),
(316, 1, '1000.0084', 'AR50.12Vcc.1NA/NF.x4.pnp', '0.00', '0.00', '0.00', 'Imediato', '', '', '', '', '', '', '', 'Acoplador à Relé - AR50<br>\r\nNúmero de Canais: 4; <br>\r\nEntrada: 24Vcc (negativo comum);<br>\r\nSaí­da: NA ou NF (seleção por jumper);<br><br>\r\n\r\nDimensões: 50x71x46 (LxAxP)<br>\r\n', 167, 13, '', 'n', 1, '50x71x46'),
(317, 1, '1000.0020', 'AR50.24Vcc.1NA/NF.x4.npn', '0.00', '0.00', '0.00', 'Imediato', '', '', '', '', '', '', '', 'Acoplador à Relé - AR50<br>\r\nNúmero de Canais: 4; <br>\r\nEntrada: 24Vcc (negativo comum);<br>\r\nSaí­da: NA ou NF (seleção por jumper);<br><br>\r\n\r\nDimensões: 50x71x46 (LxAxP)<br>\r\n', 167, 14, '', 'n', 1, '50x71x46'),
(318, 1, '1000.0079', 'AR50.5Vcc.1NA/NF.x8.pnp', '72.98', '65.69', '0.00', 'Imediato', '', '', '', '', '', '', '', 'Acoplador à Relé - AR50<br>\r\nNúmero de Canais: 8; <br>\r\nEntrada: 24Vcc (negativo comum);<br>\r\nSaí­da: NA ou NF (seleção por jumper);<br><br>\r\nDimensões: 95x71x46 (LxAxP)\r\n', 0, 17, '', 'n', 9, '95x71x46'),
(319, 1, '1000.0082', 'AR50.12Vcc.1NA/NF.x8.npn', '72.98', '65.69', '0.00', 'Imediato', '', '', '', '', '', '', '', 'Acoplador à Relé - AR50<br>\r\nNúmero de Canais: 8; <br>\r\nEntrada: 24Vcc (negativo comum);<br>\r\nSaí­da: NA ou NF (seleção por jumper);<br><br>\r\nDimensões: 95x71x46 (LxAxP)\r\n', 0, 18, '', 'n', 9, '95x71x46'),
(320, 1, '1000.0085', 'AR50.12Vcc.1NA/NF.x8.pnp', '72.98', '65.69', '0.00', 'Imediato', '', '', '', '', '', '', '', 'Acoplador à Relé - AR50<br>\r\nNúmero de Canais: 8; <br>\r\nEntrada: 24Vcc (negativo comum);<br>\r\nSaí­da: NA ou NF (seleção por jumper);<br><br>\r\nDimensões: 95x71x46 (LxAxP)\r\n', 0, 19, '', 'n', 9, '95x71x46'),
(321, 1, '1000.0021', 'AR50.24Vcc.1NA/NF.x8.npn', '72.98', '65.69', '0.00', 'Imediato', '', '', '', '', '', '', '', 'Acoplador à Relé - AR50<br>\r\nNúmero de Canais: 8; <br>\r\nEntrada: 24Vcc (negativo comum);<br>\r\nSaí­da: NA ou NF (seleção por jumper);<br><br>\r\nDimensões: 95x71x46 (LxAxP)\r\n', 0, 20, '', 'n', 9, '95x71x46'),
(322, 1, '1000.0022', 'AE25.3-30Vcc.10-100Vcc.1Acc', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 22, '', 'n', 10, '12x71x42'),
(323, 1, '1000.0024', 'AE25.3-30Vcc.10-100Vcc.4Acc', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 23, '', 'n', 10, '20x71x72'),
(324, 1, '1000.0025', 'AE25.24Vcc.10-100Vcc.1A.opto', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 24, '', 'n', 10, '12x71x42'),
(325, 1, '1000.0026', 'AE25.3-30Vcc.10-100Vcc.4A.opto', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 25, '', 'n', 10, '20x71x72'),
(326, 1, '1000.0027', 'AE25.24Vcc.24-300Vca.1A.opto', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 26, '', 'n', 10, '12x71x42'),
(327, 1, '1000.0029', 'AE25.24Vcc.24-300Vca.4Aca.opto', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 27, '', 'n', 10, '20x71x72'),
(328, 1, '1000.0023', 'AE25.3-30Vcc.10-60Vcc.X4.pnp', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 30, '', 'n', 12, '35x71x42'),
(329, 1, '1000.0028', 'AE25.24Vcc.24-300Vca.1Aca.X4Aca.OPTO', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 31, '', 'n', 12, '40x71x42'),
(330, 3, '1000.0030', 'RES.5-30Vcc.90-300Vca.15Aca', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 35, '', 'n', 11, '45x57x33'),
(331, 3, '1000.0031', 'RES.5-30Vcc.90-300Vca.25Aca', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 36, '', 'n', 11, '45x57x33'),
(332, 3, '1000.0032', 'RES.5-30Vcc.90-300Vca.40Aca', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 37, '', 'n', 11, '45x57x33'),
(333, 3, '1000.0033', 'RES.5-30Vcc.90-300Vca.65Aca', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 38, '', 'n', 11, '45x57x33'),
(334, 3, '1000.0034', 'RES.220Vca.90-300Vca.15Aca', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 39, '', 'n', 11, '45x57x33'),
(335, 3, '1003.0001', 'RES - TRI-4-32Vcc.24-420Vca.10A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 42, '', 'n', 13, '45x105x33'),
(336, 3, '1003.0003', 'RES - TRI-4-32Vcc.24-420Vca.25A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 43, '', 'n', 13, '45x105x33'),
(337, 3, '1003.0004', 'RES - TRI-4-32Vcc.24-420Vca.40A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 44, '', 'n', 13, '45x105x33'),
(338, 3, '1003.0005', 'RES - TRI-4-32Vcc.48-480Vca.25A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 45, '', 'n', 13, '45x105x33'),
(339, 3, '1003.0006', 'RES - TRI-4-32Vcc.48-480Vca.40A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 46, '', 'n', 13, '45x105x33'),
(340, 3, '1003.0007', 'RES - TRI-95-250Vca/Vcc.24-420Vca.25A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 47, '', 'n', 13, '45x105x33'),
(341, 3, '1003.0008', 'RES - TRI-95-250Vca/Vcc.24-420Vca.40A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 48, '', 'n', 13, '45x105x33'),
(342, 3, '1003.0009', 'RES - TRI-95-250Vca/Vcc.48.480Vca.25A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 49, '', 'n', 13, '45x105x33'),
(343, 3, '1003.0010', 'RES - TRI-95-250Vca/Vcc.48-480VCA.40A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 50, '', 'n', 13, '45x105x33'),
(344, 3, '1003.0011', 'Capa Protetora Trifásica', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 51, '', 'n', 15, '45x105x10'),
(345, 3, '6930.0007', 'Dissipador RES Trifásico', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 52, '', 'n', 15, '45x130x61'),
(346, 3, '1003.0032', 'RES - MON-3,5-32Vcc.24-280Vca.10A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 60, '', 'n', 14, '98x48x101'),
(347, 3, '1003.0033', 'RES - MON-3,5-32Vcc.24-280Vca.15A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 61, '', 'n', 14, '98x48x101'),
(348, 3, '1003.0034', 'RES - MON-3,5-32Vcc.24-280Vca.25A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 62, '', 'n', 14, '98x48x101'),
(349, 3, '1003.0035', 'RES - MON-3,5-32Vcc.24-280Vca.40A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 63, '', 'n', 14, '98x48x101'),
(350, 3, '1003.0036', 'RES - MON-3,5-32Vcc.24-280Vca.45A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 64, '', 'n', 14, '98x48x101'),
(351, 3, '1003.0037', 'RES - MON-3,5-32Vcc.24-280Vca.55A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 65, '', 'n', 14, '98x48x101'),
(352, 3, '1003.0038', 'RES - MON-3,5-32Vcc.24-280Vca.75A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 66, '', 'n', 14, '98x48x101'),
(353, 3, '1003.0039', 'RES - MON-3,5-32Vcc.24-280Vca.100A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 67, '', 'n', 14, '98x48x101'),
(354, 3, '1003.0040', 'RES - MON-3,5-32Vcc.100-420Vca.25A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 68, '', 'n', 14, '98x48x101'),
(355, 3, '1003.0041', 'RES - MON-3,5-32Vcc.100-420Vca.40A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 69, '', 'n', 14, '98x48x101'),
(356, 3, '1003.0042', 'RES - MON-3,5-32Vcc.100-550Vca.25A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 70, '', 'n', 14, '98x48x101'),
(357, 3, '1003.0043', 'RES - MON-3,5-32Vcc.100-550Vca.40A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 71, '', 'n', 14, '98x48x101'),
(358, 3, '1003.0044', 'RES - MON-3,5-32Vcc.100-550Vca.45A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 72, '', 'n', 14, '98x48x101'),
(359, 3, '1003.0045', 'RES - MON-3,5-32Vcc.100-550Vca.55A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 73, '', 'n', 14, '98x48x101'),
(360, 3, '1003.0046', 'RES - MON-3,5-32Vcc.100-550Vca.75A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 74, '', 'n', 14, '98x48x101'),
(361, 3, '1003.0047', 'RES - MON-3,5-32Vcc.100-550Vca.100A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 75, '', 'n', 14, '98x48x101'),
(362, 3, '1003.0048', 'RES - MON-50-280Vca.24-280Vca.15A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 76, '', 'n', 14, '98x48x101'),
(363, 3, '1003.0049', 'RES - MON-50-280Vca.24-280Vca.25A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 77, '', 'n', 14, '98x48x101'),
(364, 3, '1003.0050', 'RES - MON-50-280Vca.24-280Vca.40A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 78, '', 'n', 14, '98x48x101'),
(365, 3, '1003.0051', 'RES - MON-50-280Vca.24-280Vca.45A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 79, '', 'n', 14, '98x48x101'),
(366, 3, '1003.0052', 'RES - MON-50-280Vca.24-280Vca.55A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 80, '', 'n', 14, '98x48x101'),
(367, 3, '1003.0053', 'RES - MON-50-280Vca.24-280Vca.75A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 81, '', 'n', 14, '98x48x101'),
(368, 3, '1003.0054', 'RES - MON-50-280Vca.24-280Vca.100A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 82, '', 'n', 14, '98x48x101'),
(369, 3, '1003.0055', 'RES - MON-50-208Vca.100-420Vca.25A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 83, '', 'n', 14, '98x48x101'),
(370, 3, '1003.0056', 'RES - MON-50-280Vca.100-420Vca.40A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 84, '', 'n', 14, '98x48x101'),
(371, 3, '1003.0057', 'RES - MON-50-280Vca.100-550Vca.25A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 85, '', 'n', 14, '98x48x101'),
(372, 3, '1003.0058', 'RES - MON-50-280Vca.100-550Vca.40A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 91, '', 'n', 14, '98x48x101'),
(373, 3, '1003.0059', 'RES - MON-50-280Vca.100-550Vca.45A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 87, '', 'n', 14, '98x48x101'),
(374, 3, '1003.0060', 'RES - MON-50-280Vca.100-550Vca.55A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 88, '', 'n', 14, '98x48x101'),
(375, 3, '1003.0061', 'RES - MON-50-280Vca.100-550Vca.75A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 89, '', 'n', 14, '98x48x101'),
(376, 3, '1003.0062', 'RES - MON-50-280Vca.100-550Vca.100A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 90, '', 'n', 14, '98x48x101'),
(377, 32, '1003.0069', 'Fusí­vel 10A / 220V - GSX10A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 91, '', 'n', 16, '18x22'),
(378, 32, '1003.0070', 'Fusí­vel 20A / 220V - GSX20A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 92, '', 'n', 16, '18x22'),
(379, 32, '1003.0071', 'Fusí­vel 25A / 220V - GSX25A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 93, '', 'n', 16, '18x22'),
(380, 32, '1003.0072', 'Fusí­vel 30A / 220V - GSX30A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 94, '', 'n', 16, '18x22'),
(381, 32, '1003.0073', 'Fusí­vel 40A / 220V - GSX40A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 95, '', 'n', 16, '18x22'),
(382, 32, '1003.0074', 'Fusí­vel 50A / 220V - GSX50A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 96, '', 'n', 16, '18x22'),
(383, 32, '1003.0075', 'Fusí­vel 60A / 220V - GSX60A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 97, '', 'n', 16, '18x22'),
(384, 32, '1003.0076', 'Fusí­vel 70A / 220V GSX70A L', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 98, '', 'n', 16, '18x22'),
(385, 32, '1003.0077', 'Fusí­vel 80A / 220V - GSX80A L', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 99, '', 'n', 16, '18x22'),
(386, 32, '1003.0078', 'Fusí­vel 25A / 380V - GSGB25A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 100, '', 'n', 17, '18x40'),
(387, 32, '1003.0079', 'Fusí­vel 40A / 380V - GSGB40A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 101, '', 'n', 17, '18x40'),
(388, 32, '1003.0080', 'Fusí­vel 60A / 380V - GSGB60A', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 102, '', 'n', 17, '18x40'),
(389, 32, '1003.0081', 'Fusí­vel 70A / 380V - GSGB70A L', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 103, '', 'n', 17, '18x40'),
(390, 32, '1003.0082', 'Fusí­vel 80A / 380V GSGB80A L', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 104, '', 'n', 17, '18x40'),
(391, 33, '1004.0001', 'Termopar tipo J.6mm', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 105, '', 'n', 18, '1 metro'),
(392, 33, '1004.0002', 'Termopar tipo J.6mm', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 106, '', 'n', 18, '2 metros'),
(393, 33, '1004.0003', 'Termopar tipo J.6mm', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 107, '', 'n', 18, '3 metros'),
(394, 33, '1004.0004', 'Termopar tipo J.6mm', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 108, '', 'n', 18, '4 metros'),
(395, 33, '1004.0005', 'Termopar tipo J.6mm', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 109, '', 'n', 18, '5 metros'),
(396, 33, '1004.0006', 'Termopar tipo J.8mm', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 200, '', 'n', 18, '1 metro'),
(397, 33, '1004.0007', 'Termopar tipo J.8mm', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 201, '', 'n', 18, '2 metros'),
(398, 33, '1004.0008', 'Termopar tipo J.8mm', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 202, '', 'n', 18, '3 metros'),
(399, 33, '1004.0009', 'Termopar tipo J.8mm', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 203, '', 'n', 18, '4 metros'),
(400, 33, '1004.0010', 'Termopar tipo J.8mm', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 114, '', 'n', 18, '5 metros'),
(401, 33, '1004.0011', 'Termopar tipo K.6mm', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 115, '', 'n', 20, '1 metro'),
(402, 33, '1004.0012', 'Termopar tipo K.8mm', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 116, '', 'n', 20, '1 metro'),
(403, 33, '1004.0013', 'Termopar tipo K.8mm', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 117, '', 'n', 20, '2 metros'),
(404, 33, '1004.0014', 'Termopar tipo PT100.8mm (2 Fios)', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 118, '', 'n', 21, '1 metro');
INSERT INTO `produtos` (`cd`, `familia`, `codigo`, `produto`, `preco`, `preco_promocao`, `imposto`, `prazo`, `imagem`, `imagem_thumb`, `largura_imagem`, `altura_imagem`, `tamanho_imagem`, `pdf`, `tamanho_pdf`, `descricao`, `peso`, `ordem`, `tipo_imposto`, `promocao`, `subfamilia`, `dimensoes`) VALUES
(405, 33, '1004.0015', 'Termopar tipo PT100.8mm (2 Fios)', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 119, '', 'n', 21, '2 metros'),
(406, 33, '1004.0024', 'Termopar tipo PT100.8mm (3 Fios)', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 120, '', 'n', 21, '2,5 metros'),
(407, 33, '1004.0023', 'Adaptador Baioneta', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 999, '', 'n', 22, '1/4" BSP x 24mm'),
(417, 15, '1002.0019', 'FAC - 110/220Vca-24Vcc/15A (350W)', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 149, '', 'n', 7, '230x115x50'),
(418, 15, '1002.0247', 'FAC - 110/220Vca-24Vcc/20A (500W)', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 203, '', 'n', 7, '185x120x92'),
(422, 14, '1002.0064', 'TC - 200/5. diâmetro 30x40', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 153, '', 'n', 23, '80x50x82'),
(423, 14, '1002.0066', 'TC - 300/5. diâmetro 30x40', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 155, '', 'n', 23, '80x50x82'),
(424, 14, '1002.0067', 'TC - 400/5. diâmetro 60x60', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 156, '', 'n', 23, '80x50x82'),
(425, 14, '1002.0065', 'TC - 250/5. diâmetro 30x40', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 154, '', 'n', 23, '80x50x82'),
(426, 14, '1002.0068', 'TC - 500/5. diâmetro 60x60', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 157, '', 'n', 23, '80x50x82'),
(427, 14, '1002.0069', 'TC - 600/5. diâmetro 60x60', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 158, '', 'n', 23, '80x50x82'),
(428, 14, '1002.0070', 'TC - 750/5. diâmetro 60x60', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 159, '', 'n', 23, '80x50x82'),
(429, 14, '1002.0071', 'TC - 800/5. diâmetro 60x60', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 160, '', 'n', 23, '80x50x82'),
(430, 14, '1002.0072', 'TC - 1000/5. diâmetro 100x100', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 161, '', 'n', 23, '80x50x82'),
(431, 14, '1002.0073', 'TC - 1200/5. diâmetro 100x100', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 162, '', 'n', 23, '80x50x82'),
(432, 14, '1002.0074', 'TC - 1500/5. diâmetro 100x100', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 163, '', 'n', 23, '80x50x82'),
(433, 14, '1002.0075', 'TC - 1600/5. diâmetro 100x100', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 164, '', 'n', 23, '80x50x82'),
(434, 14, '1002.0076', 'TC - 2000/5. diâmetro 100x100', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 165, '', 'n', 23, '80x50x82'),
(435, 14, '1002.0077', 'TC - 2500/5. diâmetro 100x100', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 166, '', 'n', 23, '80x50x82'),
(436, 34, '1002.0002', 'Sensor Indutivo. 12mm. npn', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 170, '', 'n', 24, '1,5 metros'),
(437, 34, '1002.0087', 'Sensor Indutivo. 12mm. pnp', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 171, '', 'n', 24, '1,5 metros'),
(438, 34, '1002.0003', 'Sensor Indutivo. 18mm. pnp', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 172, '', 'n', 24, '1,5 metros'),
(439, 34, '1002.0004', 'Sensor Indutivo. 18mm. npn', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 173, '', 'n', 24, '1,5 metros'),
(440, 34, '1002.0246', 'Sensor Indutivo. 12mm. ca', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 174, '', 'n', 24, '1,5 metros'),
(441, 3, '6030.0066', 'Suporte para Trilho SP - TR', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 180, '', 'n', 15, '23x80x8'),
(442, 3, '6930.0004', 'Dissipador RES', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 190, '', 'n', 15, '42x80x62'),
(443, 15, '1000.0065', 'fonte FT45.110/220Vca.1,2-28VCC.1Acc (tensão de saí­da ajustável)', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 200, '', 'n', 8, '80x71x71'),
(642, 50, '1001.0196', 'INV-60-CTR PRS.110/220.8in.8out.4in-analógica', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 1, '', 'n', 85, ''),
(641, 55, '1007.0008', 'Relógio digital com Horas e Minutos - Dí­gito 12cm', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 2, '', 'n', 82, ''),
(446, 35, '1000.0037', 'IND - 1364.Vcc.0-999', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 250, '', 'n', 25, '48x48x101'),
(447, 35, '1000.0041', 'IND - 1364.mVcc.0-999', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 251, '', 'n', 0, '48x48x101'),
(448, 35, '1000.0043', 'IND - 1268.Vcc.0-1000', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 252, '', 'n', 25, '98x48x101'),
(449, 35, '1000.0051', 'IND - 1268.mVcc.0-1000', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 253, '', 'n', 25, '98x48x101'),
(450, 35, '1000.0052', 'IND - 1268.mVcc.0-4000', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 254, '', 'n', 25, '98x48x101'),
(451, 35, '1000.0099', 'IND - 1460.Vcc.0-999', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 255, '', 'n', 25, '98x98x101'),
(452, 35, '1000.0037.', 'IND - 1364.Vcc.0-999', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 256, '', 'n', 26, '48x48x101'),
(453, 35, '1000.0038', 'IND - 1364.Vca.0-999', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 257, '', 'n', 0, '48x48x101'),
(454, 35, '1000.0041.', 'IND - 1364.mVcc.0-999', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 258, '', 'n', 0, '48x48x101'),
(455, 35, '1000.0043.', 'IND - 1268.Vcc.0-1000', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 259, '', 'n', 26, '98x48x101'),
(456, 35, '1000.0045', 'IND  - 1268.Vca.0-1000', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 260, '', 'n', 26, '98x48x101'),
(457, 35, '1000.0052.', 'IND - 1268.mVcc.0-4000', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 261, '', 'n', 26, '98x48x101'),
(458, 35, '1000.0099.', 'IND - 1460.Vcc.0-999', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 262, '', 'n', 26, '98x98x101'),
(459, 35, '1000.0037..', 'Ind - 1364.Vcc.0-999', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 263, '', 'n', 27, '48x48x101'),
(460, 35, '1000.0039', 'IND - 1364.Aca.0-999', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 264, '', 'n', 0, '48x48x101'),
(461, 35, '1000.0040', 'IND - 1364.Acc.0-999', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 164, '', 'n', 0, '48x48x101'),
(462, 35, '1000.0043...', 'IND - 1268.Vcc.0-1000', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 165, '', 'n', 27, '98x48x101'),
(463, 35, '1000.0047', 'IND - 1268.Aca.0-1000', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 265, '', 'n', 27, '98x48x101'),
(464, 35, '1000.0049', 'IND - 1268.mAcc.0-1000', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 272, '', 'n', 27, '98x48x101'),
(465, 35, '1000.0053', 'IND - 1268.Acc.0-1000', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 266, '', 'n', 27, '98x48x101'),
(466, 35, '1000.0044.', 'IND -  1268.Vcc.0-4000', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 268, '', 'n', 27, '98x48x101'),
(467, 35, '1000.0046.', 'IND - 1268.Vca.0-4000', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 267, '', 'n', 27, '98x48x101'),
(468, 35, '1000.0048', 'IND - 1268.Aca.0-4000', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 269, '', 'n', 27, '98x48x101'),
(469, 35, '1000.0050', 'IND - 1268.mAcc.0-4000', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 270, '', 'n', 27, '98x48x101'),
(470, 35, '1000.0054', 'IND - 1268.Acc.0-4000', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 271, '', 'n', 27, '98x48x101'),
(471, 35, '1000.0099..', 'IND - 1460.Vcc.0-999', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 273, '', 'n', 27, '98x98x101'),
(472, 36, '1000.0088', 'IND - C-2010.0-500m Vcc 0-1000', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 275, '', 'n', 28, '98x48x101'),
(473, 36, '1000.0089', 'IND - C-2010.0-500Vcc 0-1000', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 276, '', 'n', 28, '98x48x101'),
(474, 36, '1000.0090', 'IND - C-2010.0-600Vca 0-1000', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 278, '', 'n', 28, '98x48x101'),
(475, 36, '1000.0091', 'IND - C-2010.0-5Aca 0-1000', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 279, '', 'n', 28, '98x48x101'),
(476, 36, '1000.0092', 'IND - C-2010.0-50mAcc 0-1000', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 280, '', 'n', 28, '98x48x101'),
(477, 37, '1000.0093', 'MD - 12canais - anodo comum', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 282, '', 'n', 33, '70x70x32'),
(478, 37, '1000.0094', 'MD - 12canais - catodo comum', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 283, '', 'n', 33, '70x70x32'),
(479, 37, '1000.0095', 'MD - 24 canais - anodo comum', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 284, '', 'n', 34, '70x70x32'),
(480, 37, '1000.0096', 'MD - 24 canais - catodo comum', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', 0, 285, '', 'n', 34, '70x70x32');

-- --------------------------------------------------------

--
-- Estrutura da tabela `textos`
--

CREATE TABLE IF NOT EXISTS `textos` (
  `cd` int(10) unsigned NOT NULL auto_increment,
  `nome` varchar(255) NOT NULL default '',
  `conteudo` text,
  `titulo` varchar(50) NOT NULL default '',
  `onde` tinyint(4) NOT NULL default '0',
  `data` date NOT NULL default '0000-00-00',
  `aparece` char(1) NOT NULL default 'n',
  PRIMARY KEY  (`cd`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Extraindo dados da tabela `textos`
--

INSERT INTO `textos` (`cd`, `nome`, `conteudo`, `titulo`, `onde`, `data`, `aparece`) VALUES
(1, 'home', '<DIV align=center>\r\n<TABLE style="PAGE-BREAK-BEFORE: always" cellSpacing=0 cellPadding=0 width="100%" align=center border=0>\r\n<COLGROUP>\r\n<COL width=92></COL>\r\n<COL width=72></COL>\r\n<COL width=91></COL></COLGROUP>\r\n<THEAD>\r\n<TR>\r\n<TH vAlign=top width="36%">\r\n<P align=center><IMG height=125 src="img/produtos.jpg" width=185 align=bottom border=0 name=Graphic1> </P></TH>\r\n<TD width="64%" colSpan=2>\r\n<P style="MARGIN-TOP: 0.31cm; MARGIN-BOTTOM: 0.31cm" align=left><FONT color=#355e00><FONT face="Tahoma, sans-serif"><FONT size=3><I><B>Produtos para Automação</B></I></FONT></FONT></FONT></P>\r\n<P style="MARGIN-TOP: 0.31cm" align=left><FONT face="Tahoma, sans-serif"><SPAN><SPAN style="FONT-STYLE: normal"><FONT style="FONT-SIZE: 9pt" size=2>Possuí&shy;mos uma ampla linha de produtos para automação industrial: acopladores mecânicos e eletrônicos, conversores de sinal, fontes, indicadores, controladores industriais, sensores, etc... Representamos e distribuí&shy;mos para todo o estado de Santa Catarina indicadores e controladores industriais da empresa Inova Ltda. Confira nossa linha de<U> </U></FONT></SPAN></SPAN><A href="produtos.php"><SPAN><U><SPAN style="FONT-STYLE: normal"><FONT style="FONT-SIZE: 9pt" size=2>produtos</FONT></SPAN></U></SPAN></A> <SPAN><SPAN style="FONT-STYLE: normal"><FONT style="FONT-SIZE: 9pt" size=2>.</FONT></SPAN></SPAN></FONT></P></TD></TR></THEAD>\r\n<TBODY>\r\n<TR>\r\n<TD vAlign=top width="100%" colSpan=3>\r\n<P align=right><IMG height=10 src="img/barra.jpg" width=446 align=bottom border=0 name=Graphic4></P></TD></TR>\r\n<TR>\r\n<TD width="64%" colSpan=2>\r\n<P style="MARGIN-TOP: 0.31cm; MARGIN-BOTTOM: 0.31cm" align=right><FONT color=#355e00><FONT face="Tahoma, sans-serif"><FONT size=3><I><B>Automação Industrial</B></I></FONT></FONT></FONT></P>\r\n<P style="MARGIN-TOP: 0.31cm" align=right><FONT face="Arial, sans-serif"><FONT size=2><SPAN><SPAN style="FONT-STYLE: normal"><FONT style="FONT-SIZE: 9pt" size=2><FONT face="Tahoma, sans-serif">Realizamos projetos de Automação Industrial nas mais diversas áreas. Somos integradores da DVT Corporation, lí&shy;der mundial em sistema de visão industrial para inspeção, garantia da qualidade e leitura de códigos. Entre em </FONT></FONT></SPAN></SPAN><A href="mailto:ismar@ldi.com.br?subject=Projeto Site:"><SPAN><U><SPAN style="FONT-STYLE: normal"><FONT style="FONT-SIZE: 9pt" size=2><FONT face="Tahoma, sans-serif"><FONT color=#000000>contato</FONT></FONT></FONT></SPAN></U></SPAN></A> <SPAN><SPAN style="FONT-STYLE: normal"><FONT style="FONT-SIZE: 9pt" size=2><FONT face="Tahoma, sans-serif"><U></U>com a nossa equipe técnica</FONT>.</FONT></SPAN></SPAN></FONT></FONT></P></TD>\r\n<TD vAlign=top width="36%">\r\n<P align=center><IMG height=121 src="img/automacao.jpg" width=176 align=bottom border=0 name=Graphic2></P></TD></TR>\r\n<TR>\r\n<TD vAlign=top width="100%" colSpan=3>\r\n<P><IMG height=10 src="img/barra.jpg" width=446 align=bottom border=0 name=Graphic5> </P></TD></TR>\r\n<TR>\r\n<TD vAlign=top width="36%">\r\n<P align=center><IMG height=106 src="img/assistencia.jpg" width=188 align=bottom border=0 name=Graphic3> </P></TD>\r\n<TD width="64%" colSpan=2>\r\n<P style="MARGIN-TOP: 0.31cm; MARGIN-BOTTOM: 0.31cm" align=left><FONT color=#355e00><FONT face="Tahoma, sans-serif"><FONT size=3><I><B>Assistência Técnica</B></I></FONT></FONT></FONT></P>\r\n<P style="MARGIN-TOP: 0.31cm" align=left><FONT face="Arial, sans-serif"><FONT size=2><SPAN><SPAN style="FONT-STYLE: normal"><FONT style="FONT-SIZE: 9pt" size=2><FONT face="Tahoma, sans-serif">Nossa Assistência Técnica possui técnicos com experiência comprovada na manutenção de inversores de frequência, hardware de CLPs, conversores CA/CC e controladores industriais de qualquer marca. Somos também Assistência Técnica Autorizada da WEG Automação. Solicite um </FONT></FONT></SPAN></SPAN><A href="mailto:at@ldi.com.br?subject=Orçamento Site:"><SPAN><U><SPAN style="FONT-STYLE: normal"><FONT style="FONT-SIZE: 9pt" size=2><FONT face="Tahoma, sans-serif">orçamento</FONT></FONT></SPAN></U></SPAN></A> <SPAN><U><SPAN style="FONT-STYLE: normal"><FONT style="FONT-SIZE: 9pt" size=2><FONT face="Tahoma, sans-serif">.</FONT></FONT></SPAN></U></SPAN></FONT></FONT></P></TD></TR></TBODY></TABLE></DIV>', '', 0, '0000-00-00', 'n'),
(2, 'empresa', '<P style="MARGIN-TOP: 0.31cm; MARGIN-BOTTOM: 0.31cm" align=left><FONT color=#355e00><FONT face="Tahoma, sans-serif"><FONT size=3><I><B>LDI ELETRÔNICA INDUSTRIAL</B></I></FONT></FONT></FONT></P>\r\n<P style="MARGIN-TOP: 0.31cm; MARGIN-BOTTOM: 0.31cm" align=left><FONT face="Tahoma, sans-serif"><FONT style="FONT-SIZE: 9pt" size=2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; A LDI é uma empresa voltada às necessidades de seus clientes no que diz respeito à produtos para Automação Industrial. </FONT></FONT><FONT face="Tahoma, sans-serif"><FONT style="FONT-SIZE: 9pt" size=2>Há quase 6 anos no mercado, atende os diversos ramos industriais no segmento de manutenção e na industrialização de produtos eletrônicos, tendo como principais clientes&nbsp; importantes empresas da região. Nossa Assistência Técnica é composta por técnicos especializados, abrangendo consertos de Equipamentos Eletrônicos Industriais de qualquer marca, bem como, sendo Assistência Técnica Autorizada da WEG Automação.</FONT></FONT></P>\r\n<P><FONT face="Tahoma, sans-serif"><FONT style="FONT-SIZE: 9pt" size=2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Destacam-se entre os produtos industrializados pela LDI os acopladores&nbsp;à&nbsp;relé&nbsp;e eletrônicos, relés de estado sólido, conversores de sinais e variadores de potência. Distribui para todo o estado de Santa Catarina controladores industriais, indicadores, temporizadores e contadores da empresa Inova Ltda.&nbsp;A linha de produtos inclui ainda sensores de temperatura, transformadores de corrente e fontes chaveadas da Joining Ltda.</FONT></FONT></P>\r\n<P><FONT face="Tahoma, sans-serif"><FONT style="FONT-SIZE: 9pt" size=2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Na área de automação industrial, nossa equipe técnica altamente especializada pode solucionar os mais diversos problemas de nossos clientes, desde a montagem de painéis elétricos até a programação de CLPs e sistemas microcontrolados dedicados. Somos integradores da DVT Corporation, lÃ­der mundial em sistema de visão industrial para inspeção, garantia da qualidade e leitura de códigos. </FONT></FONT></P>\r\n<P align=center><IMG height=50 src="img/weg_peq.gif" width=70 align=bottom border=0 name=Graphic1>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<IMG height=50 src="img/inova_peq.gif" width=100 align=bottom border=0 name=Graphic2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <IMG height=50 src="img/dvt_peq.gif" width=105 align=bottom border=0 name=Graphic3></P>', 'Empresa', 1, '0000-00-00', 'n'),
(3, 'politica', '<P style="MARGIN-TOP: 0.31cm; MARGIN-BOTTOM: 0.31cm" align=left><FONT color=#355e00><FONT face="Tahoma, sans-serif"><FONT size=3><I><B>Polí­tica da Empresa</B></I></FONT></FONT></FONT></P><P align=center>"<I>Fornecer soluções em automação industrial para nossos clientes, <BR>prezando pela qualidade dos nossos produtos e serviços prestados&nbsp;aliada&nbsp;à&nbsp;<BR>ética de nossos profissionais."</I> - Equipe LDI</P><P align=center><IMG height=240 src="img/equipe_ldi.jpg" width=400 align=bottom border=0 name=Graphic1></P>', 'Polí­tica da Empresa', 1, '0000-00-00', 'n'),
(4, 'contatos', '<P style="MARGIN-TOP: 0.31cm; MARGIN-BOTTOM: 0.31cm" align=left><FONT color=#355e00><FONT face="Tahoma, sans-serif"><FONT size=3><I><B>Contatos</B></I></FONT></FONT></FONT></P>\r\n<P align=left><FONT face="Tahoma, sans-serif">Entre em contato conosco, <BR>será uma grande satisfação atendê-lo:</FONT></P>\r\n<P align=left><FONT face="Tahoma, sans-serif"><B>Fones: (47) 3026-6500 ou (47) 435-6804<BR>Fax: (47) 3026-3743</B></FONT></P>\r\n<P align=left><BR><BR></P>\r\n<P align=left><FONT face="Tahoma, sans-serif">Horário de atendimento:</FONT></P>\r\n<P align=left><FONT face="Tahoma, sans-serif"><B>07:30 às 12:00 e 13:00 às 18:00</B></FONT></P>\r\n<P align=left><BR><BR></P>', '', 0, '0000-00-00', 'n'),
(12, 'servicos', '<P>abcd</P>\r\n<P>&nbsp;</P>', 'Serviços', 0, '0000-00-00', 'n'),
(6, 'localizacao', '<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" width="550" height="400" id="cartao" align="middle">\r\n<param name="allowScriptAccess" value="sameDomain" />\r\n<param name="movie" value="estrutura/localizacao.swf" />\r\n<param name="quality" value="high" />\r\n<param name="bgcolor" value="#ffffff" />\r\n<embed src="estrutura/localizacao.swf" quality="high" bgcolor="#ffffff" width="550" height="400" name="localizacao" align="middle" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />\r\n</object>\r\n<P style="MARGIN-TOP: 0.31cm; MARGIN-BOTTOM: 0.31cm" align=left><FONT color=#355e00><FONT face="Tahoma, sans-serif"><FONT size=3><I><B>Localização</B></I></FONT></FONT></FONT></P>\r\n<P align=left><FONT face="Tahoma, sans-serif">LDI Comércio de Produtos Eletrônicos LTDA.<BR>Rua Guia Lopes, nÂº 538 - CEP: 89218-060<BR>Bairro: Santo Antônio - Joinville - SC</FONT></P>\r\n<P align=left><FONT face="Tahoma, sans-serif">Fones: (47) 435 6804 / 3026 6500 <BR>Fax: (47) 3026 3743 </FONT></P>\r\n<P align=left><FONT face="Tahoma, sans-serif">Endereço eletrônico: ldi@ldi.com.br</FONT></P>\r\n<P align=left><BR><BR></P>', '', 0, '0000-00-00', 'n'),
(21, 'sistema_de_visao_entra_no_mercado_com_muita_forca', '', 'Sistema de Visão entra no mercado com muita forç', 3, '2005-09-06', 'n'),
(15, 'assistencia_tecnica', '', 'Assistência Técnica', 2, '0000-00-00', 'n'),
(16, 'integrador_dvt', 'teste', 'Integrador DVT', 2, '0000-00-00', 'n'),
(17, 'missao_da_empresa', '', 'Missão da Empresa', 1, '0000-00-00', 'n'),
(18, 'automacao', '', 'Automação', 2, '0000-00-00', 'n'),
(19, 'inova', '<P>A Inova lança novos produtos</P>', 'A Inova lança novos itens na sua linha de produto', 3, '2005-09-05', 'n');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
