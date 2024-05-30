-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 30, 2024 at 03:27 AM
-- Server version: 11.3.2-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `touchgrassdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cast`
--

CREATE TABLE `cast` (
  `cast_id` int(11) NOT NULL,
  `lead_actor` text NOT NULL,
  `secondary_actor` text NOT NULL,
  `director` text NOT NULL,
  `backstage` text NOT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `tv_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cast`
--

INSERT INTO `cast` (`cast_id`, `lead_actor`, `secondary_actor`, `director`, `backstage`, `movie_id`, `tv_id`) VALUES
(134, 'Emilia Clarke', 'Kit Harington', 'Director 1', 'On the set of Game of Thrones', NULL, 11),
(135, 'Bryan Cranston', 'Aaron Paul', 'Director 2', 'On the set of Breaking Bad', NULL, 12),
(136, 'Steve Carell', 'Rainn Wilson', 'Director 3', 'On the set of The Office', NULL, 13),
(137, 'Travis Fimmel', 'Katheryn Winnick', 'Director 4', 'On the set of Vikings', NULL, 14),
(138, 'Winona Ryder', 'David Harbour', 'Director 5', 'On the set of Stranger Things', NULL, 15),
(139, 'Pedro Pascal', 'Gina Carano', 'Director 6', 'On the set of The Mandalorian', NULL, 16),
(140, 'Claire Foy', 'Matt Smith', 'Director 7', 'On the set of The Crown', NULL, 17),
(141, 'Jennifer Aniston', 'Courteney Cox', 'Director 8', 'On the set of Friends', NULL, 18),
(142, 'Emilia Clarke', 'Kit Harington', 'Director 1', 'On the set of Game of Thrones', NULL, 19),
(143, 'Bryan Cranston', 'Aaron Paul', 'Director 2', 'On the set of Breaking Bad', NULL, 20),
(144, 'Steve Carell', 'Rainn Wilson', 'Director 3', 'On the set of The Office', NULL, 21),
(145, 'Travis Fimmel', 'Katheryn Winnick', 'Director 4', 'On the set of Vikings', NULL, 22),
(146, 'Winona Ryder', 'David Harbour', 'Director 5', 'On the set of Stranger Things', NULL, 23),
(147, 'Pedro Pascal', 'Gina Carano', 'Director 6', 'On the set of The Mandalorian', NULL, 24),
(148, 'Claire Foy', 'Matt Smith', 'Director 7', 'On the set of The Crown', NULL, 25),
(149, 'Jennifer Aniston', 'Courteney Cox', 'Director 8', 'On the set of Friends', NULL, 26),
(150, 'Bryan Cranston', 'Aaron Paul', 'Director 2', 'On the set of Breaking Bad', NULL, 27),
(151, 'Steve Carell', 'Rainn Wilson', 'Director 3', 'On the set of The Office', NULL, 28),
(152, 'Travis Fimmel', 'Katheryn Winnick', 'Director 4', 'On the set of Vikings', NULL, 29),
(153, 'Winona Ryder', 'David Harbour', 'Director 5', 'On the set of Stranger Things', NULL, 30),
(154, 'Pedro Pascal', 'Gina Carano', 'Director 6', 'On the set of The Mandalorian', NULL, 31),
(155, 'Claire Foy', 'Matt Smith', 'Director 7', 'On the set of The Crown', NULL, 32),
(156, 'Jennifer Aniston', 'Courteney Cox', 'Director 8', 'On the set of Friends', NULL, 33),
(157, 'Emilia Clarke', 'Kit Harington', 'Director 1', 'On the set of Game of Thrones', NULL, 34),
(158, 'Karl Urban', 'Jack Quaid', 'Director 9', 'On the set of The Boys', NULL, 35),
(159, 'Úrsula Corberó', 'Álvaro Morte', 'Director 10', 'On the set of Money Heist', NULL, 36),
(160, 'Bryan Cranston', 'Aaron Paul', 'Director 2', 'On the set of Breaking Bad', NULL, 37),
(161, 'Steve Carell', 'Rainn Wilson', 'Director 3', 'On the set of The Office', NULL, 38),
(162, 'Travis Fimmel', 'Katheryn Winnick', 'Director 4', 'On the set of Vikings', NULL, 39),
(163, 'Winona Ryder', 'David Harbour', 'Director 5', 'On the set of Stranger Things', NULL, 40),
(164, 'Pedro Pascal', 'Gina Carano', 'Director 6', 'On the set of The Mandalorian', NULL, 41),
(165, 'Tim Robbins', 'Morgan Freeman', 'Director 9', 'On the set of The Shawshank Redemption', 26, NULL),
(166, 'Christian Bale', 'Heath Ledger', 'Director 10', 'On the set of The Dark Knight', 27, NULL),
(167, 'Brad Pitt', 'Edward Norton', 'Director 11', 'On the set of Fight Club', 28, NULL),
(168, 'Sam Worthington', 'Zoe Saldana', 'Director 12', 'On the set of Avatar', 29, NULL),
(169, 'Dev Patel', 'Freida Pinto', 'Director 13', 'On the set of Slumdog Millionaire', 30, NULL),
(170, 'Tom Hanks', 'Robin Wright', 'Director 14', 'On the set of Forrest Gump', 31, NULL),
(171, 'Russell Crowe', 'Joaquin Phoenix', 'Director 15', 'On the set of Gladiator', 32, NULL),
(172, 'Guy Pearce', 'Carrie-Anne Moss', 'Director 16', 'On the set of Memento', 33, NULL),
(173, 'Daniel Kaluuya', 'Allison Williams', 'Director 17', 'On the set of Get Out', 34, NULL),
(174, 'Kurt Russell', 'Wilford Brimley', 'Director 18', 'On the set of The Thing', 35, NULL),
(175, 'Ben Stiller', 'Robin Williams', 'Director 19', 'On the set of Night at the Museum', 36, NULL),
(176, 'Jackie Earle Haley', 'Patrick Wilson', 'Director 20', 'On the set of Watchmen', 37, NULL),
(177, 'Will Smith', 'Alice Braga', 'Director 21', 'On the set of I Am Legend', 38, NULL),
(178, 'Matt Damon', 'Jodie Foster', 'Director 22', 'On the set of Elysium', 39, NULL),
(179, 'Keanu Reeves', 'Laurence Fishburne', 'Director 23', 'On the set of The Matrix', 40, NULL),
(180, 'Daniel Kaluuya', 'Allison Williams', 'Director 17', 'On the set of Get Out', 41, NULL),
(181, 'Kurt Russell', 'Wilford Brimley', 'Director 18', 'On the set of The Thing', 42, NULL),
(182, 'Ben Stiller', 'Robin Williams', 'Director 19', 'On the set of Night at the Museum', 43, NULL),
(183, 'Jackie Earle Haley', 'Patrick Wilson', 'Director 20', 'On the set of Watchmen', 44, NULL),
(184, 'Will Smith', 'Alice Braga', 'Director 21', 'On the set of I Am Legend', 45, NULL),
(185, 'Matt Damon', 'Jodie Foster', 'Director 22', 'On the set of Elysium', 46, NULL),
(186, 'Keanu Reeves', 'Laurence Fishburne', 'Director 23', 'On the set of The Matrix', 47, NULL),
(187, 'Tom Hanks', 'Robin Wright', 'Director 14', 'On the set of Forrest Gump', 48, NULL),
(188, 'Tom Cruise', 'Colin Farrell', 'Director 24', 'On the set of Minority Report', 49, NULL),
(189, 'Guy Pearce', 'Carrie-Anne Moss', 'Director 16', 'On the set of Memento', 50, NULL),
(190, 'Arnold Schwarzenegger', 'Linda Hamilton', 'Director 25', 'On the set of Terminator 2: Judgment Day', 51, NULL),
(191, 'Tom Hanks', 'Robin Wright', 'Director 14', 'On the set of Forrest Gump', 52, NULL),
(192, 'Tom Cruise', 'Colin Farrell', 'Director 24', 'On the set of Minority Report', 53, NULL),
(193, 'Guy Pearce', 'Carrie-Anne Moss', 'Director 16', 'On the set of Memento', 54, NULL),
(194, 'Arnold Schwarzenegger', 'Linda Hamilton', 'Director 25', 'On the set of Terminator 2: Judgment Day', 55, NULL),
(195, 'Tom Hanks', 'Robin Wright', 'Director 14', 'On the set of Forrest Gump', 56, NULL),
(196, 'Tom Cruise', 'Colin Farrell', 'Director 24', 'On the set of Minority Report', 57, NULL),
(197, 'Guy Pearce', 'Carrie-Anne Moss', 'Director 16', 'On the set of Memento', 58, NULL),
(198, 'Arnold Schwarzenegger', 'Linda Hamilton', 'Director 25', 'On the set of Terminator 2: Judgment Day', 59, NULL),
(199, 'Tom Hanks', 'Robin Wright', 'Director 14', 'On the set of Forrest Gump', 60, NULL),
(200, 'Tom Cruise', 'Colin Farrell', 'Director 24', 'On the set of Minority Report', 61, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `MediaID` int(11) NOT NULL,
  `Rating` int(11) GENERATED ALWAYS AS (NULL) VIRTUAL COMMENT 'Calculated using "Reviews" table',
  `ReleaseDate` date NOT NULL,
  `Summary` longtext NOT NULL,
  `Length` int(11) NOT NULL COMMENT 'Gives length of the movie in minutes',
  `AgeRating` varchar(10) DEFAULT NULL COMMENT 'Age restriction rating of movie',
  `Title` varchar(85) NOT NULL,
  `Genre` varchar(45) NOT NULL,
  `URL` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`MediaID`, `ReleaseDate`, `Summary`, `Length`, `AgeRating`, `Title`, `Genre`, `URL`) VALUES
(26, '1994-07-06', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 142, 'R', 'The Shawshank Redemption', 'Drama', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(27, '2008-07-18', 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.', 152, 'PG-13', 'The Dark Knight', 'Action, Crime, Drama', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(28, '1999-10-15', 'An insomniac office worker and a devil-may-care soap maker form an underground fight club that evolves into something much, much more.', 139, 'R', 'Fight Club', 'Drama', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(29, '2000-05-05', 'A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.', 162, 'PG-13', 'Avatar', 'Action, Adventure, Fantasy', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(30, '2008-12-25', 'A Mumbai teenager reflects on his life after being accused of cheating on the Indian version of \"Who Wants to be a Millionaire?\"', 120, 'R', 'Slumdog Millionaire', 'Drama', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(31, '1994-08-26', 'The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate, and other historical events unfold from the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.', 142, 'PG-13', 'Forrest Gump', 'Drama, Romance', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(32, '2010-07-16', 'When a Roman general is betrayed and his family murdered by an emperor\'s corrupt son, he comes to Rome as a gladiator to seek revenge.', 155, 'R', 'Gladiator', 'Action, Adventure, Drama', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(33, '2006-06-23', 'A man with short-term memory loss attempts to track down his wife\'s murderer.', 113, 'PG-13', 'Memento', 'Mystery, Thriller', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(34, '2014-11-07', 'A young African-American visits his white girlfriend\'s parents for the weekend, where his simmering uneasiness about their reception of him eventually reaches a boiling point.', 104, 'R', 'Get Out', 'Horror, Mystery, Thriller', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(35, '1999-11-24', 'A research team in Antarctica is hunted by a shape-shifting alien that assumes the appearance of its victims.', 109, 'R', 'The Thing', 'Horror, Mystery, Sci-Fi', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(36, '2003-05-30', 'A newly recruited night security guard at the Museum of Natural History discovers that an ancient curse causes the animals and exhibits on display to come to life and wreak havoc.', 108, 'PG', 'Night at the Museum', 'Adventure, Comedy, Family', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(37, '2012-03-09', 'In 1985 where former superheroes exist, the murder of a colleague sends active vigilante Rorschach into his own sprawling investigation, uncovering something that could completely change the course of history as we know it.', 162, 'R', 'Watchmen', 'Action, Drama, Mystery', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(38, '2007-12-21', 'Years after a plague kills most of humanity and transforms the rest into monsters, the sole survivor in New York City struggles valiantly to find a cure.', 101, 'PG-13', 'I Am Legend', 'Action, Adventure, Drama', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(39, '2013-06-14', 'A veteran assigned to extract Earth\'s remaining resources begins to question what he knows about his mission and himself.', 124, 'PG-13', 'Elysium', 'Action, Drama, Sci-Fi', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(40, '1995-12-15', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.', 136, 'R', 'The Matrix', 'Action, Sci-Fi', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(41, '2014-11-07', 'A young African-American visits his white girlfriend\'s parents for the weekend, where his simmering uneasiness about their reception of him eventually reaches a boiling point.', 104, 'R', 'Get Out', 'Horror, Mystery, Thriller', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(42, '1999-11-24', 'A research team in Antarctica is hunted by a shape-shifting alien that assumes the appearance of its victims.', 109, 'R', 'The Thing', 'Horror, Mystery, Sci-Fi', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(43, '2003-05-30', 'A newly recruited night security guard at the Museum of Natural History discovers that an ancient curse causes the animals and exhibits on display to come to life and wreak havoc.', 108, 'PG', 'Night at the Museum', 'Adventure, Comedy, Family', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(44, '2012-03-09', 'In 1985 where former superheroes exist, the murder of a colleague sends active vigilante Rorschach into his own sprawling investigation, uncovering something that could completely change the course of history as we know it.', 162, 'R', 'Watchmen', 'Action, Drama, Mystery', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(45, '2007-12-21', 'Years after a plague kills most of humanity and transforms the rest into monsters, the sole survivor in New York City struggles valiantly to find a cure.', 101, 'PG-13', 'I Am Legend', 'Action, Adventure, Drama', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(46, '2013-06-14', 'A veteran assigned to extract Earth\'s remaining resources begins to question what he knows about his mission and himself.', 124, 'PG-13', 'Elysium', 'Action, Drama, Sci-Fi', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(47, '1995-12-15', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.', 136, 'R', 'The Matrix', 'Action, Sci-Fi', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(48, '1994-10-14', 'The presidencies of Kennedy and Johnson, the Vietnam War, the Watergate scandal, and other historical events unfold from the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.', 142, 'PG-13', 'Forrest Gump', 'Drama, Romance', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(49, '2001-12-19', 'In a future where a special police unit is able to arrest murderers before they commit their crimes, an officer from that unit is himself accused of a future murder.', 145, 'PG-13', 'Minority Report', 'Action, Crime, Drama', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(50, '1999-10-15', 'A man with short-term memory loss attempts to track down his wife\'s murderer.', 113, 'R', 'Memento', 'Mystery, Thriller', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(51, '1995-11-22', 'A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her teenage son, John Connor, from a more advanced and powerful cyborg.', 137, 'R', 'Terminator 2: Judgment Day', 'Action, Sci-Fi', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(52, '1994-10-14', 'The presidencies of Kennedy and Johnson, the Vietnam War, the Watergate scandal, and other historical events unfold from the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.', 142, 'PG-13', 'Forrest Gump', 'Drama, Romance', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(53, '2001-12-19', 'In a future where a special police unit is able to arrest murderers before they commit their crimes, an officer from that unit is himself accused of a future murder.', 145, 'PG-13', 'Minority Report', 'Action, Crime, Drama', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(54, '1999-10-15', 'A man with short-term memory loss attempts to track down his wife\'s murderer.', 113, 'R', 'Memento', 'Mystery, Thriller', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(55, '1995-11-22', 'A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her teenage son, John Connor, from a more advanced and powerful cyborg.', 137, 'R', 'Terminator 2: Judgment Day', 'Action, Sci-Fi', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(56, '1994-10-14', 'The presidencies of Kennedy and Johnson, the Vietnam War, the Watergate scandal, and other historical events unfold from the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.', 142, 'PG-13', 'Forrest Gump', 'Drama, Romance', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(57, '2001-12-19', 'In a future where a special police unit is able to arrest murderers before they commit their crimes, an officer from that unit is himself accused of a future murder.', 145, 'PG-13', 'Minority Report', 'Action, Crime, Drama', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(58, '1999-10-15', 'A man with short-term memory loss attempts to track down his wife\'s murderer.', 113, 'R', 'Memento', 'Mystery, Thriller', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(59, '1995-11-22', 'A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her teenage son, John Connor, from a more advanced and powerful cyborg.', 137, 'R', 'Terminator 2: Judgment Day', 'Action, Sci-Fi', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(60, '1994-10-14', 'The presidencies of Kennedy and Johnson, the Vietnam War, the Watergate scandal, and other historical events unfold from the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.', 142, 'PG-13', 'Forrest Gump', 'Drama, Romance', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(61, '2001-12-19', 'In a future where a special police unit is able to arrest murderers before they commit their crimes, an officer from that unit is himself accused of a future murder.', 145, 'PG-13', 'Minority Report', 'Action, Crime, Drama', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(62, '1999-10-15', 'A man with short-term memory loss attempts to track down his wife\'s murderer.', 113, 'R', 'Memento', 'Mystery, Thriller', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `summary` text NOT NULL,
  `tvshowid` int(11) DEFAULT NULL,
  `movieid` int(11) DEFAULT NULL,
  `type` enum('movie','tvshow') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `rating`, `summary`, `tvshowid`, `movieid`, `type`) VALUES
(1, 8, 'Great series, loved the characters and the plot twists.', 11, NULL, 'tvshow'),
(2, 7, 'Interesting concept, but pacing was a bit slow.', 13, NULL, 'tvshow'),
(3, 9, 'Absolutely fantastic! The story kept me hooked from start to finish.', NULL, 26, 'movie'),
(4, 6, 'Decent movie, but nothing special.', NULL, 27, 'movie'),
(5, 9, 'Highly recommend this show to anyone who enjoys suspense and drama.', 15, NULL, 'tvshow'),
(6, 8, 'Epic storyline with amazing character development.', NULL, 26, 'movie'),
(7, 9, 'A gripping tale of justice and vengeance.', NULL, 27, 'movie'),
(8, 7, 'Good, but not as good as the book.', NULL, 28, 'movie'),
(9, 8, 'Visually stunning and emotionally resonant.', NULL, 29, 'movie'),
(10, 9, 'A heartwarming story of love and destiny.', NULL, 30, 'movie'),
(11, 6, 'Too long and too slow-paced.', NULL, 31, 'movie'),
(12, 9, 'Action-packed with memorable performances.', NULL, 32, 'movie'),
(13, 8, 'Mind-bending and thought-provoking.', NULL, 33, 'movie'),
(14, 7, 'Innovative and tense, but falls short in the end.', NULL, 34, 'movie'),
(15, 8, 'Classic horror with a thrilling twist.', NULL, 35, 'movie'),
(16, 7, 'Fun for the whole family.', NULL, 36, 'movie'),
(17, 8, 'Dark and gritty with a powerful message.', NULL, 37, 'movie'),
(18, 6, 'Entertaining, but lacks depth.', NULL, 38, 'movie'),
(19, 7, 'A solid sci-fi adventure.', NULL, 39, 'movie'),
(20, 8, 'Stylish and groundbreaking.', NULL, 40, 'movie'),
(21, 7, 'Thought-provoking social commentary.', NULL, 41, 'movie'),
(22, 8, 'Suspenseful and unpredictable.', NULL, 42, 'movie'),
(23, 7, 'A fun romp through history.', NULL, 43, 'movie'),
(24, 8, 'Engaging and well-crafted.', NULL, 44, 'movie'),
(25, 7, 'A thrilling ride from start to finish.', NULL, 45, 'movie'),
(26, 8, 'Epic storyline with amazing character development.', NULL, 26, 'movie'),
(27, 9, 'A gripping tale of justice and vengeance.', NULL, 27, 'movie'),
(28, 7, 'Good, but not as good as the book.', NULL, 28, 'movie'),
(29, 8, 'Visually stunning and emotionally resonant.', NULL, 29, 'movie'),
(30, 9, 'A heartwarming story of love and destiny.', NULL, 30, 'movie'),
(31, 6, 'Too long and too slow-paced.', NULL, 31, 'movie'),
(32, 9, 'Action-packed with memorable performances.', NULL, 32, 'movie'),
(33, 8, 'Mind-bending and thought-provoking.', NULL, 33, 'movie'),
(34, 7, 'Innovative and tense, but falls short in the end.', NULL, 34, 'movie'),
(35, 8, 'Classic horror with a thrilling twist.', NULL, 35, 'movie'),
(36, 7, 'Fun for the whole family.', NULL, 36, 'movie'),
(37, 8, 'Dark and gritty with a powerful message.', NULL, 37, 'movie'),
(38, 6, 'Entertaining, but lacks depth.', NULL, 38, 'movie'),
(39, 7, 'A solid sci-fi adventure.', NULL, 39, 'movie'),
(40, 8, 'Stylish and groundbreaking.', NULL, 40, 'movie'),
(41, 7, 'Thought-provoking social commentary.', NULL, 41, 'movie'),
(42, 8, 'Suspenseful and unpredictable.', NULL, 42, 'movie'),
(43, 7, 'A fun romp through history.', NULL, 43, 'movie'),
(44, 8, 'Engaging and well-crafted.', NULL, 44, 'movie'),
(45, 7, 'A thrilling ride from start to finish.', NULL, 45, 'movie'),
(62, 5, 'test', 12, NULL, 'tvshow'),
(63, 9, 'This movie was great', 12, NULL, 'tvshow'),
(64, 9, 'Good just like the book', NULL, 28, 'movie'),
(65, 10, 'Test', 12, NULL, 'tvshow'),
(66, 6, 'Test', 12, NULL, 'tvshow');

-- --------------------------------------------------------

--
-- Table structure for table `tvshows`
--

CREATE TABLE `tvshows` (
  `MediaID` int(11) NOT NULL,
  `Title` varchar(85) NOT NULL,
  `Season` int(11) NOT NULL,
  `ReleaseDate` date NOT NULL,
  `Length` int(11) NOT NULL COMMENT 'Length of an episode in minutes',
  `Genre` varchar(45) NOT NULL,
  `Rating` int(11) GENERATED ALWAYS AS (NULL) VIRTUAL COMMENT 'Calculated using "Reviews" table',
  `AgeRating` varchar(10) DEFAULT NULL COMMENT 'Age restriction rating of show',
  `Summary` longtext NOT NULL,
  `URL` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tvshows`
--

INSERT INTO `tvshows` (`MediaID`, `Title`, `Season`, `ReleaseDate`, `Length`, `Genre`, `AgeRating`, `Summary`, `URL`) VALUES
(11, 'Game of Thrones', 8, '2011-04-17', 60, 'Action, Adventure, Drama', 'TV-MA', 'Nine noble families fight for control over the lands of Westeros, while an ancient enemy returns after being dormant for millennia.', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(12, 'Breaking Bad', 5, '2008-01-20', 50, 'Crime, Drama, Thriller', 'TV-MA', 'A high school chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine in order to secure his family\'s future.', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(13, 'The Office', 9, '2005-03-24', 30, 'Comedy', 'TV-14', 'A mockumentary on a group of typical office workers, where the workday consists of ego clashes, inappropriate behavior, and tedium.', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(14, 'Vikings', 6, '2013-03-03', 45, 'Action, Adventure, Drama', 'TV-MA', 'Vikings transports us to the brutal and mysterious world of Ragnar Lothbrok, a Viking warrior and farmer who yearns to explore - and raid - the distant shores across the ocean.', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(15, 'Stranger Things', 4, '2016-07-15', 55, 'Drama, Fantasy, Horror', 'TV-14', 'When a young boy disappears, his mother, a police chief, and his friends must confront terrifying supernatural forces in order to get him back.', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(16, 'The Mandalorian', 2, '2019-11-12', 40, 'Action, Adventure, Fantasy', 'TV-14', 'The travels of a lone bounty hunter in the outer reaches of the galaxy, far from the authority of the New Republic.', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(17, 'The Crown', 4, '2016-11-04', 55, 'Biography, Drama, History', 'TV-MA', 'Follows the political rivalries and romance of Queen Elizabeth II\'s reign and the events that shaped the second half of the twentieth century.', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(18, 'Friends', 10, '1994-09-22', 25, 'Comedy, Romance', 'TV-14', 'Follows the personal and professional lives of six twenty to thirty-something-year-old friends living in Manhattan.', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(19, 'Game of Thrones', 8, '2011-04-17', 60, 'Action, Adventure, Drama', 'TV-MA', 'Nine noble families fight for control over the lands of Westeros, while an ancient enemy returns after being dormant for millennia.', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(20, 'Breaking Bad', 5, '2008-01-20', 50, 'Crime, Drama, Thriller', 'TV-MA', 'A high school chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine in order to secure his family\'s future.', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(21, 'The Office', 9, '2005-03-24', 30, 'Comedy', 'TV-14', 'A mockumentary on a group of typical office workers, where the workday consists of ego clashes, inappropriate behavior, and tedium.', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(22, 'Vikings', 6, '2013-03-03', 45, 'Action, Adventure, Drama', 'TV-MA', 'Vikings transports us to the brutal and mysterious world of Ragnar Lothbrok, a Viking warrior and farmer who yearns to explore - and raid - the distant shores across the ocean.', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(23, 'Stranger Things', 4, '2016-07-15', 55, 'Drama, Fantasy, Horror', 'TV-14', 'When a young boy disappears, his mother, a police chief, and his friends must confront terrifying supernatural forces in order to get him back.', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(24, 'The Mandalorian', 2, '2019-11-12', 40, 'Action, Adventure, Fantasy', 'TV-14', 'The travels of a lone bounty hunter in the outer reaches of the galaxy, far from the authority of the New Republic.', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(25, 'The Crown', 4, '2016-11-04', 55, 'Biography, Drama, History', 'TV-MA', 'Follows the political rivalries and romance of Queen Elizabeth II\'s reign and the events that shaped the second half of the twentieth century.', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(26, 'Friends', 10, '1994-09-22', 25, 'Comedy, Romance', 'TV-14', 'Follows the personal and professional lives of six twenty to thirty-something-year-old friends living in Manhattan.', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(27, 'Breaking Bad', 5, '2008-01-20', 50, 'Crime, Drama, Thriller', 'TV-MA', 'A high school chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine in order to secure his family\'s future.', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(28, 'The Office', 9, '2005-03-24', 30, 'Comedy', 'TV-14', 'A mockumentary on a group of typical office workers, where the workday consists of ego clashes, inappropriate behavior, and tedium.', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(29, 'Vikings', 6, '2013-03-03', 45, 'Action, Adventure, Drama', 'TV-MA', 'Vikings transports us to the brutal and mysterious world of Ragnar Lothbrok, a Viking warrior and farmer who yearns to explore - and raid - the distant shores across the ocean.', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(30, 'Stranger Things', 4, '2016-07-15', 55, 'Drama, Fantasy, Horror', 'TV-14', 'When a young boy disappears, his mother, a police chief, and his friends must confront terrifying supernatural forces in order to get him back.', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(31, 'The Mandalorian', 2, '2019-11-12', 40, 'Action, Adventure, Fantasy', 'TV-14', 'The travels of a lone bounty hunter in the outer reaches of the galaxy, far from the authority of the New Republic.', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(32, 'The Crown', 4, '2016-11-04', 55, 'Biography, Drama, History', 'TV-MA', 'Follows the political rivalries and romance of Queen Elizabeth II\'s reign and the events that shaped the second half of the twentieth century.', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(33, 'Friends', 10, '1994-09-22', 25, 'Comedy, Romance', 'TV-14', 'Follows the personal and professional lives of six twenty to thirty-something-year-old friends living in Manhattan.', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(34, 'Game of Thrones', 8, '2011-04-17', 60, 'Action, Adventure, Drama', 'TV-MA', 'Nine noble families fight for control over the lands of Westeros, while an ancient enemy returns after being dormant for millennia.', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(35, 'The Boys', 3, '2019-07-26', 55, 'Action, Comedy, Crime', 'TV-MA', 'A group of vigilantes set out to take down corrupt superheroes who abuse their superpowers.', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(36, 'Money Heist', 5, '2017-05-02', 50, 'Action, Crime, Drama', 'TV-MA', 'An unusual group of robbers attempt to carry out the most perfect robbery in Spanish history - stealing 2.4 billion euros from the Royal Mint of Spain.', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(37, 'Breaking Bad', 5, '2008-01-20', 50, 'Crime, Drama, Thriller', 'TV-MA', 'A high school chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine in order to secure his family\'s future.', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(38, 'The Office', 9, '2005-03-24', 30, 'Comedy', 'TV-14', 'A mockumentary on a group of typical office workers, where the workday consists of ego clashes, inappropriate behavior, and tedium.', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(39, 'Vikings', 6, '2013-03-03', 45, 'Action, Adventure, Drama', 'TV-MA', 'Vikings transports us to the brutal and mysterious world of Ragnar Lothbrok, a Viking warrior and farmer who yearns to explore - and raid - the distant shores across the ocean.', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(40, 'Stranger Things', 4, '2016-07-15', 55, 'Drama, Fantasy, Horror', 'TV-14', 'When a young boy disappears, his mother, a police chief, and his friends must confront terrifying supernatural forces in order to get him back.', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg'),
(41, 'The Mandalorian', 2, '2019-11-12', 40, 'Action, Adventure, Fantasy', 'TV-14', 'The travels of a lone bounty hunter in the outer reaches of the galaxy, far from the authority of the New Republic.', 'https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `username` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `premium` tinyint(1) NOT NULL,
  `URL` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `username`, `email`, `password`, `premium`, `URL`) VALUES
(2, 'PotatoWithaGun', 'milankruger4@gmail.com', '1234Milo!', 0, ''),
(3, 'PotatoWithaM16', 'milankruger4@gmail.com', '1234Milo!', 0, ''),
(4, 'randomUsernam', 'milankruger4@gmail.com', '1234Milo!', 0, ''),
(5, 'TestingUsername', 'milankruger4@gmail.com', '1234Milo!', 0, 'https://th-thumbnailer.cdn-si-edu.com/5a79C6jJ8BrChMX5tgEKiMI_qqo=/1000x750/filters:no_upscale():focal(792x601:793x602)/https://tf-cmsv2-smithsonianmag-media.s3.amazonaws.com/filer/52/e4/52e44474-c2dc-41e0-bb77-42a904695196/this-image-shows-a-portrait-of-dragon-man-credit-chuang-zhao_web.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `watchlist`
--

CREATE TABLE `watchlist` (
  `watchlistID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `MediaID` int(11) NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `watchlist`
--

INSERT INTO `watchlist` (`watchlistID`, `userID`, `MediaID`, `type`) VALUES
(4, 3, 26, 'Movie'),
(7, 3, 27, 'Movie'),
(8, 3, 29, 'Movie');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cast`
--
ALTER TABLE `cast`
  ADD PRIMARY KEY (`cast_id`),
  ADD KEY `movies_FK` (`movie_id`),
  ADD KEY `shows_FK` (`tv_id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`MediaID`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `tvshowid` (`tvshowid`),
  ADD KEY `movieid` (`movieid`);

--
-- Indexes for table `tvshows`
--
ALTER TABLE `tvshows`
  ADD PRIMARY KEY (`MediaID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `watchlist`
--
ALTER TABLE `watchlist`
  ADD PRIMARY KEY (`watchlistID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cast`
--
ALTER TABLE `cast`
  MODIFY `cast_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `MediaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `tvshows`
--
ALTER TABLE `tvshows`
  MODIFY `MediaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `watchlist`
--
ALTER TABLE `watchlist`
  MODIFY `watchlistID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cast`
--
ALTER TABLE `cast`
  ADD CONSTRAINT `movies_FK` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`MediaID`),
  ADD CONSTRAINT `shows_FK` FOREIGN KEY (`tv_id`) REFERENCES `tvshows` (`MediaID`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`tvshowid`) REFERENCES `tvshows` (`MediaID`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`movieid`) REFERENCES `movies` (`MediaID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
