/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 5.7.17-log : Database - biblioteca
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`biblioteca` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `biblioteca`;

/*Table structure for table `libro` */

DROP TABLE IF EXISTS `libro`;

CREATE TABLE `libro` (
  `id_libro` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) DEFAULT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `editorial` varchar(100) DEFAULT NULL,
  `nombre_autor` varchar(100) DEFAULT NULL,
  `area` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_libro`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

insert into libro values('1','PYS-0001', 'UNIX SISTEMA V', 'MC GRAW-HILL', 'KENNETH H. ROSEN', 'SISTEMAS' );
insert into libro values('5','PYS-0005', 'VISUAL BASIC 4 GUIA DE AUTO ENSEÑANZA', 'MC GRAW-HILL', 'BOB ALBRECHT', 'SISTEMAS' );
insert into libro values('9','PYS-0009', 'WORD PERFECT 6 PARA DOS ', 'MC GRAW-HILL', 'MELLA MINCBERG', 'SISTEMAS' );
insert into libro values('19','PYS-0019', 'TURBO PASCAL 7 MANUAL DE REFERENCIA', 'MC GRAW-HILL', 'STEPHEN K. O,BRIEN', 'SISTEMAS' );
insert into libro values('23','PYS-0023', 'BORLAND C++ 4/4.5', 'MC GRAW-HILL', 'LOUIS JOYANES AGUILAR', 'SISTEMAS' );
insert into libro values('31','PYS-0031', 'BIBLIOTECA DE INFORMATICA. 1 TOMOS', 'LIMUSA', 'LIC. SANTIAGO DIAZ', 'SISTEMAS' );
insert into libro values('32','PYS-0032', 'BIBLIOTECA DE INFORMATICA. 2 TOMOS', 'LIMUSA', 'LIC. SANTIAGO DIAZ', 'SISTEMAS' );
insert into libro values('33','PYS-0033', 'BIBLIOTECA DE INFORMATICA. 3 TOMOS', 'LIMUSA', 'LIC. SANTIAGO DIAZ', 'SISTEMAS' );
insert into libro values('34','PYS-0034', 'BIBLIOTECA DE INFORMATICA. 4 TOMOS', 'LIMUSA', 'LIC. SANTIAGO DIAZ', 'SISTEMAS' );
insert into libro values('35','PYS-0035', 'BIBLIOTECA DE INFORMATICA. 5 TOMOS', 'LIMUSA', 'LIC. SANTIAGO DIAZ', 'SISTEMAS' );
insert into libro values('36','PYS-0036', 'BIBLIOTECA DE INFORMATICA. 6 TOMOS', 'LIMUSA', 'LIC. SANTIAGO DIAZ', 'SISTEMAS' );
insert into libro values('37','PYS-0037', 'BIBLIOTECA DE INFORMATICA. 7 TOMOS', 'LIMUSA', 'LIC. SANTIAGO DIAZ', 'SISTEMAS' );
insert into libro values('38','PYS-0038', 'FUNDAMENTOS DEL DISEÑO Y LA PROGRAMACION ORIENTADO A OBJETOS', 'MC GRAW-HILL', 'SERGIO M. FERNANDEZ  SASTRE', 'SISTEMAS' );
insert into libro values('41','PYS-0041', 'ENGLISH COMPUTERS', 'MC GRAW-HILL', 'GEOFF JODAN ', 'SISTEMAS' );
insert into libro values('42','PYS-0042', 'VISUAL BASIC 6.0 ', 'MC GRAW-HILL', 'LUIS JOYANES', 'SISTEMAS' );
insert into libro values('43','PYS-0043', 'HARVARD GRAPHICS  A SU ALCANCE', 'MC GRAW-HILL', 'MARY CAMPBELL', 'SISTEMAS' );
insert into libro values('44','PYS-0044', 'ENCICLOPEDIA DE TERMINOS DE MICROCOMPUTACION ', 'PHH', 'LINDA GAIL CHRITIE', 'SISTEMAS' );
insert into libro values('45','PYS-0045', 'AUDITORIA EN INFORMATICA ', 'MC GRAW-HILL', 'JOSE ANTONIO ECHENIQUE', 'SISTEMAS' );
insert into libro values('52','PYS-0052', 'INFORMATICA EN ADMINISTRACION', 'TRILLAS', 'ANDRES ALVARADO', 'SISTEMAS' );
insert into libro values('53','PYS-0053', 'A TODA MAQUINA- MICROSSOFT WINDOWS 2000', 'MC GRAW-HILL', 'ALEJANDRO  VAZQUES', 'SISTEMAS' );
insert into libro values('54','PYS-0054', 'INTRODUCCION AL WORDSTAR', 'MC GRAW-HILL', 'WALTER A. ETTLIN', 'SISTEMAS' );
insert into libro values('55','PYS-0055', 'LENGUAJE C Y ESTRUCTURA DE DATOS', 'MC GRAW-HILL', 'JUAN F. GARCIA DE SOLA', 'SISTEMAS' );
insert into libro values('56','PYS-0056', 'ACCESS PARA WINDOWS 95 VISUAL', 'PHH', 'JEFFRY BYRNE', 'SISTEMAS' );
insert into libro values('57','PYS-0057', 'EXCEL PARA WINDOWS 95 VISUAL', 'PHH', 'ELAINE MARMEL', 'SISTEMAS' );
insert into libro values('60','PYS-0060', 'WINDOWS 95 VISUAL', 'PHH', 'SUE', 'SISTEMAS' );
insert into libro values('61','PYS-0061', 'WORD PARA WINDOWS 93', 'PHH', 'TRUDI REISNER', 'SISTEMAS' );
insert into libro values('62','PYS-0062', 'WORD PARA WINDOWS 94', 'PHH', 'TRUDI REISNER', 'SISTEMAS' );
insert into libro values('63','PYS-0063', 'WORD PARA WINDOWS 95', 'PHH', 'TRUDI REISNER', 'SISTEMAS' );
insert into libro values('64','PYS-0064', 'MANUAL DE VISUAL BASIC 4 PARA WINDOWS 93', 'MC GRAW-HILL', 'GARY CORNELL', 'SISTEMAS' );
insert into libro values('65','PYS-0065', 'MANUAL DE VISUAL BASIC 4 PARA WINDOWS 94', 'MC GRAW-HILL', 'GARY CORNELL', 'SISTEMAS' );
insert into libro values('66','PYS-0066', 'MANUAL DE VISUAL BASIC 4 PARA WINDOWS 95 ', 'MC GRAW-HILL', 'GARY CORNELL', 'SISTEMAS' );
insert into libro values('67','PYS-0067', 'METODOS NUMERICOS PARA INGENIEROS CON APLICACIONES EN COMPUTADORAS PERSONALES ', 'MC GRAW-HILL', 'STEVEN  C. CHOPRA - RAYMOND P. ', 'SISTEMAS' );
insert into libro values('70','PYS-0070', 'ENCICLOPEDIA DE INFORMATICA Y COMPUTACION HARDWARE', 'C', 'ANTONIO LOPEZ', 'SISTEMAS' );
insert into libro values('73','PYS-0073', 'ENCICLOPEDIA DE INFORMATICA Y COMPUTACION INGENIERIA DEL SOFTWARE E INTELIGENCIA ARTIFICIAL', 'C', 'ANTONIO LOPEZ', 'SISTEMAS' );
insert into libro values('77','PYS-0077', 'ENCICLOPEDIA DE INFORMATICA Y COMPUTACION MULTIMEDIA', 'C', 'ANTONIO LOPEZ', 'SISTEMAS' );
insert into libro values('80','PYS-0080', 'ENCICLOPEDIA DE INFORMATICA Y COMPUTACION OFMATICA', 'C', 'ANTONIO LOPEZ', 'SISTEMAS' );
insert into libro values('84','PYS-0084', 'ENCICLOPEDIA DE INFORMATICA Y COMPUTACION SOFTWARE', 'C', 'ANTONIO LOPEZ', 'SISTEMAS' );
insert into libro values('88','PYS-0088', 'ENCICLOPEDIA DE INFORMATICA Y COMPUTACION TELEINFORMATICA', 'C', 'ANTONIO LOPEZ', 'SISTEMAS' );
insert into libro values('92','PYS-0092', 'EL LIBRO DE INTERNET', 'PHH', 'DOUGLAS E. COMER ', 'SISTEMAS' );
insert into libro values('95','PYS-0095', 'ENCICLOPEDIA AUDIOVISUAL DE COMPUTACION', 'SIN ESTABLECER', '', 'SISTEMAS' );
insert into libro values('99','PYS-0099', 'INTRODUCCION A LA COMPUTACION ', 'MC GRAW-HILL', 'PETER NORTON ', 'SISTEMAS' );
insert into libro values('102','PYS-0102', 'LAN TIMES - GUIA DE REDES DE ALTA VELOCIDAD', 'MC GRAW-HILL', 'TERE PARNELL', 'SISTEMAS' );
insert into libro values('106','PYS-0106', 'LAN TIMES- GUIA DE REDES MULTIMEDIA', 'MC GRAW-HILL', 'NANCY COX', 'SISTEMAS' );
insert into libro values('110','PYS-0110', 'VISUAL FOXPRO 3 PARA WINDOWS PASO A PASO', 'MC GRAW-HILL', 'JOSE DOMINGUEZ ALCONCHEL', 'SISTEMAS' );
insert into libro values('112','PYS-0112', 'WINDOWS 95 A SU ALCANCE ', 'MC GRAW-HILL', 'JOSE A. RAMALHO', 'SISTEMAS' );
insert into libro values('115','PYS-0115', 'INTRODUCCION A LOS SISTEMAS OPERATIVOS', 'MC GRAW-HILL', 'E. ALCALDE / J MORENA', 'SISTEMAS' );
insert into libro values('120','PYS-0120', 'LA ESENCIA DE VISUAL BASIC 4', 'PHH', 'MARK STEVEN HEYMAN', 'SISTEMAS' );
insert into libro values('123','PYS-0123', 'NOVELL NETWARE INSTALACIÓN CONFIGURACIÓN Y ADMINISTRACIÓN ', 'RAMA', 'JOSE LUIS RAYA ', 'SISTEMAS' );
insert into libro values('127','PYS-0127', 'LA MAGIA DE INTERNET', 'MC GRAW-HILL', 'ALLEN  L. WYANTT', 'SISTEMAS' );
insert into libro values('131','PYS-0131', 'MANUAL PARA REPARAR Y MEJORAR COMPUTADORAS PERSONALES', 'PHH', 'SCOTT MUELLER', 'SISTEMAS' );
insert into libro values('135','PYS-0135', 'VISUAL BASIC 5 EN 21 DIAS', 'PHH', 'A. SIMON', 'SISTEMAS' );
insert into libro values('136','PYS-0136', '', 'SIN ESTABLECER', '', 'SISTEMAS' );
insert into libro values('137','PYS-0137', 'ESTRUCTURAS DE DATOS Y ALGORITMOS', 'WEISS', 'MARK ALLEN WEISS', 'SISTEMAS' );
insert into libro values('138','PYS-0138', 'ESTRUCTURAS DE DATOS ', 'MC GRAW-HILL', 'CAIRO/ GUARDATI', 'SISTEMAS' );
insert into libro values('139','PYS-0139', 'HARVARD GRAPHICS 3.0 A SU ALCANCE', 'MC GRAW-HILL', 'MARY CAMPBELL', 'SISTEMAS' );
insert into libro values('140','PYS-0140', 'METODOS ORIENTADOS A OBJETOS ', 'ADDISON- WESLEY', 'IAN GRAHAM', 'SISTEMAS' );
insert into libro values('142','PYS-0142', 'INFORMATICA PASO A PASO WINDOWS 6', 'REI', 'JAIRO CAMACHO', 'SISTEMAS' );
insert into libro values('144','PYS-0144', 'MANUAL DEL PROGRAMADOR  TOMO  1- Y TOMO 1', 'PHH', 'SINGELMANN', 'SISTEMAS' );
insert into libro values('145','PYS-0145', 'MANUAL DEL PROGRAMADOR  TOMO  1- Y TOMO 2', 'PHH', 'SINGELMANN', 'SISTEMAS' );
insert into libro values('146','PYS-0146', 'MICROSOFT VISUAL BASIC 6.0 PARA PRINCIPIANTES ', 'SIN ESTABLECER', 'JAVIER  GARCIA ', 'SISTEMAS' );
insert into libro values('147','PYS-0147', 'WINDOWS 3.1 MANUAL DE BOLSILLO', 'MC GRAW-HILL', 'ALLEN  L. WYANTT', 'SISTEMAS' );
insert into libro values('149','PYS-0149', 'DOS 6.22 MANUAL DE BOLSILLO ', 'MC GRAW-HILL', 'KRIS  JAMSA', 'SISTEMAS' );
insert into libro values('150','PYS-0150', 'FOX PRO 2.6 MANUAL DE BOLSILLO ', 'MC GRAW-HILL', 'TIZNADO', 'SISTEMAS' );
insert into libro values('152','PYS-0152', 'MICROSOFT WORD 6 PARA WINDOWS MANUAL DE BOLSILLO', 'MC GRAW-HILL', 'DEBORAH CRAIG', 'SISTEMAS' );
insert into libro values('154','PYS-0154', 'WORD PERFECT PARA WINDOWS - MANUAL DE BOLSILLO ', 'MC GRAW-HILL', 'PATRICIA  SHEPARD', 'SISTEMAS' );
insert into libro values('156','PYS-0156', 'MICROSOFT C/C ++7 MANUAL DE BOLSILLO', 'MC GRAW-HILL', 'LUIS JOYANES', 'SISTEMAS' );
insert into libro values('158','PYS-0158', 'POWER POINT 4.0 MANUAL DE BOLSILLO', 'MC GRAW-HILL', 'TIZNADO', 'SISTEMAS' );
insert into libro values('159','PYS-0159', 'EXCEL 5 PARA WINDOWS MANUAL DE BOLSILLO', 'MC GRAW-HILL', 'JEFF WOODWARD', 'SISTEMAS' );
insert into libro values('160','PYS-0160', 'NUEVA ENCICLOPEDIA DE LA MICRO COMPUTACION TEORIA PRACTICA TOMO 1', 'ZE', 'GABOR LOERINCS', 'SISTEMAS' );
insert into libro values('161','PYS-0161', 'NUEVA ENCICLOPEDIA DE LA MICRO COMPUTACION TEORIA PRACTICA TOMO 2', 'ZE', 'GABOR LOERINCS', 'SISTEMAS' );
insert into libro values('162','PYS-0162', 'NUEVA ENCICLOPEDIA DE LA MICRO COMPUTACION TEORIA PRACTICA TOMO 3', 'ZE', 'GABOR LOERINCS', 'SISTEMAS' );
insert into libro values('163','PYS-0163', 'NUEVA ENCICLOPEDIA DE LA MICRO COMPUTACION TEORIA PRACTICA TOMO 4', 'ZE', 'GABOR LOERINCS', 'SISTEMAS' );
insert into libro values('164','PYS-0164', 'NUEVA ENCICLOPEDIA DE LA MICRO COMPUTACION TEORIA PRACTICA TOMO 5', 'ZE', 'GABOR LOERINCS', 'SISTEMAS' );
insert into libro values('165','PYS-0165', 'MICROSOFT FOX PRO PARA WINDOWS VERSION 2.5', 'MC GRAW-HILL', 'CATA PULT, INC.', 'SISTEMAS' );
insert into libro values('169','PYS-0169', 'MICROSOFT MS-DOS', 'MC GRAW-HILL', 'PABLO SANCHEZ RODRIGUEZ', 'SISTEMAS' );
insert into libro values('179','PYS-0179', 'MICROSOFT WINDOWS 95 PASO PASO', 'MC GRAW-HILL', 'ANTONIO LIROLA TERREZ', 'SISTEMAS' );
insert into libro values('182','PYS-0182', 'MULTIMEDIA PARA TODOS', 'PHH', 'RON WODASKI', 'SISTEMAS' );
insert into libro values('185','PYS-0185', 'WORLD WIDE WEB MANUAL DE REFERENCIA', 'MC GRAW-HILL', 'RICK STOUT', 'SISTEMAS' );
insert into libro values('189','PYS-0189', 'INTRODUCCION A LA PROGRAMACION ORIENTADA A OBJETOS ', 'ADDISON- WESLEY', 'TIMOTHY BUDD', 'SISTEMAS' );
insert into libro values('191','PYS-0191', 'INGENIERIA DE SOFTWARE UN ENFOQUE PRACTICO. TERCERA EDICION', 'ADDISON- WESLEY         MC GRAW HILL', 'D.C INCE ROGER S. PRESSMAN', 'SISTEMAS' );
insert into libro values('192','PYS-0192', 'HERRAMIENTAS MICROINFORMATICAS PARA LA EMPRESA', 'ESADE', 'FRANCESC MIRALLES TORNER', 'SISTEMAS' );
insert into libro values('200','PYS-0200', 'REDES DE AREA LOCAL(LAN)', 'PHH', 'NEIL JENKINS Y STAN SHATT', 'SISTEMAS' );
insert into libro values('203','PYS-0203', 'SISTEMAS OPERATIVOS DISTRIBUIDOS', 'PHH', 'ANDREW S. TANENBAUM', 'SISTEMAS' );
insert into libro values('206','PYS-0206', 'FUNDAMENTOS DE PROGRAMACION ALGORITMOS Y ESTRUCTURAS DE DATOS', 'MC GRAW-HILL', 'LOUI S JOYANES AGUILAR', 'SISTEMAS' );
insert into libro values('209','PYS-0209', 'TODO EL PODER DE MULTIMEDIA ', 'MC GRAW-HILL', 'OSBOR NE ', 'SISTEMAS' );
insert into libro values('213','PYS-0213', 'MANUAL DEL USUARIO ', 'ACER', 'ACER', 'SISTEMAS' );
insert into libro values('214','PYS-0214', 'TODO LO QUE QUISO SABER DE EXCEL Y NO SE ATREVIO A PREGUNTAR', 'MC GRAW-HILL', 'JOSE ANTONIO ECHENIQUE - STEPHAN RECHTSCHAFFER - MARY CAMBELL', 'SISTEMAS' );
insert into libro values('217','PYS-0217', 'PAQUETE CONTABLE DE MONICA   VERSIÓN 4.00', 'SIN ESTABLECER', '', 'SISTEMAS' );
insert into libro values('218','PYS-0218', 'PAQUETE CONTABLE DE MONICA   VERSIÓN 4.01', 'SIN ESTABLECER', '', 'SISTEMAS' );
insert into libro values('219','PYS-0219', 'CONSTRUYA SU PROPIO WEB', 'MC GRAW-HILL', 'LOUIS KAHN', 'SISTEMAS' );
insert into libro values('223','PYS-0223', 'ANALISIS Y DISEÑO ORIENTADO A OBJETOS  CON APLICACIONES', 'ADDISON- WESLEY', 'GRADY BOOCH', 'SISTEMAS' );
insert into libro values('225','PYS-0225', 'ANALISIS Y DISEÑO DE SISTEMAS DE INFORMACION ', 'MC GRAW-HILL', 'JAMES A. SENN', 'SISTEMAS' );
insert into libro values('227','PYS-0227', 'POWER POINT PARA WINDOWS 95 VISUAL', 'PHH', 'ELIZABETH EISNER REDING', 'SISTEMAS' );
insert into libro values('230','PYS-0230', 'C++ MANUAL DE REFERENCIA ', 'MC GRAW-HILL', 'HERBERT SCHILDT', 'SISTEMAS' );
insert into libro values('231','PYS-0231', 'PROGRAMACION AVANZADA CON VISUAL BASIC', 'MC GRAW-HILL', 'BRUCE MC KINNEY', 'SISTEMAS' );
insert into libro values('235','PYS-0235', 'COMUNICACIONES Y REDES DE COMPUTADORES', 'PEARSON', 'WILLIAM STALLIGS', 'SISTEMAS' );
insert into libro values('239','PYS-0239', 'EL LENGUAJE DE PROGRAMACION JAVA', 'ADDISON- WESLEY', 'KEN ARNOLD ', 'SISTEMAS' );
insert into libro values('241','PYS-0241', 'DICCIONARIO DE MULTIMEDIA', 'MC GRAW-HILL', 'S.M.H.COLLIN', 'SISTEMAS' );
insert into libro values('244','PYS-0244', 'HARVARD GRAPHICS 3', 'PHH', 'STEPHEN W. SAGMAN', 'SISTEMAS' );
insert into libro values('245','PYS-0245', 'ACCES 2002 MACROS Y VISUAL  BASIC  PARA APLICACIONES ', 'MC GRAW-HILL', 'EVAN COLLAJAN', 'SISTEMAS' );
insert into libro values('246','PYS-0246', 'INGENIERIA DE SOFTWARE', 'ADDISON- WESLEY         MC GRAW HILL', 'D.C INCE                                        ROGER S. PRESSMAN', 'SISTEMAS' );
insert into libro values('248','PYS-0248', 'DICCIONARIO DE COMPUTACION BILINGUE  ( X 3T)', 'MC GRAW-HILL', 'ALAN FREEDMAN', 'SISTEMAS' );
insert into libro values('257','PYS-0257', 'PASCAL Y TURBO PASCAL UN ENFOQUE PRACTICO ', 'MC GRAW-HILL', 'LUIS JOYANES', 'SISTEMAS' );
insert into libro values('258','PYS-0258', 'EL PROYECTO FIN DE CARRERA EN INGENIERÍA INFORMÁTICA', 'PEARSON', 'DAWSON', 'SISTEMAS' );
insert into libro values('259','PYS-0259', 'Introducción a la Informática con Microsoft Office XP ', 'PEARSON', 'GRAUER', 'SISTEMAS' );
insert into libro values('260','PYS-0260', 'INGENIERIA DE SOFTWARE: TEORIA Y PRACTICA                  ', 'PEARSON', 'PFLEEGER', 'SISTEMAS' );
insert into libro values('261','PYS-0261', 'INTRODUCCIÓN A LA INFORMÁTICA. Manual impres', 'ANAYA', 'ZOE', 'SISTEMAS' );
insert into libro values('262','PYS-0262', 'INGENIERÍA DE SOFTWARE, 7/ED.', 'PEARSON', 'SOMMERVILLE', 'SISTEMAS' );
insert into libro values('263','PYS-0263', 'ANÁLISIS Y DISEÑO DE SISTEMAS, 6/ED.', 'PEARSON', 'KENDALL', 'SISTEMAS' );
insert into libro values('264','PYS-0264', 'COMPUTACIÓN Y PROGRAMACIÓN MODERNA:', 'PEARSON', 'LEVINE', 'SISTEMAS' );
insert into libro values('265','PYS-0265', 'PRINCIPIOS DE ARQUITECTURA DE COMPUTADORAS', 'PEARSON', 'MURDOCCA', 'SISTEMAS' );
insert into libro values('266','PYS-0266', 'ARQUITECTURA DE COMPUTADORAS', 'MC GRAW-HILL', 'PARHAMI', 'SISTEMAS' );
insert into libro values('267','PYS-0267', 'SISTEMAS DISTRIBUIDOS: CONCEPTOS Y DISEÑOS', 'PEARSON', 'COULOURIS', 'SISTEMAS' );
insert into libro values('269','PYS-0269', 'EVALUACIÓN  Y MODELADO DEL RENDIMIENTO DE LOS SISTEMAS INFORMATICOS', 'PEARSON', 'MOLERO', 'SISTEMAS' );
insert into libro values('270','PYS-0270', 'WINDOWS SERVER 2008. GUÍA Práctica. Ed. 2008', 'ANAYA', 'CHARTE', 'SISTEMAS' );
insert into libro values('271','PYS-0271', 'COMUNICACIONES Y REDES DE COMPUTADORES', 'PEARSON', 'MAGAÑA', 'SISTEMAS' );
insert into libro values('272','PYS-0272', 'TCP/IP para windows 1999 server', 'PEARSON', 'JOHN RAY', 'SISTEMAS' );
insert into libro values('273','PYS-0273', 'JAVASCRIPT. La Guía Definitiva. Ed. 2007                                                                ', 'ANAYA', 'FLANAGAN', 'SISTEMAS' );
insert into libro values('274','PYS-0274', 'CRYSTAL REPORTS 8. MANUAL DE REFERENCIA.', 'MC GRAW-HILL', 'PECK', 'SISTEMAS' );
insert into libro values('275','PYS-0275', 'ORACLE 9I MANUAL DE REFERENCIA + CD', 'MC GRAW-HILL', 'LONEY', 'SISTEMAS' );
insert into libro values('276','PYS-0276', 'REDES DE AREA LOCAL', 'ALFAOMEGA', 'MOLINA', 'SISTEMAS' );
insert into libro values('277','PYS-0277', 'DOMINE HTML y DHTML. 2ª EDICION', 'ALFAOMEGA', 'JOSE LOPEZ', 'SISTEMAS' );
insert into libro values('278','PYS-0278', 'INGENIERÍA DE SOFTWARE ORIENTADO A OBJETOS          ', 'PEARSON', 'BRUEGGE', 'SISTEMAS' );
insert into libro values('279','PYS-0279', 'METODOLOGIA DE LA PROGRAMACION', 'ALFAOMEGA', 'CAIRO', 'SISTEMAS' );
insert into libro values('281','PYS-0281', 'EL PROCESO UNIFICADO DE DESARROLLO DE SOFTWARE', 'PEARSON', 'JACOBSON', 'SISTEMAS' );
insert into libro values('282','PYS-0282', 'PROGRAMACION EN C++ 2 ED. ALGORITMOS, ESTRUCTURAS DE DATOS Y OBJETOS', 'MC GRAW-HILL', 'JOYANES', 'SISTEMAS' );
insert into libro values('283','PYS-0283', 'PROGRAMMING WITH C + +', 'MC GRAW-HILL', 'Ph.D. J.R. HUBBARD', 'SISTEMAS' );
insert into libro values('284','PYS-0284', 'EXCEL 2007. ', 'MC GRAW-HILL', 'G.H. DAVIS', 'SISTEMAS' );
insert into libro values('285','PYS-0285', 'UNIX. Guía Práctica. Ed. 2004', 'ANAYA', 'PALACIOS', 'SISTEMAS' );
insert into libro values('286','PYS-0286', 'PROGRAMACIÓN CON MS ACCES 2002 MACROS Y VISUAL BASIC', 'MC GRAW-HILL', 'CALLAHAN', 'SISTEMAS' );
insert into libro values('287','PYS-0287', 'ACCESS 2007. MANUAL IMPRESCINDIBLE', 'ANAYA', 'CASAS', 'SISTEMAS' );
insert into libro values('288','PYS-0288', 'DELPHI 8. NET. LA BIBLIA. INCLUYE CD-ROM.', 'ANAYA', 'CHARTE', 'SISTEMAS' );
insert into libro values('289','PYS-0289', 'OFFICE XP VERSION 2002. LA BIBLIA. Incluye CD-ROM.', 'ANAYA', 'COURTER', 'SISTEMAS' );
insert into libro values('290','PYS-0290', 'INTRODUCCIÓN AL PROCESO DE SOFTWARE PERSONAL', 'PEARSON', 'HUMPHREY', 'SISTEMAS' );
insert into libro values('291','PYS-0291', 'MICROSOFT WORD VERSION 2002 ', 'MC GRAW-HILL', 'JOYCE', 'SISTEMAS' );
insert into libro values('292','PYS-0292', 'ACROBAT 8. Guía Práctica. Ed. 2008', 'ANAYA', 'BARAJAS', 'SISTEMAS' );
insert into libro values('294','PYS-0294', 'PROJECT 2007. Paso a paso. Incluye CD-ROM.', 'MC GRAW-HILL', 'MARMEL', 'SISTEMAS' );
insert into libro values('295','PYS-0295', 'WINDOWS XP. HOME EDITION. Manual Imprescindible', 'MC GRAW-HILL', 'ONLINE', 'SISTEMAS' );
insert into libro values('297','PYS-0297', 'OUTLOOK 2007. Paso a paso. Incluye CD-ROM', 'ANAYA', 'PREPPERNAU', 'SISTEMAS' );
insert into libro values('298','PYS-0298', 'EXCHANGE SERVER 2007. Guía del Administrador', 'ANAYA', 'STANEK', 'SISTEMAS' );
insert into libro values('299','PYS-0299', 'PIRATAS CIBERNETICOS', 'ALFAOMEGA', 'RODAO', 'SISTEMAS' );
insert into libro values('300','PYS-0300', 'FUNDAMENTOS DE SEGURIDAD EN REDES:', 'PEARSON', 'STALLINGS', 'SISTEMAS' );
insert into libro values('302','PYS-0302', 'SEGURIDAD DE REDES', 'ANAYA', 'McNAB', 'SISTEMAS' );
insert into libro values('303','PYS-0303', 'ESTRUCTURAS DE DATOS Y ALGORITMOS', 'PEARSON', 'AHO', 'SISTEMAS' );
insert into libro values('304','PYS-0304', 'VISUAL BASIC 2008.  Ed. 2008', 'ANAYA', 'CHARTE', 'SISTEMAS' );
insert into libro values('305','PYS-0305', 'WINDOWS SERVER 2008. Manual Avanzado. Ed. 2008', 'MC GRAW-HILL', 'RUEST', 'SISTEMAS' );
insert into libro values('306','PYS-0306', 'MANUAL DE ADMINISTRACION DE LINUX', 'MC GRAW-HILL', 'STEVE SHAH', 'SISTEMAS' );
insert into libro values('307','PYS-0307', 'SISTEMAS OPERATIVOS, 5/ED.', 'PEARSON', 'STALLINGS', 'SISTEMAS' );
insert into libro values('308','PYS-0308', 'SISTEMAS DISTRIBUIDOS 2/ED', 'PEARSON', 'TANENBAUM', 'SISTEMAS' );
insert into libro values('309','PYS-0309', 'COMPILADORES E INTÉRPRETES:  TEORÍA Y PRÁC.', 'PEARSON', 'ALFONSECA', 'SISTEMAS' );
insert into libro values('310','PYS-0310', 'DREAMWEAVER CS3. Manual Imprescindible. Ed. 2008                                                                               ', 'ALFAOMEGA', 'OROS', 'SISTEMAS' );
insert into libro values('311','PYS-0311', 'FRONTPAGE 2003. Guías visuales. Ed. 2004', 'ANAYA', 'GÓMEZ', 'SISTEMAS' );
insert into libro values('312','PYS-0312', 'DISEÑO Y ACTUALIZACION DE SITIOS WEB', 'ANAYA', 'LOWERY', 'SISTEMAS' );
insert into libro values('313','PYS-0313', 'DISEÑO WEB CON FLASH. DISEÑO Y CREATIVIDAD ', 'ANAYA', 'WILLIAMS', 'SISTEMAS' );
insert into libro values('314','PYS-0314', 'JAVASCRIPT. MANUAL IMPRESCINDIBLE. ED. 2006', 'ANAYA', 'KEOGH,', 'SISTEMAS' );
insert into libro values('315','PYS-0315', 'DOMINE JAVASCRIPT 2ª EDICION', 'ALFAOMEGA', 'JOSE LOPEZ', 'SISTEMAS' );
insert into libro values('316','PYS-0316', 'FIREWORKS 8. El libro oficial. Incluye CD-ROM.', 'ANAYA', 'SCHULZE', 'SISTEMAS' );
insert into libro values('317','PYS-0317', 'DREAMWEAVER 8. Manual Imprescindible. Ed. 2007', 'ALFAOMEGA', 'PEREZ', 'SISTEMAS' );
insert into libro values('318','PYS-0318', 'ALGORITMOS. ESTRUCTURAS DE DATOS Y P.O.O', 'ECOEEDICIONES', 'FLOREZ', 'SISTEMAS' );
insert into libro values('319','PYS-0319', 'PROGRAMACIÓN DE BASES DE DATOS CON VISUAL', 'ANAYA', 'CHARTE', 'SISTEMAS' );
insert into libro values('320','PYS-0320', 'SISTEMAS DE BASES DE DATOS, UN ENFOQUE', 'PEARSON', 'CONNOLLY', 'SISTEMAS' );
insert into libro values('321','PYS-0321', 'SQL SERVER 2005. Training Kit. MCITS. Exa 70-443', 'ANAYA', 'THOMAS', 'SISTEMAS' );
insert into libro values('322','PYS-0322', 'ORACLE 8i BACKUP & RECOVERY HANDBOOK', 'ORACLE', 'VELPURI', 'SISTEMAS' );
insert into libro values('323','PYS-0323', 'INTERCONECTIVIDAD DE REDES CON TCP/IP VOL. II', 'PEARSON', 'COMER', 'SISTEMAS' );
insert into libro values('324','PYS-0324', 'PROGRAMACIÓN JAVA SERVER CON J2EE EDICIÓN 1.3', 'ANAYA', 'ALLAMARUJO', 'SISTEMAS' );
insert into libro values('325','PYS-0325', 'VISUAL BASIC 2005. El libro de. Microsoft. Ed. 2007', 'ANAYA', 'FOXALL,', 'SISTEMAS' );
insert into libro values('326','PYS-0326', 'APRENDA YA VISUAL BASIC 2005', 'MC GRAW-HILL', 'HALVORSON', 'SISTEMAS' );
insert into libro values('327','PYS-0327', '3ds MAX 2008. GUÍA Práctica. Ed. 2009', 'ANAYA', 'PLAZA MEDINA, David', 'SISTEMAS' );
insert into libro values('329','PYS-0329', 'VISUAL C++ .NET. Guía Práctica. Ed. 2003', 'ANAYA', 'JIMÉNEZ ', 'SISTEMAS' );
insert into libro values('330','PYS-0330', 'CÓMO PROGRAMAR EN C++, 6/ED., INCLUYE CD', 'PEARSON', 'DEITEL', 'SISTEMAS' );
insert into libro values('331','PYS-0331', 'INTRODUCCION A LA PROGRAMACION ORIENTADA A OBJETOS', 'MC GRAW-HILL', 'THOMAS WU', 'SISTEMAS' );
insert into libro values('332','PYS-0332', 'JAVA CÓMO PROGRAMAR, 7/ED., INCLUYE CD', 'PEARSON', 'DEITEL', 'SISTEMAS' );
insert into libro values('333','PYS-0333', 'JAVA JDK6', 'ANAYA', 'RICHARDSON ', 'SISTEMAS' );
insert into libro values('334','PYS-0334', 'CORELDRAW 12. El libro oficial. Ed. 2004', 'ANAYA', 'BAIN, ', 'SISTEMAS' );
insert into libro values('335','PYS-0335', 'METODOLOGÍA Y TECNOLOGÍA DE LA PROGRAMAC.', 'PEARSON', 'LAZA', 'SISTEMAS' );
insert into libro values('336','PYS-0336', 'VISUAL BASIC.NET LENGUAJE DE PROGRAMACION', 'ALFAOMEGA', 'CEBALLOS', 'SISTEMAS' );
insert into libro values('337','PYS-0337', 'CÓMO PROGRAMAR C#, 2/ED., INCLUYE CD/2007', 'PEARSON', 'DEITEL', 'SISTEMAS' );
insert into libro values('338','PYS-0338', 'DISEÑO ANIMADO INTERACTIVO EN 3D.', 'ANAYA', 'GAUTHIER,', 'SISTEMAS' );
insert into libro values('339','PYS-0339', 'CURSO DE JAVA', 'ANAYA', 'DARWIN', 'SISTEMAS' );
insert into libro values('340','PYS-0340', 'EL LENGUAJE DE PROGRAMACIÓN C++ ', 'PEARSON', 'STROUSTRUP', 'SISTEMAS' );
insert into libro values('341','PYS-0341', 'COMPUTACIÓN DISTRIBUIDA: FUNDAMENTOS ', 'PEARSON', 'LIU', 'SISTEMAS' );
insert into libro values('342','PYS-0342', 'CREACION DE UN PORTAL CON PHP Y MySQL 3E/07', 'ALFAOMEGA', 'PAVON', 'SISTEMAS' );
insert into libro values('343','PYS-0343', 'UML PARA PROGRAMADORES JAVA', 'PEARSON', 'MARTÍN', 'SISTEMAS' );
insert into libro values('344','PYS-0344', 'VISUAL BASIC .NET. Manual Imprescindible. Ed. 2005', 'ANAYA', 'SOM CEREZO', 'SISTEMAS' );
insert into libro values('345','PYS-0345', 'LENGUAJE ENSAMBLADOR: PARA COMPUTADORAS', 'PEARSON', 'IRVINE', 'SISTEMAS' );
insert into libro values('346','PYS-0346', 'ESTADÍSTICA APLICADA A TRAVES DE EXCEL, INCLUYE CD', 'PEARSON', 'PEREZ', 'SISTEMAS' );
insert into libro values('347','PYS-0347', 'EXCEL 2007. PROGRAMACIÓN CON VBA', 'ANAYA', 'WALKENBACH', 'SISTEMAS' );
insert into libro values('348','PYS-0348', 'DISEÑO DE PAG. WEB CON XHTML, JAVASCRIPT Y CSS', 'ALFAOMEGA', 'OROS', 'SISTEMAS' );
insert into libro values('349','PYS-0349', 'DISEÑO DE PAGINAS WEB CON XHTML, JAVA SCRIPT Y CSS', 'ALFAOMEGA', 'OROS', 'SISTEMAS' );
insert into libro values('350','PYS-0350', 'INTERNET EXPLORER 6. Edición especial.', 'ALFAOMEGA', 'PASCUAL', 'SISTEMAS' );
insert into libro values('351','PYS-0351', 'BASES DE DATOS RELACIONALES', 'PEARSON', 'CELMA', 'SISTEMAS' );
insert into libro values('352','PYS-0352', 'RED HAT LINUX EL MANUAL DEL ADMINISTRADOR', 'MC GRAW-HILL', 'PETERSEN', 'SISTEMAS' );
insert into libro values('353','PYS-0353', 'PROGRAMACIÓN CON SQL SERVER 2005', 'MC GRAW-HILL', 'BRUST', 'SISTEMAS' );
insert into libro values('354','PYS-0354', 'APRENDA YA SQL SERVER 2005 TÉCNICAS APLICA.', 'MC GRAW-HILL', 'SOLID QUAL.', 'SISTEMAS' );
insert into libro values('356','PYS-0356', 'MICROSOFT SQL SERVER 2005', 'ALFAOMEGA', 'PEREZ', 'SISTEMAS' );
insert into libro values('357','PYS-0357', 'ORACLE 10g, ADMININISTRACION Y ANALISIS BASES', 'ORACLE', 'LONEY', 'SISTEMAS' );
insert into libro values('358','PYS-0358', 'REDES DE NEURONAS ARTIFICIALES', 'PEARSON', 'ISASI', 'SISTEMAS' );
insert into libro values('360','PYS-0360', 'REDES NEURONALES: CONCEPTOS FUNDAME.', 'PEARSON', 'SÁNCHEZ', 'SISTEMAS' );
insert into libro values('361','PYS-0361', 'INTELIGENCIA ARTIFICIAL, 2/ED.', 'PEARSON', 'RUSSELL', 'SISTEMAS' );
insert into libro values('362','PYS-0362', 'PHOTOSHOP CS3. DISEÑO Y CREATIVIDAD', 'ANAYA', 'ADOBE PRES', 'SISTEMAS' );
insert into libro values('363','PYS-0363', 'FLASH 8. El Libro Oficial. Incluye CD-ROM. Ed. 2006', 'ANAYA', 'ENGLISH', 'SISTEMAS' );
insert into libro values('364','PYS-0364', 'FLASH 8. BASIC Y PROFESSIONAL. CURSO PRACTIC.', 'ALFAOMEGA', 'OROS', 'SISTEMAS' );
insert into libro values('365','PYS-0365', 'INFORMACIÓN MULTIMEDIA: SOPORTES, LENGUAJE', 'PEARSON', 'CEBRIAN', 'SISTEMAS' );
insert into libro values('366','PYS-0366', 'PHOTOSHOP CS3. CURSO AVANZADO. Incluye DVD', 'ALFAOMEGA', 'E. CORDOBA', 'SISTEMAS' );
insert into libro values('367','PYS-0367', 'PHOTOSHOP CS3. CURSO COMPLETO', 'ALFAOMEGA', 'E. CORDOBA', 'SISTEMAS' );
insert into libro values('368','PYS-0368', 'DIRECTOR 8 PARA WINDOWS Y MACINTOSH', 'PEARSON', 'PERSIDSKY', 'SISTEMAS' );
insert into libro values('369','PYS-0369', 'CREACIÓN Y MODELADO DE PERSONAJES 3D', 'ANAYA', 'KOENIGSMARCK', 'SISTEMAS' );
insert into libro values('370','PYS-0370', 'COMUNICACIONES INALAMBRICAS DE BANDA ANCHA', 'MC GRAW-HILL', 'BATES', 'SISTEMAS' );
insert into libro values('371','PYS-0371', 'ACTUALIZACIÓN Y MANTENIMIENTO DEL PC.', 'ANAYA', 'SÁNCHEZ', 'SISTEMAS' );
insert into libro values('372','PYS-0372', 'DISEÑO DIGITAL. PRINCIPIOS Y PRACTICAS', 'PEARSON', 'WAKERLY', 'SISTEMAS' );
insert into libro values('373','PYS-0373', 'ORGANIZACIÓN Y ARQUITECTURA DE COMPUTADORES', 'PEARSON', 'STALLINGS', 'SISTEMAS' );
insert into libro values('374','PYS-0374', 'WIRELESS COMMUNICATIONS & NETWORKS', 'PEARSON', 'STALLINGS', 'SISTEMAS' );
insert into libro values('375','PYS-0375', 'COMUNICACIONES II  COMUNICACION DIGITAL Y RUIDO', 'LIMUSA', 'HERRERA', 'SISTEMAS' );
insert into libro values('376','PYS-0376', 'SISTEMAS DIGITALES: PRINCIPIOS Y APLICACIONES', 'PEARSON', 'TOCCI', 'SISTEMAS' );
insert into libro values('377','PYS-0377', 'TECNOLOGIAS EMERGENTES PARA REDES DE COMPUTADORAS', 'PEARSON', 'BLACK', 'SISTEMAS' );
insert into libro values('378','PYS-0378', 'FUNDAMENTOS DE DISEÑO LÓGICO Y DE COMPUTADORAS', 'PEARSON', 'MANO', 'SISTEMAS' );
insert into libro values('379','PYS-0379', 'SISTEMAS Y REDES ÓPTICAS DE COMUNICACIONES', 'PEARSON', 'MARTÍN', 'SISTEMAS' );
insert into libro values('380','PYS-0380', 'MI PC ACTUALIZACION, CONFIGURACION, MANTENIMIENTO Y REPARACION', 'ALFAOMEGA', 'MARTIN', 'SISTEMAS' );
insert into libro values('382','PYS-0382', 'INTRODUCCIÓN A LA TEORÍA DE AUTÓMATAS, LEN.', 'PEARSON', 'HOPCROFT', 'SISTEMAS' );
insert into libro values('383','PYS-0383', 'ROBÓTICA, 3/ED.', 'PEARSON', 'CRAIG', 'SISTEMAS' );
insert into libro values('384','PYS-0384', 'ROBÓTICA MANIPULADORES Y ROBOTS MOVILES', 'ALFAOMEGA', 'OLLERO', 'SISTEMAS' );
insert into libro values('385','PYS-0385', 'REDES LOCALES. Guía Práctica. Ed. 2008', 'ALFAOMEGA', 'RAYA', 'SISTEMAS' );
insert into libro values('386','PYS-0386', 'TELEOPERACIÓN Y TELERROBÓTICA', 'PEARSON', 'GÓMEZ', 'SISTEMAS' );
insert into libro values('387','PYS-0387', 'JAVASCRIPT Y DHTML', 'ANAYA', 'GOODMAN', 'SISTEMAS' );
insert into libro values('388','PYS-0388', 'TRANSMISIÓN DE DATOS Y REDES DE COMPUTAD.', 'PEARSON', 'GARCíA', 'SISTEMAS' );
insert into libro values('390','PYS-0390', 'CURSO DE LINUX', 'ANAYA', 'SCHRODER', 'SISTEMAS' );
insert into libro values('391','PYS-0391', 'SISTEMAS OPERATIVOS MODERNOS', 'PEARSON', 'TANENBAUM', 'SISTEMAS' );
insert into libro values('396','PYS-0396', 'ARQUITECTURA DE COMPUTADORAS', 'SIN ESTABLECER', 'CARLOS ARIEL CASTRO', 'SISTEMAS' );
insert into libro values('397','PYS-0397', 'EL MUNDO MODERNO Y CONTEMPORANEO, CUARTA EDICION ', 'MOCOA', 'GLORIA M. DELGADO', 'SISTEMAS' );
insert into libro values('398','PYS-0398', 'MAPAS GEOLOGICOS', 'PARANINFO', 'J.A. MARTINEZ ALVAREZ', 'SISTEMAS' );
insert into libro values('400','PYS-0400', 'POBLAMIENTO E HISTORIAS URBANAS DEL ALTO MAGDALENA TOLIMA', 'FONDO MIXTO', 'ANGELA INES GUZMAN ', 'SISTEMAS' );
insert into libro values('401','PYS-0401', 'ENCICLOPEDIA PRACTICA PLANETA     X 7 T', 'PLANETA', 'RAMON ALONSO', 'SISTEMAS' );
insert into libro values('406','PYS-0406', 'GRAN ENCICLOPEDIA DE LA CIENCIA Y DE LA TECNICA', 'OCEANO', 'CARLOS GISPERT', 'SISTEMAS' );
insert into libro values('420','PYS-0420', 'ACCES 2003 2002 Y 2000', 'ALFAOMEGA RA-MA', 'C. PEREZ', 'SISTEMAS' );
insert into libro values('421','PYS-0421', 'MySQL PARA WINDOWS Y LINUX', 'ALFAOMEGA RA-MA', 'C. PEREZ', 'SISTEMAS' );
insert into libro values('422','PYS-0422', 'DISEÑO DE BASES DE DATOS PROBLEMAS RESUELTOS', 'ALFAOMEGA RA-MA', 'A. de M. CASTAÑO', 'SISTEMAS' );
insert into libro values('423','PYS-0423', 'DOMINE MICROSOFT WINDOWS SERVER 2003', 'ALFAOMEGA RA-MA', 'J.L. RAYA', 'SISTEMAS' );
insert into libro values('424','PYS-0424', 'CORELDRAW 11. SUPER FACIL ', 'ALFAOMEGA RA-MA', 'E. CORDOBA', 'SISTEMAS' );
insert into libro values('425','PYS-0425', 'CURSO DE PROGRAMACION DE VISUAL BASIC 6', 'ALFAOMEGA RA-MA', 'F.J. CEBALLOS', 'SISTEMAS' );
insert into libro values('426','PYS-0426', 'WINDOWS NT 4', 'SAMS PUBLISHING', 'R. COWART´S ', 'SISTEMAS' );
insert into libro values('427','PYS-0427', 'QUICK BASIC AVANZADO ', 'MC GRAW-HILL', 'L. JOYANES', 'SISTEMAS' );
insert into libro values('428','PYS-0428', 'NOVELL NETWARE 4', 'MC GRAW-HILL', 'T. SHELDON', 'SISTEMAS' );
insert into libro values('429','PYS-0429', 'VISUAL FOXPRO 5 ', 'ALFAOMEGA RA-MA', 'R. IGLESIAS', 'SISTEMAS' );
insert into libro values('430','PYS-0430', 'A FONDO MICROSOFT VISUAL BASIC SCRIPT', 'MC GRAW-HILL', 'S. HILLIER', 'SISTEMAS' );
insert into libro values('431','PYS-0431', 'MACROMEDIA FLASH MX 2004', 'ALFAOMEGA RA-MA', 'J.L. OROS', 'SISTEMAS' );
insert into libro values('432','PYS-0432', 'MACROMEDIA FLASH 5 ', 'ALFAOMEGA RA-MA', 'J.L. OROS', 'SISTEMAS' );
insert into libro values('433','PYS-0433', 'DREAMWEAVER CS3', 'ALFAOMEGA RA-MA', 'JOSE L. OROS', 'SISTEMAS' );
insert into libro values('434','PYS-0434', 'DREAMWEAVER MX 2004 PHP Y MySQL', 'ALFAOMEGA RA-MA', 'C. PEREZ', 'SISTEMAS' );
insert into libro values('435','PYS-0435', 'DREAMWEAVER ULTRADEV 4. BASES DEDATOS EN LA WEB', 'ALFAOMEGA RA-MA', 'C. PEREZ', 'SISTEMAS' );
insert into libro values('436','PYS-0436', 'MACROMEDIA FLASH MX', 'SIN ESTABLECER', '', 'SISTEMAS' );
insert into libro values('437','PYS-0437', 'PROBLEMAS DE METODOLOGIA DE LA PROGRAMACION ', 'MC GRAW-HILL', 'L. JOYANES', 'SISTEMAS' );
insert into libro values('438','PYS-0438', 'BASIC AVANZADO. TRATAMIENTO Y DISEÑO DE ARCHIVOS', 'MC GRAW-HILL', 'L. JOYANES', 'SISTEMAS' );
insert into libro values('439','PYS-0439', 'ENCICLOPEDIA DE LA ELECTRONICA. INGENIERIA Y TECNICA 1', 'OCEANO CENTRUM', 'C. BELOVE', 'SISTEMAS' );
insert into libro values('440','PYS-0440', 'ENCICLOPEDIA DE LA ELECTRONICA. INGENIERIA Y TECNICA 2', 'OCEANO CENTRUM', 'C. BELOVE', 'SISTEMAS' );
insert into libro values('441','PYS-0441', 'ENCICLOPEDIA DE LA ELECTRONICA. INGENIERIA Y TECNICA 3', 'OCEANO CENTRUM', 'C. BELOVE', 'SISTEMAS' );
insert into libro values('442','PYS-0442', 'ENCICLOPEDIA DE LA ELECTRONICA. INGENIERIA Y TECNICA 4', 'OCEANO CENTRUM', 'C. BELOVE', 'SISTEMAS' );
insert into libro values('443','PYS-0443', 'ENCICLOPEDIA DE LA ELECTRONICA. INGENIERIA Y TECNICA 5', 'OCEANO CENTRUM', 'C. BELOVE', 'SISTEMAS' );
insert into libro values('444','PYS-0444', 'ENCICLOPEDIA DE LA ELECTRONICA. INGENIERIA Y TECNICA 6', 'OCEANO CENTRUM', 'C. BELOVE', 'SISTEMAS' );
insert into libro values('445','PYS-0445', 'ENCICLOPEDIA DE LA ELECTRONICA. INGENIERIA Y TECNICA 7', 'OCEANO CENTRUM', 'C. BELOVE', 'SISTEMAS' );
insert into libro values('446','PYS-0446', 'POWER POINT 2000', 'MC GRAW-HILL', 'M.A. TIZNADO', 'SISTEMAS' );
insert into libro values('447','PYS-0447', 'POWER POINT 97', 'MC GRAW-HILL', 'M.A. TIZNADO', 'SISTEMAS' );
insert into libro values('448','PYS-0448', 'DICCIONARIO MC GRAW HILL DE COMPUTACION T. 1', 'MC GRAW-HILL', 'S.P. PARKER', 'SISTEMAS' );
insert into libro values('449','PYS-0449', 'SISTEMAS BASICOS DE COMUNICACIONES ', 'ALFAOMEGA RA-MA', 'M.A. CASTRO', 'SISTEMAS' );
insert into libro values('450','PYS-0450', 'MICROSOFT WINDOWS 2000 PROFESSIONAL ', 'MICROSOFT', 'MICROSOFT', 'SISTEMAS' );
insert into libro values('451','PYS-0451', 'INTRODUCCION A MICROSOFT BACKOFFICE ', 'MICROSOFT', 'MICROSOFT', 'SISTEMAS' );
insert into libro values('452','PYS-0452', 'MICROSOFT FRONT PAGE 2000', 'PRENTICE HALL', 'C. VELOSO', 'SISTEMAS' );
insert into libro values('453','PYS-0453', 'INTRODUCCION A LAS REDES DE AREA LOCAL', 'MC GRAW-HILL', 'J.E. RODRIGUEZ', 'SISTEMAS' );


/*Table structure for table `prestamo` */

DROP TABLE IF EXISTS `prestamo`;

CREATE TABLE `prestamo` (
  `id_prestamo` int(11) NOT NULL AUTO_INCREMENT,
  `libro_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `fecha_prestamo` date NOT NULL,
  `fecha_devolucion` date NOT NULL,
  `devuelto` enum('SI','NO') NOT NULL,
  PRIMARY KEY (`id_prestamo`),
  KEY `fk_prestamo_libro` (`libro_id`),
  KEY `fk_prestamo_usuario` (`usuario_id`),
  CONSTRAINT `fk_prestamo_libro` FOREIGN KEY (`libro_id`) REFERENCES `libro` (`id_libro`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_prestamo_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `celular` varchar(12) NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862001','JAVIER ALEJANDRO','CATUCHE PEREZ','Alejitttooperezz@gmail.com','3204572326','cll 17A #8 -35');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862002','LIBARDO ANDRES','ARTEAGA CARVAJAL','r.dan23@hotmail.com','3212039076','BARRIO LAS ACACIAS');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862012','JULIAN ','PERDOMO MORALES','julianperdomo1995@gmail.com','3108063719','BRR SAN ANDRES');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862016','MARLY NERIETH','BENAVIDES RODRIGUEZ','marlii-laluu@hotmail.com','3208199754','B VENECIA');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862019','NELLY MARITZA','CASTRO JAMIOY','marylive-95@live.com','3204163719','SAN ANDRES');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862021','LIDA MARCELA','CALAPSU CHICANGANA','Machesiitac95@gmail.com','3138124064','LA UNION');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862026','EIDER ','DORADO SAMBONI','eiderdorado@gmail.com','3203052173','LA LOMA');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862029','JACKELINE ALEXANDRA','ROJAS DOMINGUEZ','jacke_91ja@outlook.com','3114723912','B/ OBRERO 1 ETAPA');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862039','JOHANN SEBASTIAN','SAAVEDRA VALLEJO','johann328@hotmail.com','3217058948','B/ ESMERALDA');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862049','LISSETH MARYURY','PERDOMO OTAYA','lissethmaryury@gmail.com','3138869993','B/LUIS CARLOS GALAN');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862054','JHON JAIRO','CORDOBA MARTINEZ','jhonjairo19-19@hotmail.com','3222825098','PINAYACO');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862055','MARIA YULEIDY','MERA PECILLO','juleidy_1995@hotmail.com','3223117760','BARRIO JOSE HOMERO');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862069','NATALY ','CUARAN ESTRADA','thacu95@hotmail.com','3214033454','CALLE 1#13-1');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862073','EIDER MAURICIO','GAVIRIA RIVERA','','4296105','');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862081','SAHIRA .','SALINAS CAMPO','ojos12312@gmail.com','3219348367','BARRIO SAN MIGUEL');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862086','JENNIFER VANNESA','URREA MACIAS','jenniferurreamacias@gmail.com ','3209934988','CALLE 9 NO. 13 ');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862088','WILSON HUVEYMAR','MUÑOZ TAPIA','wilsonmunoz2020@itp.edu.co','3202516486','SAN ANTONIO');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862091','SULY MILENA','DELGADO ROMERO','suki.0512@hotmail.com','3217130547','BARRIO PALERMO');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862098','BYRON HARLEYROBINSON','GARZON RODRIGUEZ','bayron_garzon@hotmail.com','3209506646','CRA. 7 NO. 1-31 MOCOA');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862102','HUGO ANDREI','GUERRERO ENRIQUEZ','golazoptelds-2013@hotmail.com ','3185047502','CIUDAD SOLAR');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862109','HAYVER JEFREY','CERON MAYA','jaiver.ceron95@gmail.com','3143553444','esmeralda');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862111','WILMER ','CASTRO CAICEDO','WILMELPAK312@HOTMAIL.COM','3213623313','BARRIO LOS ASAUCES');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862134','YOAHANA DANIELA','JOJOA CAICEDO','elac124@gmail.com','3202274812','BARRIO JOSE HOMERO');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862135','YENIT MILENA','LINARES JAMIOY','milena.3005@hotmail.com','3219291584','BARRIO OLIMPICO');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862138','DITOR ALDEMAR','YEPEZ REVELO','reveloditor@gmail.com','3138686714','BARRIO LOS SAUCES ');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862150','ALIX FERNANDA','SAMBONI ','alfesago@hotmail.com','3195270269','CALL 34 NRO 8-32');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862151','JULIETH FERNANDA','CARVAJAL ACOSTA','ferchita_tita@hotmail.com','3212199843','B/LAS AMERICAS');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862160','JULIAN HARLEY','QUENORAN GARCIA','julian.quenoran50@gmail.com','3133962518','CARRERA27CALLE11-11');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862161','JHOAN SEBASTIAN','TREJOS GUERRERO','sebaxtian1995@hotmail.com','3217092276','B/OBRERO ETAPA II');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862162','JUDITH ARGENY','DIAZ RODRIGUEZ','yudilip95@hotmail.com','3107796385','LAS AMERICAS ');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862171','BRYAN STEEVEN','BOTINA VALENCIA','steeven.masterr@gmail.com','3114940838','V/PEPINO');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862182','YINETH ANDREA','CIFUENTES GAVIRIA','yiangavy0122@gmail.com','3219188563','el diviso');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862183','ANGIE NATALY','BENAVIDES RODRIGUEZ','angie_7604@hotmail.com','3212268529','BARRIO LOS PINOS');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862188','JIMENA DEYANIRA','CISNEROS DIAZ','NAMEX1995@HOTMAIL.COM','3144408587','BARRIO LA ESMERALDA');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862200','CARLOS ANDRES','JACANAMEJOY JUAGIBIOY','andresjaca54@gmail.com','3112547918','Los alamos');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862206','HIDELBER ','CATUCHE BUESAQUILLO','Hidelber234@gmail.com','3502174158','Km 5.5Via pitalito vereda porvenir');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862207','JHON FREDY','DELGADO ZEMANATE','jhonfre1995d@gmail.com','3117978546','Las vegas ');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862209','JAIME ANDRES','CARLOSAMA MUÑOZ','carlosamaandres1@gmail.com','3123642806','CRR 20 - CALLE 14');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862217','JHON ALEXANDER','QUINTERO PARDO','','3134577391','B/MODELO');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862221','EMILY JULIETH','GONZALES CHINGAL','emily.27ok@hotmail.com','3138982796','B/PABLO SEXTO ALTO');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862222','DEYSI CAROLINA','DIAZ BORJA','karito1995diaz@gmail.com','3125903079','VEREDA LOS ANDES');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862225','JAIR FERNANDO','PANAMENO NARVAEZ','jair22fernando@gmail.com','3106265724','CALLE 15 NO.20-22');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862227','KEVIN DAVID','ZAMBRANO ACOSTA','davichozambrano95@gmail.com','3106808291','VDA LAS PLANADAS');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862235','ANDERSSON JUVENAL','HERMOSA JAMIOY','anderson-695@hotmail.com','3142742336','VIA PASTO');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862245','JUAN PABLO','PEJENDINO4 DIAZ',NULL,NULL,NULL);
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862259','DAYRA MAYERLI','ROSERO APRAEZ','dairar80@gmail.com','3214165098','V/RUMIYACO');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862267','EDINSON JOSE','MENESES DIAZ','edison.jm26@gmail.com','3106658317','1 DE ENERO');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862272','ASTRID CAMILA','ZAMUDIO OBANDO','CAMILAZAO@HOTMAIL.COM','3219140342',NULL);
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862273','ANDRES FELIPE','ORTEGA MADROÑERO','andresrx122@gmail.com','3173829914','CARRERA 10 1A-05');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862284','MARIA ALEJANDRA','LEYTON BURBANO','Alejandra199500@hotmail.com ','3224758707','BARRIO MIRAFLORES');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862300','LUIS ALFREDO','TORO ORTEGA','luistoro153@gmail.com','3125704755','8A19');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862301','JESSY JOHANA','HUACA RUIZ','','4296105','');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862302','DUVAN FELIPE','MORA MORA','felipemoram1995@gmail.com','3202893335','JOSE HOMERO BAJO');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862304','JESUS ALBERTO','LONDOÑO MUÑOZ',NULL,NULL,NULL);
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862307','ANGIE PAOLA','LEITON ROSERO','Leytonp1995@gmail.com','3106915905','BARRIO CALIMA');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862314','BRAYAN ALEXEY','ROSERO ZAMBRANO','brayan.roserozam@gmail.com','3115837511','CRA 4#2-32');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862315','SANDRA PATRICIA','MANRIQUE GOMEZ','Sandra_m.g@hotmail.com','3108040319','SAN ANTONIO');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862321','JHON FIVER','CASTILLO CASANOVA','faiver_castillo@hotmail.com','3132321010','CLL 11A N 15 - 14');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862338','YESSIKA LISET','SIGINDIOY MITICANOY','ylsm95@gmail.com','3114459596','BARRIO EL CARMEN');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862343','KARLA ','JIMENEZ ARCINIEGAS','ayalaportilla@gmail.com','3155650867','URBANIZACION LOS CERROS CASA 2');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862345','MIRIAN ROXANA','HURTADO LEBAZA','mhurtadolebaza@gmail.com','3229434065','B/LOS PRADOS');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862363','NEDY NORBYLISETH','SAMBONI CHACON','sambonychaconn@gmail.com','3148840922','Barrio Villa del norte conjunto balcones del norte bloque1casa6.');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862367','EROS FERNANDO','QUENAMA IMBACHI','fernando_imbachig@hotmail.com','3202401795','CALL 10 CAR 1-45');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862374','MARIA ALEJANDRA','APRAEZ ROSERO','alejandra199587@hotmail.com','3229388652','VILLA ROSA 1');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862387','AMPARO ','GELPUD ','amp_andre1995@hotmail.com','3144311910','');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862390','JHON FERNEY','JAJOY DIAZ','jhonjajoy1803@gmail.com','3172360358','vereda villanueva');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862392','HELENA DELROSARIO','RIVAS HOYOS','helenrivas@outlook.com','3138667827','B/ LA INDEPENDENCIA');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862401','NELLY STEFANNY','MARIN ORTIZ','stefanny_121@hotmail.com','3209463799','BARRIO LUIS CARLOS GALAN');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862406','EDWIN LEANDRO','ENRIQUEZ CASTRO','edwinenriquez1995@hotmail.com','3123412345','CRA 5 N 1-19');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862420','YENI LISETH','FRANCO MEDINA','lisfran18@hotmail.com','3506157765','VDA SAN GERARDO');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862425','JOSE ALEJANDRO','CORAL CLEVES','clevez_jose121@hotmail.com','3118393108','CRA 3 NO. 7-09');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862429','FRANCY HELEN','FIGUEROA BOLAÑOS','francyf2@hotmail.com','3224273533','CALLE 9 13-85');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862436','JHEYSON DAVID','INSUASTY HERNANDEZ','jdinsuasty@gmail.com','3212655937','VEREDA PEPINO');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862440','JHEFERSON FARID','MELO ORDOÑEZ','Faridmelo1995@gmail.com','3203044227','BARRIO LOS SAUCES ');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862442','HENRY ANTONIO','RODRIGUEZ CORDOBA','antoniomusical1995@hotmail.com','3106073343','BARRIO CINCO DE SEPTIEMBRE');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862488','BRAYAN ESTEBAN','CUARAN ALVAREZ','alvarezbrayan95@gmail.com','3232250352','BARRIO LUIS CARLOS GALAN');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862490','JHOIMER HERNAN','ROSERO BEDOYA','jhoymer.rb_@hotmail.com','3203355198','5SEPTIEMBRE');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862495','SANDRA PATRICIA','MONCAYO OMEN','sandraomen20@gmail.com','3202688879','CRA 9A # 2 - 63');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862496','HECTOR JHANCARLO','MARTINEZ JANSASOY','gloden468@gmail.com','3118944269','CALLE 4 N 5-69');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862499','LUISA FERNANDA','PANTOJA DIAZ','pantoja.diaz@outlook.com','3134408872','B/ JOSE HOMERO');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862507','BRENDA JOHANA','CORAL VACA','coralkarolina89@gmail.com','3205568982','CALLE 6');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862512','YULY STEFANI','LEGARDA RODRIGUEZ','stefanilegarda_95@hotmail.com','3208000774','VEREDA VILLANUEVA');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862523','ANYI PAOLA','CORTES GUERRA','anyic15@hotmail.com','3113636072','SANTA LUCIA ');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862536','EDISSON FABRICIO','RUIZ BENAVIDES','edisson.r16@hotmail.com','3102902958','CRA. 8 NO. 16-22');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862544','DORA LILIANA','QUINAYAS MAJIN','doraliliana96@gmail.com','3133162362','VDA/ SANTA MARTHA');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862549','DIANA ROCIO','CHINDOY CHINDOY','','4296105','CABILDO INDIGENA YUNGUILLO');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862551','JONATHAN MAURICIO','RIASCOS PANTOJA','RIASCOS.MAURICIO03@GMAIL.COM','3133837078','CALLE 1 KR10-78');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862556','YESSICA TATIANA','RUALES CASTILLO','YTRC@OUTLOOK.COM','3209638632','CALLE 6 # 9A - 10 MZ 41A');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862564','VIVIANA ANDREA','CARDOZO ROMERO','andrea.cardozo18@outlook.com','3234740681','BRR LAS COLINAS ');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862565','DIANY PAOLA','GOMEZ ROMERO','diiany-11@hotmail.es','3112946565','calle 11-9a');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862595','ANGGIE CAROLINA','GUERRERO ALVARADO','carolinaguerrero710@gmail.com ','3138002924','B/ 1 DE ENERO');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862604','EDISSON ALEXANDER','RODRIGUES GRANDA',NULL,NULL,NULL);
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862615','EDSON ALEXIS','FIGUEROA CORAL','alexelor_98@hotmail.com','3143826242','PABLO VI ALTO');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862617','KELLY JHOANA','ACOSTA FLOREZ','jhoanaflorez465@gmail.com ','3152021044','AVENIDA COLOMBIA ');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862618',NULL,'ROSERO LOPEZ','durosero@itp.edu.co','3208403926','B/LA ESMERALDA');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862620','NANCY EDILMA','GOMEZ BOTINA','nancygomez1009@gmail.com','3137019060','CLL 3 # 12 - 04');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862628','JESSICA NAYELLY','PORTILLA ZAMBRANO','kjessi_19@hotmail.es','3213673900','RUMIPAMBA');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862636','BRIYITH MARIANA','BURBANO ROSALES','yei20-091@hotmail.com','3202864851','V PEPINO');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862645','JEFERSON ARIEL','MEZA CAMPO','jeffermeza11@gmail.com','3223689829','BARRIO EL PROGRESO');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862658','FRANCY MARCELA','OBANDO ERAZO','obandomarcela420@gmail.com','3222517359','AV 17 DE JULIO');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862663','JHONATAN ALEXANDER','PALACIOS PALACIOS','rascamelbicho@gmail.com','3208323039','Obrero');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862672','ENITH JOHANA','MEJIA VELA','enithmv@hotmail.com','3209035445','K20 N° 15-47');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862675','MARIA CAMILA','LONDOÑO ZAPATA','londonoc925@gmail.com','3126026206','EL DIVISO');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862676','KATHERINE ','ORTEGA CANDAMIL','ctee-12@hotmail.com','3208523067','CALLE 17 # 4-32');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862681','CARLOS ALBERTO','DIAZ ROSERO','carlos.diiazr@gmail.com','3152434462','CALLE 15 # 23 50');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862687','YURI VANESSA','BOLAÑOS CUAICHAR','vanessabolanos050@gmail.com','3115823205','');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862691','NULVY ALEXANDRA','SAMBONI SAMBONI','alexita_2608@hotmail.com','3202467109','CLL 17 A # 8-35');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862706','HERNAN DARIO','RODRIGUEZ SAMBONI','hernan.r.s@hotmail.com','3108481466','CL 24 N° 24 G-05');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862723','JHAN BRANDON','RIASCOS MARTINEZ','jhanbrandon1@gmail.com','3204794932','SANFRANCISCO');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862731','TANIA KATERINE','ZAMBRANO HERNANDEZ','zambranohernandeztania@gmail.com','3212726420','VEREDA EL VENADO');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862738','TATIANA FARIDI','MACIAS BECERRA','tatiana.2430@gmail.com','3134844846','BARRIO SAN AGUSTIN');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862739','MAYERLY KATHERINE','RAMOS ROJAS','katikrr95@hotmail.com','3219951239','VDA LA ESPERANZA');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862740','YUDY ALEJANDRA','ENRIQUEZ MARTINEZ','yudy_150@hotmail.com','3223773602','CALLE 3 #11-50');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862741','MARLEN YURI','VASQUEZ PERDOMO','yuriperdomo_24@hotmail.com','3103251667','C.11#2-38-SUR');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862747','STEICY CAROLINA','RUIZ CERA','steicy.ruizcera@hotmail.com','3144500089','BARRIO OBRERO II');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862750','MARIO ALEXANDER','HIDALGO ANGULO','mariohidalgo1995@hotmail.com','3124061688','BARRIO SINAI');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862756','MARIA EUGENIA','SUAREZ CORDOBA','ACTUALIZAR@HOTMAIL.COM','3133425433','BARRIO MODELO DE PAZ');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862762','ANDREA ','LOPEZ PANTOJA','andlp95@hotmail.com','3103350256','SAUCES');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862769','KAREN ','REYES MACIAS','karen_95_oz@hotmail.com','3209294510','B/ ESMERALDA CALLE NRO 12-31');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862780','DARWIN EDILSON','QUIROZ RUALES','darwedilson@gmail.com','3143448483','NUEVA ESPERANZA');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862781',NULL,'ENRRIQUEZ DAVID','enriquezjhonatan@hotmail.com','4296105','BARRIO SAN AGUSTÍN');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862782','YULI PAOLA','CAÑAS PANTOJA','yuly.pc@hotmail.es','3227689201','BARIIO OLIMPICO ');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862783','YULY ANGELICA','SOLARTE NAVARRO','ysolarte15@hotmail.com','3212922138','CRA 2  8-18');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862784','DANIELA ','OJEDA LONDOÑO','danielita-1295@hotmail.com','3143115249','KRA 12 # 5-24');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862788','JESSENIA ','RIVERA PAI','JESSENIARIVERA1995@GMAIL.COM','3209730219','CRA 9 # 10-22');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862792','YOAN DANIEL','ORDOÑEZ VELEZ','kubanito1995@hotmail.com','3203414807','BARRIO LOS SAUCES');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862799','RICHARD ALEXANDER','LOPEZ ANDRADE','alexanderlopez.rl80@gmail.com','3118932486','VEREDA VILLANUEVA MOCOA');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862806','LAURA VANESSA','DELGADO VILLARREAL','laura.delgadov95@gmail.com','3173774894','VEREDA SAN ISIDRO');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862808','HAROLD DAVID','VELASCO JACANAMEJOY',NULL,NULL,NULL);
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862820','RUBEN DARIO','PORTILLA CASTRO','milenaporti0508@hotmail.com','3222612862','BARIO LA LOMA');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862824','EDISSON DAVID','MEJIA CUASPUD','edisonmejia1@hotmail.com','3118231578','B/OBRERO');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862828','LUIS ALEJANDRO','MORA MAYA','bigcr7@hotmail.com','3138451062','B/ACEVEDO');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862829','ALEJANDRO ','DELGADO FAJARDO','adelgado145@uan.edu.co','3108819313','VEREDA RUMIYACO');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862836','RICKY ','FAJARDO CARDENAS','rfajcar12@gmail.com','3113914093','TR 5 # 12 - 67');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862838','MERY NORBEYI','CASTILLO NUPAN','maiacas1995@hotmail.com','3115588725','B/ jardines de Babilonia');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862840','YOVER JHONATAN','LAGOS VILLOTA','yoverjonatan10@hotmail.com','3209542556','BARRIO LIBERTADOR');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862848','DANNA KATHERINE','ACEVEDO CABRERA','dannakathe@hotmail.com','3143246784','CALLE 9 NRO 3-28');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862851','BRAYAN EMILIO','ARTEAGA RIVERA','bryan.1710nt@gmail.com','3142268634','VILLA CAIMARON ');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862856','ANDERSON DARWIN','NAVARRO ROSERO','darwin952009@hotmail.com','3208313068','B. OBRERO');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862859','BRANDON WILSON','RIASCOS DIAZ','RE4BRD@GMAIL.COM','3227187986','CR8 #1-14');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862860','DEINA CAROLINA','MAMIAN ORDOÑEZ','Karolive95ord@gmail.com','3114447622','LUIS CARLOS GALAN');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862876','EDGAR ESTIVEN','PALACIOS LUNA','stiven.palacios27@hotmail.com','3132366097','QUINTAS DE LA COLINA');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862877','NEIVER FAVIAN','ARCOS LOPEZ',NULL,NULL,NULL);
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862884','LILIANA MARILYN','CUARAN ROSERO','lmcuaranr@ut.edu.co','3167707255','CRR 9 #29-37');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862916','ANDERSON YAMIR','BASTIDAS ERAZO','andersonbastidas@hotmail.com','3204900273','VEREDA SAN ANTONIO');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862918','LUIS ALEJANDRO','GAVIRIA CHAVES','Lgaviriac@gmail.com','3108108565','CALLE 2 A # 60-10');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862919','IVAN RENE','MADROÑERO ZAMBRANO','irmz.15@hotmail.com','3102100673','BARRIO VILLA DEL NORTE');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862922','JIMER ','CIFUENTES ESTRADA','jimer-95@hotmail.com','3209352933','CARRERA 7A # 1-28');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862923','ANDRES FELIPE','SILVA CUELLAR','Carmagraph@gmail.com','3136139969','Cra 9 a n 9-180');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862927','LUISA FERNANDA','BRAVO TAPIA','mibella10@hotmail.com','3157956516','LAS VEGAS');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862942','ANGELA ASTRID','MONCAYO GUERRERO','angelamoncayo1995@gmail.com','3212822352','  VDA CAMPUCANA');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862949','MARIA PAZ','AREVALO ABELLA','mariauztyn.arevalo@gmail.com','3123918486','LUIS CARLOS GALAN');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862955','CRISTIAN MAURICIO','ACOSTA REYES','cristianmauricio96@gmail.com','3223702994','CALLE 7 - CASA 38');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862959','LEIDI ','SAMBONI MUTUMBAJOY','leidisamboni1996@gmail.com','3143142433','BARRIO LA ESMERALDA');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862962','MARBEL MELITZA','HERNANDEZ HUACA','marbelhernandez1124862962@gmail.com','3208256126','barriopalermo');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862968','YUDY NATALIA','DAGUA CAMAYO','yudinathy@gmail.com','3124594510','VILLA ROSA');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862992','OSCAR SEBASTIAN','UNIGARRO MERA','oskr.01@hotmail.com','3144364873','BARRIO LAS PALMERAS');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862997','ROSA MARIA','LARA CORREDOR','roziitha98@hotmail.com','3208163358','5 DE ENERO');
insert into `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `celular`, `direccion`) values('1124862998','ANGIE YISEL','YELA YAMA','angieyis.17@gmail.com','3105762720','BRR CONDOMINIO NORTE');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
