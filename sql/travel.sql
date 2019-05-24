-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: May 24, 2019 at 11:55 AM
-- Server version: 10.3.12-MariaDB
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--
CREATE DATABASE IF NOT EXISTS `travel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `travel`;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content2` text CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `max` int(11) NOT NULL,
  `kezdet` date NOT NULL,
  `veg` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `content`, `content2`, `max`, `kezdet`, `veg`, `created_at`, `updated_at`) VALUES
(9, 'Róma', 'Róma Olaszország fővárosa, Lazio régió központja (közigazgatásilag comune), a hajdani Római Birodalom központja. Az ország legnagyobb és legnépesebb városa 1285,3 km²-en mintegy 2,6 millió lakossal. Területébe ékelve található a Vatikán, a római katolikus egyház központja, a pápa székhelye, a világ legkisebb független állama. Története több mint két és fél ezer évet ölel fel. A Római Királyság, a Római Köztársaság és a Római Birodalom fővárosa volt. Utóbbi Nyugat-Európa és a Földközi-tenger-menti országok hatalmi központja volt az i. e. 1. századtól az i. sz. 7. századig. 2007-ben Róma volt a világon a 11. és az Európai Unióban a 3. leglátogatottabb város, továbbá a turisták legnépszerűbb olaszországi célpontja. Központját az UNESCO a Világörökség részének nyilvánította. Múzeumai és műemlékei, mint pl. a Vatikán múzeumai és a Colosseum a világ 50 leglátogatottabb turisztikai célpontjai között vannak.', 'Kupolák tengere. A gyengéd szépség, a tiszta harmónia képe. A béke és az örökkévalóság képe: Róma Aeterna. Ilyennek látja az ember Rómát, ha föntről, valamelyik dombjáról tekint a városra. Lent azonban egy másik kép fogadja. A Colosseum körül hatalmas a forgalom, nagy a torlódás az Angyalvár előtt, a szmog az égig ér. Föntről a csöndes, ősrégi Róma, alant a modern, zajos Róma. Évezredek művészeti alkotásai - Forum Romanum és a Pantheon, a Szent Péter-bazilika és a pápai palota, a Trevi-kút, és a Spanyol lépcső - sajátos kontrasztja a mai felgyorsult életmódnak, itt együtt, egymás mellett, egymásra rétegződve él a múlt és jelen. Különböző korok egyidejűsége. Annak, aki Rómába utazik, mindenre fel kell készülnie, itt minden a feje tetején áll. Ez nem a megfontolt természetűek és a hatékonyságot kedvelők városa. Azoknak a törvényei Rómában nem érvényesek. Mi a legrövidebb távolság két pont között? Az arabeszk, válaszolta egyszer egy olasz író, ez a kacskaringós minta. Ez Róma.. miért nem hagytak fel az emberek - nem is fognak soha fölhagyni - azzal, hogy Rómát felkeressék? Mert itt kifordul sarkából a világ, és mégis minden összeáll. Maga a csoda a nagyváros zajában és forgatagában. Aki átélte már ezt, megérti, hogy a város nevét: ROMA, fordítva kellene olvasni: AMOR.', 50, '2019-06-05', '2019-06-12', '2019-05-08 16:28:46', '2019-05-08 16:28:46'),
(10, 'Kréta', 'Kréta Görögország legnagyobb és a Földközi-tenger ötödik legnagyobb szigete, fővárosa Iráklio. Görögország e legdélibb régióját a helybeliek csak Megáloniszosznak, azaz Nagyszigetnek becézik.A sziget népszerű turistacélpont. A turisták szívesen látogatják a Knósszosz, Phaisztosz és Gortüsz ásatásait, Réthimno velencei várát és a Szamariász-szurdokot. Kréta a minószi kultúra (kb. i. e. 2600–1400), a legrégebbi ismert európai civilizáció központja volt. A sziget 1913 óta az önálló Görögország része. A görög szabadságharc után még néhány évtizedig török uralom volt a szigeten, majd 1898-ban a krétaiak független államot hoztak létre, amely másfél évtizedes fennállás után egyesült a Görög Királysággal.', 'Kréta, Görögország legnagyobb és a Földközi–tenger ötödik legnagyobb szigete, Európa legdélebbi része. Európa és Afrika között található, északról a Krétai-tenger, míg délről a Líbiai-tenger határolja. A sziget fővárosa és egyben legnagyobb települése Heraklion. Kréta legforgalmasabb repülőtere a város mellett található. A kelet-nyugati irányban elnyúló sziget hosszúsága 260 km, szélessége 12-57 km között van. Éghajlata mediterrán, enyhe csapadékos téllel és száraz, forró nyárral, amely 6-7 hónapig is tarthat. Ennek a kiváló klímájának köszönhetően a sziget Görögország egyik legkedveltebb nyaralási úticélja ahol a hamisítatlan szubtrópusi természet mellett az idelátogatók megtapasztalhatják milyen az egyedülálló görög vendégszeretet. Érdemes betérni a hangulatos tavernákba, ahol feltétlenül ajánljuk a helyi specialitásokat, mint például a tipikus krétai olívaolajjal készült görög salátát és a Rakit! Az első nagy görög civilizáció, a mínoszi kultúra is itt élte virágkorát. A keleti rész legfontosabb látnivalói közé tartozik a Heraklion közelében található, krétai ásatási leleteket őrző Régészeti Múzeum és a Knossos-i palota romjai.', 40, '2019-06-13', '2019-06-20', '2019-05-08 16:31:14', '2019-05-08 16:31:14'),
(11, 'Thaiföld', 'Thaiföld független alkotmányos monarchia Délkelet-Ázsiában, Indokínában. Keletről Laosz és Kambodzsa, délről Malajzia és a Thai (Sziámi)-öböl, nyugatról az Andamán-tenger és Mianmar határolja. 1939. június 24-ig az ország hivatalos neve Sziám (thai: สยาม) volt. 1945-ben ugyan visszakapta eredeti nevét, de 1949. május 11-től újra Thaiföld a hivatalos elnevezése. A thai (ไทย) népnevet gyakran rokonítják az azonos kiejtésű ’szabad’ (ไท) szóval, de a tágabb taj népcsoport nevével is összefügghet. Thaiföld a világ egyik első számú turisztikai célpontja, hírnevét elsősorban gazdag kultúrájának és a mai napig élő évezredes hagyományainak köszönheti.', 'Délkelet-Ázsia legelérhetőbb és azonnal vonzalmat keltő országa: a természeti szépségek bámulatba ejtők, az építészet mesés, a kultúra sokszínű és izgalmas, a konyha felejthetetlen. Thaiföld Délkelet-Ázsia gyöngyszeme, a köztudatban a \"mosolyok országa\" néven is ismert. Az egykor Sziámnak nevezett királyság jelenleg a Távol-Kelet harmadik legnagyobb országa, gazdag kultúrája és az ott élők kedvessége elbűvöli az idelátogatókat. Elég megismerni az országot ahhoz, hogy könnyen belássuk, miért lett az egyik leglátogatottabb turistacélpont; aranyozott templomok, ősi romvárosok, rejtelmes Buddha-szobrok, hegyek és őserdők, végeláthatatlan rizsföldek, forró napsütés a hosszan elhúzódó mesés tengerparton. Európai szemmel nem egyszerű azt a rengeteg szépséget befogadni, amit ez a trópusi paradicsom a lótuszvirágok és orchideák színkavalkádjával, mesés élővilággal, egzotikus ételekkel nyújt. Ahhoz, hogy Thaiföldről átfogó képet kapjunk, látni kell az ország változatos arcát, érezni Bangkok lüktető, nyüzsgő metropoliszát, a hegyes északot, bebarangolni a varázslatos szigetvilágot és betekintést kapni a keleti filozófia, a buddhizmus világába. A buddhista filozófia alapja, hogy mindig őrizzük meg mosolyunkat, ezért lett Thaiföld a mosoly országa. A helyiek kedves, türelmes emberek, utánozhatatlan vendégszeretetükről híresek. Thaiföld az ajándéktárgyak dzsungele, a megrögzött vásárlóknak igazi kísértés. A turisták nem tudnak ellenállni a rengeteg gazdag portékának, amit a helyiek kínálnak: thai selymek, pamutok, arany-, ezüst- és bronzáruk, porcelánok, drágakövek, ékszerek és kézimunkák tömkelege csábítja költekezésre az idelátogatókat. Thaiföld legnagyobb meglepetései közé tartozik a különleges gasztronómia: helyi zöldségfélék, bambuszrügy, darált mogyoró, halolaj képezi az ételek alapvető hozzávalóit, amelyet egzotikus fűszerekkel (chili, curry) és ízesítőkkel \"bolondítanak meg\". Nem számít, hogy a legolcsóbb társasutazás résztvevőjeként vagy ötcsillagos luxushotel vendégeként érkezünk, néhány nap után ízlelőbimbóink esdekelni fogják a pat thait (a vékony, sült rizstésztát), érzékeink ujjongva fogadják Bangkok neonfényeit, és a járművek elől való művészies szökdécselés a vérünkbe ivódik. Hadd adjunk egy kis ízelítőt körutazásaink során az ország vallási és kulturális emlékeiből, a thai nép szokásaiból.', 17, '2019-06-21', '2019-06-30', '2019-05-08 16:32:47', '2019-05-08 16:32:47'),
(12, 'Koppenhága', 'Koppenhága (dánul: Hallgat København) Dánia fővárosa és 1 230 728 lakosával az ország és egész Skandinávia legnépesebb városa. Sjælland és Amager szigetén fekszik. Több különböző felmérés is a legmagasabb életminőséget kínáló városok közé sorolta. A világ egyik legkörnyezetbarátabb városának is tartják. A belső kikötőben olyan tiszta a víz, hogy úszni lehet benne, a lakosok 35%-a pedig kerékpárral jár munkába, naponta összesen 1,2 millió kilométert tekerve.\r\n\r\nAz ezredforduló óta Koppenhága gyors város- és kulturális fejlődésen megy keresztül. Ez részben a kulturális létesítményekbe és infrastruktúrába való nagyszabású befektetéseknek, valamint sikeres formatervezők, mesterszakácsok és építészek új hullámának köszönhető. 2010-ben Koppenhága a világ 10. legdrágább városa a Forbes magazin szerint.', '\"Romantikus kikötőváros\"\r\n\r\nBüszkén, szépen és egy kissé megközelíthetetlenül emelkedik Christiansborg Koppenhága (Kobenhavn) kikötőjének közvetlen közelében. A hatalmas kastély állhatatosan emlékeztet arra, milyen megfontoltan kezdődött Dánia fővárosának felemelkedése. Nem volt itt sem romantika, sem mese, tengeri sellők sem buktak fel, nem voltak szerelmes hercegek, csak virágzó heringkereskedés - amit a kastély urai már-már fanatikusan védelmeztek -, s annak igencsak jelentős bevétele.\r\nKobenhavn - eredetileg Kobmandenes havn (a Kereskedők kikötője) -, a város névadása nem véletlen. Úgy tűnik, a kereskedelem és az alkudozás a koppenhágaiak vérében van. Kis és nagy üzletek, melyek áruikat kirakják a járdára is, minden utcasarkon találhatók. Koppenhága fölött a Földközi-tenger és a bazár lehelete érződik, amikor júliusban a forró nyári nap a horizontra hág. Akkor távolról sem megközelíthetetlenül északi és visszafogottan hűvös. Inkább játékos, életvidám és - minthogy annak idején, a XVII. században a kereskedelemre alapozott valamennyi nagyhatalmi álmukat fel kellett adniuk, s az idő kereke kissé megállt velük - egy kissé melankólikus. És határozottan romantikus!', 30, '2019-07-05', '2019-07-10', '2019-05-08 16:36:05', '2019-05-08 16:36:05'),
(13, 'Párizs', 'Párizs (franciául: Paris, latinul: Lutetia, vagy a későbbi neolatin Lutetia Parisiorum) Franciaország fővárosa. Az ország északi részén, a Szajna folyó partján terül el, az Île-de-France régió (vagy Région Parisienne) szívében. Párizs Európa egyik legnépesebb városa. Becsült népessége elővárosait nem számítva 2006 januárjában 2 167 944 fő volt, ám agglomerációival a Párizsi „unité urbaine” (városi terület) populációja 2005-ben több volt mint 9 millió fő, míg a Párizs „aire urbaine” (fővárosi terület) 12 millió lakost számlált.\r\n\r\nA két évezreden keresztül fontos szerepet játszó Párizs ma is a világ egyik vezető gazdasági és kulturális központja, befolyása a politikára, az oktatásra, a szórakoztatóiparra, a sajtóra, a divatra, a tudományra és a művészetekre a világ négy legjelentősebb városa közé emelte.', '\"Vándorünnep\"\r\n\r\nEz volt Párizs Ernest Hemingway számára. Franciaország fővárosa azonban sokkal több ennél: a szerelem városa. A divat fővárosa. A festők, írók és filmesek fővárosa. A konyhaművészet fővárosa... Egy szokványos helynek mindig egy lépéssel a világ többi része előtt kell járnia, hogy ezek közül a klisék közül akár csak egyet is valamelyest igazságosan ítéljen meg - Párizsnak azonban csupán a leírásával oldalakat lehetne megtölteni. Ezért az ember már az első látogatást megelőzően is úgy érzi, mintha ismerné Párizst, hiszen Toulouse-Lautrec képeiről ismeri a Moulin Rouge-t, számtalan filmben látta az Eiffel-tornyot, Simone de Beauvoir könyveiből megismerhette a Saint-Germaint. S habár a festői régi csarnokok már régen eltűntek, a Rue de Rivoli pedig belefullad a forgalmi dugókba, és egész Franciaországban közmondásos a fővárosiak arroganciája - tudat alatt mindenki a maga eszményképét keresi Párizsban, lett légyen az a divat városa vagy a híres konyháé, a művészeteké vagy a szerelemé. Így mosódik össze egyetlen séta alatt spontán módon a fantázia és a realitás. Ez adja meg a vonzerejét napjainkban egy párizsi tartózkodásnak.', 50, '2019-07-17', '2019-07-22', '2019-05-08 16:38:18', '2019-05-08 16:38:18');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_05_05_164605_create_blogs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `utazasid` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `tel`, `utazasid`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Alexandra', 'aaa@gmail.com', NULL, '$2y$10$Rt7i/TvZrmYAGcdANfdaTO9pLYP/n95dynn4a29AxUv1oktqAU4Km', '069977522', 11, NULL, '2019-05-08 16:44:54', '2019-05-08 16:48:44'),
(5, 'Botond', 'bbb@gmail.com', NULL, '$2y$10$Tv6mBCBtt6AJBAVLT7dQuONzzkN/d1WoLDTG9DvsveGAo6TR5koC.', '06965615', 11, NULL, '2019-05-08 16:45:36', '2019-05-08 16:47:45'),
(6, 'Cirmos', 'ccc@gmail.com', NULL, '$2y$10$N7h5ttLVZsOftt5fik8irOFpObB.EkhkjN6YHX61chN.ZO9VUSnXu', '641641', 9, NULL, '2019-05-08 16:49:22', '2019-05-08 16:49:44'),
(7, 'ddd', 'ddd@gmail.com', NULL, '$2y$10$UDEt0/O/fgFBnXfI.pdBQeB31p2YjUS5BJvbNMRC38iwPwmLug2Cq', '034843513', 0, NULL, '2019-05-24 06:20:24', '2019-05-24 06:20:24');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
