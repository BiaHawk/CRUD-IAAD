-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `valor_investido`
--

DROP TABLE IF EXISTS `valor_investido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `valor_investido` (
  `Ano` year DEFAULT NULL,
  `Cod_escola` int NOT NULL,
  `Nome_escola` varchar(100) DEFAULT NULL,
  `Nome_EEx` varchar(100) DEFAULT NULL,
  `Valor_Previsto` decimal(10,2) NOT NULL,
  PRIMARY KEY (`Cod_escola`),
  KEY `eex_idx` (`Nome_EEx`),
  KEY `escola_idx` (`Cod_escola`),
  CONSTRAINT `eex` FOREIGN KEY (`Nome_EEx`) REFERENCES `entidade_executora` (`EEX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valor_investido`
--

LOCK TABLES `valor_investido` WRITE;
/*!40000 ALTER TABLE `valor_investido` DISABLE KEYS */;
INSERT INTO `valor_investido` VALUES (2020,26117576,'ESCOLA MUNICIPAL ANTONIO FARIAS FILHO','PREF MUN DE RECIFE',18020.00),(2020,26117916,'CENTRO DE EDUCACAO DE JOVENS E ADULTOS POETA JOAQUIM CARDOZO','SECRETARIA DE EDUCACAO E ESPORTES',13520.00),(2020,26118670,'ESCOLA MUNICIPAL DOS COELHOS','PREF MUN DE RECIFE',16640.00),(2020,26118734,'ESCOLA MUNICIPAL MONTEIRO LOBATO','PREF MUN DE RECIFE',7480.00),(2020,26118742,'ESCOLA DE REFERENCIA EM ENSINO MEDIO SENADOR PAULO PESSOA GU','SECRETARIA DE EDUCACAO E ESPORTES',16120.00),(2020,26118823,'ESCOLA ESPECIAL ULISSES PERNAMBUCANO','SECRETARIA DE EDUCACAO E ESPORTES',10440.00),(2020,26118955,'ESCOLA MUNICIPAL JULIO VICENTE ALVES DE ARAUJO','PREF MUN DE RECIFE',5020.00),(2020,26119129,'ESCOLA MUNICIPAL DE DOIS RIOS','PREF MUN DE RECIFE',6520.00),(2020,26119145,'ESCOLA MUNICIPAL DOS REMEDIOS','PREF MUN DE RECIFE',7280.00),(2020,26119170,'ESCOLA MUNICIPAL SENADOR JOSE ERMIRIO DE MORAES','PREF MUN DE RECIFE',10320.00),(2020,26119196,'ESCOLA MUNICIPAL TRES CARNEIROS','PREF MUN DE RECIFE',7060.00),(2020,26119200,'ESCOLA MUNICIPAL ZUMBI DOS PALMARES','PREF MUN DE RECIFE',10420.00),(2020,26119218,'ESCOLA MUNICIPAL DA IPUTINGA','PREF MUN DE RECIFE',6060.00),(2020,26119331,'ESCOLA MUNICIPAL PADRE JOSE DE ANCHIETA','PREF MUN DE RECIFE',13460.00),(2020,26119617,'ESCOLA MUNICIPAL GENERAL SAN MARTIN','PREF MUN DE RECIFE',9400.00),(2020,26119641,'ESCOLA MUNICIPAL DOUTOR RODOLFO AURELIANO','PREF MUN DE RECIFE',15840.00),(2020,26119730,'ESCOLA DE APLICACAO DO RECIFE','SECRETARIA DE EDUCACAO E ESPORTES',5740.00),(2020,26119897,'ESCOLA MUNICIPAL JOAO XXIII','PREF MUN DE RECIFE',8640.00),(2020,26119927,'ESCOLA MUNICIPAL LUIZ VAZ DE CAMOES','PREF MUN DE RECIFE',10280.00),(2020,26119994,'ESCOLA MUNICIPAL NOVO PINA','PREF MUN DE RECIFE',9860.00),(2020,26120100,'ESCOLA PROFESSORA INALDA SPINELLI','SECRETARIA DE EDUCACAO E ESPORTES',19460.00),(2020,26120283,'ESCOLA MUNICIPAL VILA OPERARIA DO RECIFE','PREF MUN DE RECIFE',6280.00),(2020,26120402,'ESCOLA MUNICIPAL DO DOM','PREF MUN DE RECIFE',4300.00),(2020,26120569,'ESCOLA MUNICIPAL PROFESSORA MARIA DA PAZ BRANDAO ALVES','PREF MUN DE RECIFE',11500.00),(2020,26120585,'ESCOLA MUNICIPAL PROFESSORA SONIA MARIA DE ARAUJO SOUZA','PREF MUN DE RECIFE',5140.00),(2020,26120607,'ESCOLA MUNICIPAL ENGENHEIRO GUILHERME DINIZ','PREF MUN DE RECIFE',10180.00),(2020,26120658,'ESCOLA MUNICIPAL ALMIRANTE SOARES DUTRA','PREF MUN DE RECIFE',8240.00),(2020,26120674,'ESCOLA MUNICIPAL ENGENHEIRO UMBERTO GONDIM','PREF MUN DE RECIFE',6050.00),(2020,26120682,'ESCOLA MUNICIPAL BALBINA MENELAU','PREF MUN DE RECIFE',6800.00),(2020,26120704,'ESCOLA MUNICIPAL DO JORDAO','PREF MUN DE RECIFE',5540.00),(2020,26120712,'ESCOLA MUNICIPAL DO LEAO','PREF MUN DE RECIFE',5840.00),(2020,26120720,'ESCOLA MUNICIPAL DRAOMIRO CHAVES AGUIAR','PREF MUN DE RECIFE',11000.00),(2020,26120763,'ESCOLA MUNICIPAL MAGALHAES BASTOS','PREF MUN DE RECIFE',12060.00),(2020,26120771,'ESCOLA MUNICIPAL PROFESSOR MOACYR DE ALBUQUERQUE','PREF MUN DE RECIFE',7960.00),(2020,26120780,'ESCOLA MUNICIPAL PADRE JOSE MATHIAS DELGADO','PREF MUN DE RECIFE',9460.00),(2020,26120810,'ESCOLA MUNICIPAL HUGO GERDAU','PREF MUN DE RECIFE',12040.00),(2020,26120992,'ESCOLA LICEU DE ARTES E OFICIOS','SECRETARIA DE EDUCACAO E ESPORTES',21300.00),(2020,26121050,'ESCOLA MUNICIPAL PROF ELIZABETH SALES COUTINHO BARROS','PREF MUN DE RECIFE',6120.00),(2020,26121077,'ESCOLA MUNICIPAL SANTA MARIA','PREF MUN DE RECIFE',13680.00),(2020,26121158,'ESCOLA MUNICIPAL VILA SESAMO','PREF MUN DE RECIFE',13980.00),(2020,26121247,'ESCOLA DE REFERENCIA EM ENSINO MEDIO JOAQUIM NABUCO','SECRETARIA DE EDUCACAO E ESPORTES',11560.00),(2020,26121255,'ESCOLA MUNICIPAL PROFESSOR JOSE DA COSTA PORTO','PREF MUN DE RECIFE',18680.00),(2020,26121310,'ESCOLA MANOEL BORBA','SECRETARIA DE EDUCACAO E ESPORTES',16740.00),(2020,26121344,'ESCOLA LUIZ DELGADO','SECRETARIA DE EDUCACAO E ESPORTES',26900.00),(2020,26121468,'ESCOLA MUNICIPAL PEDRO AUGUSTO','PREF MUN DE RECIFE',10240.00),(2020,26121620,'ESCOLA JOAO BARBALHO','SECRETARIA DE EDUCACAO E ESPORTES',21500.00),(2020,26121638,'ESCOLA MONSENHOR FRANCISCO SALLES','SECRETARIA DE EDUCACAO E ESPORTES',16240.00),(2020,26121654,'ESCOLA DE REFERENCIA EM ENSINO MEDIO OLIVEIRA LIMA','SECRETARIA DE EDUCACAO E ESPORTES',8940.00),(2020,26121662,'ESCOLA MUNICIPAL PADRE ANTONIO HENRIQUE','PREF MUN DE RECIFE',13140.00),(2020,26121670,'ESCOLA DE REFERENCIA EM ENSINO MEDIO POETA MANUEL BANDEIRA','SECRETARIA DE EDUCACAO E ESPORTES',14720.00),(2020,26121751,'ESCOLA DE REFERENCIA EM ENSINO MEDIO GINASIO PERNAMBUCANO -','SECRETARIA DE EDUCACAO E ESPORTES',13740.00),(2020,26121786,'ESCOLA MUNICIPAL REITOR JOAO ALFREDO','PREF MUN DE RECIFE',7340.00),(2020,26121816,'ESCOLA TECNICA ESTADUAL ALMIRANTE SOARES DUTRA','SECRETARIA DE EDUCACAO E ESPORTES',10260.00),(2020,26121824,'CENTRO DE EDUCACAO DE JOVENS E ADULTOS VALDEMAR DE OLIVEIRA','SECRETARIA DE EDUCACAO E ESPORTES',11680.00),(2020,26121859,'ESCOLA DE REFERENCIA EM ENSINO MEDIO ANIBAL FERNANDES','SECRETARIA DE EDUCACAO E ESPORTES',6260.00),(2020,26121867,'ESCOLA CONEGO ROCHAEL DE MEDEIROS','SECRETARIA DE EDUCACAO E ESPORTES',17280.00),(2020,26121875,'ESCOLA ESTACIO COIMBRA','SECRETARIA DE EDUCACAO E ESPORTES',10180.00),(2020,26121891,'ESCOLA JOSE MARIA','SECRETARIA DE EDUCACAO E ESPORTES',7900.00),(2020,26121913,'ESCOLA MUNICIPAL LUTADORES DO BEM','PREF MUN DE RECIFE',6820.00),(2020,26121921,'ESCOLA DE REFERENCIA EM ENSINO MEDIO SIZENANDO SILVEIRA','SECRETARIA DE EDUCACAO E ESPORTES',15300.00),(2020,26121948,'ESCOLA SYLVIO RABELO','SECRETARIA DE EDUCACAO E ESPORTES',20100.00),(2020,26121972,'ESCOLA MUNICIPAL CIDADAO HERBERT DE SOUZA','PREF MUN DE RECIFE',4820.00),(2020,26121980,'ESCOLA MUNICIPAL GENERAL EMIDIO DANTAS BARRETO','PREF MUN DE RECIFE',6940.00),(2020,26122014,'ESCOLA MUNICIPAL SEDE DA SABEDORIA','PREF MUN DE RECIFE',10100.00),(2020,26122022,'CMEI ANA ROSA FALCAO DE CARVALHO','PREF MUN DE RECIFE',3880.00),(2020,26122120,'COLEGIO DA POLICIA MILITAR DE PERNAMBUCO','SECRETARIA DE EDUCACAO E ESPORTES',27100.00),(2020,26122227,'ESCOLA GOVERNADOR BARBOSA LIMA','SECRETARIA DE EDUCACAO E ESPORTES',26900.00),(2020,26122260,'ESCOLA PROFESSOR MOTTA E ALBUQUERQUE','SECRETARIA DE EDUCACAO E ESPORTES',15860.00),(2020,26122278,'ESCOLA DE REFERENCIA EM ENSINO MEDIO REGUEIRA COSTA','SECRETARIA DE EDUCACAO E ESPORTES',9360.00),(2020,26122308,'ESCOLA MUNICIPAL SEVERINA LIRA','PREF MUN DE RECIFE',5340.00),(2020,26122464,'ESCOLA MUNICIPAL SERVICO SOCIAL DE BELEM','PREF MUN DE RECIFE',3040.00),(2020,26122510,'ESCOLA DE REFERENCIA EM ENSINO MEDIO CLOVIS BEVILAQUA','SECRETARIA DE EDUCACAO E ESPORTES',13420.00),(2020,26122529,'ESCOLA MUNICIPAL MARIO MELO','PREF MUN DE RECIFE',16140.00),(2020,26122545,'ESCOLA DOM CARLOS COELHO - RECIFE','SECRETARIA DE EDUCACAO E ESPORTES',6120.00),(2020,26122553,'ESCOLA EMBAIXADOR GILBERTO AMADO','SECRETARIA DE EDUCACAO E ESPORTES',14920.00),(2020,26122570,'ESCOLA MUNICIPAL DOM HELDER CAMARA','PREF MUN DE RECIFE',7180.00),(2020,26122600,'ESCOLA MUNICIPAL SANTA CECILIA','PREF MUN DE RECIFE',8700.00),(2020,26122634,'ESCOLA MUNICIPAL POETA JONATAS BRAGA','PREF MUN DE RECIFE',4360.00),(2020,26122677,'ESCOLA DE REFERENCIA EM ENSINO MEDIO SANTA PAULA FRASSINETTI','SECRETARIA DE EDUCACAO E ESPORTES',8220.00),(2020,26122685,'ESCOLA TECNICA ESTADUAL PROFESSOR AGAMENON MAGALHAES - ETEPA','SECRETARIA DE EDUCACAO E ESPORTES',11420.00),(2020,26122839,'ESCOLA DE REFERENCIA EM ENSINO MEDIO OTHON PARAISO','SECRETARIA DE EDUCACAO E ESPORTES',10940.00),(2020,26122847,'ESCOLA DE REFERENCIA EM ENSINO MEDIO AMAURY DE MEDEIROS','SECRETARIA DE EDUCACAO E ESPORTES',15340.00),(2020,26122855,'ESCOLA DEBORA FEIJO','SECRETARIA DE EDUCACAO E ESPORTES',9700.00),(2020,26122880,'ESCOLA PRESIDENTE ARTHUR DA COSTA E SILVA','SECRETARIA DE EDUCACAO E ESPORTES',11400.00),(2020,26122898,'ESCOLA MUNICIPAL DO COQUE','PREF MUN DE RECIFE',12120.00),(2020,26122952,'ESCOLA SENADOR NILO DE SOUZA COELHO','SECRETARIA DE EDUCACAO E ESPORTES',10600.00),(2020,26122960,'ESCOLA DE REFERENCIA EM ENSINO MEDIO VIDAL DE NEGREIROS','SECRETARIA DE EDUCACAO E ESPORTES',12220.00),(2020,26122987,'ESCOLA CARMELA DUTRA','SECRETARIA DE EDUCACAO E ESPORTES',14360.00),(2020,26123088,'ESCOLA MUNICIPAL EDITE BRAGA','PREF MUN DE RECIFE',8640.00),(2020,26123100,'ESCOLA MUNICIPAL SANTA EDWIGES','PREF MUN DE RECIFE',4120.00),(2020,26123126,'ESCOLA MUNICIPAL VILA SAO MIGUEL','PREF MUN DE RECIFE',8680.00),(2020,26123150,'ESCOLA DE REFERENCIA EM ENSINO FUNDAMENTAL CREUSA BARRETO DO','SECRETARIA DE EDUCACAO E ESPORTES',7180.00),(2020,26123231,'ESCOLA MACIEL PINHEIRO','SECRETARIA DE EDUCACAO E ESPORTES',17080.00),(2020,26123240,'ESCOLA MARIA GORETTI','SECRETARIA DE EDUCACAO E ESPORTES',6760.00),(2020,26123258,'ESCOLA DE REFERENCIA EM ENSINO MEDIO MARTINS JUNIOR','SECRETARIA DE EDUCACAO E ESPORTES',11940.00),(2020,26123266,'ESCOLA MUNICIPAL PAROQUIAL CRISTO REI','PREF MUN DE RECIFE',6060.00),(2020,26123282,'ESCOLA DE REFERENCIA EM ENSINO MEDIO JOAQUIM TAVORA','SECRETARIA DE EDUCACAO E ESPORTES',10160.00),(2020,26123304,'ESCOLA MUNICIPAL SOLDADO JOSE ANTONIO DO NASCIMENTO','PREF MUN DE RECIFE',3460.00),(2020,26123380,'ESCOLA MUNICIPAL ALTO DA BELA VISTA','PREF MUN DE RECIFE',2960.00),(2020,26123444,'ESCOLA MUNICIPAL CASA DOS FERROVIARIOS','PREF MUN DE RECIFE',10100.00),(2020,26123479,'ESCOLA DE REFERENCIA EM ENSINO MEDIO ALBERTO TORRES','SECRETARIA DE EDUCACAO E ESPORTES',18120.00),(2020,26123487,'ESCOLA MUNICIPAL DOM BOSCO','PREF MUN DE RECIFE',9260.00),(2020,26123495,'ESCOLA MUNICIPAL DOUTOR ANTONIO CORREIA','PREF MUN DE RECIFE',5000.00),(2020,26123509,'ESCOLA EDWIGES DE SA PEREIRA','SECRETARIA DE EDUCACAO E ESPORTES',9080.00),(2020,26123517,'ESCOLA JOSE MARIANO','SECRETARIA DE EDUCACAO E ESPORTES',17900.00),(2020,26123525,'ESCOLA MARCELINO CHAMPAGNAT','SECRETARIA DE EDUCACAO E ESPORTES',17180.00),(2020,26123533,'ESCOLA MONSENHOR ALVARO NEGROMONTE','SECRETARIA DE EDUCACAO E ESPORTES',23940.00),(2020,26123541,'ESCOLA MUNICIPAL ANDRE DE MELO','PREF MUN DE RECIFE',14480.00),(2020,26123550,'ESCOLA MUNICIPAL DE TEJIPIO','PREF MUN DE RECIFE',10800.00),(2020,26123568,'ESCOLA PAULO DE SOUZA LEAL','SECRETARIA DE EDUCACAO E ESPORTES',3000.00),(2020,26123576,'ESCOLA PRESIDENTE HUMBERTO CASTELO BRANCO','SECRETARIA DE EDUCACAO E ESPORTES',17920.00),(2020,26123584,'ESCOLA PROFESSORA OLINDINA ALVES SEMENTE','SECRETARIA DE EDUCACAO E ESPORTES',10780.00),(2020,26123592,'ESCOLA DE REFERENCIA EM ENSINO MEDIO PROFESSOR TRAJANO DE ME','SECRETARIA DE EDUCACAO E ESPORTES',17480.00),(2020,26123630,'ESCOLA MARECHAL RONDON - RECIFE','SECRETARIA DE EDUCACAO E ESPORTES',9220.00),(2020,26123649,'ESCOLA MUNICIPAL PROFESSORA PRIMITIVA DE BARROS SILVA','PREF MUN DE RECIFE',5100.00),(2020,26123673,'ESCOLA MUNICIPAL SANTO ANTONIO DO CACOTE','PREF MUN DE RECIFE',4680.00),(2020,26123703,'ESCOLA DE REFERENCIA EM ENSINO MEDIO ANIBAL FALCAO','SECRETARIA DE EDUCACAO E ESPORTES',9520.00),(2020,26123720,'ESCOLA BARAO DO BONITO','SECRETARIA DE EDUCACAO E ESPORTES',10440.00),(2020,26123770,'ESCOLA HEROIS DA RESTAURACAO','SECRETARIA DE EDUCACAO E ESPORTES',10980.00),(2020,26123819,'ESCOLA DE REFERENCIA EM ENSINO MEDIO MARIANO TEIXEIRA','SECRETARIA DE EDUCACAO E ESPORTES',17840.00),(2020,26124076,'ESCOLA MUNICIPAL WALDEMAR VALENTE','PREF MUN DE RECIFE',6740.00),(2020,26124092,'ESCOLA MUNICIPAL ABILIO GOMES','PREF MUN DE RECIFE',7280.00),(2020,26124114,'ESCOLA MUNICIPAL LAGOA ENCANTADA','PREF MUN DE RECIFE',4580.00),(2020,26124173,'ESCOLA MUNICIPAL CENTRO DE EDUC INFAN 14 BIS','PREF MUN DE RECIFE',7160.00),(2020,26124190,'ESCOLA DE REFERENCIA EM ENSINO MEDIO SANTOS DUMONT','SECRETARIA DE EDUCACAO E ESPORTES',18380.00),(2020,26124424,'ESCOLA PROFESSOR MARCOS DE BARROS FREIRE','SECRETARIA DE EDUCACAO E ESPORTES',12100.00),(2020,26124432,'ESCOLA DE REFERENCIA EM ENSINO MEDIO APOLONIO SALES','SECRETARIA DE EDUCACAO E ESPORTES',16200.00),(2020,26124440,'ESCOLA DE REFERENCIA EM ENSINO MEDIO ASSIS CHATEAUBRIAND','SECRETARIA DE EDUCACAO E ESPORTES',14480.00),(2020,26124467,'ESCOLA MUNICIPAL BEATO EUGENIO MAZENOD','PREF MUN DE RECIFE',7640.00),(2020,26124475,'ESCOLA BRIGADEIRO EDUARDO GOMES - RECIFE','SECRETARIA DE EDUCACAO E ESPORTES',30140.00),(2020,26124483,'ESCOLA MUNICIPAL CAPELA SANTO ANTONIO','PREF MUN DE RECIFE',4100.00),(2020,26124513,'ESCOLA MUNICIPAL CICERO FRANKLIN CORDEIRO','PREF MUN DE RECIFE',14440.00),(2020,26124556,'ESCOLA MUNICIPAL MARIA DE SAMPAIO LUCENA','PREF MUN DE RECIFE',18240.00),(2020,26124572,'ESCOLA DELMIRO GOUVEIA','SECRETARIA DE EDUCACAO E ESPORTES',3460.00),(2020,26124580,'ESCOLA ELEANOR ROOSEVELT','SECRETARIA DE EDUCACAO E ESPORTES',15400.00),(2020,26124599,'ESCOLA ENEIDA RABELLO','SECRETARIA DE EDUCACAO E ESPORTES',23140.00),(2020,26124602,'ESCOLA DE REFERENCIA EM ENSINO MEDIO ENGENHEIRO LAURO DINIZ','SECRETARIA DE EDUCACAO E ESPORTES',12460.00),(2020,26124610,'ESCOLA MUNICIPAL FUTURO FELIZ','PREF MUN DE RECIFE',5320.00),(2020,26124645,'ESCOLA JORNALISTA COSTA PORTO','SECRETARIA DE EDUCACAO E ESPORTES',24540.00),(2020,26124653,'ESCOLA DE REFERENCIA EM ENSINO MEDIO LAGOA ENCANTADA','SECRETARIA DE EDUCACAO E ESPORTES',13040.00),(2020,26124661,'ESCOLA MUNICIPAL PROFESSOR MANOEL TORRES','PREF MUN DE RECIFE',12440.00),(2020,26124670,'ESCOLA MARECHAL EURICO GASPAR DUTRA','SECRETARIA DE EDUCACAO E ESPORTES',33540.00),(2020,26124688,'ESCOLA MUNICIPAL MARIA ADELAIDE DE BARROS','PREF MUN DE RECIFE',6920.00),(2020,26124696,'ESCOLA DE REFERENCIA EM ENSINO MEDIO MARIA RITA DA SILVA LES','SECRETARIA DE EDUCACAO E ESPORTES',9040.00),(2020,26124700,'ESCOLA MUNICIPAL MARGARIDA SERPA COSSART','PREF MUN DE RECIFE',5800.00),(2020,26124777,'ESCOLA OTHON BEZERRA DE MELO','SECRETARIA DE EDUCACAO E ESPORTES',9860.00),(2020,26124785,'ESCOLA DE REFERENCIA EM ENSINO MEDIO DOM SEBASTIAO LEME','SECRETARIA DE EDUCACAO E ESPORTES',21680.00),(2020,26124807,'ESCOLA PROFESSOR JOSE VICENTE BARBOSA','SECRETARIA DE EDUCACAO E ESPORTES',20020.00),(2020,26124815,'ESCOLA MUNICIPAL PROFESSOR SIMOES BARBOSA','PREF MUN DE RECIFE',14060.00),(2020,26124831,'ESCOLA PADRE LEBRET','SECRETARIA DE EDUCACAO E ESPORTES',23420.00),(2020,26124840,'ESCOLA MUNICIPAL MENINO JESUS','PREF MUN DE RECIFE',3420.00),(2020,26124858,'ESCOLA NOSSA SENHORA DA CONCEICAO','SECRETARIA DE EDUCACAO E ESPORTES',6480.00),(2020,26124874,'ESCOLA MISSIONARIO SAO BENTO','SECRETARIA DE EDUCACAO E ESPORTES',10940.00),(2020,26124904,'ESCOLA VILA DOS MILAGRES','SECRETARIA DE EDUCACAO E ESPORTES',7580.00),(2020,26124912,'ESCOLA ROBERTO SILVEIRA','SECRETARIA DE EDUCACAO E ESPORTES',9460.00),(2020,26124920,'ESCOLA SAO FRANCISCO DE ASSIS - RS','SECRETARIA DE EDUCACAO E ESPORTES',20520.00),(2020,26124939,'ESCOLA SARGENTO CAMARGO','SECRETARIA DE EDUCACAO E ESPORTES',8100.00),(2020,26124955,'ESCOLA MUNICIPAL ESCRITOR JOSUE DE CASTRO','PREF MUN DE RECIFE',5100.00),(2020,26125013,'ESCOLA GERCINO DE PONTES','SECRETARIA DE EDUCACAO E ESPORTES',12180.00),(2020,26125048,'ESCOLA DE REFERENCIA EM ENSINO MEDIO JOAO BEZERRA','SECRETARIA DE EDUCACAO E ESPORTES',18800.00),(2020,26125072,'ESCOLA LANDELINO ROCHA','SECRETARIA DE EDUCACAO E ESPORTES',6280.00),(2020,26125080,'ESCOLA LUIS DE CAMOES','SECRETARIA DE EDUCACAO E ESPORTES',19040.00),(2020,26125250,'ESCOLA DE REFERENCIA EM ENSINO MEDIO PROFESSOR FERNANDO MOTA','SECRETARIA DE EDUCACAO E ESPORTES',14500.00),(2020,26125293,'ESCOLA SENADOR ANTONIO FARIAS','SECRETARIA DE EDUCACAO E ESPORTES',8580.00),(2020,26125358,'ESCOLA MONTE VERDE','SECRETARIA DE EDUCACAO E ESPORTES',18880.00),(2020,26125480,'ESCOLA MUNICIPAL JARDIM MAURICEIA','PREF MUN DE RECIFE',5220.00),(2020,26125510,'ESCOLA MUNICIPAL OSWALDO LIMA FILHO','PREF MUN DE RECIFE',8470.00),(2020,26125528,'ESCOLA MUNICIPAL PAIS E FILHOS','PREF MUN DE RECIFE',8400.00),(2020,26125544,'ESCOLA MUNICIPAL POETA PAULO BANDEIRA DA CRUZ','PREF MUN DE RECIFE',9540.00),(2020,26125552,'ESCOLA MUNICIPAL PROFESSOR ADAUTO PONTES','PREF MUN DE RECIFE',6160.00),(2020,26125560,'ESCOLA MUNICIPAL PROF JOSE LOURENCO DE LIMA','PREF MUN DE RECIFE',7020.00),(2020,26125579,'ESCOLA MUNICIPAL SAO FRANCISCO DE ASSIS','PREF MUN DE RECIFE',6740.00),(2020,26125641,'ESCOLA DE REFERENCIA EM ENSINO MEDIO JOSE VILELA','SECRETARIA DE EDUCACAO E ESPORTES',6780.00),(2020,26125650,'ESCOLA LIONS DE PARNAMIRIM','SECRETARIA DE EDUCACAO E ESPORTES',17760.00),(2020,26125692,'ESCOLA MUNICIPAL SOCIOLOGO GILBERTO FREYRE','PREF MUN DE RECIFE',10280.00),(2020,26125706,'ESCOLA MUNICIPAL MUNDO ESPERANCA','PREF MUN DE RECIFE',6640.00),(2020,26125757,'ESCOLA DE REFERENCIA EM ENSINO MEDIO PROFESSOR CANDIDO DUART','SECRETARIA DE EDUCACAO E ESPORTES',7060.00),(2020,26125781,'ESCOLA DE REFERENCIA EM ENSINO MEDIO SILVA JARDIM','SECRETARIA DE EDUCACAO E ESPORTES',8140.00),(2020,26125811,'ESCOLA MUNICIPAL VIRGEM PODEROSA','PREF MUN DE RECIFE',6980.00),(2020,26125854,'ESCOLA MUNICIPAL ALTO JARDIM PROGRESSO','PREF MUN DE RECIFE',7940.00),(2020,26125943,'ESCOLA MONSENHOR MANOEL MARQUES','SECRETARIA DE EDUCACAO E ESPORTES',18580.00),(2020,26125978,'ESCOLA DE REFERENCIA EM ENSINO MEDIO ALVARO LINS','SECRETARIA DE EDUCACAO E ESPORTES',17020.00),(2020,26125986,'ESCOLA ANA MALTA DA COSTA AZEVEDO','SECRETARIA DE EDUCACAO E ESPORTES',7140.00),(2020,26125994,'ESCOLA MUNICIPAL ARQUITETO ALEXANDRE MUNIZ DE OLIVEIRA','PREF MUN DE RECIFE',7280.00),(2020,26126010,'ESCOLA CAIO PEREIRA','SECRETARIA DE EDUCACAO E ESPORTES',27660.00),(2020,26126044,'ESCOLA DE REFERENCIA EM ENSINO MEDIO CLOTILDE DE OLIVEIRA','SECRETARIA DE EDUCACAO E ESPORTES',19340.00),(2020,26126052,'ESCOLA CORONEL OTHON','SECRETARIA DE EDUCACAO E ESPORTES',19500.00),(2020,26126079,'ESCOLA DE REFERENCIA EM ENSINO MEDIO AGEU MAGALHAES','SECRETARIA DE EDUCACAO E ESPORTES',7440.00),(2020,26126087,'ESCOLA MUNICIPAL OCTAVIO DE MEIRA LINS','PREF MUN DE RECIFE',16200.00),(2020,26126109,'ESCOLA DE REFERENCIA EM ENSINO MEDIO PADRE MACHADO','SECRETARIA DE EDUCACAO E ESPORTES',12840.00),(2020,26126117,'ESCOLA MUNICIPAL PROFESSORA ALMERINDA UMBELINO DE BARROS','PREF MUN DE RECIFE',17840.00),(2020,26126125,'ESCOLA DOM BOSCO - RECIFE','SECRETARIA DE EDUCACAO E ESPORTES',18300.00),(2020,26126133,'ESCOLA DE REFERENCIA EM ENSINO MEDIO DOM VITAL','SECRETARIA DE EDUCACAO E ESPORTES',12680.00),(2020,26126141,'ESCOLA DONA MARIA TERESA CORREA','SECRETARIA DE EDUCACAO E ESPORTES',16440.00),(2020,26126150,'ESCOLA ERUNDINA NEGREIROS DE ARAUJO','SECRETARIA DE EDUCACAO E ESPORTES',7680.00),(2020,26126192,'ESCOLA GABRIELA MISTRAL','SECRETARIA DE EDUCACAO E ESPORTES',14880.00),(2020,26126206,'ESCOLA GILBERTO FREYRE','SECRETARIA DE EDUCACAO E ESPORTES',10680.00),(2020,26126214,'ESCOLA GOV CARLOS DE LIMA CAVALCANTI','SECRETARIA DE EDUCACAO E ESPORTES',9220.00),(2020,26126230,'ESCOLA IRMA MAGNA','SECRETARIA DE EDUCACAO E ESPORTES',11680.00),(2020,26126281,'ESCOLA MUNICIPAL MARGARIDA DE SIQUEIRA PESSOA','PREF MUN DE RECIFE',7600.00),(2020,26126290,'ESCOLA MARIA AMALIA','SECRETARIA DE EDUCACAO E ESPORTES',12840.00),(2020,26126311,'ESCOLA MATIAS DE ALBUQUERQUE','SECRETARIA DE EDUCACAO E ESPORTES',10140.00),(2020,26126362,'ESCOLA MUNICIPAL CORREGO DA BICA','PREF MUN DE RECIFE',8160.00),(2020,26126370,'ESCOLA MUNICIPAL ALTO DA GUABIRABA','PREF MUN DE RECIFE',4700.00),(2020,26126389,'ESCOLA MUNICIPAL DOUTOR CAETE','PREF MUN DE RECIFE',6560.00),(2020,26126419,'ESCOLA MUNICIPAL PRESBITERO JOSE BEZERRA','PREF MUN DE RECIFE',9940.00),(2020,26126427,'ESCOLA MUNICIPAL PASTOR PAULO LEIVAS MACALAO','PREF MUN DE RECIFE',9860.00),(2020,26126443,'ESCOLA NOSSA SENHORA DE FATIMA - RN','SECRETARIA DE EDUCACAO E ESPORTES',7220.00),(2020,26126494,'ESCOLA MUNICIPAL POETA JOAQUIM CARDOSO','PREF MUN DE RECIFE',14800.00),(2020,26126516,'ESCOLA MUNICIPAL PROFESSOR ADERBAL GALVAO','PREF MUN DE RECIFE',11600.00),(2020,26126524,'ESCOLA MUNICIPAL PROFESSOR NILO PEREIRA','PREF MUN DE RECIFE',6900.00),(2020,26126559,'ESCOLA COMANDANTE LUIZ GOMES','SECRETARIA DE EDUCACAO E ESPORTES',17480.00),(2020,26126575,'ESCOLA PADRE JOAO BARBOSA','SECRETARIA DE EDUCACAO E ESPORTES',7060.00),(2020,26126583,'ESCOLA MUNICIPAL SANTA MARIA GORETTI','PREF MUN DE RECIFE',6980.00),(2020,26126605,'ESCOLA TOME GIBSON','SECRETARIA DE EDUCACAO E ESPORTES',18560.00),(2020,26126613,'ESCOLA DE REFERENCIA EM ENSINO MEDIO ROSA DE MAGALHAES MELO','SECRETARIA DE EDUCACAO E ESPORTES',18780.00),(2020,26126621,'ESCOLA ROTARY DE NOVA DESCOBERTA','SECRETARIA DE EDUCACAO E ESPORTES',25700.00),(2020,26126630,'ESCOLA MUNICIPAL SAO CRISTOVAO','PREF MUN DE RECIFE',14180.00),(2020,26126672,'ESCOLA MUNICIPAL MAURICIO DE NASSAU','PREF MUN DE RECIFE',5380.00),(2020,26126680,'ESCOLA MUNICIPAL CORREGO DA AREIA','PREF MUN DE RECIFE',4860.00),(2020,26126770,'ESCOLA MUNICIPAL JOSEFINA MARINHO','PREF MUN DE RECIFE',4760.00),(2020,26126788,'ESCOLA MUNICIPAL PROFESSOR MAURO MOTA','PREF MUN DE RECIFE',9840.00),(2020,26126818,'ESCOLA MUNICIPAL DOM JOSE LAMARTINE SOARES','PREF MUN DE RECIFE',8380.00),(2020,26126826,'ESCOLA MUNICIPAL MANOEL ANTONIO DE FREITAS','PREF MUN DE RECIFE',5880.00),(2020,26126869,'ESCOLA MUNICIPAL BOA ESPERANCA','PREF MUN DE RECIFE',6700.00),(2020,26126966,'ESCOLA MUNICIPAL PEDRINHO','PREF MUN DE RECIFE',3220.00),(2020,26127008,'ESCOLA MUNICIPAL CREUSA DE FREITAS CAVALCANTI','PREF MUN DE RECIFE',14020.00),(2020,26127016,'ESCOLA MUNICIPAL CASARAO DO BARBALHO','PREF MUN DE RECIFE',8740.00),(2020,26127024,'ESCOLA MUNICIPAL CELIA ARRAES','PREF MUN DE RECIFE',4010.00),(2020,26127083,'ESCOLA MUNICIPAL DOS TORROES','PREF MUN DE RECIFE',4840.00),(2020,26127270,'ESCOLA CARLOS ALBERTO GONCALVES DE ALMEIDA','SECRETARIA DE EDUCACAO E ESPORTES',7780.00),(2020,26127300,'ESCOLA DE REFERENCIA EM ENSINO MEDIO DIARIO DE PERNAMBUCO','SECRETARIA DE EDUCACAO E ESPORTES',12020.00),(2020,26127334,'ESCOLA DE REFERENCIA EM ENSINO MEDIO JORNALISTA TRAJANO CHAC','SECRETARIA DE EDUCACAO E ESPORTES',14320.00),(2020,26127369,'ESCOLA MUNICIPAL ARRAIAL NOVO DO BOM JESUS','PREF MUN DE RECIFE',15060.00),(2020,26127377,'ESCOLA MUNICIPAL ENGENHO DO MEIO','PREF MUN DE RECIFE',15440.00),(2020,26127415,'ESCOLA DE REFERENCIA EM ENSINO MEDIO OLINTO VICTOR','SECRETARIA DE EDUCACAO E ESPORTES',8480.00),(2020,26127423,'ESCOLA PINTOR LAURO VILLARES','SECRETARIA DE EDUCACAO E ESPORTES',15080.00),(2020,26127431,'ESCOLA PROFESSOR LEAL DE BARROS','SECRETARIA DE EDUCACAO E ESPORTES',17520.00),(2020,26127458,'ESCOLA MUNICIPAL PAPA JOAO XXIII','PREF MUN DE RECIFE',5080.00),(2020,26127474,'ESCOLA PADRE DEHON','SECRETARIA DE EDUCACAO E ESPORTES',19000.00),(2020,26127512,'ESCOLA SENADOR NOVAES FILHO','SECRETARIA DE EDUCACAO E ESPORTES',18940.00),(2020,26127520,'ESCOLA MUNICIPAL DIVINO ESPIRITO SANTO','PREF MUN DE RECIFE',9240.00),(2020,26127539,'ESCOLA PROFESSORA FONTAINHA DE ABREU','SECRETARIA DE EDUCACAO E ESPORTES',7960.00),(2020,26127547,'ESCOLA MUNICIPAL DOUTOR SAMUEL GONCALVES','PREF MUN DE RECIFE',4560.00),(2020,26127571,'ESCOLA BARROS CARVALHO','SECRETARIA DE EDUCACAO E ESPORTES',12260.00),(2020,26127636,'ESCOLA EDUCADOR PAULO FREIRE','SECRETARIA DE EDUCACAO E ESPORTES',9800.00),(2020,26127644,'ESCOLA MUNICIPAL DOUTOR EBENEZER GUEIROS','PREF MUN DE RECIFE',9460.00),(2020,26127695,'ESCOLA JOAQUIM XAVIER DE BRITO','SECRETARIA DE EDUCACAO E ESPORTES',15320.00),(2020,26127741,'ESCOLA DE REFERENCIA EM ENSINO MEDIO PROFESSORA HELENA PUGO','SECRETARIA DE EDUCACAO E ESPORTES',15080.00),(2020,26127784,'ESCOLA MUNICIPAL JOAO PESSOA GUERRA','PREF MUN DE RECIFE',5640.00),(2020,26127792,'ESCOLA MUNICIPAL SAO DOMINGOS','PREF MUN DE RECIFE',7580.00),(2020,26127857,'ESCOLA FERNANDES VIEIRA','SECRETARIA DE EDUCACAO E ESPORTES',8460.00),(2020,26127865,'ESCOLA PROFESSOR CANDIDO DUARTE','SECRETARIA DE EDUCACAO E ESPORTES',7340.00),(2020,26127873,'ESCOLA MUNICIPAL HENFIL','PREF MUN DE RECIFE',4860.00),(2020,26128101,'ESCOLA DE REFERENCIA EM ENSINO MEDIO DE BEBERIBE','SECRETARIA DE EDUCACAO E ESPORTES',7560.00),(2020,26128110,'ESCOLA MUNICIPAL ALDA ROMEU','PREF MUN DE RECIFE',6840.00),(2020,26128160,'ESCOLA DOUTOR FABIO CORREA','SECRETARIA DE EDUCACAO E ESPORTES',17100.00),(2020,26128179,'ESCOLA DOUTOR FRANCISCO PESSOA DE QUEIROZ','SECRETARIA DE EDUCACAO E ESPORTES',22120.00),(2020,26128195,'ESCOLA DE REFERENCIA EM ENSINO MEDIO JARBAS PERNAMBUCANO','SECRETARIA DE EDUCACAO E ESPORTES',4920.00),(2020,26128233,'ESCOLA MUNICIPAL DA MANGABEIRA','PREF MUN DE RECIFE',7840.00),(2020,26128268,'ESCOLA MUNICIPAL LUIZ LUA GONZAGA','PREF MUN DE RECIFE',5560.00),(2020,26128314,'ESCOLA MUNICIPAL NOVA AURORA','PREF MUN DE RECIFE',3660.00),(2020,26128322,'ESCOLA MUNICIPAL NOVO HORIZONTE','PREF MUN DE RECIFE',6860.00),(2020,26128390,'ESCOLA MUNICIPAL PAULO VI','PREF MUN DE RECIFE',15620.00),(2020,26128403,'ESCOLA DE REFERENCIA EM ENSINO MEDIO PADRE NERCIO RODRIGUES','SECRETARIA DE EDUCACAO E ESPORTES',6980.00),(2020,26128420,'ESCOLA PEDRO CELSO','SECRETARIA DE EDUCACAO E ESPORTES',29180.00),(2020,26128454,'ESCOLA PROFESSOR JOSE DOS ANJOS','SECRETARIA DE EDUCACAO E ESPORTES',21420.00),(2020,26128462,'ESCOLA PROFESSOR PEDRO AUGUSTO CARNEIRO LEAO','SECRETARIA DE EDUCACAO E ESPORTES',19420.00),(2020,26128497,'ESCOLA DE REFERENCIA EM ENSINO MEDIO PROFESSOR ALFREDO FREYR','SECRETARIA DE EDUCACAO E ESPORTES',11120.00),(2020,26128527,'ESCOLA ROTARY DO ALTO DO PASCOAL','SECRETARIA DE EDUCACAO E ESPORTES',22880.00),(2020,26128560,'ESCOLA SAO FRANCISCO DE ASSIS - RN','SECRETARIA DE EDUCACAO E ESPORTES',14120.00),(2020,26128586,'ESCOLA SAO JUDAS TADEU','SECRETARIA DE EDUCACAO E ESPORTES',21740.00),(2020,26128594,'ESCOLA SAO MIGUEL','SECRETARIA DE EDUCACAO E ESPORTES',13940.00),(2020,26128640,'ESCOLA MUNICIPAL ANTONIO HERACLIO DO REGO','PREF MUN DE RECIFE',9040.00),(2020,26128659,'ESCOLA MUNICIPAL ANTONIO LUIZ','PREF MUN DE RECIFE',4620.00),(2020,26128705,'ESCOLA MUNICIPAL MONSENHOR VIANA','PREF MUN DE RECIFE',7620.00),(2020,26128721,'ESCOLA DE REFERENCIA EM ENSINO MEDIO PROFESSOR MARDONIO DE A','SECRETARIA DE EDUCACAO E ESPORTES',15060.00),(2020,26128748,'ESCOLA MUNICIPAL SAO JOAO BATISTA','PREF MUN DE RECIFE',8040.00),(2020,26128764,'ESCOLA MUNICIPAL ANA MAURICIA WANDERLEY','PREF MUN DE RECIFE',5940.00),(2020,26128772,'ESCOLA MUNICIPAL ANTONIO TIBURCIO','PREF MUN DE RECIFE',4740.00),(2020,26128780,'ESCOLA MUNICIPAL COMPOSITOR LEVINO FERREIRA','PREF MUN DE RECIFE',5280.00),(2020,26128888,'ESCOLA MUNICIPAL DEUS E AMOR','PREF MUN DE RECIFE',5200.00),(2020,26128926,'ESCOLA MUNICIPAL ANITA PAES BARRETO','PREF MUN DE RECIFE',3140.00),(2020,26128934,'ESCOLA MUNICIPAL OLINDINA MONTEIRO DE OLIVEIRA FRANCA','PREF MUN DE RECIFE',8340.00),(2020,26128950,'ESCOLA MUNICIPAL IRMA TEREZINHA BATISTA - PROJ NOVO VIVER','PREF MUN DE RECIFE',8100.00),(2020,26132249,'ESCOLA MUNICIPAL PINTOR LULA CARDOSO AYRES','PREF MUN DE RECIFE',6300.00),(2020,26132267,'ESCOLA MUNICIPAL DEPUTADO FERNANDO SAMPAIO','PREF MUN DE RECIFE',7860.00),(2020,26132635,'ESCOLA MUNICIPAL JORDAO BAIXO','PREF MUN DE RECIFE',5300.00),(2020,26132643,'ESCOLA MUNICIPAL FERNANDO SANTA CRUZ','PREF MUN DE RECIFE',3560.00),(2020,26133389,'ESCOLA MUNICIPAL NADIR COLACO','PREF MUN DE RECIFE',9080.00),(2020,26133622,'ESCOLA MUNICIPAL NOVA DESCOBERTA','PREF MUN DE RECIFE',13240.00),(2020,26133837,'ESCOLA MUNICIPAL CRISTIANO CORDEIRO','PREF MUN DE RECIFE',12080.00),(2020,26134002,'ESCOLA MUNICIPAL KARLA PATRICIA','PREF MUN DE RECIFE',12820.00),(2020,26134010,'ESCOLA MUNICIPAL INES SOARES DE LIMA','PREF MUN DE RECIFE',6340.00),(2020,26134049,'ESCOLA MUNICIPAL NOSSA SENHORA DA PENHA','PREF MUN DE RECIFE',6200.00),(2020,26134057,'ESCOLA MUNICIPAL MANOEL ROLIM','PREF MUN DE RECIFE',4840.00),(2020,26134067,'ESCOLA MUNICIPAL SEVERINA BERNADETE TEIXEIRA','PREF MUN DE RECIFE',4010.00),(2020,26134177,'ESCOLA OLGA BENARIO PRESTES','SECRETARIA DE EDUCACAO E ESPORTES',7160.00),(2020,26134180,'ESCOLA PROFESSOR JOEL PONTES','SECRETARIA DE EDUCACAO E ESPORTES',9640.00),(2020,26134350,'ESCOLA PADRE DONINO','SECRETARIA DE EDUCACAO E ESPORTES',5680.00),(2020,26134379,'ESCOLA MUNICIPAL SANTO AMARO','PREF MUN DE RECIFE',11480.00),(2020,26136269,'ESCOLA MUNICIPAL SITIO DO CEU','PREF MUN DE RECIFE',4320.00),(2020,26136300,'ESCOLA MUNICIPAL ALTO DO MARACANA','PREF MUN DE RECIFE',9660.00),(2020,26136335,'ESCOLA MUNICIPAL RENATO ACCIOLY CARNEIRO CAMPOS','PREF MUN DE RECIFE',3780.00),(2020,26139090,'ESCOLA MUNICIPAL PROFESSOR FLORESTAN FERNANDES','PREF MUN DE RECIFE',17520.00),(2020,26139723,'ESCOLA MUNICIPAL ALTO SANTA TEREZINHA','PREF MUN DE RECIFE',13980.00),(2020,26145227,'ESCOLA MUNICIPAL HISTORIADOR FLAVIO GUERRA','PREF MUN DE RECIFE',7480.00),(2020,26147300,'ESCOLA MUNICIPAL NOSSA SENHORA DO PILAR','PREF MUN DE RECIFE',3760.00),(2020,26148161,'ESCOLA MUNICIPAL EDUCADOR PAULO FREIRE','PREF MUN DE RECIFE',14040.00),(2020,26149370,'ESCOLA MUNICIPAL ALTO DO REFUGIO - IVAN NEVES','PREF MUN DE RECIFE',5420.00),(2020,26149800,'CMEI CREUSA ARCOVERDE DE FREITAS CAVALCANTI -','PREF MUN DE RECIFE',2680.00),(2020,26149834,'CRECHE MUNICIPAL ZACARIAS DO REGO MACIEL','PREF MUN DE RECIFE',4500.00),(2020,26149923,'CRECHE MUNICIPAL SAO JOAO','PREF MUN DE RECIFE',2300.00),(2020,26153122,'CMEI BRASILIA TEIMOSA','PREF MUN DE RECIFE',3300.00),(2020,26153297,'ESCOLA MUNICIPAL PROFESSOR ENALDO MANOEL DE SOUZA','PREF MUN DE RECIFE',10280.00),(2020,26153319,'CRECHE MUNICIPAL DEUS E AMOR-','PREF MUN DE RECIFE',2480.00),(2020,26153335,'CRECHE ESC RECIFE SANTA LUZIA','PREF MUN DE RECIFE',3080.00),(2020,26153386,'ESCOLA MUNICIPAL PROFESSOR ANTONIO DE BRITO ALVES','PREF MUN DE RECIFE',19020.00),(2020,26153408,'CRECHE MUNICIPAL E LUTANDO QUE SE CONQUISTA','PREF MUN DE RECIFE',2720.00),(2020,26153424,'ESCOLA MUNICIPAL DARCY RIBEIRO','PREF MUN DE RECIFE',12300.00),(2020,26153475,'ESCOLA MUNICIPAL VILA SANTA LUZIA','PREF MUN DE RECIFE',11000.00),(2020,26153491,'ESCOLA MONS MANOEL LEONARDO DE BARROS BARRETO','SECRETARIA DE EDUCACAO E ESPORTES',13440.00),(2020,26153556,'ESCOLA MUNICIPAL MARLUCE SANTIAGO DA SILVA','PREF MUN DE RECIFE',9160.00),(2020,26153599,'ESCOLA MUNICIPAL PROFESSOR RICARDO GAMA','PREF MUN DE RECIFE',12720.00),(2020,26154137,'ESCOLA MUNICIPAL PROFESSOR POTIGUAR MATOS','PREF MUN DE RECIFE',8520.00),(2020,26154820,'ESCOLA MUNICIPAL PROFESSOR PROFESSOR SOLANO MAGALHAES','PREF MUN DE RECIFE',8280.00),(2020,26154846,'ESCOLA MUNICIPAL 27 DE NOVEMBRO','PREF MUN DE RECIFE',6400.00),(2020,26155818,'ESCOLA MUNICIPAL PROF JANDIRA BOTELHO PEREIRA DA COSTA','PREF MUN DE RECIFE',14100.00),(2020,26155850,'ESCOLA MUNICIPAL DINA DE OLIVEIRA','PREF MUN DE RECIFE',17340.00),(2020,26155869,'ESCOLA MUNICIPAL ENGENHEIRO HENOCH COUTINHO DE MELO','PREF MUN DE RECIFE',8980.00),(2020,26157845,'ESCOLA MUNICIPAL PROFESSOR JOAO BATISTA LIPPO NETO','PREF MUN DE RECIFE',2080.00),(2020,26157888,'ESCOLA MUNICIPAL PASTOR JOSE MUNGUBA SOBRINHO','PREF MUN DE RECIFE',7800.00),(2020,26158280,'ESCOLA MUNICIPAL JARDIM UCHOA','PREF MUN DE RECIFE',5940.00),(2020,26158299,'ESCOLA MUNICIPAL PROFESSOR JULIO DE OLIVEIRA','PREF MUN DE RECIFE',9820.00),(2020,26158302,'ESCOLA MUNICIPAL PROFESSOR JOAO FRANCISCO DE SOUZA','PREF MUN DE RECIFE',8680.00),(2020,26158310,'ESCOLA MUNICIPAL ISAAC PEREIRA DA SILVA','PREF MUN DE RECIFE',7400.00),(2020,26158329,'ESCOLA MUNICIPAL DEPUTADO EDSON CANTARELLI','PREF MUN DE RECIFE',9620.00),(2020,26158370,'ESCOLA MUNICIPAL PROFESSOR ORLANDO PARAHYM','PREF MUN DE RECIFE',4540.00),(2020,26158400,'ESCOLA MUNICIPAL NOVO MANGUE','PREF MUN DE RECIFE',9340.00),(2020,26158752,'ESCOLA MUNICIPAL CORREGO DO EUCLIDES','PREF MUN DE RECIFE',1830.00),(2020,26164361,'ESCOLA MUNICIPAL JOSE MUCIO MONTEIRO','PREF MUN DE RECIFE',5900.00),(2020,26164701,'ESCOLA MUNICIPAL PARQUE DOS MILAGRES','PREF MUN DE RECIFE',9100.00),(2020,26166593,'ESCOLA MUNICIPAL ALTO DO PASCOAL','PREF MUN DE RECIFE',10920.00),(2020,26166607,'ESCOLA MUNICIPAL DE BEBERIBE','PREF MUN DE RECIFE',4440.00),(2020,26166623,'ESCOLA MUNICIPAL CAMPINA DO BARRETO','PREF MUN DE RECIFE',7340.00),(2020,26166631,'ESCOLA MUNICIPAL ENGENHEIRO EDINALDO MIRANDA DE OLIVEIRA','PREF MUN DE RECIFE',4660.00),(2020,26166640,'ESCOLA MUNICIPAL DE AGUA FRIA','PREF MUN DE RECIFE',6620.00),(2020,26166658,'ESCOLA MUNICIPAL DE CASA AMARELA','PREF MUN DE RECIFE',3160.00),(2020,26166666,'ESCOLA MUNICIPAL PROFESSOR JOSE SOARES DA SILVA','PREF MUN DE RECIFE',8280.00),(2020,26167808,'ESCOLA MUNICIPAL SERRA DA PRATA','PREF MUN DE RECIFE',3760.00),(2020,26167840,'ESCOLA MUNICIPAL UR 05','PREF MUN DE RECIFE',2560.00),(2020,26167891,'ESCOLA MUNICIPAL PROFESSOR JOSUE DE CASTRO','PREF MUN DE RECIFE',6740.00),(2020,26168073,'ESCOLA MUNICIPAL DO BARRO','PREF MUN DE RECIFE',4360.00),(2020,26168111,'ESCOLA MUNICIPAL DO PANTANAL','PREF MUN DE RECIFE',7700.00),(2020,26168120,'ESCOLA MUNICIPAL DO SANCHO','PREF MUN DE RECIFE',8000.00),(2020,26168138,'ESCOLA MUNICIPAL POETA JOAO CABRAL DE MELO NETO','PREF MUN DE RECIFE',6020.00),(2020,26168227,'ESCOLA MUNICIPAL IBURA DE BAIXO','PREF MUN DE RECIFE',7960.00),(2020,26170639,'ESCOLA MUNICIPAL ASA BRANCA','PREF MUN DE RECIFE',6860.00),(2020,26170647,'ESCOLA MUNICIPAL DIACONO ABEL GUEIROS','PREF MUN DE RECIFE',7720.00),(2020,26170663,'ESCOLA MUNICIPAL JARDIM MONTE VERDE','PREF MUN DE RECIFE',11920.00),(2020,26170671,'ESCOLA MUNICIPAL MAESTRO NELSON FERREIRA','PREF MUN DE RECIFE',3140.00),(2020,26170710,'ESCOLA MUNICIPAL SITIO DO BERARDO','PREF MUN DE RECIFE',4600.00),(2020,26170728,'CRECHE MUNICIPAL SITIO GRANDE','PREF MUN DE RECIFE',2540.00),(2020,26170744,'ESCOLA MUNICIPAL LADJANE BANDEIRA','PREF MUN DE RECIFE',2640.00),(2020,26170779,'ESCOLA MUNICIPAL CHICO MENDES','PREF MUN DE RECIFE',5190.00),(2020,26170795,'ESCOLA MUNICIPAL POETA CARLOS PENA FILHO','PREF MUN DE RECIFE',5320.00),(2020,26171716,'ESCOLA MUNICIPAL ARTISTA PLASTICO CICERO DIAS','PREF MUN DE RECIFE',2700.00),(2020,26171724,'ESCOLA MUNICIPAL JOAO AMAZONAS','PREF MUN DE RECIFE',4740.00),(2020,26171732,'ESCOLA MUNICIPAL JADER FIGUEIREDO DE ANDRADE SILVA','PREF MUN DE RECIFE',8600.00),(2020,26171740,'ESCOLA MUNICIPAL DA GUABIRABA','PREF MUN DE RECIFE',10280.00),(2020,26171767,'ESCOLA MUNICIPAL CARLUCIO DE SOUZA CASTANHA JUNIOR','PREF MUN DE RECIFE',11080.00),(2020,26172712,'ESCOLA DE REFERENCIA EM ENSINO MEDIO GINASIO PERNAMBUCANO -','SECRETARIA DE EDUCACAO E ESPORTES',14740.00),(2020,26175347,'ESCOLA MUNICIPAL FREI TADEU GLASER','PREF MUN DE RECIFE',3640.00),(2020,26175355,'ESCOLA MUNICIPAL PROFESSORA HELIA MARIA PEREIRA','PREF MUN DE RECIFE',3420.00),(2020,26175363,'ESCOLA MUNICIPAL CECILIA MEIRELLES','PREF MUN DE RECIFE',4280.00),(2020,26175371,'ESCOLA MUNICIPAL ANEXA CASA AMARELA','PREF MUN DE RECIFE',2700.00),(2020,26175380,'ESCOLA MUNICIPAL PEDRO ALCANTARA','PREF MUN DE RECIFE',4440.00),(2020,26175398,'ESCOLA MUNICIPAL MERCIA DE ALBUQUERQUE FERREIRA','PREF MUN DE RECIFE',6920.00),(2020,26176238,'ESCOLA TECNICA ESTADUAL PROFESSOR LUCILO AVILA PESSOA','SECRETARIA DE EDUCACAO E ESPORTES',10440.00),(2020,26177951,'ESCOLA MUNICIPAL GOVERNADOR MIGUEL ARRAES DE ALENCAR','PREF MUN DE RECIFE',11640.00),(2020,26177960,'ESCOLA MUNICIPAL POETA SOLANO TRINDADE','PREF MUN DE RECIFE',8940.00),(2020,26177978,'ESCOLA MUNICIPAL NOVA MORADA','PREF MUN DE RECIFE',10520.00),(2020,26178230,'ESCOLA TECNICA ESTADUAL CICERO DIAS','SECRETARIA DE EDUCACAO E ESPORTES',11120.00),(2020,26179610,'ESCOLA DE REFERENCIA EM ENSINO MEDIO NOBREGA','SECRETARIA DE EDUCACAO E ESPORTES',11020.00),(2020,26179857,'ESCOLA TECNICA ESTADUAL PORTO DIGITAL','SECRETARIA DE EDUCACAO E ESPORTES',8220.00),(2020,26181274,'CRECHE MUNICIPAL VILA IMPERIAL','PREF MUN DE RECIFE',2680.00),(2020,26181940,'ESCOLA MUNICIPAL DONA LUCI SILVA LIMA','PREF MUN DE RECIFE',3940.00),(2020,26182629,'ESCOLA ESTADUAL NOSSA SENHORA DAS GRACAS - RECIFE','SECRETARIA DE EDUCACAO E ESPORTES',7880.00),(2020,26183021,'ESCOLA TECNICA ESTADUAL MIGUEL BATISTA','SECRETARIA DE EDUCACAO E ESPORTES',9900.00),(2020,26186241,'ESCOLA DE REFERENCIA EM ENSINO MEDIO PROFESSOR JORDAO EMEREN','SECRETARIA DE EDUCACAO E ESPORTES',20180.00),(2020,26188295,'ESCOLA DE REFERENCIA EM ENSINO MEDIO POMPEIA CAMPOS','SECRETARIA DE EDUCACAO E ESPORTES',3300.00),(2020,26212200,'ESCOLA MUNICIPAL COMPOSITOR CAPIBA','PREF MUN DE RECIFE',4100.00),(2020,26212404,'ESCOLA MUNICIPAL ROZEMAR DE MACEDO LIMA','PREF MUN DE RECIFE',10180.00),(2020,26212609,'CMEI ESTRELA DA MANHA','PREF MUN DE RECIFE',2460.00),(2020,26419726,'ESCOLA MUNICIPAL MILTON ALMEIDA DOS SANTOS','PREF MUN DE RECIFE',3800.00),(2020,26419734,'ESCOLA MUNICIPAL CHICO SCIENCE','PREF MUN DE RECIFE',3180.00),(2020,26491710,'ESCOLA MUNICIPAL BOLA NA REDE','PREF MUN DE RECIFE',9040.00);
/*!40000 ALTER TABLE `valor_investido` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `valor_investido_AFTER_INSERT` AFTER INSERT ON `valor_investido` FOR EACH ROW BEGIN
if new.Nome_EEx = "pref mun de recife" then
	insert into mydb.escola
    (`Escola`, `Codigo`, `Suspensao_pagamento`, `Municipio`)
	values(new.Nome_escola, new.Cod_escola, 'NAO', 'RECIFE');
else 
insert into mydb.escola
    (`Escola`, `Codigo`, `Suspensao_pagamento`)
	values(new.Nome_escola, new.Cod_escola, 'NAO');
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-28 17:33:59