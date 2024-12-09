-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.30 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.7.0.6850
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para future
CREATE DATABASE IF NOT EXISTS `future` /*!40100 DEFAULT CHARACTER SET armscii8 COLLATE armscii8_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `future`;

-- Copiando estrutura para tabela future.atividades
CREATE TABLE IF NOT EXISTS `atividades` (
  `IdMateria` varchar(30) DEFAULT NULL,
  `Materia` varchar(300) DEFAULT NULL,
  `Professor` varchar(300) DEFAULT NULL,
  `NomeAtividade` varchar(300) DEFAULT NULL,
  `Atividade` varchar(2000) DEFAULT NULL,
  `DataEntrega` varchar(300) DEFAULT NULL,
  `Nota` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela future.atividades: ~0 rows (aproximadamente)
DELETE FROM `atividades`;
INSERT INTO `atividades` (`IdMateria`, `Materia`, `Professor`, `NomeAtividade`, `Atividade`, `DataEntrega`, `Nota`) VALUES
	('1001', 'Modelagem', 'Gustavo Lopes', 'Trabalho Java', 'Faça um projeto em Java.', '12/12/2024', '25');

-- Copiando estrutura para tabela future.atividadesentregues
CREATE TABLE IF NOT EXISTS `atividadesentregues` (
  `IdMateria` varchar(30) DEFAULT NULL,
  `Materia` varchar(300) DEFAULT NULL,
  `Professor` varchar(300) DEFAULT NULL,
  `NomeAtividade` varchar(300) DEFAULT NULL,
  `Atividade` varchar(2000) DEFAULT NULL,
  `DataEntrega` varchar(300) DEFAULT NULL,
  `RespostaAluno` varchar(2000) DEFAULT NULL,
  `Nota` varchar(30) DEFAULT NULL,
  `IdUsuario` varchar(30) DEFAULT NULL,
  `NomeAluno` varchar(300) DEFAULT NULL,
  `NotaAluno` varchar(30) DEFAULT NULL,
  `Entregue` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela future.atividadesentregues: ~0 rows (aproximadamente)
DELETE FROM `atividadesentregues`;
INSERT INTO `atividadesentregues` (`IdMateria`, `Materia`, `Professor`, `NomeAtividade`, `Atividade`, `DataEntrega`, `RespostaAluno`, `Nota`, `IdUsuario`, `NomeAluno`, `NotaAluno`, `Entregue`) VALUES
	('1001', 'Modelagem', 'Gustavo Lopes', 'Trabalho Java', 'Faça um projeto em Java.', '12/12/2024', 'Testeeeeeee', '25', '10005', 'Eric Dias', NULL, 'Entregue');

-- Copiando estrutura para tabela future.aulas
CREATE TABLE IF NOT EXISTS `aulas` (
  `IdMateria` int NOT NULL,
  `materia` varchar(100) NOT NULL,
  `horarioinicio` varchar(100) NOT NULL,
  `horariofim` varchar(100) NOT NULL,
  `dia` varchar(100) NOT NULL,
  `periodo` varchar(100) NOT NULL,
  `linkSaladeAula` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela future.aulas: ~5 rows (aproximadamente)
DELETE FROM `aulas`;
INSERT INTO `aulas` (`IdMateria`, `materia`, `horarioinicio`, `horariofim`, `dia`, `periodo`, `linkSaladeAula`) VALUES
	(1001, 'Modelagem', '19:00', '22:00', 'Segunda', 'Noturno', 'https://discord.com/channels/1304861528737972366/1304861650699943986'),
	(1001, 'Modelagem', '19:00', '22:00', 'Terça', 'Noturno', 'https://discord.com/channels/1304861528737972366/1304861650699943986'),
	(1001, 'Modelagem', '19:00', '22:00', 'Quarta', 'Noturno', 'https://discord.com/channels/1304861528737972366/1304861650699943986'),
	(1001, 'Modelagem', '19:00', '22:00', 'Quinta', 'Noturno', 'https://discord.com/channels/1304861528737972366/1304861650699943986'),
	(1001, 'Modelagem', '19:00', '22:00', 'Sexta', 'Noturno', 'https://discord.com/channels/1304861528737972366/1304861650699943986');

-- Copiando estrutura para tabela future.avisos
CREATE TABLE IF NOT EXISTS `avisos` (
  `IdMateria` varchar(30) DEFAULT NULL,
  `Materia` varchar(300) DEFAULT NULL,
  `Professor` varchar(300) DEFAULT NULL,
  `Titulo` varchar(300) DEFAULT NULL,
  `Aviso` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela future.avisos: ~4 rows (aproximadamente)
DELETE FROM `avisos`;
INSERT INTO `avisos` (`IdMateria`, `Materia`, `Professor`, `Titulo`, `Aviso`) VALUES
	('1001', 'Modelagem', 'Gustavo Lopes', 'Trabalho', 'Teste'),
	('1001', 'Modelagem', 'Gustavo Lopes', 'Validando', 'Validando Teste'),
	('1001', 'Modelagem', 'Gustavo Lopes', 'Teste', 'teste'),
	('1001', 'Modelagem', 'Gustavo Lopes', 'asasas', 'asassa');

-- Copiando estrutura para tabela future.cursos
CREATE TABLE IF NOT EXISTS `cursos` (
  `IdCurso` int NOT NULL,
  `IdMateria` int NOT NULL,
  `curso` varchar(100) NOT NULL,
  `materia` varchar(255) NOT NULL,
  `modulo` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela future.cursos: ~7 rows (aproximadamente)
DELETE FROM `cursos`;
INSERT INTO `cursos` (`IdCurso`, `IdMateria`, `curso`, `materia`, `modulo`) VALUES
	(1000, 1001, 'Engenharia Computação', 'Modelagem', 1),
	(1000, 1002, 'Engenharia Computação', 'Programação', 2),
	(1000, 1003, 'Engenharia Computação', 'Calculo', 3),
	(1000, 1004, 'Engenharia Computação', 'Inteligencia Articial', 4),
	(1000, 1005, 'Engenharia Computação', 'TCC', 5),
	(2000, 2001, 'Engenharia Eletrica', 'Calculo', 1),
	(10000, 10000, 'teeeee', 'testeeee', 2);

-- Copiando estrutura para tabela future.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `IdUsuario` int NOT NULL,
  `nome` varchar(250) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `identificacao` varchar(100) NOT NULL,
  `email` varchar(250) NOT NULL,
  `telefone` varchar(100) NOT NULL,
  `IdCurso` int NOT NULL,
  `curso` varchar(100) NOT NULL,
  `IdMateria` int NOT NULL,
  `materia` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela future.usuarios: ~6 rows (aproximadamente)
DELETE FROM `usuarios`;
INSERT INTO `usuarios` (`IdUsuario`, `nome`, `usuario`, `senha`, `identificacao`, `email`, `telefone`, `IdCurso`, `curso`, `IdMateria`, `materia`) VALUES
	(10001, 'Vitor Junio', 'vitorjunio', 'future2024', 'administrador', 'vitorjunio@hotmail.com', '31 99999999', 1000, 'Engenharia da Computação', 1001, 'Modelagem'),
	(10002, 'Gabriel Henrique', 'gabrielhenrique', 'future2024', 'aluno', 'gabrielhenrique@hotmail.com', '31 999999999', 2000, 'Engenharia Eletrica', 2001, 'Calculo'),
	(10003, 'Gustavo Lopes', 'gustavolopes', 'future2024', 'professor', 'gustavolopes@hotmail.com', '31 999999999', 1000, 'Engenharia da Computação', 1001, 'Modelagem'),
	(1004, 'Rafaela Priscila', 'rafaelapriscila', 'future2024', 'professor', 'rafaelapriscila@hotmail.com', '31 999999999', 1000, 'Engenharia da Computação', 1001, 'Modelagem'),
	(10005, 'Eric Dias', 'ericdias', 'future2024', 'aluno', 'ericdias@hotmail.com', '31 99999999', 1000, 'Engenharia da Computação', 1001, 'Modelagem');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
