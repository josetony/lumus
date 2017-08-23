-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 11-Ago-2017 às 00:14
-- Versão do servidor: 10.1.24-MariaDB
-- PHP Version: 7.0.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gestorTeste1`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `acidentetrabalho`
--

CREATE TABLE `acidentetrabalho` (
  `id` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `causa` varchar(45) DEFAULT NULL,
  `diasperdidos` int(11) DEFAULT NULL,
  `funcionario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `acidentetrabalho`
--

INSERT INTO `acidentetrabalho` (`id`, `data`, `causa`, `diasperdidos`, `funcionario`) VALUES
(1, '2017-04-25', NULL, 21, 22);

-- --------------------------------------------------------

--
-- Estrutura da tabela `agregadofamiliar`
--

CREATE TABLE `agregadofamiliar` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `grauparentesco` varchar(45) DEFAULT NULL,
  `nascido` date DEFAULT NULL,
  `funcionario` int(11) NOT NULL,
  `genero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `agregadofamiliar`
--

INSERT INTO `agregadofamiliar` (`id`, `nome`, `grauparentesco`, `nascido`, `funcionario`, `genero`) VALUES
(2, 'Carlos', 'Tio(A)', '2017-07-25', 22, 2),
(3, 'Silva Luis', 'AvÃ´', '2017-05-26', 22, 2),
(4, 'Luis Mateus', 'primo(a)', '2017-02-06', 18, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `id` int(11) NOT NULL,
  `processo` int(11) DEFAULT NULL,
  `nome` varchar(75) DEFAULT NULL,
  `pai` varchar(75) DEFAULT NULL,
  `mae` varchar(75) DEFAULT NULL,
  `bilhete` varchar(75) DEFAULT NULL,
  `escolaanterior` varchar(105) DEFAULT NULL,
  `anoqueestudou` year(4) DEFAULT NULL,
  `nascido` date DEFAULT NULL,
  `contacto` int(11) NOT NULL,
  `dificiencia` varchar(4) NOT NULL,
  `naturalidade` int(11) DEFAULT NULL,
  `estadocivil` int(11) DEFAULT NULL,
  `genero` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`id`, `processo`, `nome`, `pai`, `mae`, `bilhete`, `escolaanterior`, `anoqueestudou`, `nascido`, `contacto`, `dificiencia`, `naturalidade`, `estadocivil`, `genero`) VALUES
(2, 1222, 'Carlino Kiala Dudes', 'Miguel Tavares', 'Kialalla', '12345UE333', 'Luisa', 2016, '2013-01-11', 67, 'NAO', 6, 2, 2),
(3, 83839, 'Huilano', 'Carlos Vila', 'Silva Mateus Vila', '893373', 'Ana Juli', 2015, '2013-01-01', 58, 'NAO', 3, 1, 2),
(4, 133, 'Likososo', 'djdjd', 'uwuuw', '22988', 'Ana Juli', 2015, '2013-01-01', 66, 'NAO', 3, 2, 1),
(6, 1133, 'Julias jui', 'Carlos Vila', 'Silva Mateus Vila', '88321', 'Ana Juli', 2015, '2013-01-01', 71, 'NAO', 3, 2, 1),
(7, 578, 'Daniel Cordeiro Pedro', 'Garcia Pedro', 'Isabel Cordeiro', '00062582041', 'ADDP', 2013, '2013-01-01', 72, 'NAO', 8, 1, 1),
(8, 2112, 'Disdo', 'Valeuna', 'Mariana', '3322', 'vitorino', 2015, '0000-00-00', 76, 'SIM', 3, 1, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `alunos_matriculados`
-- (See below for the actual view)
--
CREATE TABLE `alunos_matriculados` (
`id` int(11)
,`processo` int(11)
,`aluno` varchar(75)
,`sexo` varchar(45)
,`turma` varchar(45)
,`curso` varchar(45)
,`classe` varchar(45)
,`periodo` varchar(45)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `alunos_nao_matriculados`
-- (See below for the actual view)
--
CREATE TABLE `alunos_nao_matriculados` (
`id` int(11)
,`processo` int(11)
,`bilhete` varchar(75)
,`nome` varchar(75)
,`sexo` varchar(45)
,`municipio` varchar(45)
,`curso` varchar(45)
,`classe` varchar(45)
,`periodo` varchar(45)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `aluno_view`
-- (See below for the actual view)
--
CREATE TABLE `aluno_view` (
`id` int(11)
,`processo` int(11)
,`nome` varchar(75)
,`bilhete` varchar(75)
,`pai` varchar(75)
,`mae` varchar(75)
,`escolaanterior` varchar(105)
,`anoqueestudou` year(4)
,`nascido` date
,`dificiencia` varchar(4)
,`email` varchar(45)
,`telefone` varchar(40)
,`telefonealternativo` int(11)
,`endereco` text
,`sexo` varchar(45)
,`estado` varchar(45)
,`municipio` varchar(45)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `anolectivo`
--

CREATE TABLE `anolectivo` (
  `id` int(11) NOT NULL,
  `ano` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `area`
--

CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `area` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `area`
--

INSERT INTO `area` (`id`, `area`) VALUES
(1, 'Administrativa'),
(2, 'Pedagogica'),
(3, 'Secretaria'),
(4, 'Recursos Humanos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `assiduidade`
--

CREATE TABLE `assiduidade` (
  `id` int(11) NOT NULL,
  `ano` date DEFAULT NULL,
  `justificacao` varchar(3) DEFAULT NULL,
  `faltas` int(11) DEFAULT NULL,
  `funcionario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `assiduidade`
--

INSERT INTO `assiduidade` (`id`, `ano`, `justificacao`, `faltas`, `funcionario`) VALUES
(1, '0000-00-00', 'Sim', 12, 22),
(3, '2017-05-24', 'Sim', 200, 22);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargo`
--

CREATE TABLE `cargo` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cargo`
--

INSERT INTO `cargo` (`id`, `nome`) VALUES
(1, 'Professor'),
(2, 'Director');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoriaensino`
--

CREATE TABLE `categoriaensino` (
  `id` int(11) NOT NULL,
  `categoria` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `classe`
--

CREATE TABLE `classe` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `classe`
--

INSERT INTO `classe` (`id`, `nome`) VALUES
(1, 'Pre'),
(2, 'Primeira'),
(3, 'Segunda'),
(4, 'Setima');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contacto`
--

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telefonealternativo` int(11) DEFAULT NULL,
  `endereco` text,
  `telefone` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `contacto`
--

INSERT INTO `contacto` (`id`, `email`, `telefonealternativo`, `endereco`, `telefone`) VALUES
(9, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(10, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(13, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(14, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(15, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(19, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(24, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(27, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(28, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(30, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(31, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(32, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(33, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(34, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(35, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(36, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(37, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(38, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(39, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(40, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(41, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(42, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(43, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(44, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(45, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(46, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(47, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(48, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(49, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(50, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(51, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(52, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(53, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(54, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(55, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(56, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(57, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(58, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(59, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(60, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(61, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(62, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(63, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(64, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(65, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(66, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(67, 'kial@gmaio.com', 33392882, NULL, '727730093'),
(68, 'luis@gmaio.com', 2147483647, NULL, '72773009'),
(69, 'luis@gmaio.com', 2147483647, NULL, '72773009'),
(70, 'luin@gmaio.com', 554333, NULL, '87666'),
(71, 'kis9@gmaio.com', 99292, NULL, '8829'),
(72, 'antonio228@gmail.com', 924243217, NULL, '943861050'),
(73, 'kfitila@gmail.com', 96266333, 'calemba2', '932222'),
(74, 'VELOZ@gmail.com', 9653333, 'calemba2', '93774'),
(75, 'tavares@gmail.com', 9883333, 'calemba2', '9377487'),
(76, 'ksksk@gmail.com', 73737, NULL, '9388'),
(77, '', 0, NULL, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`id`, `nome`) VALUES
(1, 'Informatica'),
(2, 'Electrónica'),
(3, 'Base de Dados'),
(4, 'Programação'),
(6, 'Geologia'),
(7, 'Eletronica');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursodisciplina`
--

CREATE TABLE `cursodisciplina` (
  `id` int(11) NOT NULL,
  `curso` int(11) NOT NULL,
  `disciplina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cursodisciplina`
--

INSERT INTO `cursodisciplina` (`id`, `curso`, `disciplina`) VALUES
(1, 2, 2),
(2, 1, 4),
(3, 4, 1),
(4, 3, 3),
(5, 5, 6),
(6, 1, 7);

-- --------------------------------------------------------

--
-- Stand-in structure for view `cursodisciplina_view`
-- (See below for the actual view)
--
CREATE TABLE `cursodisciplina_view` (
`id` int(11)
,`curso` varchar(45)
,`disciplina` varchar(45)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursoprofissional`
--

CREATE TABLE `cursoprofissional` (
  `id` int(11) NOT NULL,
  `instituicao` varchar(75) DEFAULT NULL,
  `inicio` date DEFAULT NULL,
  `termino` date DEFAULT NULL,
  `observacao` text,
  `curso` int(11) NOT NULL,
  `funcionario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cursoprofissional`
--

INSERT INTO `cursoprofissional` (`id`, `instituicao`, `inicio`, `termino`, `observacao`, `curso`, `funcionario`) VALUES
(7, 'Silvana', '2017-06-25', '2017-02-25', 'Bom Aproveitamento', 1, 22),
(9, 'Itel', '2017-05-26', '2017-05-28', 'Bem', 2, 22),
(10, 'CFITEL', '2017-04-02', '2017-06-06', 'bom aproveitamento', 2, 18);

-- --------------------------------------------------------

--
-- Estrutura da tabela `dadosparamatricula`
--

CREATE TABLE `dadosparamatricula` (
  `id` int(11) NOT NULL,
  `aluno` int(11) DEFAULT NULL,
  `curso` int(11) DEFAULT NULL,
  `classe` int(11) DEFAULT NULL,
  `periodo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `dadosparamatricula`
--

INSERT INTO `dadosparamatricula` (`id`, `aluno`, `curso`, `classe`, `periodo`) VALUES
(1, 1222, 1, 2, 1),
(2, 578, 5, 2, 1),
(3, 2112, 1, 2, 1),
(4, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `dadosparamatricula_view`
-- (See below for the actual view)
--
CREATE TABLE `dadosparamatricula_view` (
`id` int(11)
,`processo` int(11)
,`nome` varchar(75)
,`curso` varchar(45)
,`classe` varchar(45)
,`periodo` varchar(45)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `disciplina`
--

INSERT INTO `disciplina` (`id`, `nome`) VALUES
(1, 'Matemática'),
(2, 'Física'),
(3, 'História'),
(4, 'TREI'),
(6, 'Geografia'),
(7, 'Quimica');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estadocivil`
--

CREATE TABLE `estadocivil` (
  `id` int(11) NOT NULL,
  `estado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `estadocivil`
--

INSERT INTO `estadocivil` (`id`, `estado`) VALUES
(1, 'Casado'),
(2, 'Solteiro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `id` int(11) NOT NULL,
  `processo` int(11) DEFAULT NULL,
  `nome` varchar(70) DEFAULT NULL,
  `bilhete` varchar(45) DEFAULT NULL,
  `pai` varchar(45) DEFAULT NULL,
  `mae` varchar(45) DEFAULT NULL,
  `nascido` date DEFAULT NULL,
  `conjugue` varchar(70) DEFAULT NULL,
  `municipio` int(11) NOT NULL,
  `contacto` int(11) DEFAULT NULL,
  `gruposangue` varchar(10) NOT NULL,
  `habilitacaoliteraria` int(11) NOT NULL,
  `identificacaoprofissional` int(11) DEFAULT NULL,
  `genero` int(11) DEFAULT NULL,
  `estadocivil` int(11) DEFAULT NULL,
  `categoriaensino` int(11) NOT NULL,
  `escalao` int(11) NOT NULL,
  `temposervico` int(11) NOT NULL,
  `bancorecebe` varchar(45) NOT NULL,
  `agregacaopedagogica` enum('Sim','Nao') NOT NULL,
  `numerocontribuinte` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`id`, `processo`, `nome`, `bilhete`, `pai`, `mae`, `nascido`, `conjugue`, `municipio`, `contacto`, `gruposangue`, `habilitacaoliteraria`, `identificacaoprofissional`, `genero`, `estadocivil`, `categoriaensino`, `escalao`, `temposervico`, `bancorecebe`, `agregacaopedagogica`, `numerocontribuinte`) VALUES
(18, 123, 'Cais', '83233838', '9338344', 'sksksk', '2000-02-03', '', 4, 19, 'A', 1, 1, 1, 1, 0, 0, 0, '', 'Sim', ''),
(22, 120, 'Carlos Silva', '388999UE3535', 'Luis Mateus', 'Silvania Carlos', '2010-02-03', 'Fluinia', 4, 14, 'C', 6, 2, 1, 2, 0, 0, 0, '', 'Sim', ''),
(23, 399, 'Mazinga Fitala', '983838UD33', 'Kindala Fitila', 'Luis Sima Fitila', '1992-02-11', 'sem', 3, 73, 'B', 20, 15, 1, 1, 0, 0, 0, '', 'Sim', ''),
(24, 87474, 'Tinacio Veloz', '938847GH83', 'Kindala Fitila', 'Luis Sima Fitila', '1992-02-11', 'sem', 3, 74, 'B', 21, 16, 1, 1, 0, 0, 0, '', 'Sim', ''),
(25, 7737, 'Silvio Tavares', '737347GH83', 'Kindala Fitila', 'Luis Sima Fitila', '1992-02-11', 'sem', 3, 75, 'B', 22, 17, 1, 1, 0, 0, 0, '', 'Sim', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionariocargo`
--

CREATE TABLE `funcionariocargo` (
  `id` int(11) NOT NULL,
  `funcionario` int(11) NOT NULL,
  `cargo` int(11) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `obs` text NOT NULL,
  `temposlectivo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `funcionariocargo`
--

INSERT INTO `funcionariocargo` (`id`, `funcionario`, `cargo`, `estado`, `obs`, `temposlectivo`) VALUES
(1, 18, 2, 'Sim', 'Bem', 0),
(3, 18, 1, 'Nao', 'Desde 2011', 0),
(4, 22, 1, 'Sim', 'Desde 2011', 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `funcionario_cargo_view`
-- (See below for the actual view)
--
CREATE TABLE `funcionario_cargo_view` (
`id` int(11)
,`funcid` int(11)
,`nome` varchar(70)
,`cargo` varchar(45)
,`estado` varchar(20)
,`obs` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `funcionario_view`
-- (See below for the actual view)
--
CREATE TABLE `funcionario_view` (
`id` int(11)
,`processo` int(11)
,`bilhete` varchar(45)
,`nome` varchar(70)
,`nascido` date
,`nivel` varchar(45)
,`escola` varchar(45)
,`dma` varchar(70)
,`estado` varchar(45)
,`municipio` varchar(45)
,`sexo` varchar(45)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `genero`
--

CREATE TABLE `genero` (
  `id` int(11) NOT NULL,
  `sexo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `genero`
--

INSERT INTO `genero` (`id`, `sexo`) VALUES
(1, 'Masculino'),
(2, 'Femenino');

-- --------------------------------------------------------

--
-- Estrutura da tabela `habilitacaoliteraria`
--

CREATE TABLE `habilitacaoliteraria` (
  `id` int(11) NOT NULL,
  `escola` varchar(45) DEFAULT NULL,
  `dma` varchar(70) DEFAULT NULL,
  `nivelacademico_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `habilitacaoliteraria`
--

INSERT INTO `habilitacaoliteraria` (`id`, `escola`, `dma`, `nivelacademico_id`) VALUES
(1, 'Silverster', 'constante', 1),
(2, 'Agostinho Neto', 'Não', 2),
(6, 'escolsjdjd', 'jdjd', 1),
(7, 'ksksksksks', 'dndhhdhdhd', 1),
(15, 'hjhjhj', 'didididdidiid', 1),
(16, 'hjhjhj', 'didididdidiid', 1),
(17, 'hjhjhj', 'didididdidiid', 1),
(18, 'hjhjhj', 'didididdidiid', 1),
(19, 'hjhjhj', 'didididdidiid', 1),
(20, 'Ana Luisa', 'Bem', 2),
(21, 'Ana Luisa', 'Bem', 2),
(22, 'Ana Luisa', 'Bem', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `horario`
--

CREATE TABLE `horario` (
  `id` int(11) NOT NULL,
  `diasemana` enum('Segunda','Terça','Quarta','Quinta','Sexta') NOT NULL,
  `tempo` int(11) NOT NULL,
  `hora` varchar(25) NOT NULL,
  `turma` int(11) NOT NULL,
  `disciplina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `identificacaoprofissional`
--

CREATE TABLE `identificacaoprofissional` (
  `id` int(11) NOT NULL,
  `despacho` int(11) DEFAULT NULL,
  `diario` int(11) DEFAULT NULL,
  `como` text,
  `datadmissao` date DEFAULT NULL,
  `datatermino` date DEFAULT NULL,
  `salario` decimal(10,0) DEFAULT NULL,
  `promocao` varchar(45) DEFAULT NULL,
  `subcidio` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `identificacaoprofissional`
--

INSERT INTO `identificacaoprofissional` (`id`, `despacho`, `diario`, `como`, `datadmissao`, `datatermino`, `salario`, `promocao`, `subcidio`) VALUES
(1, NULL, NULL, 'casa', '2017-05-16', '2017-05-17', '1000000', '5000', '10000'),
(2, NULL, NULL, 'Contactosoos', '2010-02-12', '2000-02-02', '884848', '93993', '39393'),
(3, NULL, NULL, 'Contacto', '2014-02-11', '2000-02-02', '200000', '10022', '2020'),
(11, 98837, 56777, 'bem', '2011-02-11', '2011-02-11', '8877', '2828', '6666'),
(12, 98837, 56777, 'bem', '2011-02-11', '2011-02-11', '8877', '2828', '6666'),
(13, 98837, 56777, 'bem', '2011-02-11', '2011-02-11', '8877', '2828', '6666'),
(14, 98837, 56777, 'bem', '2011-02-11', '2011-02-11', '8877', '2828', '6666'),
(15, 1992, 2331, 'Vestibular', '0200-11-02', '0200-11-02', '20000', '1200', '500'),
(16, 88884, 73737, 'Vestibular', '0200-11-02', '0200-11-02', '20000', '1200', '500'),
(17, 88884, 73737, 'Vestibular', '0200-11-02', '0200-11-02', '20000', '1200', '500');

-- --------------------------------------------------------

--
-- Estrutura da tabela `liquidacao`
--

CREATE TABLE `liquidacao` (
  `id` int(11) NOT NULL,
  `ano` date DEFAULT NULL,
  `aumentos` decimal(10,0) DEFAULT NULL,
  `diminuicoes` decimal(10,0) DEFAULT NULL,
  `funcionario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `matricula`
--

CREATE TABLE `matricula` (
  `id` int(11) NOT NULL,
  `aluno` int(11) NOT NULL,
  `turma` int(11) NOT NULL,
  `datamatricula` date NOT NULL,
  `condicao` varchar(50) NOT NULL,
  `observacao` text,
  `anoletivo` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `matricula`
--

INSERT INTO `matricula` (`id`, `aluno`, `turma`, `datamatricula`, `condicao`, `observacao`, `anoletivo`) VALUES
(1, 1222, 6, '2017-06-06', 'APROVADO', 'Bem succedido', 2017),
(2, 133, 7, '2017-06-05', 'APROVADO', 'Bom Aluno', 2016),
(3, 11, 6, '2017-07-05', 'REPROVADO', 'Bom Aluno', 2016),
(4, 83839, 8, '2017-01-05', 'APROVADO', 'Bom Aluno', 2017),
(5, 578, 9, '2017-06-06', 'APROVADO', 'bom aproveitamento', 2017),
(6, 1222, 13, '2012-11-11', 'APROVADO', 'bom aproveitamento', 2016);

-- --------------------------------------------------------

--
-- Estrutura da tabela `municipio`
--

CREATE TABLE `municipio` (
  `id` int(11) NOT NULL,
  `municipio` varchar(45) DEFAULT NULL,
  `provincia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `municipio`
--

INSERT INTO `municipio` (`id`, `municipio`, `provincia`) VALUES
(3, 'Cazenga', 1),
(4, 'Sambizanga', 1),
(5, 'Camabatela', 3),
(6, 'Kivunvo', 3),
(7, 'Cacuaco', 1),
(8, 'Liuna', 4),
(9, 'Manselele', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `nivelacademico`
--

CREATE TABLE `nivelacademico` (
  `id` int(11) NOT NULL,
  `nivel` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `nivelacademico`
--

INSERT INTO `nivelacademico` (`id`, `nivel`) VALUES
(1, 'Doutorado'),
(2, 'Mestrado'),
(3, 'Lincênciado'),
(4, 'Ensino Médio');

-- --------------------------------------------------------

--
-- Estrutura da tabela `nota`
--

CREATE TABLE `nota` (
  `id` int(11) NOT NULL,
  `mac` decimal(10,0) DEFAULT NULL,
  `cpp` decimal(10,0) DEFAULT NULL,
  `trimestre` enum('Iº','IIº','IIIº') NOT NULL,
  `professor` int(11) NOT NULL,
  `aluno` int(11) NOT NULL,
  `notarecurso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pais`
--

CREATE TABLE `pais` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pais`
--

INSERT INTO `pais` (`id`, `nome`) VALUES
(1, 'Angola'),
(2, 'Brasil');

-- --------------------------------------------------------

--
-- Estrutura da tabela `periodo`
--

CREATE TABLE `periodo` (
  `id` int(11) NOT NULL,
  `periodo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `periodo`
--

INSERT INTO `periodo` (`id`, `periodo`) VALUES
(1, 'Manha'),
(2, 'Tarde'),
(3, 'Noturno');

-- --------------------------------------------------------

--
-- Stand-in structure for view `professor`
-- (See below for the actual view)
--
CREATE TABLE `professor` (
`id` int(11)
,`processo` int(11)
,`nome` varchar(70)
,`nivel` varchar(45)
,`sexo` varchar(45)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `professorturma`
--

CREATE TABLE `professorturma` (
  `id` int(11) NOT NULL,
  `professor` int(11) NOT NULL,
  `turma` int(11) NOT NULL,
  `disciplina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `professorturma`
--

INSERT INTO `professorturma` (`id`, `professor`, `turma`, `disciplina`) VALUES
(18, 22, 7, 2),
(21, 22, 7, 3),
(23, 18, 8, 2);

-- --------------------------------------------------------

--
-- Stand-in structure for view `professorturma_view`
-- (See below for the actual view)
--
CREATE TABLE `professorturma_view` (
`id` int(11)
,`processo` int(11)
,`nome` varchar(70)
,`turma` varchar(45)
,`disciplina` varchar(45)
,`curso` varchar(45)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `provincia`
--

CREATE TABLE `provincia` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `pais` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `provincia`
--

INSERT INTO `provincia` (`id`, `nome`, `pais`) VALUES
(1, 'Luanda', 1),
(2, 'Uíge', 1),
(3, 'Humabo', 1),
(4, 'Benguela', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `registobibliografico`
--

CREATE TABLE `registobibliografico` (
  `id` int(11) NOT NULL,
  `descricao` text,
  `funcionario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `registobibliografico`
--

INSERT INTO `registobibliografico` (`id`, `descricao`, `funcionario`) VALUES
(1, 'ooalsksjsjsjsj', 22);

-- --------------------------------------------------------

--
-- Estrutura da tabela `registrodisciplinar`
--

CREATE TABLE `registrodisciplinar` (
  `id` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `despacho` int(11) DEFAULT NULL,
  `descricao` text,
  `tipo` enum('bonus','punição') DEFAULT NULL,
  `funcionario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicoprestado`
--

CREATE TABLE `servicoprestado` (
  `id` int(11) NOT NULL,
  `ano` year(4) DEFAULT NULL,
  `pontuacao` decimal(10,0) DEFAULT NULL,
  `classificacao` varchar(70) DEFAULT NULL,
  `funcionario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `servicoprestado`
--

INSERT INTO `servicoprestado` (`id`, `ano`, `pontuacao`, `classificacao`, `funcionario`) VALUES
(2, 2017, '93883', '8777', 22);

-- --------------------------------------------------------

--
-- Estrutura da tabela `trabalhou`
--

CREATE TABLE `trabalhou` (
  `id` int(11) NOT NULL,
  `organismo` varchar(45) DEFAULT NULL,
  `cargo` varchar(45) DEFAULT NULL,
  `salario` decimal(10,0) DEFAULT NULL,
  `inicio` date DEFAULT NULL,
  `termino` date DEFAULT NULL,
  `funcionario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `trabalhou`
--

INSERT INTO `trabalhou` (`id`, `organismo`, `cargo`, `salario`, `inicio`, `termino`, `funcionario`) VALUES
(1, 'Itel', 'Professor', '200000', '2017-05-16', '2017-05-04', 22),
(2, 'Isutic', '', '201022', NULL, NULL, 22),
(3, 'Cefitel', 'Gestor', '200000', '0000-00-00', '0000-00-00', 18);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `classe` int(11) NOT NULL,
  `curso` int(11) NOT NULL,
  `periodo` int(11) NOT NULL,
  `cargahoraria` int(11) DEFAULT NULL,
  `anolectivo` year(4) DEFAULT NULL,
  `numeroaluno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`id`, `nome`, `classe`, `curso`, `periodo`, `cargahoraria`, `anolectivo`, `numeroaluno`) VALUES
(6, 'A1', 2, 1, 2, 12, 2016, 30),
(7, 'A3', 1, 2, 1, 6, 2017, 40),
(8, 'AB3', 2, 3, 2, 6, 2017, 47),
(9, 'A7', 2, 1, 1, 300, 2017, 15),
(10, 'A2', 3, 3, 2, 12, 2106, 22),
(11, 'B9', 4, 1, 2, 44, 2011, 33),
(12, 'N82', 3, 4, 3, 33, 2014, 33),
(13, '7k7', 4, 2, 1, 993, 2018, 44);

-- --------------------------------------------------------

--
-- Stand-in structure for view `turma_view`
-- (See below for the actual view)
--
CREATE TABLE `turma_view` (
`id` int(11)
,`nome` varchar(45)
,`classe` varchar(45)
,`curso` varchar(45)
,`periodo` varchar(45)
,`numeroaluno` int(11)
,`anolectivo` year(4)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuariomenu`
--

CREATE TABLE `usuariomenu` (
  `id` int(11) NOT NULL,
  `menu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuariomenu`
--

INSERT INTO `usuariomenu` (`id`, `menu`) VALUES
(1, 'Agenda'),
(2, 'Funcionarios'),
(3, 'Aluno'),
(4, 'Disciplinas'),
(5, 'Cursos'),
(6, 'Professores'),
(7, 'Turmas'),
(8, 'Disciplinas'),
(9, 'Professores');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarioopcoes`
--

CREATE TABLE `usuarioopcoes` (
  `id` int(11) NOT NULL,
  `opcao` varchar(50) NOT NULL,
  `modal` enum('Sim','Nao') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarioopcoes`
--

INSERT INTO `usuarioopcoes` (`id`, `opcao`, `modal`) VALUES
(3, 'Dados de um funcionario', 'Sim'),
(5, 'Registo Bibliografico', 'Sim'),
(6, 'Adicionar Professor a uma Turma', 'Sim'),
(7, 'Listar Professores', 'Nao'),
(8, 'Listar Professores Com Turma ', 'Nao'),
(9, 'Listar Professores Sem Turma', 'Nao'),
(10, 'Adicionar Disciplina a um Curso', 'Nao'),
(11, 'Listar Disciplinas de um Curso', 'Nao'),
(12, 'Cadastrar Turmas', 'Nao'),
(13, 'Listar Turmas', 'Nao'),
(14, 'Cadastrar Cursos', 'Nao'),
(15, 'Listar Cursos', 'Nao'),
(16, 'Cadastrar Disciplinas', 'Nao'),
(17, 'Listar Disciplinas', 'Nao'),
(18, 'Cadastrar Funcionario', 'Nao'),
(19, 'Listar Funcionarios', 'Nao'),
(20, 'Inscrever Aluno', 'Nao'),
(21, 'Matricular Aluno', 'Sim'),
(22, 'Listar Alunos Matriculados', 'Nao'),
(23, 'Listar Alunos Nao Matriculados', 'Nao'),
(24, 'Cadastrar Professores', 'Nao');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarioprevilegios`
--

CREATE TABLE `usuarioprevilegios` (
  `id` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `prevelegio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarioprevilegios`
--

INSERT INTO `usuarioprevilegios` (`id`, `usuario`, `prevelegio`) VALUES
(1, 1, 9),
(2, 1, 10),
(3, 1, 19),
(4, 1, 20),
(5, 1, 21),
(6, 1, 22),
(7, 1, 1),
(8, 1, 2),
(9, 1, 5),
(10, 1, 6),
(11, 1, 7),
(12, 1, 8),
(13, 2, 23),
(14, 2, 24),
(15, 2, 25),
(16, 2, 26),
(17, 2, 20),
(18, 2, 10),
(19, 4, 27),
(20, 4, 28),
(21, 4, 29),
(22, 4, 30),
(23, 6, 24),
(24, 6, 26),
(26, 6, 27);

-- --------------------------------------------------------

--
-- Stand-in structure for view `usuarioprevilegios_view`
-- (See below for the actual view)
--
CREATE TABLE `usuarioprevilegios_view` (
`id` int(11)
,`usuario_id` int(11)
,`numeroprocesso` int(11)
,`usuario_nome` varchar(50)
,`opcao` varchar(50)
,`menu` varchar(50)
,`area` varchar(100)
,`modal` enum('Sim','Nao')
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `area` varchar(50) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `palavrapasse` varchar(50) NOT NULL,
  `numeroprocesso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `area`, `usuario`, `palavrapasse`, `numeroprocesso`) VALUES
(1, 'Pedagogica', 'Luis Silva Miguel', 'luissilva', 123),
(2, 'recursoshumanos', 'Maria Paula', 'mariapaula', 2),
(4, 'Secretaria', 'Julia Nunes', 'julia', 122),
(5, 'Secretaria', 'Nunes Saliene', '1234', 532),
(6, 'Pedagogica', 'Mateus', 'mateus', 12345);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario_menu_opcoes`
--

CREATE TABLE `usuario_menu_opcoes` (
  `id` int(11) NOT NULL,
  `menu` int(11) NOT NULL,
  `opcao` int(11) NOT NULL,
  `area` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario_menu_opcoes`
--

INSERT INTO `usuario_menu_opcoes` (`id`, `menu`, `opcao`, `area`) VALUES
(1, 5, 14, 2),
(2, 5, 15, 2),
(5, 4, 16, 2),
(6, 4, 17, 2),
(7, 4, 10, 2),
(8, 4, 11, 2),
(9, 7, 12, 2),
(10, 7, 13, 2),
(19, 6, 6, 2),
(20, 6, 7, 2),
(21, 6, 8, 2),
(22, 6, 9, 2),
(23, 2, 18, 4),
(24, 2, 19, 4),
(25, 2, 3, 4),
(26, 2, 5, 4),
(27, 3, 20, 3),
(28, 3, 21, 3),
(29, 3, 22, 3),
(30, 3, 23, 3),
(31, 9, 24, 2);

-- --------------------------------------------------------

--
-- Stand-in structure for view `usuario_menu_opcoes_view`
-- (See below for the actual view)
--
CREATE TABLE `usuario_menu_opcoes_view` (
`id` int(11)
,`menu` varchar(50)
,`opcao` varchar(50)
,`area` varchar(100)
,`menuid` int(11)
,`opcao_id` int(11)
,`modal` enum('Sim','Nao')
);

-- --------------------------------------------------------

--
-- Structure for view `alunos_matriculados`
--
DROP TABLE IF EXISTS `alunos_matriculados`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `alunos_matriculados`  AS  select `matricula`.`id` AS `id`,`aluno_view`.`processo` AS `processo`,`aluno_view`.`nome` AS `aluno`,`aluno_view`.`sexo` AS `sexo`,`turma_view`.`nome` AS `turma`,`turma_view`.`curso` AS `curso`,`turma_view`.`classe` AS `classe`,`turma_view`.`periodo` AS `periodo` from ((`matricula` join `aluno_view` on((`aluno_view`.`processo` = `matricula`.`aluno`))) join `turma_view` on((`turma_view`.`id` = `matricula`.`turma`))) order by `matricula`.`id` ;

-- --------------------------------------------------------

--
-- Structure for view `alunos_nao_matriculados`
--
DROP TABLE IF EXISTS `alunos_nao_matriculados`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `alunos_nao_matriculados`  AS  select `aluno_view`.`id` AS `id`,`aluno_view`.`processo` AS `processo`,`aluno_view`.`bilhete` AS `bilhete`,`aluno_view`.`nome` AS `nome`,`aluno_view`.`sexo` AS `sexo`,`aluno_view`.`municipio` AS `municipio`,`dadosparamatricula_view`.`curso` AS `curso`,`dadosparamatricula_view`.`classe` AS `classe`,`dadosparamatricula_view`.`periodo` AS `periodo` from ((`aluno` join `aluno_view` on((`aluno_view`.`id` = `aluno`.`id`))) join `dadosparamatricula_view` on((`dadosparamatricula_view`.`id` = `aluno`.`id`))) order by `aluno`.`id` ;

-- --------------------------------------------------------

--
-- Structure for view `aluno_view`
--
DROP TABLE IF EXISTS `aluno_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `aluno_view`  AS  select `aluno`.`id` AS `id`,`aluno`.`processo` AS `processo`,`aluno`.`nome` AS `nome`,`aluno`.`bilhete` AS `bilhete`,`aluno`.`pai` AS `pai`,`aluno`.`mae` AS `mae`,`aluno`.`escolaanterior` AS `escolaanterior`,`aluno`.`anoqueestudou` AS `anoqueestudou`,`aluno`.`nascido` AS `nascido`,`aluno`.`dificiencia` AS `dificiencia`,`contacto`.`email` AS `email`,`contacto`.`telefone` AS `telefone`,`contacto`.`telefonealternativo` AS `telefonealternativo`,`contacto`.`endereco` AS `endereco`,`genero`.`sexo` AS `sexo`,`estadocivil`.`estado` AS `estado`,`municipio`.`municipio` AS `municipio` from ((((`aluno` join `contacto` on((`contacto`.`id` = `aluno`.`contacto`))) join `genero` on((`genero`.`id` = `aluno`.`genero`))) join `estadocivil` on((`estadocivil`.`id` = `aluno`.`estadocivil`))) join `municipio` on((`municipio`.`id` = `aluno`.`naturalidade`))) order by `aluno`.`id` ;

-- --------------------------------------------------------

--
-- Structure for view `cursodisciplina_view`
--
DROP TABLE IF EXISTS `cursodisciplina_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cursodisciplina_view`  AS  select `cursodisciplina`.`id` AS `id`,`curso`.`nome` AS `curso`,`disciplina`.`nome` AS `disciplina` from ((`cursodisciplina` join `curso` on((`cursodisciplina`.`curso` = `curso`.`id`))) join `disciplina` on((`cursodisciplina`.`disciplina` = `disciplina`.`id`))) order by `cursodisciplina`.`id` ;

-- --------------------------------------------------------

--
-- Structure for view `dadosparamatricula_view`
--
DROP TABLE IF EXISTS `dadosparamatricula_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dadosparamatricula_view`  AS  select `aluno_view`.`id` AS `id`,`aluno_view`.`processo` AS `processo`,`aluno_view`.`nome` AS `nome`,`curso`.`nome` AS `curso`,`classe`.`nome` AS `classe`,`periodo`.`periodo` AS `periodo` from ((((`dadosparamatricula` join `aluno_view` on((`aluno_view`.`processo` = `dadosparamatricula`.`aluno`))) join `curso` on((`curso`.`id` = `dadosparamatricula`.`curso`))) join `classe` on((`classe`.`id` = `dadosparamatricula`.`classe`))) join `periodo` on((`periodo`.`id` = `dadosparamatricula`.`periodo`))) order by `dadosparamatricula`.`id` ;

-- --------------------------------------------------------

--
-- Structure for view `funcionario_cargo_view`
--
DROP TABLE IF EXISTS `funcionario_cargo_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `funcionario_cargo_view`  AS  select `funcionariocargo`.`id` AS `id`,`funcionario`.`id` AS `funcid`,`funcionario`.`nome` AS `nome`,`cargo`.`nome` AS `cargo`,`funcionariocargo`.`estado` AS `estado`,`funcionariocargo`.`obs` AS `obs` from ((`funcionariocargo` join `funcionario` on((`funcionariocargo`.`funcionario` = `funcionario`.`id`))) join `cargo` on((`funcionariocargo`.`cargo` = `cargo`.`id`))) order by `funcionario`.`id` ;

-- --------------------------------------------------------

--
-- Structure for view `funcionario_view`
--
DROP TABLE IF EXISTS `funcionario_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `funcionario_view`  AS  select `a`.`id` AS `id`,`a`.`processo` AS `processo`,`a`.`bilhete` AS `bilhete`,`a`.`nome` AS `nome`,`a`.`nascido` AS `nascido`,`na`.`nivel` AS `nivel`,`hl`.`escola` AS `escola`,`hl`.`dma` AS `dma`,`s`.`estado` AS `estado`,`m`.`municipio` AS `municipio`,`g`.`sexo` AS `sexo` from (((((`funcionario` `a` join `municipio` `m` on((`a`.`municipio` = `m`.`id`))) join `genero` `g` on((`a`.`genero` = `g`.`id`))) join `estadocivil` `s` on((`a`.`estadocivil` = `s`.`id`))) join `habilitacaoliteraria` `hl` on((`a`.`habilitacaoliteraria` = `hl`.`id`))) join `nivelacademico` `na` on((`hl`.`nivelacademico_id` = `na`.`id`))) order by `a`.`id` ;

-- --------------------------------------------------------

--
-- Structure for view `professor`
--
DROP TABLE IF EXISTS `professor`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `professor`  AS  select `funcionario_cargo_view`.`id` AS `id`,`funcionario_view`.`processo` AS `processo`,`funcionario_view`.`nome` AS `nome`,`funcionario_view`.`nivel` AS `nivel`,`funcionario_view`.`sexo` AS `sexo` from (`funcionario_cargo_view` join `funcionario_view` on(((`funcionario_view`.`id` = `funcionario_cargo_view`.`funcid`) and (`funcionario_cargo_view`.`cargo` = 'Professor')))) order by `funcionario_cargo_view`.`nome` ;

-- --------------------------------------------------------

--
-- Structure for view `professorturma_view`
--
DROP TABLE IF EXISTS `professorturma_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `professorturma_view`  AS  select `professorturma`.`id` AS `id`,`funcionario`.`processo` AS `processo`,`funcionario`.`nome` AS `nome`,`turma`.`nome` AS `turma`,`cursodisciplina_view`.`disciplina` AS `disciplina`,`cursodisciplina_view`.`curso` AS `curso` from (((`professorturma` join `funcionario` on((`funcionario`.`id` = `professorturma`.`professor`))) join `turma` on((`professorturma`.`turma` = `turma`.`id`))) join `cursodisciplina_view` on((`cursodisciplina_view`.`id` = `professorturma`.`disciplina`))) order by `professorturma`.`id` ;

-- --------------------------------------------------------

--
-- Structure for view `turma_view`
--
DROP TABLE IF EXISTS `turma_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `turma_view`  AS  select `turma`.`id` AS `id`,`turma`.`nome` AS `nome`,`classe`.`nome` AS `classe`,`curso`.`nome` AS `curso`,`periodo`.`periodo` AS `periodo`,`turma`.`numeroaluno` AS `numeroaluno`,`turma`.`anolectivo` AS `anolectivo` from (((`turma` join `classe` on((`classe`.`id` = `turma`.`classe`))) join `curso` on((`curso`.`id` = `turma`.`curso`))) join `periodo` on((`periodo`.`id` = `turma`.`periodo`))) order by `turma`.`id` ;

-- --------------------------------------------------------

--
-- Structure for view `usuarioprevilegios_view`
--
DROP TABLE IF EXISTS `usuarioprevilegios_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `usuarioprevilegios_view`  AS  select `usuarioprevilegios`.`id` AS `id`,`usuarios`.`id` AS `usuario_id`,`usuarios`.`numeroprocesso` AS `numeroprocesso`,`usuarios`.`usuario` AS `usuario_nome`,`usuario_menu_opcoes_view`.`opcao` AS `opcao`,`usuario_menu_opcoes_view`.`menu` AS `menu`,`usuario_menu_opcoes_view`.`area` AS `area`,`usuario_menu_opcoes_view`.`modal` AS `modal` from ((`usuarioprevilegios` join `usuarios` on((`usuarioprevilegios`.`usuario` = `usuarios`.`id`))) join `usuario_menu_opcoes_view` on((`usuarioprevilegios`.`prevelegio` = `usuario_menu_opcoes_view`.`id`))) order by `usuarioprevilegios`.`usuario` ;

-- --------------------------------------------------------

--
-- Structure for view `usuario_menu_opcoes_view`
--
DROP TABLE IF EXISTS `usuario_menu_opcoes_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `usuario_menu_opcoes_view`  AS  select `usuario_menu_opcoes`.`id` AS `id`,`usuariomenu`.`menu` AS `menu`,`usuarioopcoes`.`opcao` AS `opcao`,`area`.`area` AS `area`,`usuariomenu`.`id` AS `menuid`,`usuarioopcoes`.`id` AS `opcao_id`,`usuarioopcoes`.`modal` AS `modal` from (((`usuario_menu_opcoes` join `usuariomenu` on((`usuario_menu_opcoes`.`menu` = `usuariomenu`.`id`))) join `usuarioopcoes` on((`usuario_menu_opcoes`.`opcao` = `usuarioopcoes`.`id`))) join `area` on((`usuario_menu_opcoes`.`area` = `area`.`id`))) order by `usuario_menu_opcoes`.`id` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acidentetrabalho`
--
ALTER TABLE `acidentetrabalho`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_acidentetrabalho_funcionario1_idx` (`funcionario`);

--
-- Indexes for table `agregadofamiliar`
--
ALTER TABLE `agregadofamiliar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_agregadofamiliar_funcionario1_idx` (`funcionario`),
  ADD KEY `fk_agregadofamiliar_genero1_idx` (`genero`);

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `processo_UNIQUE` (`processo`),
  ADD KEY `fk_aluno_contacto1_idx` (`contacto`);

--
-- Indexes for table `anolectivo`
--
ALTER TABLE `anolectivo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assiduidade`
--
ALTER TABLE `assiduidade`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_assiduidade_funcionario1_idx` (`funcionario`);

--
-- Indexes for table `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categoriaensino`
--
ALTER TABLE `categoriaensino`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cursodisciplina`
--
ALTER TABLE `cursodisciplina`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_curso_has_disciplina_disciplina1_idx` (`disciplina`),
  ADD KEY `fk_curso_has_disciplina_curso1_idx` (`curso`);

--
-- Indexes for table `cursoprofissional`
--
ALTER TABLE `cursoprofissional`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cursoprofissional_curso1_idx` (`curso`),
  ADD KEY `fk_cursoprofissional_funcionario1_idx` (`funcionario`);

--
-- Indexes for table `dadosparamatricula`
--
ALTER TABLE `dadosparamatricula`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estadocivil`
--
ALTER TABLE `estadocivil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bilhete_UNIQUE` (`bilhete`),
  ADD UNIQUE KEY `processo_UNIQUE` (`processo`),
  ADD KEY `fk_funcionario_municipio1_idx` (`municipio`),
  ADD KEY `fk_funcionario_contacto1_idx` (`contacto`),
  ADD KEY `fk_funcionario_gruposangue1_idx` (`gruposangue`),
  ADD KEY `fk_funcionario_habilitacaoliteraria1_idx` (`habilitacaoliteraria`),
  ADD KEY `fk_funcionario_identificacaoprofissional1_idx` (`identificacaoprofissional`),
  ADD KEY `fk_funcionario_genero1_idx` (`genero`),
  ADD KEY `fk_funcionario_estadocivil1_idx` (`estadocivil`),
  ADD KEY `categoriaensino` (`categoriaensino`);

--
-- Indexes for table `funcionariocargo`
--
ALTER TABLE `funcionariocargo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_funcionario_has_cargo_cargo1_idx` (`cargo`),
  ADD KEY `fk_funcionario_has_cargo_funcionario1_idx` (`funcionario`);

--
-- Indexes for table `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `habilitacaoliteraria`
--
ALTER TABLE `habilitacaoliteraria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_habilitacaoliteraria_nivelacademico1_idx` (`nivelacademico_id`);

--
-- Indexes for table `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `turma` (`turma`),
  ADD KEY `disciplina` (`disciplina`);

--
-- Indexes for table `identificacaoprofissional`
--
ALTER TABLE `identificacaoprofissional`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `liquidacao`
--
ALTER TABLE `liquidacao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_liquidacao_funcionario1_idx` (`funcionario`);

--
-- Indexes for table `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_table1_aluno1_idx` (`aluno`),
  ADD KEY `fk_table1_turma1_idx` (`turma`);

--
-- Indexes for table `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_municipio_provincia1_idx` (`provincia`);

--
-- Indexes for table `nivelacademico`
--
ALTER TABLE `nivelacademico`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_nota_professorturma1_idx` (`professor`),
  ADD KEY `fk_nota_matricula1_idx` (`aluno`),
  ADD KEY `notarecurso` (`notarecurso`);

--
-- Indexes for table `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `periodo`
--
ALTER TABLE `periodo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `professorturma`
--
ALTER TABLE `professorturma`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_funcionariocargo_has_turma_turma1_idx` (`turma`),
  ADD KEY `fk_funcionariocargo_has_turma_funcionariocargo1_idx` (`professor`),
  ADD KEY `fk_professorturma_cursodisciplina1_idx` (`disciplina`);

--
-- Indexes for table `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_provincia_pais_idx` (`pais`);

--
-- Indexes for table `registobibliografico`
--
ALTER TABLE `registobibliografico`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registrodisciplinar`
--
ALTER TABLE `registrodisciplinar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_punicoes_funcionario1_idx` (`funcionario`);

--
-- Indexes for table `servicoprestado`
--
ALTER TABLE `servicoprestado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_servicoprestado_funcionario1_idx` (`funcionario`);

--
-- Indexes for table `trabalhou`
--
ALTER TABLE `trabalhou`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_trabalhou_funcionario1_idx` (`funcionario`);

--
-- Indexes for table `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_turma_classe1_idx` (`classe`),
  ADD KEY `fk_turma_curso1_idx` (`curso`),
  ADD KEY `fk_turma_periodo1_idx` (`periodo`);

--
-- Indexes for table `usuariomenu`
--
ALTER TABLE `usuariomenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarioopcoes`
--
ALTER TABLE `usuarioopcoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarioprevilegios`
--
ALTER TABLE `usuarioprevilegios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuarioprevilegios_ibfk_1` (`usuario`),
  ADD KEY `usuarioprevilegios_ibfk_2` (`prevelegio`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuario_menu_opcoes`
--
ALTER TABLE `usuario_menu_opcoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_menu_opcoes_ibfk_1` (`menu`),
  ADD KEY `usuario_menu_opcoes_ibfk_2` (`opcao`),
  ADD KEY `area` (`area`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acidentetrabalho`
--
ALTER TABLE `acidentetrabalho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `agregadofamiliar`
--
ALTER TABLE `agregadofamiliar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `aluno`
--
ALTER TABLE `aluno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `anolectivo`
--
ALTER TABLE `anolectivo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `assiduidade`
--
ALTER TABLE `assiduidade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `categoriaensino`
--
ALTER TABLE `categoriaensino`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `classe`
--
ALTER TABLE `classe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `curso`
--
ALTER TABLE `curso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `cursodisciplina`
--
ALTER TABLE `cursodisciplina`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `cursoprofissional`
--
ALTER TABLE `cursoprofissional`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `dadosparamatricula`
--
ALTER TABLE `dadosparamatricula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `estadocivil`
--
ALTER TABLE `estadocivil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `funcionariocargo`
--
ALTER TABLE `funcionariocargo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `genero`
--
ALTER TABLE `genero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `habilitacaoliteraria`
--
ALTER TABLE `habilitacaoliteraria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `identificacaoprofissional`
--
ALTER TABLE `identificacaoprofissional`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `liquidacao`
--
ALTER TABLE `liquidacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `matricula`
--
ALTER TABLE `matricula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `municipio`
--
ALTER TABLE `municipio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `nivelacademico`
--
ALTER TABLE `nivelacademico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `nota`
--
ALTER TABLE `nota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pais`
--
ALTER TABLE `pais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `periodo`
--
ALTER TABLE `periodo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `professorturma`
--
ALTER TABLE `professorturma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `provincia`
--
ALTER TABLE `provincia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `registobibliografico`
--
ALTER TABLE `registobibliografico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `registrodisciplinar`
--
ALTER TABLE `registrodisciplinar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `servicoprestado`
--
ALTER TABLE `servicoprestado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `trabalhou`
--
ALTER TABLE `trabalhou`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `turma`
--
ALTER TABLE `turma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `usuariomenu`
--
ALTER TABLE `usuariomenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `usuarioopcoes`
--
ALTER TABLE `usuarioopcoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `usuarioprevilegios`
--
ALTER TABLE `usuarioprevilegios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `usuario_menu_opcoes`
--
ALTER TABLE `usuario_menu_opcoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `acidentetrabalho`
--
ALTER TABLE `acidentetrabalho`
  ADD CONSTRAINT `fk_acidentetrabalho_funcionario1` FOREIGN KEY (`funcionario`) REFERENCES `funcionario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `agregadofamiliar`
--
ALTER TABLE `agregadofamiliar`
  ADD CONSTRAINT `fk_agregadofamiliar_funcionario1` FOREIGN KEY (`funcionario`) REFERENCES `funcionario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_agregadofamiliar_genero1` FOREIGN KEY (`genero`) REFERENCES `genero` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `aluno`
--
ALTER TABLE `aluno`
  ADD CONSTRAINT `fk_aluno_contacto1` FOREIGN KEY (`contacto`) REFERENCES `contacto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `assiduidade`
--
ALTER TABLE `assiduidade`
  ADD CONSTRAINT `fk_assiduidade_funcionario1` FOREIGN KEY (`funcionario`) REFERENCES `funcionario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `cursoprofissional`
--
ALTER TABLE `cursoprofissional`
  ADD CONSTRAINT `fk_cursoprofissional_curso1` FOREIGN KEY (`curso`) REFERENCES `curso` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cursoprofissional_funcionario1` FOREIGN KEY (`funcionario`) REFERENCES `funcionario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `fk_funcionario_contacto1` FOREIGN KEY (`contacto`) REFERENCES `contacto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_funcionario_estadocivil1` FOREIGN KEY (`estadocivil`) REFERENCES `estadocivil` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_funcionario_genero1` FOREIGN KEY (`genero`) REFERENCES `genero` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_funcionario_habilitacaoliteraria1` FOREIGN KEY (`habilitacaoliteraria`) REFERENCES `habilitacaoliteraria` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_funcionario_identificacaoprofissional1` FOREIGN KEY (`identificacaoprofissional`) REFERENCES `identificacaoprofissional` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_funcionario_municipio1` FOREIGN KEY (`municipio`) REFERENCES `municipio` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `funcionariocargo`
--
ALTER TABLE `funcionariocargo`
  ADD CONSTRAINT `fk_funcionario_has_cargo_cargo1` FOREIGN KEY (`cargo`) REFERENCES `cargo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_funcionario_has_cargo_funcionario1` FOREIGN KEY (`funcionario`) REFERENCES `funcionario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `habilitacaoliteraria`
--
ALTER TABLE `habilitacaoliteraria`
  ADD CONSTRAINT `fk_habilitacaoliteraria_nivelacademico1` FOREIGN KEY (`nivelacademico_id`) REFERENCES `nivelacademico` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `horario_ibfk_1` FOREIGN KEY (`turma`) REFERENCES `turma` (`id`),
  ADD CONSTRAINT `horario_ibfk_2` FOREIGN KEY (`disciplina`) REFERENCES `disciplina` (`id`);

--
-- Limitadores para a tabela `liquidacao`
--
ALTER TABLE `liquidacao`
  ADD CONSTRAINT `fk_liquidacao_funcionario1` FOREIGN KEY (`funcionario`) REFERENCES `funcionario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `matricula`
--
ALTER TABLE `matricula`
  ADD CONSTRAINT `fk_table1_turma1` FOREIGN KEY (`turma`) REFERENCES `turma` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `municipio`
--
ALTER TABLE `municipio`
  ADD CONSTRAINT `fk_municipio_provincia1` FOREIGN KEY (`provincia`) REFERENCES `provincia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `nota`
--
ALTER TABLE `nota`
  ADD CONSTRAINT `fk_nota_matricula1` FOREIGN KEY (`aluno`) REFERENCES `matricula` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_nota_professorturma1` FOREIGN KEY (`professor`) REFERENCES `professorturma` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `professorturma`
--
ALTER TABLE `professorturma`
  ADD CONSTRAINT `fk_funcionario_has_turma_funcionariocargo1` FOREIGN KEY (`professor`) REFERENCES `funcionario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_professorturma_cursodisciplina1` FOREIGN KEY (`disciplina`) REFERENCES `cursodisciplina` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `provincia`
--
ALTER TABLE `provincia`
  ADD CONSTRAINT `fk_provincia_pais` FOREIGN KEY (`pais`) REFERENCES `pais` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `registrodisciplinar`
--
ALTER TABLE `registrodisciplinar`
  ADD CONSTRAINT `fk_punicoes_funcionario1` FOREIGN KEY (`funcionario`) REFERENCES `funcionario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `servicoprestado`
--
ALTER TABLE `servicoprestado`
  ADD CONSTRAINT `fk_servicoprestado_funcionario1` FOREIGN KEY (`funcionario`) REFERENCES `funcionario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `trabalhou`
--
ALTER TABLE `trabalhou`
  ADD CONSTRAINT `fk_trabalhou_funcionario1` FOREIGN KEY (`funcionario`) REFERENCES `funcionario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `turma`
--
ALTER TABLE `turma`
  ADD CONSTRAINT `fk_turma_classe1` FOREIGN KEY (`classe`) REFERENCES `classe` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_turma_curso1` FOREIGN KEY (`curso`) REFERENCES `curso` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_turma_periodo1` FOREIGN KEY (`periodo`) REFERENCES `periodo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `usuario_menu_opcoes`
--
ALTER TABLE `usuario_menu_opcoes`
  ADD CONSTRAINT `usuario_menu_opcoes_ibfk_1` FOREIGN KEY (`menu`) REFERENCES `usuariomenu` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `usuario_menu_opcoes_ibfk_2` FOREIGN KEY (`opcao`) REFERENCES `usuarioopcoes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `usuario_menu_opcoes_ibfk_3` FOREIGN KEY (`area`) REFERENCES `area` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
