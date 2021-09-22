-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 22, 2021 at 07:41 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kobisi`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT ' 0 =>pasif 1=> aktif',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `surname`, `email`, `company_name`, `password`, `site_url`, `access_token`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Cloyd Crist', 'Kessler', 'minerva.kuhic@example.net', 'Torp, Davis and Daniel', '$2y$10$1ZWKGu6hiiVPcWCXJTgXhur.xLUQocEc7gijZk8qJQExGcVuvb2eS', 'http://welch.net/', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(2, 'Miss Ernestine Heller V', 'Schmidt', 'delphine50@example.net', 'Stokes-Goodwin', '$2y$10$aQa4K26Z9N.6v0.mV0VqbOAD9hGiwsgJzeNAR4jym6BHQfS82g60W', 'http://www.bahringer.info/ratione-laudantium-rerum-eos-magnam-enim', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(3, 'Mathew Kuhn', 'Goyette', 'blaze48@example.com', 'Collins-Doyle', '$2y$10$lWqOTF1lvUM/JIWGDL3eKeVwHTJqo6/SkczjruP8VOdMcGE4FlIAW', 'http://www.kunde.net/minus-et-culpa-aut-consequatur-sed-sunt-rem-atque.html', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(4, 'Cindy Runolfsdottir', 'Becker', 'evert.balistreri@example.net', 'Kuhlman, Skiles and Ferry', '$2y$10$Ok7AATh5wvrQ.uDPP.9t..3Irr/RUDm8kV5xfE/mQ3lYm../dCpJu', 'http://howe.biz/delectus-rem-consequuntur-et-consectetur.html', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(5, 'Pietro Kovacek', 'Schimmel', 'jaydon.renner@example.com', 'O\'Reilly, Zemlak and Gislason', '$2y$10$pMMs2uPrKAG6yOBgkzG4JO8atB9m0m8.W0ASCxDOkoJofQafYOj8K', 'http://rogahn.com/cumque-maxime-quia-ipsum-quis', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(6, 'Mrs. Myrtie Tillman IV', 'Kemmer', 'akulas@example.com', 'Labadie, Ankunding and Runolfsdottir', '$2y$10$0QZXu1TQzTitA8UWgVOXPO47BApMSnIT3xCjkYLACGzf4Fe23eJji', 'https://denesik.info/repellendus-dolorem-voluptatibus-eos-in-eum-voluptatum-dolores.html', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(7, 'Matilda Wiza II', 'Vandervort', 'donnelly.domenic@example.org', 'Johnston LLC', '$2y$10$EBjVXSS1.J1X3pL2gtjKB.decmGB6zoX7HlPzKzPuyn3LmpDoMeNS', 'http://www.jenkins.com/', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(8, 'Jammie Legros', 'Jenkins', 'nlangosh@example.com', 'Steuber, Rath and Gleason', '$2y$10$m5yUup2BioopP7jYtaC9uOw0GBiRC7uFfGC8EDVPym.KMsk14R5o.', 'http://www.kessler.com/et-illum-quibusdam-quisquam-non-vero-quos-quia.html', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(9, 'Dr. Eliezer Marquardt I', 'Sawayn', 'roel89@example.com', 'Weissnat and Sons', '$2y$10$/k8XEJalOqHnGn0eJjAopuL2mvhCMinP5uOc6d9VN6m/r0VF1D5pS', 'http://howe.info/asperiores-ut-qui-numquam-at-repellendus.html', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(10, 'Ophelia Medhurst', 'Gusikowski', 'zackary44@example.net', 'Lubowitz, Bahringer and Jakubowski', '$2y$10$6ycjoy/joWX5WsKp8B1eCO0pRzWG8dMxBZo13U08sraAhPgyDKZk2', 'http://www.senger.biz/dolores-debitis-optio-repudiandae-voluptas-qui-aut-commodi.html', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(11, 'Kacey Waters DDS', 'Jacobson', 'pfeffer.brycen@example.net', 'Will-Stiedemann', '$2y$10$k8V.GG/CtRd7jPVnqKH02OtLkAubSgkDU/ncPhg5UrL9ufZvBbugC', 'http://www.johnson.biz/sunt-debitis-nam-dolorum-illo-aut-libero', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(12, 'Miss Marilyne Towne', 'Bernhard', 'gleannon@example.com', 'Schmeler and Sons', '$2y$10$HISc9cnMjwIcDsWaH4iy3Op9LW7MhIuHt6E1i0eUbmBjXKVCepRQa', 'http://morar.com/', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(13, 'Esperanza Keebler V', 'Shanahan', 'feest.orin@example.org', 'Davis LLC', '$2y$10$XgKwiy45JcrWDcjbWUodXOkxtq8osyuigFZGksX1iqpmuKMLrT4Vm', 'http://schinner.org/libero-perferendis-enim-dolor.html', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(14, 'Miss Mathilde Gleason', 'Wintheiser', 'eosinski@example.com', 'Fahey and Sons', '$2y$10$nBA0Wq7fOSGHBY38YLIYZOh70FULKuMlqcdWyKGl9tAK8dC28jL0m', 'https://www.hauck.biz/quibusdam-nam-dicta-omnis-ipsam-molestias-enim-dignissimos', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(15, 'Mr. Moshe Pacocha', 'Kub', 'yhauck@example.net', 'Kuvalis-DuBuque', '$2y$10$1HxFJKTSwoHh/rHbcKBtROLoqH6cQOtCKBJAMGNPdbflTTG5ZyaEi', 'http://www.crist.info/eligendi-veniam-incidunt-qui-non-aliquam-nostrum-tempore-consectetur', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(16, 'Prudence Kuhlman', 'Cremin', 'purdy.blaise@example.org', 'Littel, Sawayn and Dickens', '$2y$10$cDuIF/MWCP2sP9Fk/ipywe4MvtSvNztf0a148i5PIMdI9dIgEQoxW', 'http://wolff.com/rerum-optio-voluptatum-nobis-nesciunt-suscipit-animi', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(17, 'Kayla Hackett Sr.', 'Feil', 'kevin.oberbrunner@example.org', 'Harvey, Smitham and Walsh', '$2y$10$.wm3PHgCn28PlZxI4sCLFe34Hhmv/4.TQeaSQHZW/imZgPwf5pFva', 'http://vonrueden.info/', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(18, 'Manuela Ullrich', 'Braun', 'santino27@example.org', 'Schoen-Schroeder', '$2y$10$oQUQebeX6OZVMxOOpkAjjuMz8z81e9zdI/cP67decxyrfbWMU98Pu', 'http://streich.com/blanditiis-quo-labore-maiores-optio', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(19, 'Diana Schneider', 'Monahan', 'ekessler@example.net', 'Emard LLC', '$2y$10$Z7ONwy2X2Asddc35ARJy1OkCo5smDn1VsutwyivIIont3BwaLD8GW', 'http://jakubowski.info/iste-placeat-esse-dolorum-et-reprehenderit', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(20, 'Sarah Hegmann', 'Herman', 'ralph.hagenes@example.com', 'Hansen-Weber', '$2y$10$6.QIkCuO4ICHLfVuC14mOe85mbAiK1M./KmWS8N4M7hbmTB/wPgve', 'https://www.barton.biz/dolorum-ducimus-beatae-est-dolorem-facere-libero-qui', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(21, 'Kaylin Stokes I', 'Ondricka', 'philip85@example.org', 'Rowe Group', '$2y$10$w5py8jDJu/VIu/UGWi41VOqQz5PEzp4ckN9T9NnEzsv3NiUfXLieu', 'http://greenfelder.net/', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(22, 'Ethelyn Zemlak', 'Bahringer', 'elna.stracke@example.net', 'King, Kozey and Lind', '$2y$10$yWCPKDG.NHJmlTXCL5VcnuEfN7TFvYKfNGaAKRkV.eHJLrQmB2x8e', 'http://pagac.com/beatae-dolores-est-et-commodi', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(23, 'Carolyne Upton', 'Breitenberg', 'abbey.schmidt@example.com', 'Aufderhar-Swaniawski', '$2y$10$oKXbAnfBSefwlgwmask1oOmQq00Zo3TNKid/LJYuT7Cx.P9vZ2Sa6', 'http://keeling.biz/reiciendis-quibusdam-pariatur-assumenda-maiores-eos-et', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(24, 'Donny Nikolaus IV', 'Wintheiser', 'erling.huels@example.org', 'Crona, Schulist and Kihn', '$2y$10$6Q8nxsderfuciSXo8/9Is.qgCkQZugTwBYeMnQTGLzSv9nGoX1LsW', 'https://www.jaskolski.org/sunt-dolores-consequatur-aut-saepe', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(25, 'Houston Wuckert Jr.', 'Roberts', 'elian.koss@example.org', 'Dooley Ltd', '$2y$10$CZq.9r9HyhMTJR7vTHWs7.Ac9M9RBEsfio84S2BVIk.RydhdAwfKS', 'https://hansen.org/voluptatem-et-nemo-eligendi-numquam-eos.html', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(26, 'Ava Cole', 'Robel', 'durward.mcdermott@example.net', 'Haley, Schamberger and Dach', '$2y$10$2rLIiLp9IVSJjjPXsgSU9eAyrnjLv7D0Y5wiGjA9snWbZ7VA6o0s2', 'https://fritsch.com/et-animi-est-ad-accusantium-ut-eius-rerum.html', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(27, 'Prof. Dangelo Lynch', 'Schulist', 'tremblay.ike@example.net', 'Grady, Murray and Bechtelar', '$2y$10$YFVeUhCxjUqtm8uP44xbXOOx2ds3JGbttQiJNHOKvKJ.QRCOe6gJ.', 'http://lynch.com/repellendus-est-nam-consequatur-ut-totam-sint.html', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(28, 'Gwen Durgan', 'Beahan', 'juwan.buckridge@example.net', 'Bergnaum, Koelpin and Stark', '$2y$10$c5K8PTo6Jv3j11ArqcFDqOwgdjzO/8lP6MYUQTdII2Qm9b6kxnFE6', 'http://huel.biz/libero-eaque-molestiae-nobis-repellat-aut-dolorem', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(29, 'Ricky Kerluke', 'Huel', 'izboncak@example.org', 'Gutmann, Metz and Shanahan', '$2y$10$8BQl12Oa8WNbuJGgw0nUW.VWGO0bvovFJNpJh2gm36XfJx6JsIx9S', 'http://www.goodwin.info/', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(30, 'Mr. Justus Stokes PhD', 'Boyer', 'nitzsche.scarlett@example.com', 'Schaden Group', '$2y$10$6NtTxc067HNZDzsOcHl3pupZG2tN3onifFhzk5NBaqCRBQHBjvcvK', 'http://www.hettinger.com/modi-quo-explicabo-exercitationem-quisquam-expedita-modi', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(31, 'Miss Asia Corwin', 'Berge', 'collier.maryjane@example.net', 'Rohan, Harris and Mraz', '$2y$10$1CZWB1tanxvXnpU/aOsmC.OoVaaoxMaNrLyXbFDkUTEQdNCTx8/BO', 'http://www.damore.info/blanditiis-eos-necessitatibus-inventore-distinctio-nisi-sunt-commodi-sed.html', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(32, 'Evelyn Hodkiewicz', 'Reynolds', 'agreen@example.net', 'Hill-Reilly', '$2y$10$E6aLOUDz1C4ADAsQiBNeXeln8YIDxC2Cqc4xacAGlJ8EislqbNVT6', 'http://zulauf.org/nobis-asperiores-inventore-consequatur-explicabo', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(33, 'Maddison Stoltenberg I', 'Heller', 'ireichert@example.net', 'Torphy and Sons', '$2y$10$lHWBsRx0/TMb89AaDJqcx.OyCczkA34IVSkWJawEISQxbyK.VKyG.', 'http://www.schuster.com/est-et-non-aspernatur-commodi-odio.html', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(34, 'Dr. Vergie Crist DDS', 'Emard', 'toy68@example.org', 'Kirlin and Sons', '$2y$10$xVRyAs2ngybBfB95cfTFXehUtT9OhIgpNHUfqKfs6iLr9fe1wMAVG', 'http://www.dickinson.com/consectetur-magnam-at-placeat-est-cupiditate-non-culpa-et.html', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(35, 'Prof. Elsa Schimmel II', 'Mann', 'jasmin.hudson@example.org', 'Stehr-Hayes', '$2y$10$q3rjcOkvCC5tjrxSoPqrxuvIdrPzDROo8.fEAmbjxFNQ8H6KNp2hW', 'http://www.windler.info/quia-quasi-nam-non-quasi-harum', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(36, 'Dr. Ryan Nienow', 'Crist', 'chelsey.ernser@example.net', 'Collins, Runolfsson and Kerluke', '$2y$10$cFTVTnZJXMkgxyY0Y2TWguQzC2APH6B9Po46D.7kQjMqbyhrGI0Lq', 'http://www.gusikowski.com/', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(37, 'Dr. Dewayne Pacocha', 'Casper', 'mcglynn.brando@example.net', 'Leuschke Ltd', '$2y$10$bthqjv2/uyJVN5H8GEk5ouFGf/3WgZyrHyJ7X8MbilG5jDU40bYDC', 'http://marks.com/', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(38, 'Hannah Kuhn', 'Koepp', 'maureen.halvorson@example.org', 'Powlowski Ltd', '$2y$10$LsPGyamc0fJLtUqcgDian.0neA2JL5ZZ/iaCmbRnRegQhnZ4Vyg9K', 'http://www.goyette.biz/', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(39, 'Alisha Collins', 'Kuhn', 'lemuel76@example.net', 'Rice-Schiller', '$2y$10$Zbkt771nN7AfFCCr.0gWUu58gsg8Ta8UCh5IrRPuaDLS.ZVHQAF96', 'http://schuppe.com/', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(40, 'Tabitha Runolfsson II', 'Boyle', 'ratke.everett@example.com', 'O\'Kon-Collins', '$2y$10$KxfVomQI5pwZd.2g077mM.WZCeDf5zIf2Eeor/1peccjRRnydE4TS', 'http://hoppe.com/dicta-commodi-occaecati-rerum-fugiat-labore-ut', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(41, 'Erna Ritchie', 'Mraz', 'srodriguez@example.org', 'Sanford-Little', '$2y$10$es0NsbCZfYA8HcGnHAz0eO9NVv9yARgRnnuh/qEpTsf/m/iFFT.SW', 'http://smitham.com/esse-ut-fuga-facilis-ipsum-quia', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(42, 'Aubree Kemmer DVM', 'Medhurst', 'maximus18@example.org', 'McCullough Group', '$2y$10$TOK4xVl630u8eTLZraBhNeyYZKcNrHRB.WWxPGKIpW0evOKalTBWu', 'http://www.prosacco.com/placeat-expedita-qui-velit-cupiditate-possimus-aut-at.html', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(43, 'Justine Champlin', 'Dickens', 'tito.schuppe@example.net', 'Bauch PLC', '$2y$10$U5TPIfC4U3juyawdB8NXLuA9qTZjTZmO6CirkPrwzp4wevabAMZLS', 'https://www.williamson.biz/rerum-sit-illum-assumenda-modi-aut-et', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(44, 'Prof. Sibyl Hane', 'Ullrich', 'walker.tracey@example.net', 'Ferry-Dare', '$2y$10$Z7HIhTx08UYHelwPUh1/BeU8J31H.jIUFs/EX4jlT2liV6gyfIGzK', 'http://www.thiel.com/', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(45, 'Prof. Cora Olson', 'Jacobson', 'brayan.altenwerth@example.net', 'McCullough, Morar and Rogahn', '$2y$10$jjQ0QrqQ8N0mKE7B571TD.N243MLhXlFO7Ok17rBPoaFGP2cTjU2m', 'https://www.rippin.org/quia-sit-expedita-velit-consequatur-nostrum-vitae', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(46, 'Araceli Fadel', 'Brown', 'rowena.goodwin@example.org', 'Mraz, Stracke and O\'Reilly', '$2y$10$.gj4w2ph7Pjn8Uxt4f9SGOmhH5iyxp6kV5/M/T1HMjnnzXYbPvbYK', 'http://volkman.com/itaque-non-laudantium-temporibus-mollitia-dolores', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(47, 'Nayeli Gislason II', 'Lakin', 'lila61@example.com', 'Schuster-Crona', '$2y$10$71SzkDGbKsJ48SDsfMQZBesmN6.cin8t0D.YRYLjA2IfrRz5ncnYi', 'http://www.cremin.biz/', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(48, 'Marisol Bernier', 'Zulauf', 'ekerluke@example.com', 'Larson Ltd', '$2y$10$iHGUuPZEZ5FOWZQ9ZgZMxeOt6zhx1LyGlVmCVzscUXBs7fyIcmJD2', 'http://www.ullrich.info/temporibus-velit-libero-quaerat-omnis', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(49, 'Dr. Justine Dickinson I', 'Brakus', 'damion.vonrueden@example.org', 'Hermann PLC', '$2y$10$kA6TYVvmWz1dF5v1sg5XXuUXZmuIh4rp0Q/7/lgPDWpS8eHYgjTv.', 'https://www.mclaughlin.net/error-voluptatem-quidem-eos-neque-similique', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(50, 'Miss Myra O\'Connell Jr.', 'Vandervort', 'adrianna92@example.net', 'McGlynn-Crist', '$2y$10$.NztsdbcP4BeNng/JKpfBOersniDwLNgCf98GY6qNCCzr/7DxHhKu', 'https://waelchi.com/omnis-optio-sed-est-dolore-nesciunt-possimus.html', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(51, 'Vernon Watsica', 'Douglas', 'wdare@example.org', 'Marks Group', '$2y$10$mx6c1Un3bAmV758DtNY5Z.2DiCM2sPsRYC9N/oGhef1iObw3Bec2q', 'https://senger.com/ut-ad-dolores-repellat-repellat-tempore-et-et.html', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(52, 'Flavio Bruen', 'Spinka', 'sbartell@example.com', 'Senger Inc', '$2y$10$xdYggPSycGInYOI1G4aNgehz7OHQkSu1WtUa10KivvlwDrkjgZI0K', 'http://hessel.com/earum-labore-molestiae-tempore-iusto-incidunt-reiciendis-ut', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(53, 'Miss Maribel Hane MD', 'Schneider', 'frowe@example.net', 'Bailey Ltd', '$2y$10$16Dzb1EARHnoICF9Pk2/cuGA6hUP01toWR1UX7hl/3rZ108Qju7bC', 'https://www.walter.info/corrupti-tempora-nisi-incidunt-ipsum-laboriosam-nihil', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(54, 'Prof. D\'angelo Reinger', 'Hoppe', 'syble35@example.net', 'Stoltenberg, Gleichner and Glover', '$2y$10$zz0cPRuWk6yvUkdlT.nXi.7KEgRY5MKd0R.KHkIyWVMfGhHCO5/gW', 'http://www.lebsack.info/quos-aperiam-doloremque-sapiente-atque-temporibus-ipsa', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(55, 'Bart Koch', 'Morissette', 'okon.aletha@example.net', 'Schuster-Smith', '$2y$10$I.p/.M6mOgL0cVztzZ3Zvuw3rASgxhELzxZIUh.mIVGk83AzkfFae', 'http://jaskolski.com/', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(56, 'Scottie Rempel', 'Mann', 'daisha23@example.net', 'Luettgen, Dach and Nienow', '$2y$10$X8aqShpT1/p1am8VfyB8WOkgv88EQshuQc5TvxpC2RyMGzCVUb4Ii', 'http://tillman.org/', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(57, 'Leatha Durgan', 'Cronin', 'swilderman@example.com', 'Schaden-Kuhn', '$2y$10$Us5s4bD3.VJqVrwOxZrXduD4.TGOt69yYIJj05vI27aYHdoKlK11y', 'http://www.king.info/libero-incidunt-vitae-saepe-voluptatum-corrupti-et-aliquam-unde.html', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(58, 'Alyce Predovic I', 'Wisozk', 'savanna.harris@example.com', 'Lockman, Donnelly and Collier', '$2y$10$ZDORBYPGvfBOXZjvbfSz9OqAArvGHYjOPvzDN874o/bYobtYcJgcW', 'http://bogan.com/', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(59, 'Miss Leila O\'Keefe', 'Renner', 'preston57@example.org', 'Brakus-Zboncak', '$2y$10$F03ProqkTA.RVfvSC8MRE..yZnUSqCw5qd8WndKkaMULfXNG5ANui', 'https://www.kunze.com/velit-tenetur-dicta-alias-et-possimus-eius', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(60, 'Ms. Christine Lesch Jr.', 'Gislason', 'wgoodwin@example.net', 'Beatty, Halvorson and Grimes', '$2y$10$Uwe22bOckO98WJdZ3dD0ze2cULxjnwQ.2rpSSRiNWDcAZk17QcJHm', 'http://gottlieb.com/natus-earum-impedit-sed-nam-placeat-consequatur', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(61, 'Bailey Bechtelar', 'VonRueden', 'rosalee46@example.com', 'Goldner-Wintheiser', '$2y$10$o3KIVtlHwtI97Pg5Bl3kOOyJS.NHgtZ.SicK6OhWzuXliUWOOB1/W', 'http://pollich.biz/molestiae-aut-autem-ipsum-dolorum-sint', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(62, 'Adrienne Oberbrunner', 'Hermann', 'tgoodwin@example.net', 'Veum Ltd', '$2y$10$OTbcPiqwdzsBedYDGC0K.usbnP97paaFduIqMD5AORGTuQmzV2Mgu', 'http://www.harris.com/', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(63, 'Keith Gerhold', 'Hudson', 'becker.brenna@example.net', 'Kuhn-Kutch', '$2y$10$4g0/XN.2iOtABMFz8aapOOSi1h/vs1DBSf2oMcqLpnJbHVPFOLv1a', 'http://crist.com/est-autem-eum-est-quam-vel-non.html', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(64, 'Jadyn Grimes', 'Heaney', 'tyrel.dietrich@example.org', 'Hilpert Ltd', '$2y$10$lpqzPzLTTd2EZNlXNBxJLulNoiOH/1SorOjNNHO2fRjqohxBCjQ9S', 'http://www.stracke.info/est-non-consequatur-est', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(65, 'Era Gerhold', 'Abbott', 'ova44@example.com', 'Rohan-Ziemann', '$2y$10$pT4ZQoKEY8u4Wv6V//mP5OKEoWbs4ee7aHS3ohGwwf1yRJVGT1pES', 'http://jacobi.com/et-quae-enim-temporibus-quis-molestiae-quia-iure-tenetur.html', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(66, 'Miss Ruby Kulas V', 'Pfeffer', 'murphy.leola@example.org', 'Conroy Inc', '$2y$10$ceCI0jXO8og94cHNx66gyuHQIRrd2X3/UeN.0nKZWKFb2gRk4XiYu', 'http://bergnaum.com/itaque-maxime-dolorum-sint-dolor', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(67, 'Dr. Jewel Weimann DDS', 'Nikolaus', 'demond97@example.org', 'Mayer, Kunze and Skiles', '$2y$10$6zwDOGBwV9KZpv/DE7mQ0.q3CuJq9LdNNfUjQOqfsumiY96Hn2lNO', 'http://www.brekke.org/doloremque-et-ea-vel-voluptatem-ratione-libero-non-nesciunt', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(68, 'Jailyn O\'Kon DDS', 'Kuhic', 'schaden.brenna@example.net', 'Grady-Rath', '$2y$10$ykZdNxrSf90UIcdQGy2aT.xfBWi42QsquyKWjQGWjUybhbtRTr3Z6', 'http://steuber.com/vero-ea-provident-delectus-hic-ipsa-quis-quasi-repudiandae', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(69, 'Lucienne Wisoky', 'Hamill', 'grant.aniya@example.com', 'Krajcik-Rowe', '$2y$10$Ra/o51Vg7QD84p5cYaG6COVFNG0p0d.fSognaebmfMJx8eqHQmLaa', 'https://www.gleichner.com/et-dolorem-laboriosam-est-quo', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(70, 'Dr. Anastacio Barrows', 'Hand', 'crooks.rene@example.net', 'Bayer-Fadel', '$2y$10$23rB88nUsDN52BrHIJftOuGFc4L4/igOXmMxyf7wMu9cNQkI6y9pO', 'http://beier.net/qui-necessitatibus-quas-ut-dignissimos', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(71, 'Opal Raynor', 'Heaney', 'coby03@example.org', 'Conroy-Deckow', '$2y$10$cKvtMdlWiRqAG4scQBKyOekFntQLp95jD70u7w8jvHHMh2TFsFbP.', 'https://www.kreiger.info/eaque-qui-laborum-alias-soluta', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(72, 'Prof. Gladyce Pagac III', 'Kemmer', 'gcremin@example.org', 'Fritsch, Bergnaum and Hill', '$2y$10$5NoQUAfFsuBIzBF315l0Ge2aILP4R2ko/w.AqQkqoBBg0UqGiWizO', 'http://www.carroll.com/quis-in-sed-pariatur-unde-atque-quam-libero', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(73, 'Ms. Virginia Koelpin', 'Ryan', 'fkshlerin@example.com', 'Bailey PLC', '$2y$10$3wymWNKAQQeRd9kgQy1GXuQYvoxtQmMBjpYuH/GqBSFyABwllsfgG', 'http://www.quitzon.biz/', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(74, 'Emie Buckridge', 'Herman', 'balistreri.felipe@example.com', 'Bode-White', '$2y$10$bYBbfjAPXQ5octSTHR3Dd.O2qWWniWHb9stFLknz.p96ynWnw5rIG', 'https://stark.biz/sed-voluptates-cumque-amet-autem-repellat.html', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(75, 'Vita Casper', 'Ward', 'kareem53@example.org', 'Harris PLC', '$2y$10$XLwafqVr0fxE7pJ9.jCM0eCpUP.1jI26m05BoUY8eWPxei2nhQR6i', 'http://www.kohler.org/officia-qui-voluptas-rem-sunt-suscipit-molestias-reiciendis-ut', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(76, 'Saige Reinger', 'Dibbert', 'hkohler@example.net', 'Deckow, Block and Pagac', '$2y$10$wd3jhaB9aLLuOz0Hg6HAOOyl9HgiVGMg90Darm9QvW8w.xoCiTE0i', 'http://www.ernser.com/at-voluptatem-commodi-aut-alias', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(77, 'Dr. Era Dickinson MD', 'Gleichner', 'pfeffer.pamela@example.net', 'Johnston Inc', '$2y$10$6pFCPfD73JhZuWGVsdNdT.nU/QhnEB3Ia/kG/.eN1zqe4QptIH7y.', 'http://www.welch.com/odio-dicta-totam-quo-labore-dolorem', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(78, 'Emelia Rohan', 'Gulgowski', 'hayden37@example.com', 'Tillman-Toy', '$2y$10$OnOHiiK7ptrW6hMdv0dZPO8dPdFpYSqtoyheCR9PDyVkFHjelmEXG', 'https://www.hahn.com/aut-officiis-non-ullam-dolore-est-suscipit-dolorem-sequi', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(79, 'Palma Kulas', 'Cruickshank', 'marquardt.makayla@example.net', 'Nolan LLC', '$2y$10$gAd.cj/Ap/hn4tavOr3aGezKtgoQsFTpMbdAA.WXWLPjvAkb6jXI6', 'http://kertzmann.biz/non-possimus-error-sed-dolorem-eligendi-odit', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(80, 'Toney Strosin', 'Kulas', 'rschamberger@example.com', 'Thompson-Sipes', '$2y$10$ETYI8er1QkKHE5iHngtjoOfwLXqlRpG1ga6y3U6aFA7RyfR0aUMr.', 'http://johnson.com/aspernatur-temporibus-voluptas-eum-officia-dolore', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(81, 'Brandyn Douglas', 'Reinger', 'parisian.alexzander@example.org', 'Abbott-Huels', '$2y$10$rLtMDHDkL9mkOtqOiUfCnuItJ7gDaBhVJgAhTqQn1n1ukBOgYP0Pq', 'http://blanda.com/ducimus-quas-modi-dicta-perspiciatis', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(82, 'Sammy Rice', 'Cormier', 'josue.klein@example.net', 'Graham-Ziemann', '$2y$10$yrQxzf023eEWM/mG78s8Fum6kaI9Njor7OQB4f8Mzb.jE/UeiWliK', 'http://www.zieme.net/officia-dolor-velit-cupiditate-fugiat-cum-distinctio-enim', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(83, 'Karlie Reilly', 'Osinski', 'fahey.miles@example.net', 'Abernathy, McGlynn and Effertz', '$2y$10$/R6kqy8cjBHcb6EVpTdVpOZMw.a2sDDTEVFRzAir3ZCwzfHJ.vgem', 'http://www.dietrich.com/', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(84, 'Graciela Lowe V', 'Bernier', 'abbott.madison@example.org', 'Heaney-Lang', '$2y$10$yHvUPJ8V0sKzHqXaSSnXgubkGv9YU0IBMjNaYW1WgbRblqe/Vy0Iq', 'https://lang.net/illo-vero-id-impedit-molestias-iure.html', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(85, 'Ms. Itzel Beatty II', 'Hegmann', 'ibashirian@example.org', 'Adams and Sons', '$2y$10$9a/gZYm4js66bIHbJPypHOOETjbuoYf7UmAaCGHUk/WirG4nJ0lIW', 'http://www.kozey.biz/', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(86, 'Ashleigh Robel', 'Schaefer', 'lemke.precious@example.com', 'Wintheiser-Kozey', '$2y$10$Cet3qTQ8O342xpMnCU6IC.NHx7ldaoHy9aiTW0kcGhixaKbemLSOi', 'https://tillman.com/et-quibusdam-magni-error.html', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(87, 'Helen O\'Connell', 'Doyle', 'johathan00@example.com', 'Fahey, Leannon and Ritchie', '$2y$10$kiL6.SEQtNFjOgdHboelXuGGFbngPNC7GCZUkB/bRu1IAJf765hPK', 'http://prosacco.net/inventore-facilis-saepe-magnam-ipsa-omnis-eligendi-vel-voluptatem', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(88, 'Toney Robel DVM', 'Tremblay', 'uromaguera@example.net', 'Hodkiewicz-Grant', '$2y$10$RFxfauM0Hl1iEB9Y36Odpei6eRzViBHIjUXiBYrnYwno3qM8W2ZFe', 'http://www.jaskolski.com/ut-id-architecto-tempora-sint-officiis-natus-dolores', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(89, 'Miss Gwendolyn Boyer I', 'Douglas', 'wolf.eino@example.com', 'Witting-Roberts', '$2y$10$iOnarWYfTr6IBGchGt.DPO.mFTfFvlfJ1dR7/CRvfd47yctQdWj4W', 'http://www.padberg.com/quam-minus-voluptatem-minima-culpa-sapiente-sint-dignissimos-cumque.html', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(90, 'Dr. Freeman Hermiston MD', 'Brown', 'iwill@example.com', 'Kub-Zieme', '$2y$10$Glgk3HJZ1awwd5zxj9Tafu7r8.UQfPbeuHj7EYC6fdMDdfTRHRwtC', 'http://blick.com/sunt-rerum-rerum-sed-vel-saepe-eos-explicabo-qui', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(91, 'Arturo Baumbach', 'Bergstrom', 'citlalli57@example.com', 'Becker-Kassulke', '$2y$10$31wbt.ofM9WDJiELcjSAvuLDeEBeo5sDE7BsmW5.lWCs8c8WjkE9S', 'https://www.smitham.org/at-esse-perspiciatis-nulla-labore', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(92, 'Josephine Fisher', 'Hintz', 'hyundt@example.org', 'Vandervort, Turcotte and Schimmel', '$2y$10$qtc8iXYJhtQoyBiil9rCq.AEi9nOS9qTQTLzDAJesRdGNcheEKll.', 'http://kshlerin.biz/', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(93, 'Prof. Jarrell Buckridge', 'Pagac', 'laila.wuckert@example.com', 'Padberg, Koelpin and Gibson', '$2y$10$k5cPobwsrKkACuzXlHqIMul/Sls.cl77fVwY4U4bjqTU6dE4c/33.', 'http://koepp.com/', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(94, 'Mireya Homenick', 'Kulas', 'ada47@example.com', 'Ziemann, Ruecker and Kutch', '$2y$10$IOqWA2dEV7psJfFnonRicONRg62ziNT43AlJYat2Uht4DdQ7/BH16', 'http://www.aufderhar.com/', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(95, 'Stacey Leannon', 'Krajcik', 'xhirthe@example.net', 'Abernathy Ltd', '$2y$10$Z0BIF1qevtWO1GuIzhFzRe8lBmuvxhwLIvVxOUTpwYOPsEJX5mNgu', 'http://www.nolan.com/', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(96, 'Dr. Flossie Farrell Jr.', 'Parisian', 'osbaldo79@example.net', 'Schaefer-Gutkowski', '$2y$10$eEsMBI71eXV1b1vTbazf0.H/7bcM8BLl49yb0pOPInz/ckEsDAc/a', 'http://www.grimes.com/', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(97, 'Prof. Darron Durgan III', 'Fahey', 'kathlyn.gleichner@example.net', 'Barton and Sons', '$2y$10$MJFTULGWuc2NS3S7vpnaAuJiuYNcar5lGLw05kBvQ3GhLffUT8jrm', 'https://schaefer.com/ex-consequuntur-rerum-dolor-dolor-distinctio-quaerat-pariatur.html', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(98, 'Avery Bayer', 'Kuvalis', 'raymundo48@example.net', 'Roob, Lockman and Mante', '$2y$10$MEP91NKv72yyixKY7pYnX.zbjBttnn.gjzNpypDXl1o3knU/nXYqG', 'http://wehner.info/et-voluptatem-ea-quia-quibusdam', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(99, 'Arthur Heaney', 'Lockman', 'fmarks@example.net', 'Hane PLC', '$2y$10$d04mHcNhxw3SfCS3PkQ8n.GE3PWdIhx1yiWM.t6a/EtEJ1Uy/b8y2', 'http://bayer.info/dignissimos-delectus-iure-quas-iure-quam-a-accusantium', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(100, 'Mylene Jerde', 'Ankunding', 'ianderson@example.net', 'Bergnaum Group', '$2y$10$ofk3lkdk1raIK89n5dvc8uGBJIX7gRGpJxwvgOTKIYp2qaab5VWhy', 'http://gislason.com/et-autem-et-harum-quos', '', 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(101, 'sami', 'dönmez', 'sami12gs53@gmail.com', 'Cytechnoware Yazılım Hizmetleri', '$2y$10$.bX5sAApLzeAGx93cnXbAuGs83IQ0wNzIw44d4X3cG3EVDbHpzW2C', 'https://cytechnoware.com', '', 1, NULL, '2021-09-22 14:08:42', '2021-09-22 14:08:42');

-- --------------------------------------------------------

--
-- Table structure for table `company_packages`
--

CREATE TABLE `company_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `package_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `stop_date` date NOT NULL,
  `total_amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT ' 0 => bekliyor 1=> ödeme tamamlandı 2=> ödeme iptal edildi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_packages`
--

INSERT INTO `company_packages` (`id`, `deleted_at`, `company_id`, `package_id`, `start_date`, `stop_date`, `total_amount`, `created_at`, `updated_at`, `status`) VALUES
(1, NULL, 1, 4, '2021-09-22', '2022-09-22', 428, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(2, NULL, 2, 8, '2021-09-22', '2021-10-22', 611, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(3, NULL, 3, 1, '2021-09-22', '2021-10-22', 13, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(4, NULL, 4, 1, '2021-09-22', '2021-10-22', 13, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(5, NULL, 5, 1, '2021-09-22', '2021-10-22', 13, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(6, NULL, 6, 5, '2021-09-22', '2022-09-22', 521, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(7, NULL, 7, 7, '2021-09-22', '2021-10-22', 912, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(8, NULL, 8, 10, '2021-09-22', '2022-09-22', 322, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(9, NULL, 9, 2, '2021-09-22', '2021-10-22', 541, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(10, NULL, 10, 5, '2021-09-22', '2022-09-22', 521, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(11, NULL, 11, 5, '2021-09-22', '2022-09-22', 521, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(12, NULL, 12, 2, '2021-09-22', '2021-10-22', 541, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(13, NULL, 13, 6, '2021-09-22', '2022-09-22', 938, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(14, NULL, 14, 9, '2021-09-22', '2022-09-22', 601, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(15, NULL, 15, 8, '2021-09-22', '2021-10-22', 611, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(16, NULL, 16, 7, '2021-09-22', '2021-10-22', 912, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(17, NULL, 17, 2, '2021-09-22', '2021-10-22', 541, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(18, NULL, 18, 10, '2021-09-22', '2022-09-22', 322, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(19, NULL, 19, 8, '2021-09-22', '2021-10-22', 611, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(20, NULL, 20, 8, '2021-09-22', '2021-10-22', 611, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(21, NULL, 21, 5, '2021-09-22', '2022-09-22', 521, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(22, NULL, 22, 10, '2021-09-22', '2022-09-22', 322, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(23, NULL, 23, 7, '2021-09-22', '2021-10-22', 912, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(24, NULL, 24, 10, '2021-09-22', '2022-09-22', 322, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(25, NULL, 25, 10, '2021-09-22', '2022-09-22', 322, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(26, NULL, 26, 1, '2021-09-22', '2021-10-22', 13, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(27, NULL, 27, 1, '2021-09-22', '2021-10-22', 13, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(28, NULL, 28, 10, '2021-09-22', '2022-09-22', 322, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(29, NULL, 29, 4, '2021-09-22', '2022-09-22', 428, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(30, NULL, 30, 3, '2021-09-22', '2021-10-22', 232, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(31, NULL, 31, 5, '2021-09-22', '2022-09-22', 521, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(32, NULL, 32, 7, '2021-09-22', '2021-10-22', 912, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(33, NULL, 33, 8, '2021-09-22', '2021-10-22', 611, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(34, NULL, 34, 2, '2021-09-22', '2021-10-22', 541, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(35, NULL, 35, 3, '2021-09-22', '2021-10-22', 232, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(36, NULL, 36, 6, '2021-09-22', '2022-09-22', 938, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(37, NULL, 37, 10, '2021-09-22', '2022-09-22', 322, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 1),
(38, NULL, 38, 2, '2021-09-22', '2021-10-22', 541, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(39, NULL, 39, 4, '2021-09-22', '2022-09-22', 428, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(40, NULL, 40, 9, '2021-09-22', '2022-09-22', 601, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(41, NULL, 41, 8, '2021-09-22', '2021-10-22', 611, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(42, NULL, 42, 5, '2021-09-22', '2022-09-22', 521, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(43, NULL, 43, 5, '2021-09-22', '2022-09-22', 521, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(44, NULL, 44, 6, '2021-09-22', '2022-09-22', 938, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(45, NULL, 45, 7, '2021-09-22', '2021-10-22', 912, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(46, NULL, 46, 5, '2021-09-22', '2022-09-22', 521, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(47, NULL, 47, 4, '2021-09-22', '2022-09-22', 428, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(48, NULL, 48, 4, '2021-09-22', '2022-09-22', 428, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(49, NULL, 49, 8, '2021-09-22', '2021-10-22', 611, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(50, NULL, 50, 6, '2021-09-22', '2022-09-22', 938, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(51, NULL, 51, 2, '2021-09-22', '2021-10-22', 541, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(52, NULL, 52, 9, '2021-09-22', '2022-09-22', 601, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(53, NULL, 53, 2, '2021-09-22', '2021-10-22', 541, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(54, NULL, 54, 9, '2021-09-22', '2022-09-22', 601, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(55, NULL, 55, 6, '2021-09-22', '2022-09-22', 938, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(56, NULL, 56, 3, '2021-09-22', '2021-10-22', 232, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(57, NULL, 57, 3, '2021-09-22', '2021-10-22', 232, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(58, NULL, 58, 9, '2021-09-22', '2022-09-22', 601, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(59, NULL, 59, 6, '2021-09-22', '2022-09-22', 938, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(60, NULL, 60, 5, '2021-09-22', '2022-09-22', 521, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(61, NULL, 61, 10, '2021-09-22', '2022-09-22', 322, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(62, NULL, 62, 10, '2021-09-22', '2022-09-22', 322, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(63, NULL, 63, 3, '2021-09-22', '2021-10-22', 232, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(64, NULL, 64, 4, '2021-09-22', '2022-09-22', 428, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(65, NULL, 65, 5, '2021-09-22', '2022-09-22', 521, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(66, NULL, 66, 10, '2021-09-22', '2022-09-22', 322, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(67, NULL, 67, 2, '2021-09-22', '2021-10-22', 541, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(68, NULL, 68, 4, '2021-09-22', '2022-09-22', 428, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(69, NULL, 69, 3, '2021-09-22', '2021-10-22', 232, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(70, NULL, 70, 7, '2021-09-22', '2021-10-22', 912, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(71, NULL, 71, 7, '2021-09-22', '2021-10-22', 912, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(72, NULL, 72, 9, '2021-09-22', '2022-09-22', 601, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(73, NULL, 73, 10, '2021-09-22', '2022-09-22', 322, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(74, NULL, 74, 7, '2021-09-22', '2021-10-22', 912, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(75, NULL, 75, 9, '2021-09-22', '2022-09-22', 601, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(76, NULL, 76, 1, '2021-09-22', '2021-10-22', 13, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(77, NULL, 77, 6, '2021-09-22', '2022-09-22', 938, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(78, NULL, 78, 2, '2021-09-22', '2021-10-22', 541, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(79, NULL, 79, 2, '2021-09-22', '2021-10-22', 541, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(80, NULL, 80, 7, '2021-09-22', '2021-10-22', 912, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(81, NULL, 81, 10, '2021-09-22', '2022-09-22', 322, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(82, NULL, 82, 6, '2021-09-22', '2022-09-22', 938, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(83, NULL, 83, 7, '2021-09-22', '2021-10-22', 912, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(84, NULL, 84, 5, '2021-09-22', '2022-09-22', 521, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(85, NULL, 85, 9, '2021-09-22', '2022-09-22', 601, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(86, NULL, 86, 2, '2021-09-22', '2021-10-22', 541, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(87, NULL, 87, 10, '2021-09-22', '2022-09-22', 322, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(88, NULL, 88, 6, '2021-09-22', '2022-09-22', 938, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(89, NULL, 89, 9, '2021-09-22', '2022-09-22', 601, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(90, NULL, 90, 5, '2021-09-22', '2022-09-22', 521, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(91, NULL, 91, 1, '2021-09-22', '2021-10-22', 13, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(92, NULL, 92, 6, '2021-09-22', '2022-09-22', 938, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(93, NULL, 93, 10, '2021-09-22', '2022-09-22', 322, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(94, NULL, 94, 3, '2021-09-22', '2021-10-22', 232, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(95, NULL, 95, 9, '2021-09-22', '2022-09-22', 601, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(96, NULL, 96, 6, '2021-09-22', '2022-09-22', 938, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(97, NULL, 97, 2, '2021-09-22', '2021-10-22', 541, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(98, NULL, 98, 2, '2021-09-22', '2021-10-22', 541, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(99, NULL, 99, 10, '2021-09-22', '2022-09-22', 322, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(100, NULL, 100, 5, '2021-09-22', '2022-09-22', 521, '2021-09-22 14:07:35', '2021-09-22 14:07:35', 1),
(101, NULL, 101, 1, '2021-09-22', '2022-09-22', 13, '2021-09-22 14:09:02', '2021-09-22 14:09:02', 1),
(102, NULL, 101, 1, '2021-09-22', '2022-09-22', 13, '2021-09-22 14:12:48', '2021-09-22 14:12:48', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company_payments`
--

CREATE TABLE `company_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `status` tinyint(4) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_payments`
--

INSERT INTO `company_payments` (`id`, `company_id`, `amount`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 428, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(2, 2, 611, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(3, 3, 13, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(4, 4, 13, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(5, 5, 13, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(6, 6, 521, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(7, 7, 912, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(8, 8, 322, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(9, 9, 541, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(10, 10, 521, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(11, 11, 521, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(12, 12, 541, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(13, 13, 938, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(14, 14, 601, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(15, 15, 611, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(16, 16, 912, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(17, 17, 541, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(18, 18, 322, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(19, 19, 611, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(20, 20, 611, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(21, 21, 521, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(22, 22, 322, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(23, 23, 912, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(24, 24, 322, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(25, 25, 322, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(26, 26, 13, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(27, 27, 13, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(28, 28, 322, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(29, 29, 428, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(30, 30, 232, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(31, 31, 521, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(32, 32, 912, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(33, 33, 611, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(34, 34, 541, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(35, 35, 232, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(36, 36, 938, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(37, 37, 322, 1, NULL, '2021-09-22 14:07:34', '2021-09-22 14:07:34'),
(38, 38, 541, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(39, 39, 428, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(40, 40, 601, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(41, 41, 611, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(42, 42, 521, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(43, 43, 521, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(44, 44, 938, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(45, 45, 912, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(46, 46, 521, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(47, 47, 428, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(48, 48, 428, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(49, 49, 611, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(50, 50, 938, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(51, 51, 541, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(52, 52, 601, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(53, 53, 541, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(54, 54, 601, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(55, 55, 938, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(56, 56, 232, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(57, 57, 232, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(58, 58, 601, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(59, 59, 938, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(60, 60, 521, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(61, 61, 322, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(62, 62, 322, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(63, 63, 232, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(64, 64, 428, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(65, 65, 521, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(66, 66, 322, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(67, 67, 541, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(68, 68, 428, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(69, 69, 232, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(70, 70, 912, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(71, 71, 912, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(72, 72, 601, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(73, 73, 322, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(74, 74, 912, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(75, 75, 601, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(76, 76, 13, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(77, 77, 938, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(78, 78, 541, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(79, 79, 541, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(80, 80, 912, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(81, 81, 322, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(82, 82, 938, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(83, 83, 912, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(84, 84, 521, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(85, 85, 601, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(86, 86, 541, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(87, 87, 322, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(88, 88, 938, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(89, 89, 601, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(90, 90, 521, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(91, 91, 13, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(92, 92, 938, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(93, 93, 322, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(94, 94, 232, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(95, 95, 601, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(96, 96, 938, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(97, 97, 541, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(98, 98, 541, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(99, 99, 322, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(100, 100, 521, 1, NULL, '2021-09-22 14:07:35', '2021-09-22 14:07:35'),
(101, 1, 428, 1, NULL, '2021-09-22 14:09:02', '2021-09-22 14:09:02'),
(102, 1, 428, 1, NULL, '2021-09-22 14:12:48', '2021-09-22 14:12:48');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_08_19_000000_create_failed_jobs_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2021_09_22_090756_add_companies_table', 1),
(4, '2021_09_22_090839_add_packages_table', 1),
(5, '2021_09_22_090901_add_company_packages_table', 1),
(6, '2021_09_22_090906_add_company_payments_table', 1),
(7, '2021_09_22_113847_add_columns_package_table', 1),
(8, '2021_09_22_113913_add_columns_company_package_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL COMMENT 'Aylık Fiyat',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` enum('monthly','yearly') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `deleted_at`, `name`, `amount`, `created_at`, `updated_at`, `type`) VALUES
(1, NULL, 'Cummerata, Muller and Reilly', 13, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 'monthly'),
(2, NULL, 'Murray LLC', 541, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 'monthly'),
(3, NULL, 'Gleason LLC', 232, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 'monthly'),
(4, NULL, 'Torphy, Lueilwitz and Greenholt', 428, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 'yearly'),
(5, NULL, 'Rodriguez, Stokes and Romaguera', 521, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 'yearly'),
(6, NULL, 'McClure, Rosenbaum and Davis', 938, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 'yearly'),
(7, NULL, 'Boehm, Satterfield and Spinka', 912, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 'monthly'),
(8, NULL, 'Mohr-Ernser', 611, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 'monthly'),
(9, NULL, 'Bergstrom, Larson and Haag', 601, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 'yearly'),
(10, NULL, 'Stracke-Grady', 322, '2021-09-22 14:07:34', '2021-09-22 14:07:34', 'yearly');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Company', 101, 'auth_token', 'ac2a951b1319087bdd0ed25d43792d07d8e7bf40ee85a1f386337a7dc1784f0a', '[\"*\"]', '2021-09-22 14:13:16', '2021-09-22 14:08:42', '2021-09-22 14:13:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_packages`
--
ALTER TABLE `company_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_packages_company_id_foreign` (`company_id`),
  ADD KEY `company_packages_package_id_foreign` (`package_id`);

--
-- Indexes for table `company_payments`
--
ALTER TABLE `company_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_payments_company_id_foreign` (`company_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `company_packages`
--
ALTER TABLE `company_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `company_payments`
--
ALTER TABLE `company_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `company_packages`
--
ALTER TABLE `company_packages`
  ADD CONSTRAINT `company_packages_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `company_packages_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `company_payments`
--
ALTER TABLE `company_payments`
  ADD CONSTRAINT `company_payments_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
