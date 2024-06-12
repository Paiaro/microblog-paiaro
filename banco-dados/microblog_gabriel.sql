-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12/06/2024 às 20:59
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `microblog_gabriel`
--
CREATE DATABASE IF NOT EXISTS `microblog_gabriel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `microblog_gabriel`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `data` datetime NOT NULL DEFAULT current_timestamp(),
  `titulo` varchar(150) NOT NULL,
  `texto` text NOT NULL,
  `resumo` tinytext NOT NULL,
  `imagem` varchar(45) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `noticias`
--

INSERT INTO `noticias` (`id`, `data`, `titulo`, `texto`, `resumo`, `imagem`, `usuario_id`) VALUES
(11, '2017-11-30 22:28:57', 'Escola de Governança da Internet no Brasil abre inscrições para Curso Intensivo', 'Serão 50 horas dedicadas ao debate de assuntos que demandam atenção da sociedade brasileira e mundial, como proteção de dados pessoais, algoritmos, blockchain, criptografia e Internet das Coisas. Os interessados em aprofundar o conhecimento sobre esses e outros temas devem se inscrever até 25 de junho no portal da EGI. &#13;&#10;&#13;&#10;“Desde 2014, o CGI.br promove o Curso Intensivo da EGI, que é uma referência no País. A EGI criou um espaço de interlocução e construção de conhecimento sobre governança da Internet. É nossa responsabilidade manter esse espaço e ampliar a participação da sociedade no debate. Com um corpo docente formado por profissionais e acadêmicos reconhecidos em suas áreas de atuação, o curso prima pelo cuidado e qualidade dos temas abordados. A cada ano temos a oportunidade de aprimorar essa experiência e aprofundar o debate sobre temas emergentes relacionados ao uso da Internet em um ambiente multissetorial”, considera Hartmut Glaser, secretário executivo do CGI.br e diretor da EGI.&#13;&#10;&#13;&#10;As aulas acontecerão de 20 a 25 de agosto, em São Paulo. O curso, que é gratuito, tem o objetivo de capacitar gestores públicos, formuladores de políticas públicas, empresários, pesquisadores, acadêmicos, representantes da comunidade técnica, de organizações da sociedade civil e demais interessados sobre o funcionamento e a governança da Internet. &#13;&#10;&#13;&#10;Para participar do processo seletivo é necessário preencher o formulário, enviar currículo e produzir um texto sobre temas relacionados à Governança da Internet dentro da área de atuação do candidato. Veja o programa na íntegra em http://egi.nic.br/curso-intensivo-egi/.&#13;&#10;&#13;&#10;As aulas acontecerão de 20 a 25 de agosto, em São Paulo. O curso, que é gratuito, tem o objetivo de capacitar gestores públicos, formuladores de políticas públicas, empresários, pesquisadores, acadêmicos, representantes da comunidade técnica, de organizações da sociedade civil e demais interessados sobre o funcionamento e a governança da Internet. &#13;&#10;&#13;&#10;Para participar do processo seletivo é necessário preencher o formulário, enviar currículo e produzir um texto sobre temas relacionados à Governança da Internet dentro da área de atuação do candidato. Veja o programa na íntegra em http://egi.nic.br/curso-intensivo-egi/.', 'Primeira a debater temas cruciais para o desenvolvimento da Internet no país, a EGI (Escola de Governança da Internet), iniciativa do Comitê Gestor da Internet no Brasil (CGI.br), recebe inscrições para a 4ª turma do Curso Intensivo.', 'cores.jpg', 10),
(13, '2017-05-01 13:27:35', 'Quase 2 milhões de dispositivos Android podem ser infectados com malware FalseGuide', 'Embora tenha havido algum esforço dos fabricantes de smartphones Android para entregar atualizações de segurança mensais do Google para pelo menos alguns dos seus dispositivos, a situação está longe de ser completamente ideal. &#13;&#10;&#13;&#10;Após o Google ter recentemente admitido que metade dos dispositivos Android ativos não recebeu uma atualização de segurança em 2016, o cenário é preocupante, especialmente depois de grandes vulnerabilidades de segurança, como o Stagefright, sendo descobertas no sistema operacional.&#13;&#10;&#13;&#10;No entanto, os aplicativos mal-intencionados apresentam um vetor alternativo para comprometer dispositivos Android com mais de 2,1 milhões de gadgets que baixaram o malware da Google Play Store em 2015. Agora, parece que mais aplicativos disponíveis na loja oficial de aplicativos do Google têm uma nova variante de malware, chamado de FalseGuide. &#13;&#10;&#13;&#10;No seu anúncio, a Check Point revelou que: “FalseGuide cria um botnet silencioso fora dos dispositivos infectados para fins de adware. Um botnet é um grupo de dispositivos controlados por hackers sem o conhecimento de seus proprietários. Os bots são usados por várias razões com base nas capacidades de computação distribuída de todos os dispositivos”.&#13;&#10;&#13;&#10;Embora tenha havido algum esforço dos fabricantes de smartphones Android para entregar atualizações de segurança mensais do Google para pelo menos alguns dos seus dispositivos, a situação está longe de ser completamente ideal. &#13;&#10;&#13;&#10;Após o Google ter recentemente admitido que metade dos dispositivos Android ativos não recebeu uma atualização de segurança em 2016, o cenário é preocupante, especialmente depois de grandes vulnerabilidades de segurança, como o Stagefright, sendo descobertas no sistema operacional.&#13;&#10;&#13;&#10;No entanto, os aplicativos mal-intencionados apresentam um vetor alternativo para comprometer dispositivos Android com mais de 2,1 milhões de gadgets que baixaram o malware da Google Play Store em 2015. &#13;&#10;&#13;&#10;Agora, parece que mais aplicativos disponíveis na loja oficial de aplicativos do Google têm uma nova variante de malware, chamado de FalseGuide. No seu anúncio, a Check Point revelou que: “FalseGuide cria um botnet silencioso fora dos dispositivos infectados para fins de adware. &#13;&#10;&#13;&#10;Um botnet é um grupo de dispositivos controlados por hackers sem o conhecimento de seus proprietários. Os bots são usados por várias razões com base nas capacidades de computação distribuída de todos os dispositivos”.', 'Aplicativos disponíveis na loja oficial de aplicativos do Google têm uma nova variante de malware, chamado de FalseGuide. ', 'luminarias.jpg', 10),
(14, '2017-05-02 09:29:46', 'Angular 4.1.0 está disponível para download', 'A versão 4.1.0 do Angular já pode ser baixada – o anúncio foi feito pelo blog da empresa. Na prática, a nova versão é uma simples substituta para a 4.x.x anterior. Ela adiciona suporte completo para TypeScript 2.2 e 2.3. Os desenvolvedores relataram anteriormente boas experiências com o TypeScript 2.2 e 2.3, mas o Angular agora é construído com o TypeScript 2.3. Isso não afeta nosso suporte para o TypeScript 2.1, que acompanha a versão 4.0. &#13;&#10;&#13;&#10;Além disso, segundo o site C# Corner, o Angular agora é compatível com StrictNullChecks do TypeScript. Isso significa que você pode ativar StrictNullChecks em seu projeto, se desejar. A versão 4.1.0 do Angular já pode ser baixada – o anúncio foi feito pelo blog da empresa. &#13;&#10;&#13;&#10;Na prática, a nova versão é uma simples substituta para a 4.x.x anterior. Ela adiciona suporte completo para TypeScript 2.2 e 2.3. Os desenvolvedores relataram anteriormente boas experiências com o TypeScript 2.2 e 2.3, mas o Angular agora é construído com o TypeScript 2.3. &#13;&#10;&#13;&#10;Isso não afeta nosso suporte para o TypeScript 2.1, que acompanha a versão 4.0. Além disso, segundo o site C# Corner, o Angular agora é compatível com StrictNullChecks do TypeScript. Isso significa que você pode ativar StrictNullChecks em seu projeto, se desejar. &#13;&#10;&#13;&#10;A versão 4.1.0 do Angular já pode ser baixada – o anúncio foi feito pelo blog da empresa. Na prática, a nova versão é uma simples substituta para a 4.x.x anterior. Ela adiciona suporte completo para TypeScript 2.2 e 2.3. Os desenvolvedores relataram anteriormente boas experiências com o TypeScript 2.2 e 2.3, mas o Angular agora é construído com o TypeScript 2.3. Isso não afeta nosso suporte para o TypeScript 2.1, que acompanha a versão 4.0. &#13;&#10;&#13;&#10;Além disso, segundo o site C# Corner, o Angular agora é compatível com StrictNullChecks do TypeScript. Isso significa que você pode ativar StrictNullChecks em seu projeto, se desejar.', 'Na prática, a nova versão é uma simples substituta para a 4.x.x anterior. ', 'felicidade.jpg', 7),
(15, '2017-11-05 12:18:53', 'Versão 5.6 do Unity já pode ser baixada', 'O Unity 5.6 chega dois anos após o lançamento do Unity 5, e contém vários aprimoramentos e novos recursos que podem fornecer a melhor experiência para os desenvolvedores e, através deles, para jogadores e usuários finais.\r\n\r\nA nova versão do Unity é equipada com um preview do Progressive Lightmapper, uma nova técnica para fornecer feedback imediato para o desenvolvedor ao testar diferentes cenários de iluminação. \r\n\r\nAlém disso, ajuda a classificar a iteração mais rápida em comparação com a solução Enlighten atual. Juntamente com isso, Light Modes também são integrados, a fim de oferecer uma funcionalidade para misturar tempo real e iluminação para objetos estáticos e dinâmicos.\r\n\r\nOutra melhoria é um melhor desempenho gráfico. A geração de instâncias de GPU foi melhorada e agora é suportada pela instanciação Procedural. Shaders de computador para Metal foram adicionados para que os usuários possam trabalhar em detalhes ainda menores em um jogo e aproveitar o poder de chipsets, especialmente em dispositivos da Apple.\r\n\r\nO Unity 5.6 oferecerá mais opções e controles aos usuários com a ajuda de uma ampla gama de efeitos de partículas. E, para reduzir a sobrecarga do driver e a carga de trabalho da CPU, a equipe do Unity trouxe o suporte para Vulkan. Isso não apenas mantém a CPU livre, mas economiza memória RAM juntamente com maior duração da bateria para plataformas móveis.\r\n\r\nAgora, você pode jogar 4k vídeos em um player de vídeo multiplataforma, o que irá ajudá-lo a construir experiências de realidade virtual em 360° para os seus jogadores. A nova versão traz integração gratuira e nativa do TextMesh Pro, que é a ferramenta mais popular e de alto desempenho na Unity Asset Store e oferece renderização de texto avançada e controle aprimorado sobre a formatação e o layout de texto.\r\n\r\nNo Unity 5.6, o recurso de relatório de desempenho foi melhorado de forma maciça. Agora, ele coleta todas as informações de ocorrências de falhas acontecendo no iOS. Além disso, o relatório de exceção foi adicionado e o perfilador foi aprimorado, o que ajudará a classificar os problemas de desempenho, conforme divulgado pelo C# Corner.\r\n\r\nUnity 5.6 está disponível para download e uso para usuários existentes, bem como para novos usuários. Para uma melhor compreensão e uma leitura completa dos recursos do Unity 5.6, consulte as release notes.', 'A plataforma de desenvolvimento de jogos 3D Unity foi atualizada para a versão 5.6 que, segundo a empresa, é a última do ciclo Unity 5.', 'luminarias.jpg', 10),
(16, '2017-11-05 12:45:56', 'IoT vai impactar a economia mundial em US$ 11 trilhões até 2025', 'A Internet das Coisas (IoT) vem sendo encarada com otimismo por setores da indústria, podendo se tornar um importante elemento econômico nas próximas décadas. &#13;&#10;&#13;&#10;Estima-se que o impacto econômico global vinculado ao cenário de IoT corresponda a mais de US$ 11 trilhões até 2025. “A IoT poderá trazer inúmeros benefícios aos consumidores. Dispositivos de saúde interconectados permitirão monitoramento mais constante e eficiente e interação mais eficaz entre paciente e médico. &#13;&#10;&#13;&#10;Sistemas de automação residencial permitirão que um consumidor, antes mesmo de chegar em casa, possa enviar mensagem para que os próprios dispositivos realizem ações para abrir os portões, desligar alarmes, preparar o banho quente, colocar música ambiente e alterar a temperatura da casa”, destacou o professor e pesquisador Eduardo Magrani, do Centro de Tecnologia e Sociedade da Fundação Getulio Vargas – FGV – Direito. &#13;&#10;&#13;&#10;De acordo com ele, o poder público demonstra já estar atento aos benefícios da IoT, entendendo que esta surge como importante ferramenta voltada para os desafios da gestão pública prometendo, a partir do uso de tecnologias integradas e do processamento massivo de dados, soluções mais eficazes para problemas como poluição, congestionamentos, criminalidade, eficiência produtiva, entre outros. &#13;&#10;&#13;&#10;Já existem exemplos de aplicações de IoT pelo País, e elas tendem a aumentar. Já no setor privado, o entusiasmo com o potencial econômico da IoT vem dando margem para um forte investimento nessa área, voltado para soluções de escala macro como cidades inteligentes, rastreamento de carga, agricultura de precisão e gerenciamento de energia e ativos. &#13;&#10;&#13;&#10;“Um exemplo desse tipo de investimento é o realizado pela empresa IBM, que não só empregou US$ 3 bilhões em seu negócio de IoT, como também fez uma parceria com a AT&#38;T para fornecer soluções IoT industriais em uma série de questões, desde a eficiência energética até serviços de saúde. &#13;&#10;&#13;&#10;Essas novas frentes de investimento em IoT decorrem das perspectivas de lucro positivo do setor. Somente a título de exemplo, cabe ressaltar a pesquisa recente realizada pela Cisco, que estima que a Internet das Coisas pode adicionar US$ 352 bilhões à economia brasileira até o final de 2022. &#13;&#10;&#13;&#10;Por conta de previsões como essa, diversas empresas estão investindo mais em tecnologias IoT, desenvolvendo iniciativas concretas em diversas áreas”, esclareceu Magrani.', 'Essa previsão em relação ao mercado de IoT foi feita por um professor da FGV.', 'mais.jpg', 10),
(17, '2024-06-11 17:22:41', 'qualquer coisa', 'dbasifbaofweufbéwifo~hwef', '1dhfoçsidfsdhfbgdsiygbdsgoff', 'mandioca.jpg', 7);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `email` varchar(45) NOT NULL,
  `tipo` enum('admin','editor') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `senha`, `email`, `tipo`) VALUES
(7, 'Gabriel Paiaro Rosa', '$2y$10$JaOZ/D0SuGhaVCH2suC5su/7ydKFnGxKyJKfFxEUzC9lFnyIDaVUG', 'gabrielpaiarop@gmail.com', 'admin'),
(8, 'Cracudo da Sé', '$2y$10$3TNO.mk8D3rabZzpXJGOH.Gm7.xscMbw31j6qR8BtzL.ZdTsCe0XG', 'cracudo@gmail.com', 'admin'),
(10, 'Capetão AMERICO', '$2y$10$i1lY48UmRKJFBDOtI3PzgO/.ojuRJreq0MLJXXr6KihtQpNS9IIlC', 'capetao@gmail.com', 'editor'),
(13, 'Desempregado fudido', '$2y$10$zm4yLMARDftMI4nA/1/gOekBAKAz4g/2bXMD03Ph4dkWFjMLUPfAe', 'duro@gmail.com', 'editor');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_noticias_usuarios` (`usuario_id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `noticias`
--
ALTER TABLE `noticias`
  ADD CONSTRAINT `fk_noticias_usuarios` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
