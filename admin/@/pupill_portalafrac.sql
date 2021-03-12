-- Generation time: Tue, 01 Dec 2020 13:05:05 -0300
-- Host: pupill.us
-- DB name: pupill_portalafrac
/*!40030 SET NAMES UTF8 */;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `arquivos`;
CREATE TABLE `arquivos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(255) DEFAULT NULL,
  `nome` varchar(2555) DEFAULT NULL,
  `evento` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `criado_em` datetime DEFAULT NULL,
  `ultimo_download` datetime DEFAULT NULL,
  `data_envio` datetime DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `expira_em` datetime DEFAULT NULL,
  `downloads` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4;

INSERT INTO `arquivos` VALUES ('80','Malling','Apresentação Empresarial.pdf','','3','2020-09-07 19:47:43','2020-09-08 12:37:40','2020-09-07 19:47:43','5315d2d62f3df31713fd3229be75be84573ba0a6','2020-09-08 20:09:16','4'),
('81','Malling','logo-top.png','sdffwe','3','2020-09-08 14:57:25',NULL,'2020-09-08 14:57:25','0eeddf0044b6b63a86c16d34c77677c1575395ae',NULL,'0'); 


DROP TABLE IF EXISTS `audit`;
CREATE TABLE `audit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `page` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(255) NOT NULL,
  `viewed` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

INSERT INTO `audit` VALUES ('1','0','4','2020-09-03 08:48:27','::1','0'),
('2','0','4','2020-09-03 08:59:27','::1','0'),
('3','0','24','2020-09-03 09:00:33','::1','0'),
('4','0','94','2020-09-03 09:27:22','::1','0'),
('5','3','4','2020-09-04 08:24:23','::1','0'),
('6','0','90','2020-09-04 08:25:12','::1','0'),
('7','0','95','2020-09-04 08:46:59','::1','0'),
('8','0','95','2020-09-04 08:48:22','::1','0'),
('9','0','95','2020-09-04 08:49:22','::1','0'),
('10','0','95','2020-09-04 08:49:24','::1','0'),
('11','0','95','2020-09-04 08:51:12','::1','0'),
('12','0','95','2020-09-04 08:51:40','::1','0'),
('13','0','90','2020-09-04 08:55:15','::1','0'),
('14','0','95','2020-09-04 08:56:14','::1','0'),
('15','0','90','2020-09-04 08:56:51','::1','0'),
('16','0','95','2020-09-04 08:57:04','::1','0'),
('17','0','90','2020-09-04 08:57:50','::1','0'),
('18','0','95','2020-09-04 08:58:08','::1','0'),
('19','0','95','2020-09-04 08:58:35','::1','0'),
('20','0','95','2020-09-04 08:59:16','::1','0'),
('21','0','90','2020-09-04 08:59:19','::1','0'),
('22','0','95','2020-09-04 08:59:30','::1','0'),
('23','0','95','2020-09-04 09:02:23','::1','0'),
('24','0','90','2020-09-04 09:18:43','::1','0'),
('25','0','90','2020-09-04 09:21:36','::1','0'),
('26','0','90','2020-09-06 08:32:39','::1','0'),
('27','3','4','2020-09-06 17:59:59','::1','0'),
('28','0','90','2020-10-15 15:59:15','::1','0'),
('29','0','96','2020-10-16 13:10:21','::1','0'); 


DROP TABLE IF EXISTS `conteudos`;
CREATE TABLE `conteudos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(555) DEFAULT NULL,
  `img` varchar(555) DEFAULT NULL,
  `content` text,
  `date-created` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date-modified` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

INSERT INTO `conteudos` VALUES ('36','1','AFRAC participa hoje do “ENCONTRO DE VALOR ABAD 2020” em São Paulo.','124578c71d48d5e61a13b8c80f716c4654306524.jpeg','<p class=\"has-text-align-justify\" style=\"box-sizing: inherit; padding: 0px; margin-right: auto; margin-bottom: 32px; margin-left: auto; max-width: calc(750px); text-align: justify; overflow-wrap: break-word; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\">O Presidente e vice-presidente de Relações Institucionais da AFRAC, Paulo Eduardo Guimarães e Edgard de Castro prestigiam o evento que celebra os maiores destaques do segmento no último ano.<br style=\"box-sizing: inherit; max-width: unset;\"><br style=\"box-sizing: inherit; max-width: unset;\">O evento apresentará também a posse da nova diretoria da&nbsp;<a href=\"https://abad.com.br/\" target=\"_blank\" rel=\"noreferrer noopener\" style=\"box-sizing: inherit; color: rgb(18, 121, 190); cursor: pointer; max-width: unset; text-decoration-line: underline;\">associação</a>, e terá a participação especial do Secretário Especial da Produtividade, Emprego e Competitividade, Carlos Da Costa.</p><p style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; max-width: calc(750px); overflow-wrap: break-word; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\">Acompanhe ao vivo através do link:<br style=\"box-sizing: inherit; max-width: unset;\"><a rel=\"noreferrer noopener\" href=\"https://www.youtube.com/watch?v=bdTBsYUtWZs&amp;feature=emb_title\" target=\"_blank\" style=\"box-sizing: inherit; color: rgb(18, 121, 190); cursor: pointer; max-width: unset; text-decoration-line: underline;\">https://www.youtube.com/watch?v=bdTBsYUtWZs&amp;feature=emb_title</a></p><figure class=\"wp-block-gallery columns-3 is-cropped\" style=\"box-sizing: inherit; padding: 0px; margin-right: auto; margin-bottom: 0px; margin-left: auto; max-width: calc(750px); display: flex; flex-wrap: wrap; list-style-type: none; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\"><ul data-carousel-extra=\"{&quot;blog_id&quot;:174430748,&quot;permalink&quot;:&quot;https:\\/\\/blogafrac.org\\/2020\\/11\\/23\\/afrac-participa-hoje-do-encontro-de-valor-abad-2020-em-sao-paulo\\/&quot;}\" class=\"blocks-gallery-grid\" style=\"box-sizing: inherit; padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; max-width: unset; font-family: var(--font-base, &quot;PT Sans&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Roboto&quot;, &quot;Oxygen&quot;, &quot;Ubuntu&quot;, &quot;Cantarell&quot;, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif); list-style-type: none; display: flex; flex-wrap: wrap; cursor: pointer;\"><li class=\"blocks-gallery-item\" style=\"box-sizing: inherit; padding: 0px; margin: 0px 1em 1em 0px; max-width: unset; display: flex; flex-grow: 1; flex-direction: column; justify-content: center; position: relative; width: calc(33.3333% - 0.66667em);\"><figure style=\"box-sizing: inherit; padding: 0px; margin-bottom: 0px; max-width: none; height: 177.5px; display: flex; align-items: flex-end; justify-content: flex-start;\"><img data-attachment-id=\"1797\" data-permalink=\"https://blogafrac.org/whatsapp-image-2020-11-23-at-10-54-12/\" data-orig-file=\"https://blogdafrac.files.wordpress.com/2020/11/whatsapp-image-2020-11-23-at-10.54.12.jpeg\" data-orig-size=\"1280,576\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"whatsapp-image-2020-11-23-at-10.54.12\" data-image-description=\"\" data-medium-file=\"https://blogdafrac.files.wordpress.com/2020/11/whatsapp-image-2020-11-23-at-10.54.12.jpeg?w=300\" data-large-file=\"https://blogdafrac.files.wordpress.com/2020/11/whatsapp-image-2020-11-23-at-10.54.12.jpeg?w=750\" src=\"https://blogdafrac.files.wordpress.com/2020/11/whatsapp-image-2020-11-23-at-10.54.12.jpeg?w=1024\" alt=\"\" data-id=\"1797\" data-link=\"https://blogafrac.org/whatsapp-image-2020-11-23-at-10-54-12/\" class=\"wp-image-1797\" srcset=\"https://blogdafrac.files.wordpress.com/2020/11/whatsapp-image-2020-11-23-at-10.54.12.jpeg?w=1024 1024w, https://blogdafrac.files.wordpress.com/2020/11/whatsapp-image-2020-11-23-at-10.54.12.jpeg?w=150 150w, https://blogdafrac.files.wordpress.com/2020/11/whatsapp-image-2020-11-23-at-10.54.12.jpeg?w=300 300w, https://blogdafrac.files.wordpress.com/2020/11/whatsapp-image-2020-11-23-at-10.54.12.jpeg?w=768 768w, https://blogdafrac.files.wordpress.com/2020/11/whatsapp-image-2020-11-23-at-10.54.12.jpeg 1280w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" style=\"box-sizing: inherit; max-width: 100%; height: 177.5px; display: block; width: 236.672px; flex: 1 1 0%; object-fit: cover;\"></figure></li><li class=\"blocks-gallery-item\" style=\"box-sizing: inherit; padding: 0px; margin: 0px 1em 1em 0px; max-width: unset; display: flex; flex-grow: 1; flex-direction: column; justify-content: center; position: relative; width: calc(33.3333% - 0.66667em);\"><figure style=\"box-sizing: inherit; padding: 0px; margin-bottom: 0px; max-width: none; height: 177.5px; display: flex; align-items: flex-end; justify-content: flex-start;\"><img data-attachment-id=\"1798\" data-permalink=\"https://blogafrac.org/02-3/\" data-orig-file=\"https://blogdafrac.files.wordpress.com/2020/11/02.jpeg\" data-orig-size=\"1024,768\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"02\" data-image-description=\"\" data-medium-file=\"https://blogdafrac.files.wordpress.com/2020/11/02.jpeg?w=300\" data-large-file=\"https://blogdafrac.files.wordpress.com/2020/11/02.jpeg?w=750\" src=\"https://blogdafrac.files.wordpress.com/2020/11/02.jpeg?w=1024\" alt=\"\" data-id=\"1798\" data-link=\"https://blogafrac.org/02-3/\" class=\"wp-image-1798\" srcset=\"https://blogdafrac.files.wordpress.com/2020/11/02.jpeg 1024w, https://blogdafrac.files.wordpress.com/2020/11/02.jpeg?w=150 150w, https://blogdafrac.files.wordpress.com/2020/11/02.jpeg?w=300 300w, https://blogdafrac.files.wordpress.com/2020/11/02.jpeg?w=768 768w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" style=\"box-sizing: inherit; max-width: 100%; height: 177.5px; display: block; width: 236.672px; flex: 1 1 0%; object-fit: cover;\"></figure></li><li class=\"blocks-gallery-item\" style=\"box-sizing: inherit; padding: 0px; margin: 0px 0px 1em; max-width: unset; display: flex; flex-grow: 1; flex-direction: column; justify-content: center; position: relative; width: calc(33.3333% - 0.66667em);\"><figure style=\"box-sizing: inherit; padding: 0px; margin-bottom: 0px; max-width: none; height: 177.5px; display: flex; align-items: flex-end; justify-content: flex-start;\"><img data-attachment-id=\"1799\" data-permalink=\"https://blogafrac.org/01-16/\" data-orig-file=\"https://blogdafrac.files.wordpress.com/2020/11/01.jpeg\" data-orig-size=\"1024,768\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"01\" data-image-description=\"\" data-medium-file=\"https://blogdafrac.files.wordpress.com/2020/11/01.jpeg?w=300\" data-large-file=\"https://blogdafrac.files.wordpress.com/2020/11/01.jpeg?w=750\" src=\"https://blogdafrac.files.wordpress.com/2020/11/01.jpeg?w=1024\" alt=\"\" data-id=\"1799\" data-link=\"https://blogafrac.org/01-16/\" class=\"wp-image-1799\" srcset=\"https://blogdafrac.files.wordpress.com/2020/11/01.jpeg 1024w, https://blogdafrac.files.wordpress.com/2020/11/01.jpeg?w=150 150w, https://blogdafrac.files.wordpress.com/2020/11/01.jpeg?w=300 300w, https://blogdafrac.files.wordpress.com/2020/11/01.jpeg?w=768 768w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" style=\"box-sizing: inherit; max-width: 100%; height: 177.5px; display: block; width: 236.672px; flex: 1 1 0%; object-fit: cover;\"></figure></li><li class=\"blocks-gallery-item\" style=\"box-sizing: inherit; padding: 0px; margin: 0px 0px 1em; max-width: unset; display: flex; flex-grow: 1; flex-direction: column; justify-content: center; position: relative; width: calc(33.3333% - 0.66667em);\"><div><br></div></li></ul></figure>                                        ','2020-11-28 20:21:09','Publicado',NULL,'1',NULL),
('37','1','Dispositivo Autorizador Fiscal – DAF é apresentado via Audiência Pública em Santa Catarina.','9a34f1249c2b2baac2b9711747f1feee708f36c5.png','<p style=\"box-sizing: inherit; padding: 0px; margin-right: auto; margin-bottom: 32px; margin-left: auto; max-width: calc(750px); overflow-wrap: break-word; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\"><em style=\"box-sizing: inherit; max-width: unset;\">Prezados Associados,<br style=\"box-sizing: inherit; max-width: unset;\"></em>Santa Catarina realizou na data de hoje (23.11) Audiência Pública para apresentar as especificações do&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\"><u style=\"box-sizing: inherit; max-width: unset;\"><a rel=\"noreferrer noopener\" href=\"https://d335luupugsy2.cloudfront.net/cms%2Ffiles%2F56860%2F1606159535daf-consulta-publica.pdf\" target=\"_blank\" style=\"box-sizing: inherit; color: rgb(18, 121, 190); cursor: pointer; max-width: unset;\">Dispositivo Autorizador Fiscal (DAF)</a>.</u></span></p><p class=\"has-text-align-justify\" style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; max-width: calc(750px); text-align: justify; overflow-wrap: break-word; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\">Na ocasião, foi apresentado o portal onde é possível baixar e ter acesso ao documento, além de encaminhar as contribuições que desejar, seguindo as orientações abaixo:</p><ul style=\"box-sizing: inherit; padding: 0px 0px 0px 32px; margin: 32px auto; max-width: calc(750px); font-family: Roboto; color: rgb(48, 48, 48); font-size: 20px;\"><li style=\"box-sizing: inherit; padding: 0px; margin: 0px; max-width: unset;\">O interessado precisa se identificar;</li><li style=\"box-sizing: inherit; padding: 0px; margin: 0px; max-width: unset;\">Não há limite máximo para o envio de contribuições;</li><li style=\"box-sizing: inherit; padding: 0px; margin: 0px; max-width: unset;\">Cada uma deve ter como foco um único ponto da especificação;</li><li style=\"box-sizing: inherit; padding: 0px; margin: 0px; max-width: unset;\">Deverão ser feitas por meio do sistema de issues do GitHub;</li><li style=\"box-sizing: inherit; padding: 0px; margin: 0px; max-width: unset;\">Todas as contribuições ficarão públicas;</li><li style=\"box-sizing: inherit; padding: 0px; margin: 0px; max-width: unset;\">Pode-se adicionar comentários em uma contribuição que fora criada por outra pessoa.</li></ul><p class=\"has-text-align-justify\" style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; max-width: calc(750px); text-align: justify; overflow-wrap: break-word; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\">O período para envio será:&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\">de 23.11.2020 até 13.12.2020</span>, através do endereço:&nbsp;<a href=\"https://ifsc-lased.github.io/daf/\" style=\"box-sizing: inherit; color: rgb(18, 121, 190); cursor: pointer; max-width: unset; text-decoration-line: underline;\">https://ifsc-lased.github.io/daf/</a>&nbsp;&nbsp;&nbsp;</p><hr class=\"wp-block-separator\" style=\"padding: 0px; margin: 32px auto; max-width: 96px; border-bottom: 2px solid rgb(197, 197, 197); clear: both; border-top: none; border-right-width: initial; border-right-style: none; border-left-width: initial; border-left-style: none; opacity: 0.4; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\"><p style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; max-width: calc(750px); overflow-wrap: break-word; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\">Atenciosamente,<br style=\"box-sizing: inherit; max-width: unset;\"><span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\">Equipe AFRAC!</span></p><div class=\"wp-block-image\" style=\"box-sizing: inherit; max-width: calc(750px); margin: 0px auto; text-align: center; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\"><figure class=\"aligncenter size-large is-resized\" style=\"box-sizing: inherit; padding: 0px; margin-right: auto; margin-bottom: 0px; margin-left: auto; max-width: none; clear: both; display: table; float: none;\"><img loading=\"lazy\" data-attachment-id=\"1809\" data-permalink=\"https://blogafrac.org/1-7/\" data-orig-file=\"https://blogdafrac.files.wordpress.com/2020/11/1.png\" data-orig-size=\"624,370\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"1\" data-image-description=\"\" data-medium-file=\"https://blogdafrac.files.wordpress.com/2020/11/1.png?w=300\" data-large-file=\"https://blogdafrac.files.wordpress.com/2020/11/1.png?w=624\" src=\"https://blogdafrac.files.wordpress.com/2020/11/1.png?w=624\" alt=\"\" class=\"wp-image-1809\" width=\"350\" height=\"208\" srcset=\"https://blogdafrac.files.wordpress.com/2020/11/1.png?w=350 350w, https://blogdafrac.files.wordpress.com/2020/11/1.png?w=150 150w, https://blogdafrac.files.wordpress.com/2020/11/1.png?w=300 300w, https://blogdafrac.files.wordpress.com/2020/11/1.png 624w\" sizes=\"(max-width: 350px) 100vw, 350px\" style=\"box-sizing: inherit; max-width: 100%; height: auto;\"></figure></div>                                        ','2020-11-28 20:21:57','Publicado',NULL,'1',NULL),
('38','1','Fique atento às regras de obrigatoriedade do uso da NFC-e no Estado do Rio Grande do Sul','img-padrao-post.jpg','<p class=\"has-text-align-justify\" style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; max-width: calc(750px); text-align: justify; overflow-wrap: break-word; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\"><span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\">Prezados Associados, fiquem atentos!<br style=\"box-sizing: inherit; max-width: unset;\"></span>O&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\"><a rel=\"noreferrer noopener\" href=\"http://clickemailmkt.afrac.org.br/ls/click?upn=T1FKcV24GbHzrUnNZ03oElu-2FTFUNG6mvesplZe9v7itBHEtGpK-2B7n1QM7kzOMtyYuigfdRVcH-2FFSO9JcvI4PmcGN2CKMRLDthevBk7QJy3P1FkL5EqSsfD3gfeFSAI-2BcBRv7rNxsVgy5O3PdBdb99xNMFhbXJC97jbTdNvExEbB-2F7YUi6E7eywq9zzcO1SM5KSoZrpNteXqbc4ecRoHpdtfqz6ZcCgPen4TLLnVOLEgx07x2jRlUT1nMkfa93HW9ZqnKeQZr7gxdVAqLzKbXAnK7qUj-2FrCojtFMGIsP-2F7nc-3DQmQE_kvGSQoIUKaRlmPCiuyFrJEyPKg7AcjiYwTQ3AcVedkHXvenVfGvcM3koJkYMfFvwejGwgHWNwmkTQ-2BLwHcH9H-2BY1f3l-2B08yKpS4Yr-2BfdhOSfz3WfgW-2Bso92CQw5Dcfq-2BA7h8ikuv-2B-2FwqbJmvK3yURzH1-2FzprVCnMQv4emt81EY-2BDfAjzqfnlSrrAGwgWEA-2FiQGnjRtDyv7MRg2zLaXDNndHqWKjSVMJCEkFmXWuoUA-2B8pHSy3wmysuu6wgO1Cj-2B8RwgNGgdesChtfbI0Hq4h9-2BlSUBuMn-2FVLmtGp1Abp2MBTppMfao3koFNEo1GogN4LoFiWIW39C-2BceSWJslCCqfbDM8KMpbmuDCOG90IDtOA8EFlv9jHNK9YfH6SGjS6TPXyi8FY7Gx-2Fng8-2BvgMwObCXcfYV-2FOQrtShSqtCVLmcJwf4wewp2XffMf3rUi1AOQtjBgSzFjFJ5hOsUQZX5gE4f-2BGkClbZsRPtfMSewiZDct0fgqa3tt43wLfA2PK0LJa\" target=\"_blank\" style=\"box-sizing: inherit; color: rgb(18, 121, 190); cursor: pointer; max-width: unset; text-decoration-line: underline;\">Decreto nº 54.905</a>&nbsp;de 11 de Dezembro de 2019</span>&nbsp;disciplina que os contribuintes enquadrados nas categorias específicas de faturamento ou que não sejam atacarejo, estão obrigados ao uso da NFC-e a partir de 01.01 2021,conforme a tabela abaixo:</p><div class=\"wp-block-image\" style=\"box-sizing: inherit; max-width: calc(750px); margin: 0px auto; text-align: center; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\"><figure class=\"aligncenter size-large is-resized\" style=\"box-sizing: inherit; padding: 0px; margin-right: auto; margin-bottom: 0px; margin-left: auto; max-width: none; clear: both; display: table; float: none;\"><img loading=\"lazy\" data-attachment-id=\"1812\" data-permalink=\"https://blogafrac.org/001-2/\" data-orig-file=\"https://blogdafrac.files.wordpress.com/2020/11/001.png\" data-orig-size=\"1388,591\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"001\" data-image-description=\"\" data-medium-file=\"https://blogdafrac.files.wordpress.com/2020/11/001.png?w=300\" data-large-file=\"https://blogdafrac.files.wordpress.com/2020/11/001.png?w=750\" src=\"https://blogdafrac.files.wordpress.com/2020/11/001.png?w=1024\" alt=\"\" class=\"wp-image-1812\" width=\"799\" height=\"340\" srcset=\"https://blogdafrac.files.wordpress.com/2020/11/001.png?w=1024 1024w, https://blogdafrac.files.wordpress.com/2020/11/001.png?w=799 799w, https://blogdafrac.files.wordpress.com/2020/11/001.png?w=150 150w, https://blogdafrac.files.wordpress.com/2020/11/001.png?w=300 300w, https://blogdafrac.files.wordpress.com/2020/11/001.png?w=768 768w, https://blogdafrac.files.wordpress.com/2020/11/001.png 1388w\" sizes=\"(max-width: 799px) 100vw, 799px\" style=\"box-sizing: inherit; max-width: 100%; height: auto;\"></figure></div><p class=\"has-text-align-justify\" style=\"box-sizing: inherit; padding: 0px; margin-right: auto; margin-bottom: 32px; margin-left: auto; max-width: calc(750px); text-align: justify; overflow-wrap: break-word; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\"><span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\">ATENÇÃO</span>: Os contribuintes que promovam operações de comércio varejista, poderão utilizar o&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\">ECF&nbsp;</span>por 02 anos contados da respectiva data de início da obrigatoriedade ou até o prazo limite de&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\">31.12.2021</span>, o que ocorrer primeiro.</p><hr class=\"wp-block-separator\" style=\"padding: 0px; margin: 32px auto; max-width: 96px; border-bottom: 2px solid rgb(197, 197, 197); clear: both; border-top: none; border-right-width: initial; border-right-style: none; border-left-width: initial; border-left-style: none; opacity: 0.4; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\"><p class=\"has-text-align-justify\" style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; max-width: calc(750px); text-align: justify; overflow-wrap: break-word; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\"><em style=\"box-sizing: inherit; max-width: unset;\">Acompanhe os nossos Informativos Jurídicos e esteja sempre à frente no Mercado de Automação para o Comércio!</em><br style=\"box-sizing: inherit; max-width: unset;\"><br style=\"box-sizing: inherit; max-width: unset;\">Atenciosamente,<br style=\"box-sizing: inherit; max-width: unset;\"><span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\">Equipe AFRAC!</span></p>                                        ','2020-11-28 20:22:39','Publicado',NULL,'1',NULL),
('39','1','Membros da Unecs homologam candidatura de José César da Costa à Presidência','29a21a082bc98cc906904ffbbc6fe48e2934fb71.jpeg','<p class=\"has-text-align-center\" style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; max-width: calc(750px); text-align: center; overflow-wrap: break-word; color: rgb(48, 48, 48); font-family: Roboto; font-size: 16px;\"><em style=\"box-sizing: inherit; max-width: unset;\">Encontro aconteceu em São Paulo, aproveitando a realização do Encontro de Valor Abad 2020</em>.</p><p class=\"has-text-align-justify\" style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; max-width: calc(750px); text-align: justify; overflow-wrap: break-word; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\">Os presidentes da União Nacional de Entidades do Comércio e Serviços (Unecs) homologaram a candidatura do presidente da Confederação Nacional de Dirigentes Lojistas (CNDL), José César da Costa, à Presidência da entidade, em reunião realizada nesta segunda-feira, dia 23 de novembro, na Fecomércio-SP, aproveitando a realização do Encontro de Valor Abad 2020.</p><p class=\"has-text-align-justify\" style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; max-width: calc(750px); text-align: justify; overflow-wrap: break-word; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\">A candidatura do presidente da CNDL foi apresentada na reunião e aprovada por todos os presidentes. “Agora, haverá um processo formal, definido pelo nosso estatuto, mas a aceitação dos presidentes é suficiente para que possamos afirmar que ele será o próximo presidente, no Biênio 2021/2022”, afirmou George Pinheiro, atual presidente da Unecs e da CACB – Confederação das Associações Comerciais e Empresariais do Brasil.</p><p class=\"has-text-align-justify\" style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; max-width: calc(750px); text-align: justify; overflow-wrap: break-word; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\">O presidente José Costa agradeceu o apoio dos membros e disse que está à disposição para desempenhar uma boa gestão e liderar o grupo, que tem grandes desafios no próximo ano. Ele apresentou os profissionais que atuam em relações governamentais pela CNDL.</p><p class=\"has-text-align-justify\" style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; max-width: calc(750px); text-align: justify; overflow-wrap: break-word; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\">Dando sequência à reunião, foi colocada em aprovação o Regimento Interno da Unecs, que tem por objetivo regular as atividades institucionais necessárias à consecução das finalidades e objetivos estatutários. Sem questionamentos, o regimento foi aprovado.</p><figure class=\"wp-block-image size-large\" style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; max-width: calc(750px); text-align: center; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\"><img data-attachment-id=\"1819\" data-permalink=\"https://blogafrac.org/whatsapp-image-2020-11-23-at-16-25-05/\" data-orig-file=\"https://blogdafrac.files.wordpress.com/2020/11/whatsapp-image-2020-11-23-at-16.25.05.jpeg\" data-orig-size=\"1280,576\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"whatsapp-image-2020-11-23-at-16.25.05\" data-image-description=\"\" data-medium-file=\"https://blogdafrac.files.wordpress.com/2020/11/whatsapp-image-2020-11-23-at-16.25.05.jpeg?w=300\" data-large-file=\"https://blogdafrac.files.wordpress.com/2020/11/whatsapp-image-2020-11-23-at-16.25.05.jpeg?w=750\" src=\"https://blogdafrac.files.wordpress.com/2020/11/whatsapp-image-2020-11-23-at-16.25.05.jpeg?w=1024\" alt=\"\" class=\"wp-image-1819\" srcset=\"https://blogdafrac.files.wordpress.com/2020/11/whatsapp-image-2020-11-23-at-16.25.05.jpeg?w=1024 1024w, https://blogdafrac.files.wordpress.com/2020/11/whatsapp-image-2020-11-23-at-16.25.05.jpeg?w=150 150w, https://blogdafrac.files.wordpress.com/2020/11/whatsapp-image-2020-11-23-at-16.25.05.jpeg?w=300 300w, https://blogdafrac.files.wordpress.com/2020/11/whatsapp-image-2020-11-23-at-16.25.05.jpeg?w=768 768w, https://blogdafrac.files.wordpress.com/2020/11/whatsapp-image-2020-11-23-at-16.25.05.jpeg 1280w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" style=\"box-sizing: inherit; max-width: 100%; height: auto;\"></figure>                                        ','2020-11-28 20:23:40','Publicado',NULL,'1','1'),
('33','1','Informativo Instabilidade Minas Gerais –Esclarecimentos','62bd6118d373ce45fef40f023ee3f5a9170d70b9.png','                    <p class=\"has-text-align-justify\" style=\"box-sizing: inherit; padding: 0px; margin-right: auto; margin-bottom: 32px; margin-left: auto; max-width: calc(750px); text-align: justify; overflow-wrap: break-word; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\">A AFRAC recebeu retorno quanto a instabilidade ocorrida no ambiente autorizador da Sefaz/MG. Encaminhamos a todos para ciência:</p><p class=\"has-text-align-justify\" style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; max-width: calc(750px); text-align: justify; overflow-wrap: break-word; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\">“No dia 14/11/2020, entre as 10:00 e 13:00 horas, e no dia 17/11/2020 , no período de 09:45 às 13:45 horas, o ambiente de infraestrutura do sistema de Nota Fiscal de Consumidor Eletrônica – NFC-e apresentou momentos de instabilidade. Esta situação foi identificada pelas equipes técnicas da Superintendência de Tecnologia e Informação da SEF/MG que, imediatamente, mobilizou seus analistas e servidores para adoção de medidas remediadoras no sentido de restabelecer o funcionamento do sistema no menor prazo possível.</p><p class=\"has-text-align-justify\" style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; max-width: calc(750px); text-align: justify; overflow-wrap: break-word; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\">Como resultado destes incidentes os contribuintes emissores destes documentos fiscais perceberam, neste período, um aumento expressivo do tempo para concluir as suas transações e/ou indisponibilidade dos serviços providos pela SEF. Nestes casos, houve a necessidade de acionamento da emissão dos documentos em modo de contingência, de forma&nbsp;<em style=\"box-sizing: inherit; max-width: unset;\">“offline”</em>, com envio posterior dos documentos fiscais para a SEF/MG (a partir do restabelecimento do seu ambiente operacional). Esta situação provocou transtornos e desconforto para muitos usuários do sistema.</p><p class=\"has-text-align-justify\" style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; max-width: calc(750px); text-align: justify; overflow-wrap: break-word; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\">Após intenso trabalho das equipes técnicas da STI e das empresas contratadas para prestação de suporte técnico no ambiente operacional da SEF/MG, as causas raízes dos incidentes foram identificadas e todos os problemas de infraestrutura diagnosticados foram sanados.</p><p class=\"has-text-align-justify\" style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; max-width: calc(750px); text-align: justify; overflow-wrap: break-word; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\">Cientes dos problemas provocados aos usuários do NFC-e, cabe à SEF/MG reconhecer as instabilidades e indisponibilidade apresentadas nos períodos acima mencionados, esclarecer os fatos, aceitar as críticas dos usuários que foram afetadas por estes incidentes e pedir desculpas pelos transtornos gerados. Vamos continuar trabalhando, incansavelmente, para evitar que situações como estas se repitam e buscaremos implementar soluções cada vez mais robustas visando atender os anseios dos nossos usuários e contribuintes. Permanecemos à disposição para dialogar com os nossos usuários no intuído de esclarecer os problemas que enfrentamos nestes períodos.”</p>                                                            ','2020-11-28 02:47:14','Publicado','2020-11-28 20:17:23','1',NULL),
('35','1','Ouça o 4º Episódio do PODCAST “ÍCONES DA AUTOMAÇÃO”','72fe3e47989bba4b9d1a696e4014c1b5d5b2dfdb.jpg','                    <p class=\"has-text-align-justify\" style=\"box-sizing: inherit; padding: 0px; margin-right: auto; margin-bottom: 32px; margin-left: auto; max-width: calc(750px); text-align: justify; overflow-wrap: break-word; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\">Nesse episódio nosso host&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\">Renato Moreira, Diretor de Distribuição da AFRAC</span>, bateu um papo com&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\">Moacir Borri, Gerente de Parcerias da</span>&nbsp;<a href=\"https://www.instagram.com/paygo/\" style=\"box-sizing: inherit; color: rgb(18, 121, 190); cursor: pointer; max-width: unset; text-decoration-line: underline;\">@paygo</a>, que nos contou um pouco da sua história na automação comercial, iniciando-a na Ianco, passando pela Bematech, Sigma e Totvs. Confira!<br style=\"box-sizing: inherit; max-width: unset;\">⠀⠀⠀⠀⠀⠀⠀⠀<br style=\"box-sizing: inherit; max-width: unset;\"><span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\">Confira no nosso canal do Spotify:</span></p><figure class=\"wp-block-embed is-type-rich is-provider-spotify wp-block-embed-spotify wp-embed-aspect-21-9 wp-has-aspect-ratio\" style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; max-width: calc(750px); color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\"><div class=\"wp-block-embed__wrapper\" style=\"box-sizing: inherit; max-width: none; position: relative;\"><div class=\"embed-spotify\" style=\"box-sizing: inherit; max-width: none;\"><iframe title=\"Spotify Embed: 4º Episódio | Moacir Borri, Gerente de Parcerias da Paygo.\" width=\"100%\" height=\"232\" allowtransparency=\"true\" frameborder=\"0\" allow=\"encrypted-media\" src=\"https://open.spotify.com/embed-podcast/episode/6jkQcPkQ94rA401UKaNUtZ?si=J7TSutmdRBeYJfXjmJZxEw\" style=\"box-sizing: inherit; padding: 0px; margin: 0px; max-width: 100%; position: absolute; inset: 0px; height: 321.359px; width: 750px;\"></iframe></div></div></figure><p class=\"has-text-align-justify\" style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; max-width: calc(750px); text-align: justify; overflow-wrap: break-word; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\">⠀⠀⠀⠀⠀⠀⠀<br style=\"box-sizing: inherit; max-width: unset;\"><a href=\"https://www.instagram.com/explore/tags/paygo/\" style=\"box-sizing: inherit; color: rgb(18, 121, 190); cursor: pointer; max-width: unset; text-decoration-line: underline;\">#paygo</a>&nbsp;<a href=\"https://www.instagram.com/explore/tags/pix/\" style=\"box-sizing: inherit; color: rgb(18, 121, 190); cursor: pointer; max-width: unset; text-decoration-line: underline;\">#pix</a>&nbsp;<a href=\"https://www.instagram.com/explore/tags/meiosdepagamento/\" style=\"box-sizing: inherit; color: rgb(18, 121, 190); cursor: pointer; max-width: unset; text-decoration-line: underline;\">#meiosdepagamento</a>&nbsp;<a href=\"https://www.instagram.com/explore/tags/podcastafrac/\" style=\"box-sizing: inherit; color: rgb(18, 121, 190); cursor: pointer; max-width: unset; text-decoration-line: underline;\">#podcastafrac</a>&nbsp;<a href=\"https://www.instagram.com/explore/tags/iconesdaautomacao/\" style=\"box-sizing: inherit; color: rgb(18, 121, 190); cursor: pointer; max-width: unset; text-decoration-line: underline;\">#iconesdaautomacao</a>&nbsp;<a href=\"https://www.instagram.com/explore/tags/scansource/\" style=\"box-sizing: inherit; color: rgb(18, 121, 190); cursor: pointer; max-width: unset; text-decoration-line: underline;\">#scansource</a></p>                                                            ','2020-11-28 20:19:40','Publicado','2020-11-28 20:26:13','1',NULL),
('40','1','Santa Catarina disciplina regras para emissão simultânea de cupom fiscal por meio do ECF e NFC-e em diferentes pontos de vendas','img-padrao-post.jpg','<p style=\"box-sizing: inherit; padding: 0px; margin-right: auto; margin-bottom: 32px; margin-left: auto; max-width: calc(750px); overflow-wrap: break-word; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px; line-height: 0;\"><span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\">Prezados Associados, fiquem Atentos!</span></p><p class=\"has-text-align-justify\" style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; max-width: calc(750px); text-align: justify; overflow-wrap: break-word; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\">Santa Catarina, definiu através do Ato DIAT nº 52/2020 regras para emissão simultânea de cupom fiscal por meio de Emissor de Cupom Fiscal (ECF) e de Nota Fiscal de Consumidor Eletrônica (NFC-e) em diferentes pontos de venda.</p><p class=\"has-text-align-justify\" style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; max-width: calc(750px); text-align: justify; overflow-wrap: break-word; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\">Desta forma, o contribuinte que possuir mais de um ponto de venda no mesmo estabelecimento poderá optar pela emissão simultânea de:</p><ul style=\"box-sizing: inherit; padding: 0px 0px 0px 32px; margin: 32px auto; max-width: calc(750px); font-family: Roboto; color: rgb(48, 48, 48); font-size: 20px;\"><li style=\"box-sizing: inherit; padding: 0px; margin: 0px; max-width: unset;\">Cupom fiscal, por meio de Emissor de Cupom Fiscal (ECF) em um ou mais pontos de vendas;</li><li style=\"box-sizing: inherit; padding: 0px; margin: 0px; max-width: unset;\">Nota Fiscal de Consumidor Eletrônica (NFC-e) nos demais pontos de venda.</li></ul><p class=\"has-text-align-justify\" style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; max-width: calc(750px); text-align: justify; overflow-wrap: break-word; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\">Para o Programa Aplicativo Fiscal – Emissor de Cupom Fiscal (PAF-ECF) e o Programa Aplicativo Fiscal – Nota Fiscal de Consumidor Eletrônica (PAF-NFC-e) utilizados pelo contribuinte para a emissão dos documentos fiscais supracitados , estes poderão ser desenvolvidos pela mesma empresa ou por empresas distintas.</p><p class=\"has-text-align-justify\" style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; max-width: calc(750px); text-align: justify; overflow-wrap: break-word; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\">E o contribuinte possuidor de mais de um estabelecimento, com Cadastro Nacional da Pessoa Jurídica (CNPJ) e Inscrição Estadual&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\">distintos</span>, poderá optar por diferentes formas de emissão de documentos fiscais em cada um dos estabelecimentos, seja pela emissão de cupom fiscal por meio de ECF, pela emissão de NFC-e ou pela emissão simultânea de ambos.</p><hr class=\"wp-block-separator\" style=\"padding: 0px; margin: 32px auto; max-width: 96px; border-bottom: 2px solid rgb(197, 197, 197); clear: both; border-top: none; border-right-width: initial; border-right-style: none; border-left-width: initial; border-left-style: none; opacity: 0.4; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\"><p style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; max-width: calc(750px); overflow-wrap: break-word; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\"><em style=\"box-sizing: inherit; max-width: unset;\">Acompanhe nossos informativos e fique por dentro das principais notícias sobre o Setor de Automação para o Comércio.</em></p><p style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; max-width: calc(750px); overflow-wrap: break-word; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\">Atenciosamente,<br style=\"box-sizing: inherit; max-width: unset;\"><span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\">Equipe AFRAC!</span></p>                                        ','2020-11-28 20:24:08','Publicado',NULL,'1','6'),
('41','1','Justiça determina suspensão de vendas de dados de consumidores pela Serasa','img-padrao-post.jpg','<p class=\"has-text-align-center\" style=\"box-sizing: inherit; padding: 0px; margin-right: auto; margin-bottom: 32px; margin-left: auto; max-width: calc(750px); text-align: center; overflow-wrap: break-word; color: rgb(48, 48, 48); font-family: Roboto; font-size: 15px;\"><em style=\"box-sizing: inherit; max-width: unset;\">Segundo o Ministério Público, Serasa Experian oferecia serviço que fere a LGPD (Lei Geral de Proteção de Dados)</em></p><p style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; max-width: calc(750px); overflow-wrap: break-word; color: rgb(48, 48, 48); font-family: Roboto; font-size: 15px; line-height: 0;\"><span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\">Por Portal&nbsp;<a rel=\"noreferrer noopener\" href=\"https://economia.uol.com.br/noticias/redacao/2020/11/23/justica-determina-suspensao-de-vendas-de-dados-pela-serasa.htm\" target=\"_blank\" style=\"box-sizing: inherit; color: rgb(18, 121, 190); cursor: pointer; max-width: unset; text-decoration-line: underline;\">UOL</a>&nbsp;em 23.11</span></p><p class=\"has-text-align-justify\" style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; max-width: calc(750px); text-align: justify; overflow-wrap: break-word; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\">A Justiça do Distrito Federal determinou que a Serasa Experian suspenda imediatamente a venda de dados pessoais de consumidores. A decisão deriva de ação civil pública do MPDFT (Ministério Público do Distrito Federal e dos Territórios), na qual foi analisada que o serviço oferecido pela empresa de proteção ao crédito fere a&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\">LGPD (Lei Geral de Proteção de Dados)</span>.</p><p class=\"has-text-align-justify\" style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; max-width: calc(750px); text-align: justify; overflow-wrap: break-word; color: rgb(48, 48, 48); font-family: Roboto; font-size: 20px;\">A decisão foi proferida pelo desembargador César Loyola, do TJ-DFT (Tribunal de Justiça do Distrito Federal e dos Territórios), na última sexta-feira (20). Caso a Serasa não cumpra a decisão, ficará sujeita a pena de multa diária.<br style=\"box-sizing: inherit; max-width: unset;\"><br style=\"box-sizing: inherit; max-width: unset;\">Segundo o MPDFT analisou na ação civil pública da Espec (Unidade Especial de Proteção de Dados e Inteligência Artificial), a Serasa vende hoje informações como nome, endereço, CPF, números de telefones, localização, perfil financeiro, poder aquisitivo e classe social de consumidores. As empresas que adquirem esses dados o fazem para fins de publicidade e para captar novos clientes.<br style=\"box-sizing: inherit; max-width: unset;\"><br style=\"box-sizing: inherit; max-width: unset;\">A Espec indica que a comercialização se dá por meio de dois serviços oferecidos pela Serasa, o Lista Online e a Prospecção de Clientes. O preço pago pelos dados de cada pessoa cadastrada seria de R$ 0,98. De acordo com estimativas do MP-DFT, a Serasa vende dados pessoais de mais de 150 milhões de brasileiros.<br style=\"box-sizing: inherit; max-width: unset;\"><br style=\"box-sizing: inherit; max-width: unset;\">“A situação é ainda mais grave, conforme demonstrou o MPDFT, pelo fato de a Serasa Experian ter respaldo legal para o tratamento de dados desta natureza para fins de proteção do crédito. Entretanto, as permissões não contemplam os usos apontados pela investigação”, afirma o órgão em nota.<br style=\"box-sizing: inherit; max-width: unset;\"><br style=\"box-sizing: inherit; max-width: unset;\">O MPDFT afirma que a venda dos dados “fere o direito à privacidade, à intimidade e à imagem e, por isso, também está em desacordo com o previsto no Código Civil, no Código de Defesa do Consumidor e no Marco Civil da Internet”.<br style=\"box-sizing: inherit; max-width: unset;\">Procurada pelo UOL, a Serasa Experian afirmou apenas que “atua em estrita conformidade com a legislação vigente e se manifestará oportunamente nos autos do processo”.</p>                                        ','2020-11-28 20:24:33','Publicado',NULL,'1','2'),
('44','1','Confira a live: “Como receber PIX com todas as vantagens do QR Code integrado Mercado Pago”','img-padrao-post.jpg','<p style=\"text-align: center;\"><iframe src=\"https://www.youtube.com/embed/5JTJZ23u1pE\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"\"></iframe></p>','2020-11-29 12:25:56','Publicado','2020-11-29 12:33:47','2','5'),
('45','1','Participe do painel: “NFC-e regras e prazos: Fim do PAF-ECF em SC” que será realizado pela NDD no próximo dia 19/11. Não perca!','img-padrao-post.jpg','<header id=\"masthead\" class=\"site-header responsive-max-width has-menu\" style=\"box-sizing: inherit; max-width: calc(100% - 32px); padding: 32px 0px 0px; margin-left: auto; margin-right: auto; align-items: center; display: grid; grid-template-columns: auto; grid-template-rows: auto; column-gap: 16px; grid-template-areas: \'site-logo site-logo\' \'site-title main-navigation\' \'site-description social-navigation\'; width: calc(1006px); position: relative;\" role=\"banner\"><nav id=\"site-navigation\" class=\"main-navigation\" style=\"box-sizing: inherit; max-width: none; margin-top: 0px; margin-bottom: 0px; color: #303030; place-self: center flex-end; grid-area: main-navigation / main-navigation / main-navigation / main-navigation;\" aria-label=\"Navega&ccedil;&atilde;o Principal\">\r\n<div class=\"menu-social-container\" style=\"box-sizing: inherit; max-width: none; display: inline-block;\">\r\n<p><span style=\"font-family: var(--font-headings, \'PT Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'Roboto\', \'Oxygen\', \'Ubuntu\', \'Cantarell\', \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif); font-size: 2.01136rem; text-align: center; color: #000000;\">Participe do painel: &ldquo;NFC-e regras e prazos: Fim do PAF-ECF em SC&rdquo; que ser&aacute; realizado pela NDD no pr&oacute;ximo dia 19/11. N&atilde;o perca!</span></p>\r\n</div>\r\n</nav></header>\r\n<div id=\"content\" class=\"site-content\" style=\"box-sizing: inherit; max-width: none;\">\r\n<section id=\"primary\" class=\"content-area\" style=\"box-sizing: inherit; max-width: none;\"><main id=\"main\" class=\"site-main\" style=\"box-sizing: inherit; max-width: none; padding: 32px 0px; margin-left: auto; margin-right: auto;\">\r\n<article id=\"post-481\" class=\"post-481 post type-post status-publish format-standard hentry category-ndd tag-nfc-e tag-paf tag-santa-catarina entry\" style=\"box-sizing: inherit; max-width: none; margin-top: 0px; margin-bottom: calc(96px);\">\r\n<div class=\"entry-content\" style=\"box-sizing: inherit; max-width: none; margin: 32px auto;\">\r\n<p class=\"has-text-align-center\" style=\"box-sizing: inherit; padding: 0px; margin: 0px auto 32px; -webkit-font-smoothing: antialiased; max-width: calc(750px); text-align: center; overflow-wrap: break-word; color: #303030; font-family: \'PT Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; font-size: 20px;\"><span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\">Inscreva-se atrav&eacute;s deste&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #1279be; cursor: pointer; max-width: unset;\" href=\"https://conteudo.ndd.com.br/webinar-nfc-e-regras-e-prazos-fim-do-paf-ecf-em-sc?utm=webinar-nfc-e-regras-e-prazos-fim-do-paf-ecf-em-sc-afrac\" target=\"_blank\" rel=\"noreferrer noopener\">LINK</a>!</span></p>\r\n<figure class=\"wp-block-image size-large is-resized\" style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; -webkit-font-smoothing: antialiased; max-width: calc(750px); text-align: center; display: table; color: #303030; font-family: \'PT Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; font-size: 20px;\"><img class=\"wp-image-482\" style=\"box-sizing: inherit; border-style: none; max-width: 100%; height: auto; vertical-align: middle;\" src=\"https://vitrinedomercadoafrac.files.wordpress.com/2020/11/arte_webinar_nfce_1.png?w=1024\" sizes=\"(max-width: 743px) 100vw, 743px\" srcset=\"https://vitrinedomercadoafrac.files.wordpress.com/2020/11/arte_webinar_nfce_1.png?w=1024 1024w, https://vitrinedomercadoafrac.files.wordpress.com/2020/11/arte_webinar_nfce_1.png?w=743 743w, https://vitrinedomercadoafrac.files.wordpress.com/2020/11/arte_webinar_nfce_1.png?w=150 150w, https://vitrinedomercadoafrac.files.wordpress.com/2020/11/arte_webinar_nfce_1.png?w=300 300w, https://vitrinedomercadoafrac.files.wordpress.com/2020/11/arte_webinar_nfce_1.png?w=768 768w, https://vitrinedomercadoafrac.files.wordpress.com/2020/11/arte_webinar_nfce_1.png 1200w\" alt=\"\" width=\"743\" height=\"388\" data-attachment-id=\"482\" data-permalink=\"https://vitrinedomercadoafrac.wordpress.com/arte_webinar_nfce_1/\" data-orig-file=\"https://vitrinedomercadoafrac.files.wordpress.com/2020/11/arte_webinar_nfce_1.png\" data-orig-size=\"1200,627\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}\" data-image-title=\"arte_webinar_nfce_1\" data-image-description=\"\" data-medium-file=\"https://vitrinedomercadoafrac.files.wordpress.com/2020/11/arte_webinar_nfce_1.png?w=300\" data-large-file=\"https://vitrinedomercadoafrac.files.wordpress.com/2020/11/arte_webinar_nfce_1.png?w=750\" /></figure>\r\n<div id=\"jp-post-flair\" class=\"sharedaddy sd-like-enabled sd-sharing-enabled\" style=\"box-sizing: inherit; max-width: calc(750px); margin: 32px auto 0px; clear: both; padding-top: 0.5em; color: #303030; font-family: \'PT Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; font-size: 20px;\">\r\n<div class=\"sharedaddy sd-sharing-enabled\" style=\"box-sizing: inherit; max-width: none; clear: both;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</article>\r\n</main></section>\r\n</div>','2020-11-29 12:41:33','Publicado',NULL,'2','11'),
('46','1','PIX registra 1,5 mil operações no primeiro dia e tem problemas dentro do esperado, diz Banco Central','20978cc5f3b8f92d44eacb57bd612123a3d79ef0.jpg','<p class=\"has-text-align-center\" style=\"box-sizing: inherit; padding: 0px; margin: 0px auto 32px; -webkit-font-smoothing: antialiased; max-width: calc(750px); text-align: center; overflow-wrap: break-word; color: #303030; font-family: \'PT Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; font-size: 20px; line-height: 0;\"><em style=\"box-sizing: inherit; max-width: unset;\">N&uacute;mero de chaves cadastradas chega a 60 milh&otilde;es. Maior transa&ccedil;&atilde;o foi de R$ 35 mil.</em></p>\r\n<p class=\"has-small-font-size\" style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; -webkit-font-smoothing: antialiased; max-width: calc(750px); font-size: 0.86957rem; overflow-wrap: break-word; color: #303030; font-family: \'PT Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; line-height: 0;\">&nbsp;</p>\r\n<p class=\"has-small-font-size\" style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; -webkit-font-smoothing: antialiased; max-width: calc(750px); font-size: 0.86957rem; overflow-wrap: break-word; color: #303030; font-family: \'PT Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; line-height: 0;\"><span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\">Por&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #1279be; cursor: pointer; max-width: unset;\" href=\"https://g1.globo.com/economia/pix/noticia/2020/11/03/pix-registra-15-mil-operacoes-no-primeiro-dia-e-tem-problemas-dentro-do-esperado-diz-bc.ghtml\" target=\"_blank\" rel=\"noreferrer noopener\">Portal G1</a>&nbsp;em 03.11.20</span></p>\r\n<p class=\"has-text-align-justify\" style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; -webkit-font-smoothing: antialiased; max-width: calc(750px); text-align: justify; overflow-wrap: break-word; color: #303030; font-family: \'PT Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; font-size: 20px; line-height: 1.4;\">O primeiro dia de opera&ccedil;&atilde;o do&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #1279be; cursor: pointer; max-width: unset;\" href=\"https://g1.globo.com/economia/pix/\">PIX</a>, novo sistema de pagamentos instant&acirc;neos do Brasil,&nbsp;<span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\">registrou 1.570 opera&ccedil;&otilde;es e ocorreu com poucas percal&ccedil;os t&eacute;cnicos</span>, afirma o&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #1279be; cursor: pointer; max-width: unset;\" href=\"https://g1.globo.com/tudo-sobre/banco-central-do-brasil/\">Banco Central</a>.</p>\r\n<p class=\"has-text-align-justify\" style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; -webkit-font-smoothing: antialiased; max-width: calc(750px); text-align: justify; overflow-wrap: break-word; color: #303030; font-family: \'PT Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; font-size: 20px; line-height: 1.4;\">No dia 03 de novembro, o BC e institui&ccedil;&otilde;es financeiras deram in&iacute;cio &agrave; primeira fase de testes do PIX, somente com grupos selecionados. O servi&ccedil;o foi liberado para uma base de 1% a 5% dos clientes cadastrados, escolhidos pelos bancos.<br style=\"box-sizing: inherit; max-width: unset;\" /><br style=\"box-sizing: inherit; max-width: unset;\" />Neste primeiro dia de opera&ccedil;&atilde;o, o BC afirma ter rastreado intercorr&ecirc;ncias de sintonia entre os sistemas do PIX e das institui&ccedil;&otilde;es financeiras. A equipe t&eacute;cnica diz, contudo, que n&atilde;o registrou eventos que n&atilde;o haviam sido mapeados.</p>\r\n<p class=\"has-text-align-justify\" style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; -webkit-font-smoothing: antialiased; max-width: calc(750px); text-align: justify; overflow-wrap: break-word; color: #303030; font-family: \'PT Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; font-size: 20px; line-height: 1.4;\"><em style=\"box-sizing: inherit; max-width: unset;\">&ldquo;Algumas institui&ccedil;&otilde;es tiveram quest&otilde;es de conectividade nos primeiros momentos do dia, o que &eacute; normal e planejado. A quantidade limitada de clientes &eacute; para que todos possam terminar o processo de acionamento dos sistemas com a maior tranquilidade poss&iacute;vel e impactando um n&uacute;mero limitado de agentes&rdquo;,</em>&nbsp;afirmou o chefe-adjunto do Departamento de Competi&ccedil;&atilde;o e de Estrutura do Mercado Financeiro do BC, Carlos Eduardo Brandt.<br style=\"box-sizing: inherit; max-width: unset;\" /><br style=\"box-sizing: inherit; max-width: unset;\" /><em style=\"box-sizing: inherit; max-width: unset;\">&ldquo;&Eacute; exatamente isso que estava dentro de todos os roteiros e manuais de planejamento dessa entrada em opera&ccedil;&atilde;o. O sistema do BC foi operante durante todo o tempo e funcionou de forma perfeita durante todo o dia&rdquo;,</em>&nbsp;disse.<br style=\"box-sizing: inherit; max-width: unset;\" /><br style=\"box-sizing: inherit; max-width: unset;\" />Ainda de acordo com o BC, a maior transa&ccedil;&atilde;o registrada foi de R$ 35 mil. O n&uacute;mero de chaves nesta ter&ccedil;a-feira tamb&eacute;m chegou a 60 milh&otilde;es.</p>\r\n<div class=\"wp-block-image\" style=\"box-sizing: inherit; max-width: calc(750px); margin: 0px auto; text-align: center; color: #303030; font-family: \'PT Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; font-size: 20px;\">\r\n<figure class=\"aligncenter size-large is-resized\" style=\"box-sizing: inherit; padding: 0px; margin: 0px auto; -webkit-font-smoothing: antialiased; max-width: none; clear: both; display: table; float: none;\"><img class=\"wp-image-328\" style=\"box-sizing: inherit; border-style: none; max-width: 100%; height: auto; vertical-align: middle;\" src=\"https://networkingmeiospgto.files.wordpress.com/2020/07/pag-qr-code-loja.jpg?w=750\" sizes=\"(max-width: 740px) 100vw, 740px\" srcset=\"https://networkingmeiospgto.files.wordpress.com/2020/07/pag-qr-code-loja.jpg?w=740 740w, https://networkingmeiospgto.files.wordpress.com/2020/07/pag-qr-code-loja.jpg?w=1480 1480w, https://networkingmeiospgto.files.wordpress.com/2020/07/pag-qr-code-loja.jpg?w=150 150w, https://networkingmeiospgto.files.wordpress.com/2020/07/pag-qr-code-loja.jpg?w=300 300w, https://networkingmeiospgto.files.wordpress.com/2020/07/pag-qr-code-loja.jpg?w=768 768w, https://networkingmeiospgto.files.wordpress.com/2020/07/pag-qr-code-loja.jpg?w=1024 1024w\" alt=\"\" width=\"740\" height=\"493\" data-attachment-id=\"328\" data-permalink=\"https://networkingmeiospgto.wordpress.com/customer-scanning-qr-code-making-a-quick-and-easy-contactless-payment-with-her-smartphone-in-a-cafe/\" data-orig-file=\"https://networkingmeiospgto.files.wordpress.com/2020/07/pag-qr-code-loja.jpg\" data-orig-size=\"2121,1414\" data-comments-opened=\"1\" data-image-meta=\"{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;Getty Images&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;Customer scanning QR code, making a quick and easy contactless payment with her smartphone in a cafe&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;Customer scanning QR code, making a quick and easy contactless payment with her smartphone in a cafe&quot;,&quot;orientation&quot;:&quot;1&quot;}\" data-image-title=\"Customer scanning QR code, making a quick and easy contactless payment with her smartphone in a cafe\" data-image-description=\"\" data-medium-file=\"https://networkingmeiospgto.files.wordpress.com/2020/07/pag-qr-code-loja.jpg?w=300\" data-large-file=\"https://networkingmeiospgto.files.wordpress.com/2020/07/pag-qr-code-loja.jpg?w=750\" />\r\n<figcaption style=\"box-sizing: inherit; max-width: unset; color: #757575; font-size: 0.75614rem; margin-top: calc(8px); margin-bottom: 16px; display: table-caption; caption-side: bottom;\">Imagem: IStock</figcaption>\r\n</figure>\r\n</div>\r\n<p class=\"has-text-align-justify\" style=\"box-sizing: inherit; padding: 0px; margin: 0px auto 32px; -webkit-font-smoothing: antialiased; max-width: calc(750px); text-align: justify; overflow-wrap: break-word; color: #303030; font-family: \'PT Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; font-size: 20px; line-height: 1.4;\"><span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\">Fase restrita<br style=\"box-sizing: inherit; max-width: unset;\" /></span>A fase restrita vai at&eacute; o dia 15 de novembro. Neste per&iacute;odo, apenas alguns clientes banc&aacute;rios poder&atilde;o realizar opera&ccedil;&otilde;es de pagamento, em hor&aacute;rios determinados. Somente a partir do dia 16 o PIX ir&aacute; funcionar integralmente, para todos os clientes cadastrados, 24h por dia, 7 dias da semana.</p>\r\n<p style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; -webkit-font-smoothing: antialiased; max-width: calc(750px); overflow-wrap: break-word; color: #303030; font-family: \'PT Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; font-size: 20px; line-height: 0.2;\">Os testes servem para:</p>\r\n<ul style=\"box-sizing: inherit; padding: 0px 0px 0px 32px; margin: 32px auto; -webkit-font-smoothing: antialiased; max-width: calc(750px); font-family: \'PT Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; color: #303030; font-size: 20px;\">\r\n<li style=\"box-sizing: inherit; padding: 0px; margin: 0px; -webkit-font-smoothing: antialiased; max-width: unset;\">Testar todos os casos de uso dispon&iacute;veis do PIX para lan&ccedil;amento do sistema integral</li>\r\n<li style=\"box-sizing: inherit; padding: 0px; margin: 0px; -webkit-font-smoothing: antialiased; max-width: unset;\">Verificar o funcionamento do PIX no ambiente de produ&ccedil;&atilde;o dos bancos e do Banco Central</li>\r\n</ul>\r\n<p class=\"has-text-align-justify\" style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; -webkit-font-smoothing: antialiased; max-width: calc(750px); text-align: justify; overflow-wrap: break-word; color: #303030; font-family: \'PT Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; font-size: 20px; line-height: 1.4;\">Segundo o BC, a maior parte das institui&ccedil;&otilde;es liberou o servi&ccedil;o para a faixa m&iacute;nima de clientes nesta ter&ccedil;a-feira para ampliar a quantidade ao longo dos dias.<br style=\"box-sizing: inherit; max-width: unset;\" /><br style=\"box-sizing: inherit; max-width: unset;\" /><em style=\"box-sizing: inherit; max-width: unset;\">&ldquo;A expectativa &eacute; de que, gradativamente, essa quantidade de opera&ccedil;&otilde;es v&aacute; subindo &agrave; medida que clientes v&atilde;o tomando conhecimento das solu&ccedil;&otilde;es, se familiarizando com aplicativos&rdquo;,</em>&nbsp;diz Brandt.</p>\r\n<p class=\"has-text-align-justify\" style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; -webkit-font-smoothing: antialiased; max-width: calc(750px); text-align: justify; overflow-wrap: break-word; color: #303030; font-family: \'PT Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; font-size: 20px;\">Nesta fase restrita de opera&ccedil;&otilde;es, o PIX vai funcionar somente em hor&aacute;rios pr&eacute;-definidos:</p>\r\n<ul style=\"box-sizing: inherit; padding: 0px 0px 0px 32px; margin: 32px auto; -webkit-font-smoothing: antialiased; max-width: calc(750px); font-family: \'PT Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; color: #303030; font-size: 20px;\">\r\n<li style=\"box-sizing: inherit; padding: 0px; margin: 0px; -webkit-font-smoothing: antialiased; max-width: unset;\"><span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\">Das 9h &agrave;s 22h</span>&nbsp;nos dias 3, 4, 7, 8, 9, 10, 11, 14 e 15 de novembro</li>\r\n<li style=\"box-sizing: inherit; padding: 0px; margin: 0px; -webkit-font-smoothing: antialiased; max-width: unset;\"><span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\">Das 9h &agrave;s 24h</span>&nbsp;nos dias 5 e 12</li>\r\n<li style=\"box-sizing: inherit; padding: 0px; margin: 0px; -webkit-font-smoothing: antialiased; max-width: unset;\"><span style=\"box-sizing: inherit; font-weight: bolder; max-width: unset;\">Das 0h &agrave;s 22h</span>&nbsp;nos dias 6 e 13</li>\r\n</ul>\r\n<p class=\"has-text-align-justify\" style=\"box-sizing: inherit; padding: 0px; margin: 32px auto; -webkit-font-smoothing: antialiased; max-width: calc(750px); text-align: justify; overflow-wrap: break-word; color: #303030; font-family: \'PT Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; font-size: 20px; line-height: 1.4;\">J&aacute; no dia 16 de novembro, o PIX come&ccedil;ar&aacute; a funcionar &agrave;s 9h. A partir de ent&atilde;o, ele ir&aacute; operar ininterruptamente, todos os dias do ano, 24 horas por dia.</p>','2020-11-30 15:30:28','Publicado',NULL,'3','4'); 


DROP TABLE IF EXISTS `crons`;
CREATE TABLE `crons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` int(1) NOT NULL DEFAULT '1',
  `sort` int(3) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `createdby` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO `crons` VALUES ('1','0','100','Auto-Backup','backup.php','1','2017-09-16 07:49:22','2017-11-11 12:15:36'); 


DROP TABLE IF EXISTS `crons_logs`;
CREATE TABLE `crons_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cron_id` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS `email`;
CREATE TABLE `email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `website_name` varchar(100) NOT NULL,
  `smtp_server` varchar(100) NOT NULL,
  `smtp_port` int(10) NOT NULL,
  `email_login` varchar(150) NOT NULL,
  `email_pass` varchar(100) NOT NULL,
  `from_name` varchar(100) NOT NULL,
  `from_email` varchar(150) NOT NULL,
  `transport` varchar(255) NOT NULL,
  `verify_url` varchar(255) NOT NULL,
  `email_act` int(1) NOT NULL,
  `debug_level` int(1) NOT NULL DEFAULT '0',
  `isSMTP` int(1) NOT NULL DEFAULT '0',
  `isHTML` varchar(5) NOT NULL DEFAULT 'true',
  `useSMTPauth` varchar(6) NOT NULL DEFAULT 'true',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `email` VALUES ('1','TLV','outlook.office365.com','587','noreply@tlv.ag','8AHkM8JhRGQ6','noreply@tlv.ag','noreply@tlv.ag','tls','http://localhost/43','0','0','1','true','true'); 


DROP TABLE IF EXISTS `groups_menus`;
CREATE TABLE `groups_menus` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(11) unsigned NOT NULL,
  `menu_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`),
  KEY `menu_id` (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

INSERT INTO `groups_menus` VALUES ('30','2','9'),
('29','0','8'),
('28','0','7'),
('27','0','21'),
('5','0','3'),
('6','0','1'),
('7','0','2'),
('8','0','51'),
('9','0','52'),
('10','0','37'),
('11','0','38'),
('12','2','39'),
('13','2','40'),
('14','2','41'),
('15','2','42'),
('16','2','43'),
('17','2','44'),
('18','2','45'),
('19','0','46'),
('20','0','47'),
('21','0','49'),
('26','0','20'),
('25','0','18'),
('31','2','10'),
('32','2','11'),
('33','2','12'),
('34','2','13'),
('35','2','14'),
('36','2','15'),
('37','0','16'),
('38','1','15'); 


DROP TABLE IF EXISTS `keys`;
CREATE TABLE `keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stripe_ts` varchar(255) NOT NULL,
  `stripe_tp` varchar(255) NOT NULL,
  `stripe_ls` varchar(255) NOT NULL,
  `stripe_lp` varchar(255) NOT NULL,
  `recap_pub` varchar(100) NOT NULL,
  `recap_pri` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `logdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logtype` varchar(25) NOT NULL,
  `lognote` text NOT NULL,
  `ip` varchar(75) DEFAULT NULL,
  `metadata` blob,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=294 DEFAULT CHARSET=latin1;

INSERT INTO `logs` VALUES ('1','1','2020-09-01 07:43:20','System Updates','Update 2020-07-16a successfully deployed.','::1',NULL),
('2','1','2020-09-01 07:43:20','System Updates','Update 2020-07-30a successfully deployed.','::1',NULL),
('3','1','2020-09-01 07:43:36','User','User logged in.','::1',NULL),
('4','1','2020-09-01 07:44:35','USPlugins','fileman installed','::1',NULL),
('5','1','2020-09-01 07:44:45','USPlugins','fileman activated','::1',NULL),
('6','1','2020-09-03 08:36:26','User','User logged in.','::1',NULL),
('7','1','2020-09-03 09:15:23','User','User logged in.','::1',NULL),
('8','1','2020-09-03 09:16:23','Pages Manager','Retitled \'files.php\' to \'Meus aqruivos\'.','::1',NULL),
('9','1','2020-09-03 09:16:45','Pages Manager','Added 2 permission(s) to upload.php.','::1',NULL),
('10','1','2020-09-03 09:16:45','Pages Manager','Retitled \'upload.php\' to \'Upload de arquivos\'.','::1',NULL),
('11','1','2020-09-03 09:16:53','Pages Manager','Added 2 permission(s) to files.php.','::1',NULL),
('12','1','2020-09-03 09:17:19','Permissions Manager','Added Permission Level named Consultor TLV.','::1',NULL),
('13','1','2020-09-03 09:17:41','Permissions Manager','Changed Permission Name from User to Cliente.','::1',NULL),
('14','1','2020-09-03 09:20:23','User','User logged in.','::1',NULL),
('15','1','2020-09-03 09:22:06','User','User logged in.','::1',NULL),
('16','1','2020-09-03 09:23:41','User','User logged in.','::1',NULL),
('17','1','2020-09-03 09:23:55','User','User logged in.','::1',NULL),
('18','1','2020-09-03 09:24:18','User','User logged in.','::1',NULL),
('19','1','2020-09-03 09:25:07','User Manager','Added user cliente.','::1',NULL),
('20','3','2020-09-03 09:25:32','User','User logged in.','::1',NULL),
('21','3','2020-09-03 09:27:25','User','User logged in.','::1',NULL),
('22','3','2020-09-03 09:28:33','User','User logged in.','::1',NULL),
('23','3','2020-09-03 09:28:48','User','User logged in.','::1',NULL),
('24','3','2020-09-03 09:28:51','Errors','Attempted to access disabled profile_pic','::1',NULL),
('25','3','2020-09-03 09:53:27','User','User logged in.','::1',NULL),
('26','3','2020-09-03 09:53:36','Errors','Attempted to access disabled profile_pic','::1',NULL),
('27','3','2020-09-03 10:02:47','Errors','Attempted to access disabled profile_pic','::1',NULL),
('28','3','2020-09-03 10:31:19','User','User logged in.','::1',NULL),
('29','3','2020-09-03 15:16:23','Errors','Attempted to access disabled profile_pic','::1',NULL),
('30','3','2020-09-03 15:42:10','User','User logged in.','::1',NULL),
('31','0','2020-09-04 08:43:40','Login Fail','A failed login on login.php','::1',NULL),
('32','0','2020-09-04 08:43:46','Login Fail','A failed login on login.php','::1',NULL),
('33','0','2020-09-04 08:43:55','Login Fail','A failed login on login.php','::1',NULL),
('34','1','2020-09-04 08:44:07','User','User logged in.','::1',NULL),
('35','1','2020-09-04 08:44:51','Pages Manager','Added 3 permission(s) to up-proccess.php.','::1',NULL),
('36','1','2020-09-04 08:44:51','Pages Manager','Retitled \'up-proccess.php\' to \'upload\'.','::1',NULL),
('37','1','2020-09-04 08:45:18','Pages Manager','Added 3 permission(s) to files-proccess.php.','::1',NULL),
('38','1','2020-09-04 08:45:18','Pages Manager','Retitled \'files-proccess.php\' to \'Processamento de arquivos\'.','::1',NULL),
('39','3','2020-09-04 08:45:55','User','User logged in.','::1',NULL),
('40','3','2020-09-04 08:47:42','User','User logged in.','::1',NULL),
('41','3','2020-09-04 08:55:17','User','User logged in.','::1',NULL),
('42','3','2020-09-04 08:56:53','User','User logged in.','::1',NULL),
('43','3','2020-09-04 08:57:52','User','User logged in.','::1',NULL),
('44','3','2020-09-04 08:59:21','User','User logged in.','::1',NULL),
('45','3','2020-09-04 09:14:34','User','User logged in.','::1',NULL),
('46','3','2020-09-04 09:18:45','User','User logged in.','::1',NULL),
('47','3','2020-09-04 09:21:38','User','User logged in.','::1',NULL),
('48','3','2020-09-04 09:21:53','User','User logged in.','::1',NULL),
('49','3','2020-09-06 08:33:37','User','User logged in.','::1',NULL),
('50','3','2020-09-06 12:24:41','User','User logged in.','::1',NULL),
('51','1','2020-09-06 18:03:37','User','User logged in.','::1',NULL),
('52','3','2020-09-06 18:18:04','User','User logged in.','::1',NULL),
('53','3','2020-09-06 18:32:40','SendMail','Email enviado por 3 ','::1',NULL),
('54','3','2020-09-06 18:35:17','SendMail','Email enviado por 3 ','::1',NULL),
('55','3','2020-09-06 18:37:37','SendMail','Email enviado por 3 ','::1',NULL),
('56','1','2020-09-06 18:38:02','User','User logged in.','::1',NULL),
('57','1','2020-09-06 18:39:17','Email Settings','Updated from_email from yourEmail@gmail.com to noreply@tlv.ag.','::1',NULL),
('58','1','2020-09-06 18:39:17','Email Settings','Updated email_act from 0 to 4.','::1',NULL),
('59','1','2020-09-06 18:40:10','Email Settings','Updated email_act from 4 to 0.','::1',NULL),
('60','3','2020-09-06 18:40:37','User','User logged in.','::1',NULL),
('61','3','2020-09-06 18:40:52','SendMail','Email enviado por 3 ','::1',NULL),
('62','3','2020-09-06 18:42:35','SendMail','Email enviado por 3 ','::1',NULL),
('63','3','2020-09-07 04:29:03','SendFiles','Arquivo Email enviado por 3 ','::1',NULL),
('64','3','2020-09-07 04:30:00','SendFiles','Arquivo Email enviado por 3 ','::1',NULL),
('65','3','2020-09-07 04:50:08','SendFiles','Arquivo Email enviado por 3 ','::1',NULL),
('66','3','2020-09-07 04:51:13','SendFiles','Arquivo Email enviado por 3 ','::1',NULL),
('67','3','2020-09-07 05:53:19','SendFiles','Arquivo Email enviado por 3 ','::1',NULL),
('68','3','2020-09-07 05:54:24','SendFiles','Arquivo Email enviado por 3 ','::1',NULL),
('69','3','2020-09-07 05:55:17','SendFiles','Arquivo Email enviado por 3 ','::1',NULL),
('70','3','2020-09-07 06:05:52','SendFiles','Arquivo Email enviado por 3 ','::1',NULL),
('71','3','2020-09-07 06:06:25','SendFiles','Arquivo Email enviado por 3 ','::1',NULL),
('72','3','2020-09-07 06:06:33','SendFiles','Arquivo Email enviado por 3 ','::1',NULL),
('73','3','2020-09-07 06:17:54','SendFiles','Arquivo Email enviado por 3 ','::1',NULL),
('74','3','2020-09-07 06:22:34','SendFiles','Arquivo Email enviado por 3 ','::1',NULL),
('75','3','2020-09-07 06:26:23','SendFiles','Arquivo Email enviado por 3 ','::1',NULL),
('76','3','2020-09-07 06:30:07','SendFiles','Arquivo Email enviado por 3 ','::1',NULL),
('77','3','2020-09-07 08:16:23','SendFiles','Arquivo enviado por Cliente 001 para o email ivinsons@gmail.com','::1',NULL),
('78','3','2020-09-07 08:20:24','SendFiles','Arquivo enviado por Cliente 001 para o email ivinsons@gmail.com','::1',NULL),
('79','3','2020-09-07 08:21:57','SendFiles','Arquivo enviado por Cliente 001 para o email ivinsons@gmail.com','::1',NULL),
('80','3','2020-09-07 08:32:13','SendFiles','Arquivo enviado por Cliente 001 para o email ivinsons@gmail.com','::1',NULL),
('81','3','2020-09-07 08:35:06','SendFiles','Arquivo enviado por Cliente 001 para o email ivinsons@gmail.com','::1',NULL),
('82','3','2020-09-07 10:50:39','Sendfile','[Planejamento Convidados Oficial.docx]Gerado link e enviado por Cliente 001 para o email ivinsons@gmail.com','::1',NULL),
('83','3','2020-09-07 10:52:56','Sendfile','[Planejamento Convidados Oficial.docx]Gerado link e enviado por Cliente 001 para o email ivinsons@gmail.com','::1',NULL),
('84','3','2020-09-07 11:00:48','Sendfile','[Planejamento Convidados Oficial.docx]Gerado link e enviado por Cliente 001 para o email ivinsons@gmail.com','::1',NULL),
('85','3','2020-09-07 11:01:36','Sendfile','[Planejamento Convidados Oficial.docx]Gerado link e enviado por Cliente 001 para o email ivinsons@gmail.com','::1',NULL),
('86','3','2020-09-07 11:02:14','Sendfile','[Planejamento Convidados Oficial.docx]Gerado link e enviado por Cliente 001 para o email ivinsons@gmail.com','::1',NULL),
('87','3','2020-09-07 11:02:52','Sendfile','[Planejamento Convidados Oficial.docx]Gerado link e enviado por Cliente 001 para o email ivinsons@gmail.com','::1',NULL),
('88','3','2020-09-07 11:03:57','Sendfile','[Planejamento Convidados Oficial.docx]Gerado link e enviado por Cliente 001 para o email ivinsons@gmail.com','::1',NULL),
('89','3','2020-09-07 11:05:02','Sendfile','[Planejamento Convidados Oficial.docx]Gerado link e enviado por Cliente 001 para o email ivinsons@gmail.com','::1',NULL),
('90','3','2020-09-07 11:22:26','Exclusão','[Planejamento Convidados Oficial.docx]Arquivo deletado de nossa base de dados pelo usuarioCliente 001','::1',NULL),
('91','3','2020-09-07 11:24:03','Exclusão','[logo-top.png]Arquivo deletado de nossa base de dados pelo usuarioCliente 001','::1',NULL),
('92','3','2020-09-07 11:25:13','Sendfile','[INFLUENCIER ENGAJAMENTO.xlsx]Gerado link e enviado por Cliente 001 para o email ivinsons@gmail.com','::1',NULL),
('93','3','2020-09-07 11:25:24','Exclusão','[CV João Eduardo-Portfólio.pdf]Arquivo deletado de nossa base de dados pelo usuarioCliente 001','::1',NULL),
('94','3','2020-09-07 11:25:57','Exclusão','[MobiriseSetup.exe]Arquivo deletado de nossa base de dados pelo usuarioCliente 001','::1',NULL),
('95','3','2020-09-07 11:26:11','Exclusão','[Modelo Contrato Prest Serv BJM x MEI 13.08.2020 (2).docx]Arquivo deletado de nossa base de dados pelo usuarioCliente 001','::1',NULL),
('96','3','2020-09-07 11:26:27','Exclusão','[Quadro Orcamentario 2020.xlsx]Arquivo deletado de nossa base de dados pelo usuarioCliente 001','::1',NULL),
('97','3','2020-09-07 11:26:41','Exclusão','[INFLUENCIER ENGAJAMENTO.xlsx]Arquivo deletado de nossa base de dados pelo usuarioCliente 001','::1',NULL),
('98','3','2020-09-07 12:11:18','Exclusão','[logo-top.png]Arquivo deletado de nossa base de dados pelo usuarioCliente 001','::1',NULL),
('99','3','2020-09-07 12:11:20','Exclusão','[]O arquivo não existe fisicamente por algum motivo, portando foi deletado do banco de dados pelo usuário Cliente 001','::1',NULL),
('100','3','2020-09-07 12:11:33','Exclusão','[logo-top.png]Arquivo deletado de nossa base de dados pelo usuarioCliente 001','::1',NULL),
('101','3','2020-09-07 12:11:40','Exclusão','[]O arquivo não existe fisicamente por algum motivo, portando foi deletado do banco de dados pelo usuário Cliente 001','::1',NULL),
('102','3','2020-09-07 12:12:19','Exclusão','[logo-top.png]Arquivo deletado de nossa base de dados pelo usuarioCliente 001','::1',NULL),
('103','3','2020-09-07 12:12:55','Sendfile','[Apresentação Empresarial.pdf]Gerado link e enviado por Cliente 001 para o email ivinsons@gmail.com','::1',NULL),
('104','3','2020-09-07 12:13:08','Exclusão','[Apresentação Empresarial.pdf]Arquivo deletado de nossa base de dados pelo usuarioCliente 001','::1',NULL),
('105','3','2020-09-07 12:25:54','User','User logged in.','::1',NULL),
('106','3','2020-09-07 14:09:17','Sendfile','[Apresentação Empresarial.pdf]Gerado link e enviado por Cliente 001 para o email ivinsons@gmail.com','::1',NULL),
('107','0','2020-09-07 15:11:43','DownloadExterno','O usuário externo ivinsons@gmail.com fez o download do arquivo Apresentação Empresarial.pdf','::1',NULL),
('108','0','2020-09-07 15:20:57','DownloadExterno','O usuário externo ivinsons@gmail.com fez o download do arquivo Apresentação Empresarial.pdf','::1',NULL),
('109','0','2020-09-07 15:21:20','DownloadExterno','O usuário externo ivinsons@gmail.com fez o download do arquivo Apresentação Empresarial.pdf','::1',NULL),
('110','0','2020-09-07 15:21:40','Login Fail','A failed login on login.php','::1',NULL),
('111','1','2020-09-07 15:21:45','User','User logged in.','::1',NULL),
('112','1','2020-09-08 06:37:09','User','User logged in.','::1',NULL),
('113','3','2020-09-08 06:37:34','User','User logged in.','::1',NULL),
('114','3','2020-09-08 06:37:53','User','User logged in.','::1',NULL),
('115','1','2020-09-08 08:58:24','User','User logged in.','::1',NULL),
('116','0','2020-09-28 21:28:50','Login Fail','A failed login on login.php','::1',NULL),
('117','1','2020-09-28 21:28:56','User','User logged in.','::1',NULL),
('118','1','2020-09-28 21:31:14','Errors','Attempted to access disabled profile_pic','::1',NULL),
('119','1','2020-09-28 21:33:04','Errors','Attempted to access disabled profile_pic','::1',NULL),
('120','0','2020-10-02 18:48:52','Login Fail','A failed login on login.php','::1',NULL),
('121','1','2020-10-02 18:49:01','User','User logged in.','::1',NULL),
('122','1','2020-10-02 18:53:07','User','User logged in.','::1',NULL),
('123','1','2020-10-02 18:54:15','Errors','Attempted to access disabled profile_pic','::1',NULL),
('124','1','2020-10-02 18:54:24','Errors','Attempted to access disabled profile_pic','::1',NULL),
('125','1','2020-10-02 18:54:29','Errors','Attempted to access disabled profile_pic','::1',NULL),
('126','1','2020-10-02 19:04:37','Errors','Attempted to access disabled profile_pic','::1',NULL),
('127','1','2020-10-02 19:05:28','Errors','Attempted to access disabled profile_pic','::1',NULL),
('128','1','2020-10-02 19:05:30','Errors','Attempted to access disabled profile_pic','::1',NULL),
('129','1','2020-10-02 19:05:31','Errors','Attempted to access disabled profile_pic','::1',NULL),
('130','1','2020-10-03 12:43:47','Errors','Attempted to access disabled profile_pic','::1',NULL),
('131','3','2020-10-03 13:51:07','User','User logged in.','187.121.123.105',NULL),
('132','3','2020-10-03 13:56:29','Errors','Attempted to access disabled profile_pic','187.121.123.105',NULL),
('133','3','2020-10-03 13:56:36','Errors','Attempted to access disabled profile_pic','187.121.123.105',NULL),
('134','0','2020-10-03 18:32:41','Login Fail','A failed login on login.php','::1',NULL),
('135','1','2020-10-03 18:33:02','User','User logged in.','187.121.123.105',NULL),
('136','1','2020-10-08 13:20:39','User','User logged in.','187.75.66.239',NULL),
('137','1','2020-10-08 13:21:37','Errors','Attempted to access disabled profile_pic','187.75.66.239',NULL),
('138','1','2020-10-15 14:40:58','User','User logged in.','::1',NULL),
('139','1','2020-10-15 15:57:54','Errors','Attempted to access disabled profile_pic','::1',NULL),
('140','1','2020-10-15 15:58:04','Errors','Attempted to access disabled profile_pic','::1',NULL),
('141','1','2020-10-15 15:58:13','Errors','Attempted to access disabled profile_pic','::1',NULL),
('142','1','2020-10-15 15:58:23','Errors','Attempted to access disabled profile_pic','::1',NULL),
('143','1','2020-10-15 15:58:32','Errors','Attempted to access disabled profile_pic','::1',NULL),
('144','1','2020-10-15 15:58:46','Errors','Attempted to access disabled profile_pic','::1',NULL),
('145','1','2020-10-15 15:58:56','Errors','Attempted to access disabled profile_pic','::1',NULL),
('146','1','2020-10-15 15:59:07','Errors','Attempted to access disabled profile_pic','::1',NULL),
('147','1','2020-10-15 15:59:30','User','User logged in.','::1',NULL),
('148','1','2020-10-15 17:00:01','Errors','Attempted to access disabled profile_pic','::1',NULL),
('149','1','2020-10-15 17:02:03','Errors','Attempted to access disabled profile_pic','::1',NULL),
('150','1','2020-10-16 13:10:36','User','User logged in.','::1',NULL),
('151','1','2020-10-16 15:16:27','Errors','Attempted to access disabled profile_pic','::1',NULL),
('152','1','2020-10-16 15:16:56','Pages Manager','Changed private from private to public for Page #99 and stripped re_auth.','::1',NULL),
('153','1','2020-10-16 15:34:05','Pages Manager','Changed private from private to public for Page #100 and stripped re_auth.','::1',NULL),
('154','1','2020-10-21 15:33:40','User','User logged in.','::1',NULL),
('155','0','2020-10-30 15:58:20','Login Fail','A failed login on login.php','::1',NULL),
('156','1','2020-10-30 16:00:45','User','User logged in.','::1',NULL),
('157','0','2020-11-24 11:11:48','Login Fail','A failed login on login.php','::1',NULL),
('158','1','2020-11-24 11:12:00','User','User logged in.','::1',NULL),
('159','1','2020-11-24 11:15:29','5.1.7','Creating zip file','::1',NULL),
('160','1','2020-11-24 11:15:29','5.1.7','Attempting download','::1',NULL),
('161','1','2020-11-24 11:15:31','5.1.7','Opening zip file and checking hash','::1',NULL),
('162','1','2020-11-24 11:15:31','5.1.7','Hash Matches','::1',NULL),
('163','1','2020-11-24 11:15:32','5.1.7','Extracting zip file','::1',NULL),
('164','1','2020-11-24 11:15:32','5.1.7','You have successfully updated to 5.1.7','::1',NULL),
('165','1','2020-11-24 11:15:32','5.1.7','Running migration script(s)','::1',NULL),
('166','1','2020-11-24 11:15:34','System Updates','Added metadata column to logs table','::1',NULL),
('167','1','2020-11-24 11:15:34','System Updates','Update 2020-10-06a successfully deployed.','::1',NULL),
('168','1','2020-11-24 11:15:38','5.1.8','Creating zip file','::1',NULL),
('169','1','2020-11-24 11:15:38','5.1.8','Attempting download','::1',NULL),
('170','1','2020-11-24 11:15:39','5.1.8','Opening zip file and checking hash','::1',NULL),
('171','1','2020-11-24 11:15:39','5.1.8','Hash Matches','::1',NULL),
('172','1','2020-11-24 11:15:40','5.1.8','Extracting zip file','::1',NULL),
('173','1','2020-11-24 11:15:40','5.1.8','You have successfully updated to 5.1.8','::1',NULL),
('174','1','2020-11-24 11:15:40','5.1.8','Running migration script(s)','::1',NULL),
('175','1','2020-11-24 11:15:45','5.1.9','Creating zip file','::1',NULL),
('176','1','2020-11-24 11:15:45','5.1.9','Attempting download','::1',NULL),
('177','1','2020-11-24 11:15:46','5.1.9','Opening zip file and checking hash','::1',NULL),
('178','1','2020-11-24 11:15:46','5.1.9','Hash Matches','::1',NULL),
('179','1','2020-11-24 11:15:46','5.1.9','Extracting zip file','::1',NULL),
('180','1','2020-11-24 11:15:46','5.1.9','You have successfully updated to 5.1.9','::1',NULL),
('181','1','2020-11-24 11:15:46','5.1.9','Running migration script(s)','::1',NULL),
('182','1','2020-11-24 11:15:51','5.2.0','Creating zip file','::1',NULL),
('183','1','2020-11-24 11:15:51','5.2.0','Attempting download','::1',NULL),
('184','1','2020-11-24 11:15:52','5.2.0','Opening zip file and checking hash','::1',NULL),
('185','1','2020-11-24 11:15:53','5.2.0','Hash Matches','::1',NULL),
('186','1','2020-11-24 11:15:53','5.2.0','Extracting zip file','::1',NULL),
('187','1','2020-11-24 11:15:53','5.2.0','You have successfully updated to 5.2.0','::1',NULL),
('188','1','2020-11-24 11:15:53','5.2.0','Running migration script(s)','::1',NULL),
('189','1','2020-11-24 11:15:55','System Updates','Added container_open_class column to settings table','::1',NULL),
('190','1','2020-11-24 11:15:55','System Updates','Update 2020-11-03a successfully deployed.','::1',NULL),
('191','1','2020-11-24 11:15:59','5.2.2','Creating zip file','::1',NULL),
('192','1','2020-11-24 11:15:59','5.2.2','Attempting download','::1',NULL),
('193','1','2020-11-24 11:16:00','5.2.2','Opening zip file and checking hash','::1',NULL),
('194','1','2020-11-24 11:16:00','5.2.2','Hash Matches','::1',NULL),
('195','1','2020-11-24 11:16:01','5.2.2','Extracting zip file','::1',NULL),
('196','1','2020-11-24 11:16:01','5.2.2','You have successfully updated to 5.2.2','::1',NULL),
('197','1','2020-11-24 11:16:01','5.2.2','Running migration script(s)','::1',NULL),
('198','1','2020-11-24 11:16:02','System Updates','Update 2020-11-08a successfully deployed.','::1',NULL),
('199','1','2020-11-24 11:16:03','System Updates','Set a default for account owner','::1',NULL),
('200','1','2020-11-24 11:16:03','System Updates','Update 2020-11-10a successfully deployed.','::1',NULL),
('201','1','2020-11-24 11:16:04','System Updates','Added active to users table','::1',NULL),
('202','1','2020-11-24 11:16:04','System Updates','Update 2020-11-10b successfully deployed.','::1',NULL),
('203','1','2020-11-24 11:18:56','Errors','Attempted to access disabled profile_pic','::1',NULL),
('204','1','2020-11-24 12:00:57','Admin Backup','Completed backup for everything.','::1',NULL),
('205','1','2020-11-24 12:03:43','Admin Backup','Completed backup for Database.','::1',NULL),
('206','0','2020-11-25 19:41:46','Login Fail','A failed login on login.php','::1',NULL),
('207','0','2020-11-25 19:42:00','Login Fail','A failed login on login.php','::1',NULL),
('208','1','2020-11-25 19:42:12','login','User logged in.','::1',NULL),
('209','1','2020-11-26 00:51:33','Pages Manager','Added 3 permission(s) to conteudo.php.','::1',NULL),
('210','1','2020-11-26 00:51:33','Pages Manager','Retitled \'conteudo.php\' to \'Manuten&ccedil;&atilde;o de conteudo\'.','::1',NULL),
('211','1','2020-11-26 01:12:01','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  ttttttttt','::1',NULL),
('212','1','2020-11-26 01:13:02','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  11111111111111','::1',NULL),
('213','1','2020-11-26 01:14:19','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  tttttttttt','::1',NULL),
('214','1','2020-11-26 01:45:00','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  Membros da Unecs homologam candidatura de José César da Costa à Presidência','::1',NULL),
('215','1','2020-11-26 15:34:22','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  Primeira semana do PIX foi ‘positiva, suave e segura’, avalia BC','::1',NULL),
('216','1','2020-11-26 16:04:36','Errors','Attempted to access disabled profile_pic','::1',NULL),
('217','1','2020-11-26 16:48:38','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  23234234','::1',NULL),
('218','1','2020-11-26 16:59:20','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  23234234','::1',NULL),
('219','1','2020-11-26 16:59:37','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  23234234','::1',NULL),
('220','1','2020-11-26 17:05:13','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  23234234','::1',NULL),
('221','1','2020-11-26 17:05:41','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  23234234','::1',NULL),
('222','1','2020-11-26 17:06:01','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  23234234','::1',NULL),
('223','1','2020-11-26 17:06:39','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  23234234','::1',NULL),
('224','1','2020-11-26 17:07:04','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  23234234','::1',NULL),
('225','1','2020-11-26 17:07:29','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  23234234','::1',NULL),
('226','1','2020-11-26 17:07:41','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  23234234','::1',NULL),
('227','1','2020-11-26 17:08:26','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  23234234','::1',NULL),
('228','1','2020-11-26 17:08:42','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  23234234','::1',NULL),
('229','1','2020-11-26 17:10:01','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  23234234','::1',NULL),
('230','1','2020-11-26 17:24:56','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  wefwef','::1',NULL),
('231','1','2020-11-26 17:26:30','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  w3trwefw','::1',NULL),
('232','1','2020-11-26 17:29:59','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  dfgd','::1',NULL),
('233','1','2020-11-26 18:19:26','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  qwfqwdqw','::1',NULL),
('234','1','2020-11-26 18:20:17','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  qwfqwdqw','::1',NULL),
('235','1','2020-11-27 17:09:29','Errors','Attempted to access disabled profile_pic','::1',NULL),
('236','1','2020-11-28 00:58:02','Upload','The fez um novo upload, com o nome de pngegg.png','::1',NULL),
('237','1','2020-11-28 01:01:02','Upload','The fez um novo upload, com o nome de pngegg.png','::1',NULL),
('238','1','2020-11-28 01:02:31','Upload','The fez um novo upload, com o nome de pngegg.png','::1',NULL),
('239','1','2020-11-28 01:04:46','Upload','The fez um novo upload, com o nome de pngegg.png','::1',NULL),
('240','1','2020-11-28 01:11:27','Upload','The fez um novo upload, com o nome de imagem-blog-676x522.jpg','::1',NULL),
('241','1','2020-11-28 01:12:14','Upload','The fez um novo upload, com o nome de imagem-blog-676x522.jpg','::1',NULL),
('242','1','2020-11-28 01:18:26','Upload','The Ocorreu um erro ao tentar fazer um novo upload','::1',NULL),
('243','1','2020-11-28 01:19:39','Upload','The Ocorreu um erro ao tentar fazer um novo upload','::1',NULL),
('244','1','2020-11-28 01:19:59','Upload','The fez um novo upload, com o nome de tributario.png','::1',NULL),
('245','1','2020-11-28 01:20:28','Upload','The fez um novo upload, com o nome de imagem-blog-676x522.jpg','::1',NULL),
('246','1','2020-11-28 01:20:51','Upload','The fez um novo upload, com o nome de gif_dados.gif','::1',NULL),
('247','1','2020-11-28 02:21:55','Pages Manager','Added 3 permission(s) to sers/admin.php.','::1',NULL),
('248','1','2020-11-28 02:22:43','Pages Manager','Added 3 permission(s) to onteudo.php.','::1',NULL),
('249','1','2020-11-28 02:47:14','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  Informativo Instabilidade Minas Gerais –Esclarecimentos','::1',NULL),
('250','1','2020-11-28 02:52:22','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  dfgefge','::1',NULL),
('251','1','2020-11-28 20:08:07','Upload','The fez um novo upload, com o nome de imagem-blog-676x522.jpg','::1',NULL),
('252','1','2020-11-28 20:09:21','Upload','The fez um novo upload, com o nome de imagem-blog-676x522.jpg','::1',NULL),
('253','1','2020-11-28 20:09:33','Upload','The Ocorreu um erro ao tentar fazer um novo upload','::1',NULL),
('254','1','2020-11-28 20:10:40','Upload','The Ocorreu um erro ao tentar fazer um novo upload','::1',NULL),
('255','1','2020-11-28 20:11:22','Upload','The Ocorreu um erro ao tentar fazer um novo upload','::1',NULL),
('256','1','2020-11-28 20:12:06','Upload','The Ocorreu um erro ao tentar fazer um novo upload','::1',NULL),
('257','1','2020-11-28 20:12:19','Upload','The fez um novo upload, com o nome de imagem-blog-676x522.jpg','::1',NULL),
('258','1','2020-11-28 20:17:22','Upload','The fez um novo upload, com o nome de manutencao[1].png','::1',NULL),
('259','1','2020-11-28 20:19:40','Upload','The fez um novo upload, com o nome de pngegg.png','::1',NULL),
('260','1','2020-11-28 20:19:40','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  Ouça o 4º Episo?dio do PODCAST “I?CONES DA AUTOMAC?A?O”','::1',NULL),
('261','1','2020-11-28 20:21:09','Upload','The fez um novo upload, com o nome de 02[1].jpeg','::1',NULL),
('262','1','2020-11-28 20:21:10','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  AFRAC participa hoje do “ENCONTRO DE VALOR ABAD 2020” em São Paulo.','::1',NULL),
('263','1','2020-11-28 20:21:57','Upload','The fez um novo upload, com o nome de 1[1].png','::1',NULL),
('264','1','2020-11-28 20:21:58','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  Dispositivo Autorizador Fiscal – DAF é apresentado via Audiência Pública em Santa Catarina.','::1',NULL),
('265','1','2020-11-28 20:22:38','Upload','The Ocorreu um erro ao tentar fazer um novo upload','::1',NULL),
('266','1','2020-11-28 20:22:39','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  Fique atento às regras de obrigatoriedade do uso da NFC-e no Estado do Rio Grande do Sul','::1',NULL),
('267','1','2020-11-28 20:23:40','Upload','The fez um novo upload, com o nome de whatsapp-image-2020-11-23-at-16.25.05[1].jpeg','::1',NULL),
('268','1','2020-11-28 20:23:41','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  Membros da Unecs homologam candidatura de José César da Costa à Presidência','::1',NULL),
('269','1','2020-11-28 20:24:08','Upload','The Ocorreu um erro ao tentar fazer um novo upload','::1',NULL),
('270','1','2020-11-28 20:24:09','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  Santa Catarina disciplina regras para emissão simultânea de cupom fiscal por meio do ECF e NFC-e em diferentes pontos de vendas','::1',NULL),
('271','1','2020-11-28 20:24:33','Upload','The Ocorreu um erro ao tentar fazer um novo upload','::1',NULL),
('272','1','2020-11-28 20:24:34','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  Justiça determina suspensão de vendas de dados de consumidores pela Serasa','::1',NULL),
('273','1','2020-11-28 20:26:13','Upload','The fez um novo upload, com o nome de Podcast[1].jpg','::1',NULL),
('274','1','2020-11-29 11:52:48','Pages Manager','Added 3 permission(s) to iles.php.','::1',NULL),
('275','1','2020-11-29 11:54:33','Upload','The Ocorreu um erro ao tentar fazer um novo upload','::1',NULL),
('276','1','2020-11-29 11:54:34','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  Confira a live: “Como receber PIX com todas as vantagens do QR Code integrado Mercado Pago”.','::1',NULL),
('277','1','2020-11-29 12:09:01','Upload','The Ocorreu um erro ao tentar fazer um novo upload','::1',NULL),
('278','1','2020-11-29 12:09:01','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  wedwe','::1',NULL),
('279','1','2020-11-29 12:25:56','Upload','The Ocorreu um erro ao tentar fazer um novo upload','::1',NULL),
('280','1','2020-11-29 12:25:57','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  Confira a live: “Como receber PIX com todas as vantagens do QR Code integrado Mercado Pago”','::1',NULL),
('281','1','2020-11-29 12:33:07','Upload','The Ocorreu um erro ao tentar fazer um novo upload','::1',NULL),
('282','1','2020-11-29 12:33:38','Upload','The Ocorreu um erro ao tentar fazer um novo upload','::1',NULL),
('283','1','2020-11-29 12:33:47','Upload','The Ocorreu um erro ao tentar fazer um novo upload','::1',NULL),
('284','1','2020-11-29 12:41:33','Upload','The Ocorreu um erro ao tentar fazer um novo upload','::1',NULL),
('285','1','2020-11-29 12:41:33','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  Participe do painel: “NFC-e regras e prazos: Fim do PAF-ECF em SC” que será realizado pela NDD no próximo dia 19/11. Não perca!','::1',NULL),
('286','1','2020-11-30 01:00:37','login','User logged in.','187.121.83.220',NULL),
('287','1','2020-11-30 01:01:50','Pages Manager','Changed private from private to public for Page #107 and stripped re_auth.','187.121.83.220',NULL),
('288','1','2020-11-30 01:45:23','Pages Manager','Added 3 permission(s) to sers/admin.php.','::1',NULL),
('289','1','2020-11-30 01:45:59','Pages Manager','Added 3 permission(s) to onteudos.php.','::1',NULL),
('290','1','2020-11-30 01:46:39','Pages Manager','Added 3 permission(s) to onteudo.php.','::1',NULL),
('291','1','2020-11-30 15:25:59','login','User logged in.','::1',NULL),
('292','1','2020-11-30 15:30:28','Upload','The fez um novo upload, com o nome de pag-qr-code-loja[1].jpg','::1',NULL),
('293','1','2020-11-30 15:30:28','Conteudo Criado ','The\r\n         criou um novo conteudo com o Titulo  PIX registra 1,5 mil operações no primeiro dia e tem problemas dentro do esperado, diz Banco Central','::1',NULL); 


DROP TABLE IF EXISTS `logs_exempt`;
CREATE TABLE `logs_exempt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `createdby` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `logs_exempt_type` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(255) NOT NULL,
  `parent` int(10) NOT NULL,
  `dropdown` int(1) NOT NULL,
  `logged_in` int(1) NOT NULL,
  `display_order` int(10) NOT NULL,
  `label` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `icon_class` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

INSERT INTO `menus` VALUES ('1','main','2','0','1','1','{{home}}','','fa fa-fw fa-home'),
('2','main','-1','1','1','14','','','fa fa-fw fa-cogs'),
('3','main','-1','0','1','11','{{username}}','users/account.php','fa fa-fw fa-user'),
('4','main','-1','1','0','3','{{help}}','','fa fa-fw fa-life-ring'),
('5','main','-1','0','0','2','{{register}}','users/join.php','fa fa-fw fa-plus-square'),
('6','main','-1','0','0','1','{{login}}','users/login.php','fa fa-fw fa-sign-in'),
('7','main','2','0','1','2','{{account}}','users/account.php','fa fa-fw fa-user'),
('8','main','2','0','1','3','{{hr}}','',''),
('9','main','2','0','1','4','{{dashboard}}','users/admin.php','fa fa-fw fa-cogs'),
('10','main','2','0','1','5','{{users}}','users/admin.php?view=users','fa fa-fw fa-user'),
('11','main','2','0','1','6','{{perms}}','users/admin.php?view=permissions','fa fa-fw fa-lock'),
('12','main','2','0','1','7','{{pages}}','users/admin.php?view=pages','fa fa-fw fa-wrench'),
('13','main','2','0','1','9','{{logs}}','users/admin.php?view=logs','fa fa-fw fa-search'),
('14','main','2','0','1','10','{{hr}}','',''),
('15','main','2','0','1','11','{{logout}}','users/logout.php','fa fa-fw fa-sign-out'),
('16','main','-1','0','0','0','{{home}}','','fa fa-fw fa-home'),
('17','main','-1','0','1','10','{{home}}','','fa fa-fw fa-home'),
('18','main','4','0','0','1','{{forgot}}','users/forgot_password.php','fa fa-fw fa-wrench'),
('20','main','4','0','0','99999','{{resend}}','users/verify_resend.php','fa fa-exclamation-triangle'); 


DROP TABLE IF EXISTS `message_threads`;
CREATE TABLE `message_threads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_to` int(11) NOT NULL,
  `msg_from` int(11) NOT NULL,
  `msg_subject` varchar(255) NOT NULL,
  `last_update` datetime NOT NULL,
  `last_update_by` int(11) NOT NULL,
  `archive_from` int(1) NOT NULL DEFAULT '0',
  `archive_to` int(1) NOT NULL DEFAULT '0',
  `hidden_from` int(1) NOT NULL DEFAULT '0',
  `hidden_to` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO `message_threads` VALUES ('1','2','1','Testiing123','2017-08-06 00:13:47','1','0','0','0','0'),
('2','2','1','Testing Message Badge','2017-09-09 15:10:09','1','0','0','0','0'); 


DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_from` int(11) NOT NULL,
  `msg_to` int(11) NOT NULL,
  `msg_body` text NOT NULL,
  `msg_read` int(1) NOT NULL,
  `msg_thread` int(11) NOT NULL,
  `deleted` int(1) NOT NULL,
  `sent_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO `messages` VALUES ('1','1','2','&lt;p&gt;fgds&lt;/p&gt;','0','1','0','2017-08-06 00:13:47'),
('2','1','2','&lt;p&gt;Did it work?&lt;/p&gt;','0','2','0','2017-09-09 15:10:09'); 


DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` mediumtext NOT NULL,
  `is_read` tinyint(4) NOT NULL,
  `is_archived` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_read` datetime DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `class` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `private` int(11) NOT NULL DEFAULT '0',
  `re_auth` int(1) NOT NULL DEFAULT '0',
  `core` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

INSERT INTO `pages` VALUES ('1','index.php','Home','0','0','1'),
('2','z_us_root.php','','0','0','1'),
('3','users/account.php','Account Dashboard','1','0','1'),
('4','users/admin.php','Admin Dashboard','1','0','1'),
('14','users/forgot_password.php','Forgotten Password','0','0','1'),
('15','users/forgot_password_reset.php','Reset Forgotten Password','0','0','1'),
('16','users/index.php','Home','0','0','1'),
('17','users/init.php','','0','0','1'),
('18','users/join.php','Join','0','0','1'),
('19','users/joinThankYou.php','Join','0','0','0'),
('20','users/login.php','Login','0','0','1'),
('21','users/logout.php','Logout','0','0','1'),
('24','users/user_settings.php','User Settings','1','0','1'),
('25','users/verify.php','Account Verification','0','0','1'),
('26','users/verify_resend.php','Account Verification','0','0','1'),
('45','users/maintenance.php','Maintenance','0','0','1'),
('68','users/update.php','Update Manager','1','0','1'),
('81','users/admin_pin.php','Verification PIN Set','1','0','1'),
('90','files.php','Meus aqruivos','1','0','0'),
('91','footer.php','','1','0','0'),
('92','header.php','','1','0','0'),
('93','up-proccess.php','upload','1','0','0'),
('94','upload.php','Upload de arquivos','1','0','0'),
('95','files-proccess.php','Processamento de arquivos','1','0','0'),
('96','conteudos.php','','1','0','0'),
('97','editar-conteudos.php','','1','0','0'),
('98','novo-conteudo.php','','1','0','0'),
('99','associados.php','','0','0','0'),
('100','editar-associados.php','','0','0','0'),
('101','agenda.php','','1','0','0'),
('102','conteudo.php','Manuten&ccedil;&atilde;o de conteudo','1','0','0'),
('107','blog.php','','0','0','0'),
('108','conteudo-proccess.php','','1','0','0'),
('109','generate.php','','1','0','0'),
('110','info.php','','1','0','0'),
('111','iles.php','','1','0','0'),
('112','sers/admin.php','','1','0','0'),
('113','onteudos.php','','1','0','0'),
('114','onteudo.php','','1','0','0'); 


DROP TABLE IF EXISTS `permission_page_matches`;
CREATE TABLE `permission_page_matches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

INSERT INTO `permission_page_matches` VALUES ('2','2','27'),
('3','1','24'),
('4','1','22'),
('5','2','13'),
('6','2','12'),
('7','1','11'),
('8','2','10'),
('9','2','9'),
('10','2','8'),
('11','2','7'),
('12','2','6'),
('13','2','5'),
('14','2','4'),
('15','1','3'),
('16','2','37'),
('17','2','39'),
('19','2','40'),
('21','2','41'),
('23','2','42'),
('27','1','42'),
('28','1','27'),
('29','1','41'),
('30','1','40'),
('31','2','44'),
('32','2','47'),
('33','2','51'),
('34','2','50'),
('35','2','49'),
('36','2','53'),
('37','2','52'),
('38','2','68'),
('39','2','55'),
('40','2','56'),
('41','2','71'),
('42','2','58'),
('43','2','57'),
('44','2','53'),
('45','2','74'),
('46','2','75'),
('47','1','75'),
('48','1','76'),
('49','2','76'),
('50','1','77'),
('51','2','77'),
('52','2','78'),
('53','2','80'),
('54','1','81'),
('55','1','82'),
('56','1','83'),
('57','2','84'),
('58','1','94'),
('59','2','94'),
('60','1','90'),
('61','2','90'),
('62','1','93'),
('63','2','93'),
('64','3','93'),
('65','1','95'),
('66','2','95'),
('67','3','95'),
('68','1','102'),
('69','2','102'),
('70','3','102'),
('71','1','104'),
('72','2','104'),
('73','3','104'),
('74','1','105'),
('75','2','105'),
('76','3','105'),
('77','1','106'),
('78','2','106'),
('79','3','106'),
('80','1','112'),
('81','2','112'),
('82','3','112'),
('83','1','113'),
('84','2','113'),
('85','3','113'),
('86','1','114'),
('87','2','114'),
('88','3','114'); 


DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `permissions` VALUES ('1','Cliente'),
('2','Administrator'),
('3','Consultor TLV'); 


DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `bio` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `profiles` VALUES ('1','1','&lt;h1&gt;This is the Admin&#039;s bio.&lt;/h1&gt;'),
('2','2','This is your bio'); 


DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `recaptcha` int(1) NOT NULL DEFAULT '0',
  `force_ssl` int(1) NOT NULL,
  `css_sample` int(1) NOT NULL,
  `us_css1` varchar(255) NOT NULL,
  `us_css2` varchar(255) NOT NULL,
  `us_css3` varchar(255) NOT NULL,
  `site_name` varchar(100) NOT NULL,
  `language` varchar(255) NOT NULL,
  `track_guest` int(1) NOT NULL,
  `site_offline` int(1) NOT NULL,
  `force_pr` int(1) NOT NULL,
  `glogin` int(1) NOT NULL DEFAULT '0',
  `fblogin` int(1) NOT NULL,
  `gid` varchar(255) NOT NULL,
  `gsecret` varchar(255) NOT NULL,
  `gredirect` varchar(255) NOT NULL,
  `ghome` varchar(255) NOT NULL,
  `fbid` varchar(255) NOT NULL,
  `fbsecret` varchar(255) NOT NULL,
  `fbcallback` varchar(255) NOT NULL,
  `graph_ver` varchar(255) NOT NULL,
  `finalredir` varchar(255) NOT NULL,
  `req_cap` int(1) NOT NULL,
  `req_num` int(1) NOT NULL,
  `min_pw` int(2) NOT NULL,
  `max_pw` int(3) NOT NULL,
  `min_un` int(2) NOT NULL,
  `max_un` int(3) NOT NULL,
  `messaging` int(1) NOT NULL,
  `snooping` int(1) NOT NULL,
  `echouser` int(11) NOT NULL,
  `wys` int(1) NOT NULL,
  `change_un` int(1) NOT NULL,
  `backup_dest` varchar(255) NOT NULL,
  `backup_source` varchar(255) NOT NULL,
  `backup_table` varchar(255) NOT NULL,
  `msg_notification` int(1) NOT NULL,
  `permission_restriction` int(1) NOT NULL,
  `auto_assign_un` int(1) NOT NULL,
  `page_permission_restriction` int(1) NOT NULL,
  `msg_blocked_users` int(1) NOT NULL,
  `msg_default_to` int(1) NOT NULL,
  `notifications` int(1) NOT NULL,
  `notif_daylimit` int(3) NOT NULL,
  `recap_public` varchar(100) NOT NULL,
  `recap_private` varchar(100) NOT NULL,
  `page_default_private` int(1) NOT NULL,
  `navigation_type` tinyint(1) NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `custom_settings` int(1) NOT NULL,
  `system_announcement` varchar(255) NOT NULL,
  `twofa` int(1) DEFAULT '0',
  `force_notif` tinyint(1) DEFAULT NULL,
  `cron_ip` varchar(255) DEFAULT NULL,
  `registration` tinyint(1) DEFAULT NULL,
  `join_vericode_expiry` int(9) unsigned NOT NULL,
  `reset_vericode_expiry` int(9) unsigned NOT NULL,
  `admin_verify` tinyint(1) NOT NULL,
  `admin_verify_timeout` int(9) NOT NULL,
  `session_manager` tinyint(1) NOT NULL,
  `template` varchar(255) DEFAULT 'standard',
  `saas` tinyint(1) DEFAULT NULL,
  `redirect_uri_after_login` text,
  `show_tos` tinyint(1) DEFAULT '1',
  `default_language` varchar(11) DEFAULT NULL,
  `allow_language` tinyint(1) DEFAULT NULL,
  `spice_api` varchar(75) DEFAULT NULL,
  `announce` datetime DEFAULT NULL,
  `bleeding_edge` tinyint(1) DEFAULT '0',
  `err_time` int(11) DEFAULT '15',
  `container_open_class` varchar(255) DEFAULT 'container-fluid',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `settings` VALUES ('1','0','0','0','../users/css/color_schemes/bootstrap.min.css','../users/css/sb-admin.css','../users/css/custom.css','UserSpice','en','1','0','0','0','0','','','','','','','','','','0','0','6','30','4','30','0','1','0','1','0','/database','db_only','','0','0','0','0','0','1','0','7','6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI','6LeIxAcTAAAAAGG-vFI1TnRWxMZNFuojJ4WifJWe','1','1','UserSpice','1','','0','0','off','1','24','15','1','120','0','standard',NULL,'conteudos.php','1','en-US','0','6V7GN-SHQCC-2W5E3-063B7-277D0','2020-12-01 13:02:27','0','15','container-fluid'); 


DROP TABLE IF EXISTS `updates`;
CREATE TABLE `updates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `migration` varchar(15) NOT NULL,
  `applied_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_skipped` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

INSERT INTO `updates` VALUES ('15','1XdrInkjV86F','2018-02-18 13:33:24',NULL),
('16','3GJYaKcqUtw7','2018-04-25 07:51:08',NULL),
('17','3GJYaKcqUtz8','2018-04-25 07:51:08',NULL),
('18','69qa8h6E1bzG','2018-04-25 07:51:08',NULL),
('19','2XQjsKYJAfn1','2018-04-25 07:51:08',NULL),
('20','549DLFeHMNw7','2018-04-25 07:51:08',NULL),
('21','4Dgt2XVjgz2x','2018-04-25 07:51:08',NULL),
('22','VLBp32gTWvEo','2018-04-25 07:51:08',NULL),
('23','Q3KlhjdtxE5X','2018-04-25 07:51:08',NULL),
('24','ug5D3pVrNvfS','2018-04-25 07:51:08',NULL),
('25','69FbVbv4Jtrz','2018-04-25 07:51:09',NULL),
('26','4A6BdJHyvP4a','2018-04-25 07:51:09',NULL),
('27','37wvsb5BzymK','2018-04-25 07:51:09',NULL),
('28','c7tZQf926zKq','2018-04-25 07:51:09',NULL),
('29','ockrg4eU33GP','2018-04-25 07:51:09',NULL),
('30','XX4zArPs4tor','2018-04-25 07:51:09',NULL),
('31','pv7r2EHbVvhD','2018-04-25 15:00:00',NULL),
('32','uNT7NpgcBDFD','2018-04-25 15:00:00',NULL),
('33','mS5VtQCZjyJs','2018-12-11 06:19:16',NULL),
('34','23rqAv5elJ3G','2018-12-11 06:19:51',NULL),
('35','qPEARSh49fob','2019-01-01 04:01:01',NULL),
('36','FyMYJ2oeGCTX','2019-01-01 04:01:01',NULL),
('37','iit5tHSLatiS','2019-01-01 04:01:01',NULL),
('38','hcA5B3PLhq6E','2020-07-16 02:27:53',NULL),
('39','VNEno3E4zaNz','2020-07-16 02:27:53',NULL),
('40','2ZB9mg1l0JXe','2020-07-16 02:27:53',NULL),
('41','B9t6He7qmFXa','2020-07-16 02:27:53',NULL),
('42','86FkFVV4TGRg','2020-07-16 02:27:53',NULL),
('43','y4A1Y0u9n2Rt','2020-07-16 02:27:53',NULL),
('44','Tm5xY22MM8eC','2020-07-16 02:27:53',NULL),
('45','0YXdrInkjV86F','2020-07-16 02:27:53',NULL),
('46','99plgnkjV86','2020-07-16 02:27:53',NULL),
('47','0DaShInkjV86','2020-07-16 02:27:53',NULL),
('48','0DaShInkjVz1','2020-07-16 02:27:53',NULL),
('49','y4A1Y0u9n2SS','2020-07-16 02:27:53',NULL),
('50','0DaShInkjV87','2020-07-16 02:27:53',NULL),
('51','0DaShInkjV88','2020-07-16 02:27:53',NULL),
('52','2019-09-04a','2020-07-16 02:27:53',NULL),
('53','2019-09-05a','2020-07-16 02:27:53',NULL),
('54','2019-09-26a','2020-07-16 02:27:53',NULL),
('55','2019-11-19a','2020-07-16 02:27:53',NULL),
('56','2019-12-28a','2020-07-16 02:27:53',NULL),
('57','2020-01-21a','2020-07-16 02:27:54',NULL),
('58','2020-03-26a','2020-07-16 02:27:54',NULL),
('59','2020-04-17a','2020-07-16 02:27:54',NULL),
('60','2020-06-06a','2020-07-16 02:27:54',NULL),
('61','2020-06-30a','2020-07-16 02:27:54',NULL),
('62','2020-07-01a','2020-07-16 02:27:54',NULL),
('63','2020-07-16a','2020-09-01 07:43:20',NULL),
('64','2020-07-30a','2020-09-01 07:43:20',NULL),
('65','2020-10-06a','2020-11-24 11:15:33',NULL),
('66','2020-11-03a','2020-11-24 11:15:54',NULL),
('67','2020-11-08a','2020-11-24 11:16:01',NULL),
('68','2020-11-10a','2020-11-24 11:16:02',NULL),
('69','2020-11-10b','2020-11-24 11:16:03',NULL); 


DROP TABLE IF EXISTS `us_announcements`;
CREATE TABLE `us_announcements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dismissed` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `ignore` varchar(50) DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS `us_fingerprint_assets`;
CREATE TABLE `us_fingerprint_assets` (
  `kFingerprintAssetID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fkFingerprintID` int(11) NOT NULL,
  `IP_Address` varchar(255) NOT NULL,
  `User_Browser` varchar(255) NOT NULL,
  `User_OS` varchar(255) NOT NULL,
  PRIMARY KEY (`kFingerprintAssetID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS `us_fingerprints`;
CREATE TABLE `us_fingerprints` (
  `kFingerprintID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fkUserID` int(11) NOT NULL,
  `Fingerprint` varchar(32) NOT NULL,
  `Fingerprint_Expiry` datetime NOT NULL,
  `Fingerprint_Added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`kFingerprintID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS `us_form_validation`;
CREATE TABLE `us_form_validation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `params` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

INSERT INTO `us_form_validation` VALUES ('1','min','Minimum # of Characters','number'),
('2','max','Maximum # of Characters','number'),
('3','is_numeric','Must be a number','true'),
('4','valid_email','Must be a valid email address','true'),
('5','<','Must be a number less than','number'),
('6','>','Must be a number greater than','number'),
('7','<=','Must be a number less than or equal to','number'),
('8','>=','Must be a number greater than or equal to','number'),
('9','!=','Must not be equal to','text'),
('10','==','Must be equal to','text'),
('11','is_integer','Must be an integer','true'),
('12','is_timezone','Must be a valid timezone name','true'),
('13','is_datetime','Must be a valid DateTime','true'); 


DROP TABLE IF EXISTS `us_form_views`;
CREATE TABLE `us_form_views` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_name` varchar(255) NOT NULL,
  `view_name` varchar(255) NOT NULL,
  `fields` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS `us_forms`;
CREATE TABLE `us_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS `us_ip_blacklist`;
CREATE TABLE `us_ip_blacklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) NOT NULL,
  `last_user` int(11) NOT NULL DEFAULT '0',
  `reason` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS `us_ip_list`;
CREATE TABLE `us_ip_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO `us_ip_list` VALUES ('1','::1','1','2020-09-08 08:58:24'),
('2','187.121.123.105','1','2020-10-03 18:33:02'),
('3','187.75.66.239','1','2020-10-08 13:20:39'),
('4','187.121.83.220','1','2020-11-30 01:00:37'); 


DROP TABLE IF EXISTS `us_ip_whitelist`;
CREATE TABLE `us_ip_whitelist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS `us_management`;
CREATE TABLE `us_management` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page` varchar(255) NOT NULL,
  `view` varchar(255) NOT NULL,
  `feature` varchar(255) NOT NULL,
  `access` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

INSERT INTO `us_management` VALUES ('1','_admin_manage_ip.php','ip','IP Whitelist/Blacklist',''),
('2','_admin_messages.php','messages','Messages',''),
('3','_admin_nav.php','nav','Navigation',''),
('4','_admin_nav_item.php','nav_item','Navigation',''),
('5','_admin_notifications.php','notifications','Notifications',''),
('6','_admin_page.php','page','Page Management',''),
('7','_admin_pages.php','pages','Page Management',''),
('10','_admin_security_logs.php','security_logs','Security Logs',''),
('11','_admin_sessions.php','sessions','Session Management',''),
('12','_admin_templates.php','templates','Templates',''),
('13','_admin_tools_check_updates.php','updates','Check Updates',''); 


DROP TABLE IF EXISTS `us_plugin_hooks`;
CREATE TABLE `us_plugin_hooks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `page` varchar(255) NOT NULL,
  `folder` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `hook` varchar(255) NOT NULL,
  `disabled` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS `us_plugins`;
CREATE TABLE `us_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `updates` text,
  `last_check` datetime DEFAULT '2020-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO `us_plugins` VALUES ('1','fileman','active',NULL,'2020-11-24 11:12:48'); 


DROP TABLE IF EXISTS `us_saas_levels`;
CREATE TABLE `us_saas_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(255) NOT NULL,
  `users` int(11) NOT NULL,
  `details` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS `us_saas_orgs`;
CREATE TABLE `us_saas_orgs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org` varchar(255) NOT NULL,
  `owner` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS `us_user_sessions`;
CREATE TABLE `us_user_sessions` (
  `kUserSessionID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fkUserID` int(11) unsigned NOT NULL,
  `UserFingerprint` varchar(255) NOT NULL,
  `UserSessionIP` varchar(255) NOT NULL,
  `UserSessionOS` varchar(255) NOT NULL,
  `UserSessionBrowser` varchar(255) NOT NULL,
  `UserSessionStarted` datetime NOT NULL,
  `UserSessionLastUsed` datetime DEFAULT NULL,
  `UserSessionLastPage` varchar(255) NOT NULL,
  `UserSessionEnded` tinyint(1) NOT NULL DEFAULT '0',
  `UserSessionEnded_Time` datetime DEFAULT NULL,
  PRIMARY KEY (`kUserSessionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS `user_permission_matches`;
CREATE TABLE `user_permission_matches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

INSERT INTO `user_permission_matches` VALUES ('100','1','1'),
('101','1','2'),
('102','2','1'),
('111','3','1'); 


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(155) NOT NULL,
  `email_new` varchar(155) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `pin` varchar(255) DEFAULT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `permissions` int(11) NOT NULL,
  `logins` int(11) unsigned NOT NULL,
  `account_owner` tinyint(4) NOT NULL DEFAULT '1',
  `account_id` int(11) NOT NULL DEFAULT '0',
  `company` varchar(255) NOT NULL,
  `join_date` datetime NOT NULL,
  `last_login` datetime NOT NULL,
  `email_verified` tinyint(4) NOT NULL DEFAULT '0',
  `vericode` varchar(15) NOT NULL,
  `active` int(1) NOT NULL,
  `oauth_provider` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `oauth_uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gpluslink` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `fb_uid` varchar(255) NOT NULL,
  `un_changed` int(1) NOT NULL,
  `msg_exempt` int(1) NOT NULL DEFAULT '0',
  `last_confirm` datetime DEFAULT NULL,
  `protected` int(1) NOT NULL DEFAULT '0',
  `dev_user` int(1) NOT NULL DEFAULT '0',
  `msg_notification` int(1) NOT NULL DEFAULT '1',
  `force_pr` int(1) NOT NULL DEFAULT '0',
  `twoKey` varchar(16) DEFAULT NULL,
  `twoEnabled` int(1) DEFAULT '0',
  `twoDate` datetime DEFAULT NULL,
  `cloak_allowed` tinyint(1) NOT NULL DEFAULT '0',
  `org` int(11) DEFAULT NULL,
  `account_mgr` int(11) DEFAULT '0',
  `oauth_tos_accepted` tinyint(1) DEFAULT NULL,
  `vericode_expiry` datetime DEFAULT NULL,
  `language` varchar(255) DEFAULT 'en-US',
  PRIMARY KEY (`id`),
  KEY `EMAIL` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `users` VALUES ('1','userspicephp@userspice.com',NULL,'admin','$2y$12$1v06jm2KMOXuuo3qP7erTuTIJFOnzhpds1Moa8BadnUUeX0RV3ex.',NULL,'The','Admin','1','28','1','0','UserSpice','2016-01-01 00:00:00','2020-11-30 15:25:59','1','nlPsJDtyeqFWsS','0','','','','','','','0000-00-00 00:00:00','1899-11-30 00:00:00','','0','1','2017-10-08 15:24:37','1','0','1','0',NULL,'0',NULL,'0',NULL,'0',NULL,NULL,'en-US'),
('2','noreply@userspice.com',NULL,'user','$2y$12$HZa0/d7evKvuHO8I3U8Ff.pOjJqsGTZqlX8qURratzP./EvWetbkK',NULL,'Sample','User','1','0','1','0','none','2016-01-02 00:00:00','2017-10-08 15:47:41','1','2ENJN4xD8nnjOgk','1','','','','','','','0000-00-00 00:00:00','0000-00-00 00:00:00','','0','0',NULL,'0','0','1','0',NULL,'0',NULL,'0',NULL,'0',NULL,NULL,'en-US'),
('3','cliente01@tlv.ag',NULL,'cliente','$2y$12$KbJ5At.qfohFFghJQ0pIku49E3SUy/ObZVsKU5.TUE7LYtlxek8DC',NULL,'Cliente 001','2020','1','25','1','0','','2020-09-03 15:25:06','2020-10-03 13:51:07','1','bDVicAPuu9rKeE','1','','','','','','','0000-00-00 00:00:00','0000-00-00 00:00:00','','0','0',NULL,'0','0','1','0',NULL,'0',NULL,'0',NULL,'0','1','2020-09-03 15:40:23','en-US'); 


DROP TABLE IF EXISTS `users_online`;
CREATE TABLE `users_online` (
  `id` int(11) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `timestamp` varchar(15) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `session` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `users_online` VALUES ('1','::1','1544553219','1',''); 


DROP TABLE IF EXISTS `users_session`;
CREATE TABLE `users_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `uagent` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

