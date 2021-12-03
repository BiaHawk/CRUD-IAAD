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
-- Table structure for table `escola`
--

DROP TABLE IF EXISTS `escola`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `escola` (
  `Escola` varchar(100) NOT NULL,
  `Codigo` int NOT NULL,
  `CNPJ` varchar(20) DEFAULT NULL,
  `Situacao_contas` varchar(15) DEFAULT NULL,
  `Suspensao_pagamento` varchar(3) DEFAULT NULL,
  `Municipio` varchar(50) NOT NULL,
  PRIMARY KEY (`Codigo`),
  KEY `Nome_Municipio_idx` (`Municipio`),
  CONSTRAINT `Nome_Municipio` FOREIGN KEY (`Municipio`) REFERENCES `local` (`Nome_Municipio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escola`
--

LOCK TABLES `escola` WRITE;
/*!40000 ALTER TABLE `escola` DISABLE KEYS */;
INSERT INTO `escola` VALUES ('ESCOLA MUNICIPAL ANTONIO FARIAS FILHO',26117576,'2018630000119','Adimplente','NAO','RECIFE'),('CENTRO DE EDUCACAO DE JOVENS E ADULTOS POETA JOAQUIM CARDOZO',26117916,'3304307000174','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL DOS COELHOS',26118670,'2027113000106','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL MONTEIRO LOBATO',26118734,'3153729000196','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO SENADOR PAULO PESSOA GU',26118742,'8039672000112','Adimplente','NAO','RECIFE'),('ESCOLA ESPECIAL ULISSES PERNAMBUCANO',26118823,'3817322000116','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL JULIO VICENTE ALVES DE ARAUJO',26118955,'2428755000117','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL DE DOIS RIOS',26119129,'2060419000164','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL DOS REMEDIOS',26119145,'2428756000161','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL SENADOR JOSE ERMIRIO DE MORAES',26119170,'3146639000178','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL TRES CARNEIROS',26119196,'2018736000112','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL ZUMBI DOS PALMARES',26119200,'3030539000181','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL DA IPUTINGA',26119218,'3030669000114','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PADRE JOSE DE ANCHIETA',26119331,'2082908000117','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL GENERAL SAN MARTIN',26119617,'2048936000118','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL DOUTOR RODOLFO AURELIANO',26119641,'2018621000128','Adimplente','NAO','RECIFE'),('ESCOLA DE APLICACAO DO RECIFE',26119730,'35845191000177','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL JOAO XXIII',26119897,'2428748000115','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL LUIZ VAZ DE CAMOES',26119927,'2027207000185','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL NOVO PINA',26119994,'2428754000172','Adimplente','NAO','RECIFE'),('ESCOLA PROFESSORA INALDA SPINELLI',26120100,'4477510000105','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL VILA OPERARIA DO RECIFE',26120283,'3146645000125','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL DO DOM',26120402,'11254579000135','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PROFESSORA MARIA DA PAZ BRANDAO ALVES',26120569,'2018977000161','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PROFESSORA SONIA MARIA DE ARAUJO SOUZA',26120585,'2428804000111','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL ENGENHEIRO GUILHERME DINIZ',26120607,'2033085000130','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL ALMIRANTE SOARES DUTRA',26120658,'3146615000119','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL ENGENHEIRO UMBERTO GONDIM',26120674,'2484658000141','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL BALBINA MENELAU',26120682,'2038927000146','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL DO JORDAO',26120704,'2101974000197','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL DO LEAO',26120712,'2484645000172','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL DRAOMIRO CHAVES AGUIAR',26120720,'2428792000125','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL MAGALHAES BASTOS',26120763,'2484663000154','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PROFESSOR MOACYR DE ALBUQUERQUE',26120771,'2018734000123','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PADRE JOSE MATHIAS DELGADO',26120780,'2484653000119','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL HUGO GERDAU',26120810,'2036164000102','Adimplente','NAO','RECIFE'),('ESCOLA LICEU DE ARTES E OFICIOS',26120992,'16843487000104','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PROF ELIZABETH SALES COUTINHO BARROS',26121050,'2484660000110','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL SANTA MARIA',26121077,'2027115000103','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL VILA SESAMO',26121158,'3030605000113','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO JOAQUIM NABUCO',26121247,'3402204000147','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PROFESSOR JOSE DA COSTA PORTO',26121255,'2027112000161','Inadimplente','NAO','RECIFE'),('ESCOLA MANOEL BORBA',26121310,'3214839000110','Adimplente','NAO','RECIFE'),('ESCOLA LUIZ DELGADO',26121344,'3912602000103','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PEDRO AUGUSTO',26121468,'2036175000184','Adimplente','NAO','RECIFE'),('ESCOLA JOAO BARBALHO',26121620,'6865258000137','Adimplente','NAO','RECIFE'),('ESCOLA MONSENHOR FRANCISCO SALLES',26121638,'3270320000150','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO OLIVEIRA LIMA',26121654,'8201467000101','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PADRE ANTONIO HENRIQUE',26121662,'3153643000163','Inadimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO POETA MANUEL BANDEIRA',26121670,'3954595000102','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO GINASIO PERNAMBUCANO -',26121751,'8080404000144','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL REITOR JOAO ALFREDO',26121786,'2484662000100','Adimplente','NAO','RECIFE'),('ESCOLA TECNICA ESTADUAL ALMIRANTE SOARES DUTRA',26121816,'4468791000130','Adimplente','NAO','RECIFE'),('CENTRO DE EDUCACAO DE JOVENS E ADULTOS VALDEMAR DE OLIVEIRA',26121824,'8175098000120','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO ANIBAL FERNANDES',26121859,'3225763000129','Adimplente','NAO','RECIFE'),('ESCOLA CONEGO ROCHAEL DE MEDEIROS',26121867,'3269000000180','Adimplente','NAO','RECIFE'),('ESCOLA ESTACIO COIMBRA',26121875,'4465881000177','Adimplente','NAO','RECIFE'),('ESCOLA JOSE MARIA',26121891,'3225772000110','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL LUTADORES DO BEM',26121913,'3146641000147','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO SIZENANDO SILVEIRA',26121921,'7553680000110','Adimplente','NAO','RECIFE'),('ESCOLA SYLVIO RABELO',26121948,'8158283000106','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL CIDADAO HERBERT DE SOUZA',26121972,'5379304000125','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL GENERAL EMIDIO DANTAS BARRETO',26121980,'2428796000103','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL SEDE DA SABEDORIA',26122014,'2082909000161','Adimplente','NAO','RECIFE'),('CMEI ANA ROSA FALCAO DE CARVALHO',26122022,'38158433000142','Adimplente','NAO','RECIFE'),('COLEGIO DA POLICIA MILITAR DE PERNAMBUCO',26122120,'3808619000115','Adimplente','NAO','RECIFE'),('ESCOLA GOVERNADOR BARBOSA LIMA',26122227,'3704318000141','Adimplente','NAO','RECIFE'),('ESCOLA PROFESSOR MOTTA E ALBUQUERQUE',26122260,'3245528000119','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO REGUEIRA COSTA',26122278,'3208099000100','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL SEVERINA LIRA',26122308,'5698424000195','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL SERVICO SOCIAL DE BELEM',26122464,'5643816000157','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO CLOVIS BEVILAQUA',26122510,'3290660000142','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL MARIO MELO',26122529,'2082905000183','Adimplente','NAO','RECIFE'),('ESCOLA DOM CARLOS COELHO - RECIFE',26122545,'3250849000101','Adimplente','NAO','RECIFE'),('ESCOLA EMBAIXADOR GILBERTO AMADO',26122553,'3240432000168','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL DOM HELDER CAMARA',26122570,'2027114000150','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL SANTA CECILIA',26122600,'2048935000173','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL POETA JONATAS BRAGA',26122634,'3349242000183','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO SANTA PAULA FRASSINETTI',26122677,'3371239000166','Adimplente','NAO','RECIFE'),('ESCOLA TECNICA ESTADUAL PROFESSOR AGAMENON MAGALHAES - ETEPA',26122685,'8164938000159','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO OTHON PARAISO',26122839,'3811212000147','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO AMAURY DE MEDEIROS',26122847,'4528250000150','Adimplente','NAO','RECIFE'),('ESCOLA DEBORA FEIJO',26122855,'3811215000180','Adimplente','NAO','RECIFE'),('ESCOLA PRESIDENTE ARTHUR DA COSTA E SILVA',26122880,'3835041000196','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL DO COQUE',26122898,'2036161000160','Adimplente','NAO','RECIFE'),('ESCOLA SENADOR NILO DE SOUZA COELHO',26122952,'3835053000110','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO VIDAL DE NEGREIROS',26122960,'8289807000106','Adimplente','NAO','RECIFE'),('ESCOLA CARMELA DUTRA',26122987,'5463251000126','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL EDITE BRAGA',26123088,'3146642000191','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL SANTA EDWIGES',26123100,'5643851000176','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL VILA SAO MIGUEL',26123126,'2027097000151','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO FUNDAMENTAL CREUSA BARRETO DO',26123150,'5962046000105','Adimplente','NAO','RECIFE'),('ESCOLA MACIEL PINHEIRO',26123231,'3304485000103','Adimplente','NAO','RECIFE'),('ESCOLA MARIA GORETTI',26123240,'5736006000145','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO MARTINS JUNIOR',26123258,'8007603000127','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PAROQUIAL CRISTO REI',26123266,'3304732000163','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO JOAQUIM TAVORA',26123282,'6015634000102','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL SOLDADO JOSE ANTONIO DO NASCIMENTO',26123304,'23293875000124','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL ALTO DA BELA VISTA',26123380,'9479946000157','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL CASA DOS FERROVIARIOS',26123444,'2018609000113','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO ALBERTO TORRES',26123479,'3304288000186','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL DOM BOSCO',26123487,'2428744000137','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL DOUTOR ANTONIO CORREIA',26123495,'2036167000138','Adimplente','NAO','RECIFE'),('ESCOLA EDWIGES DE SA PEREIRA',26123509,'3811184000168','Adimplente','NAO','RECIFE'),('ESCOLA JOSE MARIANO',26123517,'3402193000103','Adimplente','NAO','RECIFE'),('ESCOLA MARCELINO CHAMPAGNAT',26123525,'6928445000112','Adimplente','NAO','RECIFE'),('ESCOLA MONSENHOR ALVARO NEGROMONTE',26123533,'3834985000149','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL ANDRE DE MELO',26123541,'2033079000182','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL DE TEJIPIO',26123550,'2428745000181','Adimplente','NAO','RECIFE'),('ESCOLA PAULO DE SOUZA LEAL',26123568,'6352344000146','Adimplente','NAO','RECIFE'),('ESCOLA PRESIDENTE HUMBERTO CASTELO BRANCO',26123576,'7502618000107','Adimplente','NAO','RECIFE'),('ESCOLA PROFESSORA OLINDINA ALVES SEMENTE',26123584,'3402330000100','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO PROFESSOR TRAJANO DE ME',26123592,'6862971000127','Adimplente','NAO','RECIFE'),('ESCOLA MARECHAL RONDON - RECIFE',26123630,'3402325000199','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PROFESSORA PRIMITIVA DE BARROS SILVA',26123649,'3153785000120','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL SANTO ANTONIO DO CACOTE',26123673,'2484650000185','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO ANIBAL FALCAO',26123703,'3402274000103','Adimplente','NAO','RECIFE'),('ESCOLA BARAO DO BONITO',26123720,'3304379000111','Adimplente','NAO','RECIFE'),('ESCOLA HEROIS DA RESTAURACAO',26123770,'3304777000138','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO MARIANO TEIXEIRA',26123819,'7837553000142','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL WALDEMAR VALENTE',26124076,'3030594000171','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL ABILIO GOMES',26124092,'2027103000170','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL LAGOA ENCANTADA',26124114,'2084514000106','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL CENTRO DE EDUC INFAN 14 BIS',26124173,'8064455000182','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO SANTOS DUMONT',26124190,'6865875000132','Adimplente','NAO','RECIFE'),('ESCOLA PROFESSOR MARCOS DE BARROS FREIRE',26124424,'4468875000173','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO APOLONIO SALES',26124432,'3304413000158','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO ASSIS CHATEAUBRIAND',26124440,'3835027000192','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL BEATO EUGENIO MAZENOD',26124467,'2027111000117','Adimplente','NAO','RECIFE'),('ESCOLA BRIGADEIRO EDUARDO GOMES - RECIFE',26124475,'7091083000110','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL CAPELA SANTO ANTONIO',26124483,'2484655000108','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL CICERO FRANKLIN CORDEIRO',26124513,'2033080000107','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL MARIA DE SAMPAIO LUCENA',26124556,'2039636000172','Adimplente','NAO','RECIFE'),('ESCOLA DELMIRO GOUVEIA',26124572,'6862872000145','Adimplente','NAO','RECIFE'),('ESCOLA ELEANOR ROOSEVELT',26124580,'6331777000115','Adimplente','NAO','RECIFE'),('ESCOLA ENEIDA RABELLO',26124599,'10503277000190','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO ENGENHEIRO LAURO DINIZ',26124602,'3770836000163','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL FUTURO FELIZ',26124610,'5369555000129','Adimplente','NAO','RECIFE'),('ESCOLA JORNALISTA COSTA PORTO',26124645,'6370615000196','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO LAGOA ENCANTADA',26124653,'3643613000135','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PROFESSOR MANOEL TORRES',26124661,'2048934000129','Adimplente','NAO','RECIFE'),('ESCOLA MARECHAL EURICO GASPAR DUTRA',26124670,'8091979000162','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL MARIA ADELAIDE DE BARROS',26124688,'2018607000124','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO MARIA RITA DA SILVA LES',26124696,'8017995000105','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL MARGARIDA SERPA COSSART',26124700,'2484646000117','Adimplente','NAO','RECIFE'),('ESCOLA OTHON BEZERRA DE MELO',26124777,'3304754000123','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO DOM SEBASTIAO LEME',26124785,'3304432000184','Adimplente','NAO','RECIFE'),('ESCOLA PROFESSOR JOSE VICENTE BARBOSA',26124807,'3304807000106','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PROFESSOR SIMOES BARBOSA',26124815,'2027205000196','Adimplente','NAO','RECIFE'),('ESCOLA PADRE LEBRET',26124831,'29553976000173','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL MENINO JESUS',26124840,'3402281000105','Adimplente','NAO','RECIFE'),('ESCOLA NOSSA SENHORA DA CONCEICAO',26124858,'8106673000132','Adimplente','NAO','RECIFE'),('ESCOLA MISSIONARIO SAO BENTO',26124874,'3304333000100','Adimplente','NAO','RECIFE'),('ESCOLA VILA DOS MILAGRES',26124904,'3811224000171','Adimplente','NAO','RECIFE'),('ESCOLA ROBERTO SILVEIRA',26124912,'10564844000119','Adimplente','NAO','RECIFE'),('ESCOLA SAO FRANCISCO DE ASSIS - RS',26124920,'3304787000173','Adimplente','NAO','RECIFE'),('ESCOLA SARGENTO CAMARGO',26124939,'4290255000197','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL ESCRITOR JOSUE DE CASTRO',26124955,'6338051000104','Adimplente','NAO','RECIFE'),('ESCOLA GERCINO DE PONTES',26125013,'6956198000168','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO JOAO BEZERRA',26125048,'3304504000193','Adimplente','NAO','RECIFE'),('ESCOLA LANDELINO ROCHA',26125072,'3402298000154','Adimplente','NAO','RECIFE'),('ESCOLA LUIS DE CAMOES',26125080,'3402256000113','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO PROFESSOR FERNANDO MOTA',26125250,'3304299000166','Adimplente','NAO','RECIFE'),('ESCOLA SENADOR ANTONIO FARIAS',26125293,'3304673000123','Adimplente','NAO','RECIFE'),('ESCOLA MONTE VERDE',26125358,'6659417000147','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL JARDIM MAURICEIA',26125480,'4157479000125','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL OSWALDO LIMA FILHO',26125510,'2032913000115','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PAIS E FILHOS',26125528,'2038924000102','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL POETA PAULO BANDEIRA DA CRUZ',26125544,'5379232000116','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PROFESSOR ADAUTO PONTES',26125552,'2018605000135','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PROF JOSE LOURENCO DE LIMA',26125560,'5698473000128','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL SAO FRANCISCO DE ASSIS',26125579,'3146608000117','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO JOSE VILELA',26125641,'3516393000189','Adimplente','NAO','RECIFE'),('ESCOLA LIONS DE PARNAMIRIM',26125650,'3211936000150','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL SOCIOLOGO GILBERTO FREYRE',26125692,'2082904000139','Inadimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL MUNDO ESPERANCA',26125706,'2027099000140','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO PROFESSOR CANDIDO DUART',26125757,'3205467000166','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO SILVA JARDIM',26125781,'3220574000163','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL VIRGEM PODEROSA',26125811,'2038931000104','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL ALTO JARDIM PROGRESSO',26125854,'2428752000183','Adimplente','NAO','RECIFE'),('ESCOLA MONSENHOR MANOEL MARQUES',26125943,'3214861000160','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO ALVARO LINS',26125978,'3363607000124','Adimplente','NAO','RECIFE'),('ESCOLA ANA MALTA DA COSTA AZEVEDO',26125986,'6251416000169','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL ARQUITETO ALEXANDRE MUNIZ DE OLIVEIRA',26125994,'3214885000110','Adimplente','NAO','RECIFE'),('ESCOLA CAIO PEREIRA',26126010,'3293306000171','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO CLOTILDE DE OLIVEIRA',26126044,'3225769000104','Adimplente','NAO','RECIFE'),('ESCOLA CORONEL OTHON',26126052,'3219846000105','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO AGEU MAGALHAES',26126079,'3269980000110','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL OCTAVIO DE MEIRA LINS',26126087,'2027098000104','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO PADRE MACHADO',26126109,'3220483000128','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PROFESSORA ALMERINDA UMBELINO DE BARROS',26126117,'2084516000197','Adimplente','NAO','RECIFE'),('ESCOLA DOM BOSCO - RECIFE',26126125,'3319694000112','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO DOM VITAL',26126133,'5150737000104','Adimplente','NAO','RECIFE'),('ESCOLA DONA MARIA TERESA CORREA',26126141,'3237346000104','Adimplente','NAO','RECIFE'),('ESCOLA ERUNDINA NEGREIROS DE ARAUJO',26126150,'3838774000184','Adimplente','NAO','RECIFE'),('ESCOLA GABRIELA MISTRAL',26126192,'3213767000197','Adimplente','NAO','RECIFE'),('ESCOLA GILBERTO FREYRE',26126206,'3259438000187','Adimplente','NAO','RECIFE'),('ESCOLA GOV CARLOS DE LIMA CAVALCANTI',26126214,'3909353000105','Adimplente','NAO','RECIFE'),('ESCOLA IRMA MAGNA',26126230,'3387786000130','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL MARGARIDA DE SIQUEIRA PESSOA',26126281,'2082906000128','Adimplente','NAO','RECIFE'),('ESCOLA MARIA AMALIA',26126290,'4210048000185','Adimplente','NAO','RECIFE'),('ESCOLA MATIAS DE ALBUQUERQUE',26126311,'3831417000194','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL CORREGO DA BICA',26126362,'2027206000130','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL ALTO DA GUABIRABA',26126370,'2100292000160','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL DOUTOR CAETE',26126389,'2428747000170','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PRESBITERO JOSE BEZERRA',26126419,'4473032000165','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PASTOR PAULO LEIVAS MACALAO',26126427,'2032918000148','Adimplente','NAO','RECIFE'),('ESCOLA NOSSA SENHORA DE FATIMA - RN',26126443,'3501932000106','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL POETA JOAQUIM CARDOSO',26126494,'2018624000161','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PROFESSOR ADERBAL GALVAO',26126516,'2018623000117','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PROFESSOR NILO PEREIRA',26126524,'2018602000100','Adimplente','NAO','RECIFE'),('ESCOLA COMANDANTE LUIZ GOMES',26126559,'8165140000121','Adimplente','NAO','RECIFE'),('ESCOLA PADRE JOAO BARBOSA',26126575,'3240905000127','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL SANTA MARIA GORETTI',26126583,'5561562000128','Adimplente','NAO','RECIFE'),('ESCOLA TOME GIBSON',26126605,'3220505000150','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO ROSA DE MAGALHAES MELO',26126613,'3225774000109','Adimplente','NAO','RECIFE'),('ESCOLA ROTARY DE NOVA DESCOBERTA',26126621,'3817165000149','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL SAO CRISTOVAO',26126630,'2027102000126','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL MAURICIO DE NASSAU',26126672,'2027101000181','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL CORREGO DA AREIA',26126680,'8963113000102','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL JOSEFINA MARINHO',26126770,'2038923000168','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PROFESSOR MAURO MOTA',26126788,'2018632000108','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL DOM JOSE LAMARTINE SOARES',26126818,'2484647000161','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL MANOEL ANTONIO DE FREITAS',26126826,'2038926000100','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL BOA ESPERANCA',26126869,'3030584000136','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PEDRINHO',26126966,'3297092000101','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL CREUSA DE FREITAS CAVALCANTI',26127008,'2032908000102','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL CASARAO DO BARBALHO',26127016,'5727162000140','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL CELIA ARRAES',26127024,'3030526000102','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL DOS TORROES',26127083,'8815316000143','Adimplente','NAO','RECIFE'),('ESCOLA CARLOS ALBERTO GONCALVES DE ALMEIDA',26127270,'6636297000162','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO DIARIO DE PERNAMBUCO',26127300,'4459643000159','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO JORNALISTA TRAJANO CHAC',26127334,'4117831000107','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL ARRAIAL NOVO DO BOM JESUS',26127369,'2082903000194','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL ENGENHO DO MEIO',26127377,'2038936000137','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO OLINTO VICTOR',26127415,'3304766000158','Adimplente','NAO','RECIFE'),('ESCOLA PINTOR LAURO VILLARES',26127423,'3305136000106','Adimplente','NAO','RECIFE'),('ESCOLA PROFESSOR LEAL DE BARROS',26127431,'4457476000107','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PAPA JOAO XXIII',26127458,'3304314000176','Adimplente','NAO','RECIFE'),('ESCOLA PADRE DEHON',26127474,'3362840000192','Adimplente','NAO','RECIFE'),('ESCOLA SENADOR NOVAES FILHO',26127512,'5859802000175','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL DIVINO ESPIRITO SANTO',26127520,'2018619000159','Inadimplente','NAO','RECIFE'),('ESCOLA PROFESSORA FONTAINHA DE ABREU',26127539,'5731077000155','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL DOUTOR SAMUEL GONCALVES',26127547,'6773117000194','Adimplente','NAO','RECIFE'),('ESCOLA BARROS CARVALHO',26127571,'6318432000121','Adimplente','NAO','RECIFE'),('ESCOLA EDUCADOR PAULO FREIRE',26127636,'3811201000167','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL DOUTOR EBENEZER GUEIROS',26127644,'3153730000110','Adimplente','NAO','RECIFE'),('ESCOLA JOAQUIM XAVIER DE BRITO',26127695,'10325398000190','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO PROFESSORA HELENA PUGO',26127741,'3402182000115','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL JOAO PESSOA GUERRA',26127784,'5971505000117','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL SAO DOMINGOS',26127792,'3304711000148','Adimplente','NAO','RECIFE'),('ESCOLA FERNANDES VIEIRA',26127857,'3304692000150','Adimplente','NAO','RECIFE'),('ESCOLA PROFESSOR CANDIDO DUARTE',26127865,'3402335000124','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL HENFIL',26127873,'2036159000191','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO DE BEBERIBE',26128101,'3299285000100','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL ALDA ROMEU',26128110,'2018616000115','Adimplente','NAO','RECIFE'),('ESCOLA DOUTOR FABIO CORREA',26128160,'3256180000165','Adimplente','NAO','RECIFE'),('ESCOLA DOUTOR FRANCISCO PESSOA DE QUEIROZ',26128179,'3251897000114','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO JARBAS PERNAMBUCANO',26128195,'3253761000143','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL DA MANGABEIRA',26128233,'2428751000139','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL LUIZ LUA GONZAGA',26128268,'2032915000104','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL NOVA AURORA',26128314,'2027106000104','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL NOVO HORIZONTE',26128322,'5643855000154','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PAULO VI',26128390,'2032920000117','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO PADRE NERCIO RODRIGUES',26128403,'3213757000151','Adimplente','NAO','RECIFE'),('ESCOLA PEDRO CELSO',26128420,'3223026000197','Adimplente','NAO','RECIFE'),('ESCOLA PROFESSOR JOSE DOS ANJOS',26128454,'3208704000142','Adimplente','NAO','RECIFE'),('ESCOLA PROFESSOR PEDRO AUGUSTO CARNEIRO LEAO',26128462,'3363031000103','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO PROFESSOR ALFREDO FREYR',26128497,'3219835000125','Adimplente','NAO','RECIFE'),('ESCOLA ROTARY DO ALTO DO PASCOAL',26128527,'3299288000135','Adimplente','NAO','RECIFE'),('ESCOLA SAO FRANCISCO DE ASSIS - RN',26128560,'3213765000106','Adimplente','NAO','RECIFE'),('ESCOLA SAO JUDAS TADEU',26128586,'3211918000178','Adimplente','NAO','RECIFE'),('ESCOLA SAO MIGUEL',26128594,'3281148000130','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL ANTONIO HERACLIO DO REGO',26128640,'2428749000160','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL ANTONIO LUIZ',26128659,'5885170000114','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL MONSENHOR VIANA',26128705,'2428793000170','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO PROFESSOR MARDONIO DE A',26128721,'3819201000103','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL SAO JOAO BATISTA',26128748,'2032909000157','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL ANA MAURICIA WANDERLEY',26128764,'2027105000160','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL ANTONIO TIBURCIO',26128772,'2027107000159','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL COMPOSITOR LEVINO FERREIRA',26128780,'3146609000161','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL DEUS E AMOR',26128888,'2018615000170','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL ANITA PAES BARRETO',26128926,'11254509000187','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL OLINDINA MONTEIRO DE OLIVEIRA FRANCA',26128934,'2018613000181','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL IRMA TEREZINHA BATISTA - PROJ NOVO VIVER',26128950,'2032906000113','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PINTOR LULA CARDOSO AYRES',26132249,'3146612000185','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL DEPUTADO FERNANDO SAMPAIO',26132267,'2018626000150','Inadimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL JORDAO BAIXO',26132635,'2036308000112','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL FERNANDO SANTA CRUZ',26132643,'2018628000140','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL NADIR COLACO',26133389,'2428806000100','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL NOVA DESCOBERTA',26133622,'2038930000160','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL CRISTIANO CORDEIRO',26133837,'2027109000148','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL KARLA PATRICIA',26134002,'2033077000193','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL INES SOARES DE LIMA',26134010,'2027104000115','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL NOSSA SENHORA DA PENHA',26134049,'3153734000107','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL MANOEL ROLIM',26134057,'2036171000104','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL SEVERINA BERNADETE TEIXEIRA',26134067,'3030577000134','Adimplente','NAO','RECIFE'),('ESCOLA OLGA BENARIO PRESTES',26134177,'11512937000162','Adimplente','NAO','RECIFE'),('ESCOLA PROFESSOR JOEL PONTES',26134180,'8469733000181','Adimplente','NAO','RECIFE'),('ESCOLA PADRE DONINO',26134350,'3226318000183','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL SANTO AMARO',26134379,'2060420000199','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL SITIO DO CEU',26136269,'2032917000101','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL ALTO DO MARACANA',26136300,'3153733000154','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL RENATO ACCIOLY CARNEIRO CAMPOS',26136335,'2048078000101','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PROFESSOR FLORESTAN FERNANDES',26139090,'2428800000133','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL ALTO SANTA TEREZINHA',26139723,'2027108000101','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL HISTORIADOR FLAVIO GUERRA',26145227,'2428798000100','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL NOSSA SENHORA DO PILAR',26147300,'4500071000104','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL EDUCADOR PAULO FREIRE',26148161,'5561597000167','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL ALTO DO REFUGIO - IVAN NEVES',26149370,'2082912000185','Adimplente','NAO','RECIFE'),('CMEI CREUSA ARCOVERDE DE FREITAS CAVALCANTI -',26149800,'20691670000109','Adimplente','NAO','RECIFE'),('CRECHE MUNICIPAL ZACARIAS DO REGO MACIEL',26149834,'18691695000160','Adimplente','NAO','RECIFE'),('CRECHE MUNICIPAL SAO JOAO',26149923,'36760137000191','Adimplente','NAO','RECIFE'),('CMEI BRASILIA TEIMOSA',26153122,'12674922000163','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PROFESSOR ENALDO MANOEL DE SOUZA',26153297,'4177303000135','Adimplente','NAO','RECIFE'),('CRECHE MUNICIPAL DEUS E AMOR-',26153319,'11270973000167','Adimplente','NAO','RECIFE'),('CRECHE ESC RECIFE SANTA LUZIA',26153335,'13829233000143','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PROFESSOR ANTONIO DE BRITO ALVES',26153386,'4208254000150','Adimplente','NAO','RECIFE'),('CRECHE MUNICIPAL E LUTANDO QUE SE CONQUISTA',26153408,'12520000000100','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL DARCY RIBEIRO',26153424,'5443244000162','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL VILA SANTA LUZIA',26153475,'5727109000149','Adimplente','NAO','RECIFE'),('ESCOLA MONS MANOEL LEONARDO DE BARROS BARRETO',26153491,'3304840000136','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL MARLUCE SANTIAGO DA SILVA',26153556,'5369563000175','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PROFESSOR RICARDO GAMA',26153599,'5357867000112','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PROFESSOR POTIGUAR MATOS',26154137,'5379289000115','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PROFESSOR PROFESSOR SOLANO MAGALHAES',26154820,'5369695000105','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL 27 DE NOVEMBRO',26154846,'2033084000195','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PROF JANDIRA BOTELHO PEREIRA DA COSTA',26155818,'5407456000194','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL DINA DE OLIVEIRA',26155850,'5401798000105','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL ENGENHEIRO HENOCH COUTINHO DE MELO',26155869,'5369704000150','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PROFESSOR JOAO BATISTA LIPPO NETO',26157845,'5698492000154','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PASTOR JOSE MUNGUBA SOBRINHO',26157888,'5569465000181','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL JARDIM UCHOA',26158280,'5727147000100','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PROFESSOR JULIO DE OLIVEIRA',26158299,'5369680000139','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PROFESSOR JOAO FRANCISCO DE SOUZA',26158302,'5698415000102','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL ISAAC PEREIRA DA SILVA',26158310,'5369661000102','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL DEPUTADO EDSON CANTARELLI',26158329,'5643864000145','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PROFESSOR ORLANDO PARAHYM',26158370,'5698390000139','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL NOVO MANGUE',26158400,'5885161000123','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL CORREGO DO EUCLIDES',26158752,'7134776000143','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL JOSE MUCIO MONTEIRO',26164361,'5472137000162','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PARQUE DOS MILAGRES',26164701,'5591883000175','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL ALTO DO PASCOAL',26166593,'5379256000175','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL DE BEBERIBE',26166607,'5699682000196','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL CAMPINA DO BARRETO',26166623,'5643785000134','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL ENGENHEIRO EDINALDO MIRANDA DE OLIVEIRA',26166631,'5698446000155','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL DE AGUA FRIA',26166640,'5979228000199','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL DE CASA AMARELA',26166658,'5885150000143','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PROFESSOR JOSE SOARES DA SILVA',26166666,'5698515000120','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL SERRA DA PRATA',26167808,'5369588000179','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL UR 05',26167840,'5698716000128','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PROFESSOR JOSUE DE CASTRO',26167891,'5971524000143','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL DO BARRO',26168073,'5699688000163','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL DO PANTANAL',26168111,'5698486000105','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL DO SANCHO',26168120,'5698401000180','Inadimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL POETA JOAO CABRAL DE MELO NETO',26168138,'5698781000153','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL IBURA DE BAIXO',26168227,'5885125000160','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL ASA BRANCA',26170639,'7112185000175','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL DIACONO ABEL GUEIROS',26170647,'8852714000130','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL JARDIM MONTE VERDE',26170663,'5957459000100','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL MAESTRO NELSON FERREIRA',26170671,'10792947000136','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL SITIO DO BERARDO',26170710,'7438207000191','Adimplente','NAO','RECIFE'),('CRECHE MUNICIPAL SITIO GRANDE',26170728,'11356855000176','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL LADJANE BANDEIRA',26170744,'11254569000108','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL CHICO MENDES',26170779,'8839202000133','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL POETA CARLOS PENA FILHO',26170795,'97532862000105','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL ARTISTA PLASTICO CICERO DIAS',26171716,'9543738000170','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL JOAO AMAZONAS',26171724,'8963127000118','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL JADER FIGUEIREDO DE ANDRADE SILVA',26171732,'8963135000164','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL DA GUABIRABA',26171740,'8761547000111','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL CARLUCIO DE SOUZA CASTANHA JUNIOR',26171767,'8635630000144','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO GINASIO PERNAMBUCANO -',26172712,'12550102000160','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL FREI TADEU GLASER',26175347,'15529122000147','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PROFESSORA HELIA MARIA PEREIRA',26175355,'18162375000113','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL CECILIA MEIRELLES',26175363,'10954508000182','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL ANEXA CASA AMARELA',26175371,'34345356000189','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL PEDRO ALCANTARA',26175380,'8815303000174','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL MERCIA DE ALBUQUERQUE FERREIRA',26175398,'8963120000104','Adimplente','NAO','RECIFE'),('ESCOLA TECNICA ESTADUAL PROFESSOR LUCILO AVILA PESSOA',26176238,'19558989000181','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL GOVERNADOR MIGUEL ARRAES DE ALENCAR',26177951,'9259924000181','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL POETA SOLANO TRINDADE',26177960,'11264236000151','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL NOVA MORADA',26177978,'9665286000107','Adimplente','NAO','RECIFE'),('ESCOLA TECNICA ESTADUAL CICERO DIAS',26178230,'14252873000104','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO NOBREGA',26179610,'19042461000155','Adimplente','NAO','RECIFE'),('ESCOLA TECNICA ESTADUAL PORTO DIGITAL',26179857,'12584578000111','Adimplente','NAO','RECIFE'),('CRECHE MUNICIPAL VILA IMPERIAL',26181274,'39594937000178','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL DONA LUCI SILVA LIMA',26181940,'33818373000123','Adimplente','NAO','RECIFE'),('ESCOLA ESTADUAL NOSSA SENHORA DAS GRACAS - RECIFE',26182629,'33468736000148','Adimplente','NAO','RECIFE'),('ESCOLA TECNICA ESTADUAL MIGUEL BATISTA',26183021,'27445767000180','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO PROFESSOR JORDAO EMEREN',26186241,'5653321000109','Adimplente','NAO','RECIFE'),('ESCOLA DE REFERENCIA EM ENSINO MEDIO POMPEIA CAMPOS',26188295,'35503045000163','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL COMPOSITOR CAPIBA',26212200,'11259050000104','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL ROZEMAR DE MACEDO LIMA',26212404,'11258955000160','Inadimplente','NAO','RECIFE'),('CMEI ESTRELA DA MANHA',26212609,'12444954000172','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL MILTON ALMEIDA DOS SANTOS',26419726,'13563936000172','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL CHICO SCIENCE',26419734,'17316375000168','Adimplente','NAO','RECIFE'),('ESCOLA MUNICIPAL BOLA NA REDE',26491710,'16682800000170','Adimplente','NAO','RECIFE');
/*!40000 ALTER TABLE `escola` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-02 22:06:46
