-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2021 at 02:29 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr13_bigevents_rasmisilasari`
--
CREATE DATABASE IF NOT EXISTS `cr13_bigevents_rasmisilasari` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cr13_bigevents_rasmisilasari`;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datetime` datetime NOT NULL,
  `descript` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int(5) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int(4) NOT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `name`, `datetime`, `descript`, `image`, `capacity`, `email`, `phone`, `address`, `zip`, `city`, `link`, `type`) VALUES
(1, 'Crankworx Bike Festival', '2021-06-16 09:00:00', 'Crankworx Innsbruck launched in June of 2017, becoming the first European Crankworx host location outside of France. Since then Innsbruck has been the home of some of the most exciting and visually stunning moments in Crankworx history. The festival is the most urban of the stops on the Crankworx World Tour, bringing the best in the world to this storied European city to get a taste of its big mountains, unique culture and growing mountain bike scene.', 'https://www.crankworx.com/wordpress/wp-content/uploads/2019/12/50407709731_9c2df8fa8a_k-800x533.jpg', 1000, 'bikepark-innsbruck@muttereralm.at', '0512548330', 'Nockhofweg 40', 6162, 'Mutters', 'https://www.innsbruck.info/en/customs-and-events/highlights/crankworx.html', 'Sport'),
(2, 'Schubertiade Music Festival', '2021-04-28 09:00:00', 'A festival dedicated to Franz Schubert, granting him his due place alongside Mozart and Beethoven, this was the idea behind the Schubertiade, which for the first time took place on the initiative of Hermann Prey in the small Austrian town of Hohenems in 1976. Providing an annual meeting place for music lovers from all over the world who relish exceptional performances in an atmosphere characterized not only by the beauty of Western Austria scenery but also by the festival personal and sincere spirit, the Schubertiade soon evolved into one of the most renowned podia for chamber music and lieder-singing.', 'https://images.rove.me/w_1920,q_85/ovp6asdlootsiu6curyv/austria-schubertiade-festival.jpg', 300, 'info@schubertiade.at', '055124701', 'Angelika Kauffmann Hall', 6867, 'Schwarzenberg', 'https://www.schubertiade.at/en/spielplan/konzertkalender.html', 'Music'),
(3, 'ARS ELECTRONICA', '2021-09-08 10:00:00', 'Forty-two years after its founding, in the second year of the Covid pandemic, as the digitization of our world has intensified along with the hopes and fears we attach to it, Ars Electronica is also looking to its own roots.', 'https://ars.electronica.art/newdigitaldeal/files/2021/04/digitaldealgraphicsred.jpg', 200, 'info@ars.electronica.art', '073272720', 'Ars-Electronica-Straße 1', 4040, 'Linz', 'https://ars.electronica.art/festival/en/', 'Performance'),
(4, 'ALM:KULTUR Festival', '2021-07-03 10:00:00', 'Following last year successful model, the Festival for Art, Technology and Society will become a global anchor point. A platform for committed people who see the future, not as a glimpse into the tech companies crystal ball, but as the responsibility of our time and have begun accepting this responsibility, as social activation and empowerment, as a source of analytical, corrective and alternative thought and action.', 'https://media04.meinbezirk.at/event/2019/02/12/3/246573_XXL.png', 500, 'info@saalfelden-leogang.at', '0658270660', 'Mittergasse 21a', 5760, 'Saalfelden', 'https://www.saalfelden-leogang.com/en/news-events/events/almkultur', 'Culture'),
(5, 'Long Table of Graz', '2021-08-21 16:30:00', 'The Capital of Delight highlight of the year is undoubtedly the Long Table of Graz: a wonderful late summer evening, a stunningly laid table, superb culinary delights, top regional wines and the magical backdrop of the Schlossberg, clock tower and town hall, these are the ingredients for an incredibly enjoyable evening! More than 750 totally satisfied and happy guests who have the pleasure of this unforgettably beautiful time; standing ovations for the chefs and their teams, the organisers and music ensembles. Take a seat and enjoy a delicious open air dinner in the Old Town of Graz!', 'https://www.steiermark.com/bildarchiv/sommer/sommer3501-3600/image-thumb__5549__head-img-half/3519_c_steiermark_tourismus_harry_schiffer.jpeg', 750, 'info@graztourismus.at', '031680750', 'Hauptplatz 1', 8010, 'Graz', 'https://www.graztourismus.at/en/eat-and-drink/events/long-table', 'Gastronomy'),
(6, 'Montafon Arlberg Marathon', '2021-07-09 07:00:00', 'Around 200 long-distance runners will be at the start of the Montafon Arlberg Marathon (powered by Sparkasse) to battle over a distance of 42.195 metres along alpine paths and forest trails. The course traverses the provincial borders and connects the Verwall Valley in Tyrol with the Silber Valley in Vorarlberg.', 'https://www.stantonamarlberg.com/files/upload/ae6c_20ed9c7db9.jpg', 1000, 'info@montafon-arlberg-marathon.com', '0506686121', 'Montafonerstraße 21', 6780, 'Schruns', 'https://www.montafon.at/montafon-arlberg-marathon/en', 'Sport'),
(7, 'Glatt & Verkehrt Festival', '2021-07-09 10:00:00', 'In August 1997, more than a hundred musicians from all over Europe were besieging the Winzer Krems stage and, besides their performances, the Kunsthalle Krems as well as the rest of the town—for one week, the musicians were occupying all the rooms of a hotel. A festival was taking place, gathering 18 bands from 17 different countries under the motto Glatt&Verkehrt. This first issue of Glatt&Verkehrt was being organized with the support of the European Broadcasting Union and thus became the basis for the close co-operation with the ORF radio program Ö1. Since 1998, the last weekend of July or the first one in August respectively has been reserved for the festival (for program details search the archive). Since 1999, a CD featuring the festival highlights has been produced every year.', 'https://www.glattundverkehrt.at/en/plan-your-visit/locations/spitz-castle/spitz-castle-1/image', 200, 'tickets@noe-festival.at', '02732908033', 'Minoritenplatz 4', 3500, 'Krems', 'https://www.glattundverkehrt.at/en', 'Music'),
(8, 'Operetten Sommer Kufstein', '2021-07-31 20:00:00', 'Seit über dreizehn Jahren ist der OperettenSommer ein erfolgreicher Bestandteil des Tiroler Kulturkalenders. Nach der erfolgreichen Operette Die Fledermaus von Johann Strauß in diesem Jahr erwartet Sie im neuen Jahr der Klassiker unter den Musicals Evita von Andrew Lloyd Webber. Über unseren Webshop können Sie wie gewohnt am preisgünstigsten und bequemsten Ihre Wunschkarte von Zuhause ausdrucken.', 'https://www.operettensommer.com/images/ticketo.jpg', 220, 'info@kufstein.com', '0537262207', 'Festung Kufstein', 6330, 'Kufstein', 'https://www.operettensommer.com/de/', 'Performance'),
(9, 'Salzburger Bauernherbst', '2021-08-31 08:00:00', 'At the end of August, the 5th season starts in SalzburgerLand. It is the time to collect and process the harvest, a time of festivals, encounters and enjoyment. Here, you have the opportunity to get to know traditional peasant life with handicrafts, hikes, cooking classes, harvest festivals, Alpine cattle driving and traditional customs. Since 1996, every year SalzburgerLand has been dominated by the Bauernherbst from the end of August to the beginning of November. The mountain herdsmen return to the villages after the Alpine summer with their artfully decorated cows, while for the farmers it is harvest time and slowly preparing for the winter. But it is also a time to celebrate together. At the end of August, the Bauernherbst is officially opened with a big party and this is followed bya lot of events characterised by peasant traditions, genuine customs and culinary enjoyment.', 'https://cdn.salzburgerland.com/de/wp-content/uploads/2016/08/bauernherbst-bad-hofgastein-1920x1067.jpg', 700, 'info@salzburgerland.com', '06266880', 'Wiener Bundesstraße 23', 5300, 'Hallwang', 'https://www.salzburgerland.com/en/harvest-festival/', 'Culture'),
(10, 'The Genussmeile 2021', '2021-09-03 10:00:00', 'In 2021, the Genussmeile and its culinary stalls will once again invite guests to stroll through the lush green area. The delicacies are a very typical feature of this region. The hosts of the Lower Austrian Wirtshauskultur and regional producers enable connoisseurs to savour these items. A glass of wine or apple and pear wine is an absolute must on the hiking path. Please note: If you are having a glass of must, you should then toast yourself expertly with a repast. It is entirely up to you whether you keep pecking at something at a stall until it gets dark, or whether you explore the full length of the Genussmeile. In any case, you are guaranteed to spend several happy hours strolling through the vineyards with friends . The Genussmeile is open on Saturday and Sunday, from midday until the sun sets. You can subsequently visit the region wine taverns.', 'https://s0.bauernladen.at/uploads/cache/26/https/cms.bauernladen.at/wp-content/uploads/2021/04/genussmeile_wein_winzer_wiener_wasserleitung_2021.jpg', 500, 'office@wienerwald.info', '0223162176', 'Hauptplatz 11', 3002, 'Purkersdorf', 'https://www.thermenregion-wienerwald.at/en/the-genussmeile', 'Gastronomy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
