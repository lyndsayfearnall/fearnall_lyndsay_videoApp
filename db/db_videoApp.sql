-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 25, 2018 at 07:25 AM
-- Server version: 5.6.35
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_videoApp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `comments_id` int(11) NOT NULL,
  `comments_text` text NOT NULL,
  `comments_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comments_movie` mediumint(255) NOT NULL,
  `comments_rating` tinyint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_comments`
--

INSERT INTO `tbl_comments` (`comments_id`, `comments_text`, `comments_date`, `comments_movie`, `comments_rating`) VALUES
(1, 'I\'ve seen this movie way too many times. I can\'t even tell if it\'s good or not anymore', '2018-04-19 21:37:28', 1, 2),
(2, 'OMG I LOVE TOM HANKS', '2018-04-19 21:37:28', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

CREATE TABLE `tbl_genre` (
  `genre_id` int(11) NOT NULL,
  `genre_name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Drama'),
(2, 'Comedy'),
(3, 'Adventure');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movie_id` int(11) NOT NULL,
  `movie_name` varchar(300) NOT NULL,
  `movie_genre` varchar(50) NOT NULL,
  `movie_picture` varchar(200) NOT NULL,
  `movie_clip` varchar(200) NOT NULL,
  `movie_year` varchar(5) NOT NULL,
  `movie_description` varchar(1000) NOT NULL,
  `movie_rating` tinyint(10) NOT NULL,
  `movie_director` varchar(200) NOT NULL,
  `kid_safe` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movie_id`, `movie_name`, `movie_genre`, `movie_picture`, `movie_clip`, `movie_year`, `movie_description`, `movie_rating`, `movie_director`, `kid_safe`) VALUES
(1, 'Forrest Gump', 'Drama', 'forrestGump.jpg', 'forrestGump.mp4', '1994', 'A simple-minded but kind-hearted Alabama boy grows up with his best friend - a beautiful girl called Jenny. He succeeds in life through a mixture of luck and destiny and thus influences and is present at some of the most important events in the second half of the 20th century. Throughout his life he is told by other characters what life is about and whether it\'s all random or destined to happen, but he comes to his own conclusion towards the end.', 9, 'Robert Zemeckis', 1),
(2, 'Hidden Figures', 'Drama', 'hiddenFigures.jpg', 'hiddenFigures.mp4', '16', 'As the United States raced against Russia to put a man in space, NASA found untapped talent in a group of African-American female mathematicians that served as the brains behind one of the greatest operations in U.S. history. Based on the unbelievably true life stories of three of these women, known as \"human computers\", we follow these women as they quickly rose the ranks of NASA alongside many of history\'s greatest minds specifically tasked with calculating the momentous launch of astronaut John Glenn into orbit, and guaranteeing his safe return. Dorothy Vaughan, Mary Jackson, and Katherine Johnson crossed all gender, race, and professional lines while their brilliance and desire to dream big, beyond anything ever accomplished before by the human race, firmly cemented them in U.S. history as true American heroes.', 8, 'Theodore Melfi', 1),
(3, 'Lion', 'Drama', 'lion.jpg', 'lion.mp4', '2016', 'In 1986, Saroo was a five-year-old child in India of a poor but happy rural family. On a trip with his brother, Saroo soon finds himself alone and trapped in a moving decommissioned passenger train that takes him to Calcutta, 1500 miles away from home. Now totally lost in an alien urban environment and too young to identify either himself or his home to the authorities, Saroo struggles to survive as a street child until he is sent to an orphanage. Soon, Saroo is selected to be adopted by the Brierley family in Tasmania, where he grows up in a loving, prosperous home. However, for all his material good fortune, Saroo finds himself plagued by his memories of his lost family in his adulthood and tries to search for them even as his guilt drives him to hide this quest from his adoptive parents and his girlfriend. Only when he has an epiphany does he realize not only the answers he needs, but also the steadfast love that he has always had with all his loved ones in both worlds.', 8, 'Garth Davis', 1),
(4, 'Lady Bird', 'Drama', 'ladyBird.jpg', 'ladyBird.mp4', '2017', 'Going by the name of \"Lady Bird\", the outspoken Catholic high school senior student, Christine McPherson, is dreaming big of finally leaving her hometown of Sacramento, practically on pins and needles to attend a sophisticated New York City college. However, with her average grades and her family struggling to keep afloat, attending a public university closer to home would be a lot cheaper and safer, especially after last year\'s devastating 9/11 attack. In the end, amid grades, numerous college applications, a blooming teenage sexuality, and a strong-willed mother who is a real mother hen, Lady Bird must find a way to make her dreams happen. Can she survive life\'s bumps and cracks?', 8, 'Greta Gerwig', 0),
(5, 'Three Billboards', 'Drama', 'threeBillboards.jpg', 'threeBillboards.mp4', '2017', 'THREE BILLBOARDS OUTSIDE EBBING, MISSOURI is a darkly comic drama from Academy Award nominee Martin McDonagh (In Bruges). After months have passed without a culprit in her daughter\'s murder case, Mildred Hayes (Academy Award winner Frances McDormand) makes a bold move, painting three signs leading into her town with a controversial message directed at William Willoughby (Academy Award nominee Woody Harrelson), the town\'s revered chief of police. When his second-in-command Officer Dixon (Sam Rockwell), an immature mother\'s boy with a penchant for violence, gets involved, the battle between Mildred and Ebbing\'s law enforcement is only exacerbated.', 8, 'Martin McDonagh', 0),
(6, 'Hurt Locker', 'Drama', 'hurtLocker.jpg', 'hurtLocker.mp4', '2008', 'An intense portrayal of elite soldiers who have one of the most dangerous jobs in the world: disarming bombs in the heat of combat. When a new sergeant, James, takes over a highly trained bomb disposal team amidst violent conflict, he surprises his two subordinates, Sanborn and Eldridge, by recklessly plunging them into a deadly game of urban combat, behaving as if he\'s indifferent to death. As the men struggle to control their wild new leader, the city explodes into chaos, and James\' true character reveals itself in a way that will change each man forever.', 8, 'Kathryn Bigelow', 0),
(7, 'La La Land', 'Comedy', 'lalaLand.jpg', 'lalaLand.mp4', '2016', 'The story of aspiring actress Mia and dedicated jazz musician Sebastian, who struggle to make ends meet while pursuing their dreams in a city known for destroying hopes and breaking hearts. With modern-day Los Angeles as the backdrop, this musical about everyday life explores what more important: a once-in-a-lifetime love or the spotlight.', 8, 'Damien Chazelle', 1),
(8, 'Zootopia', 'Comedy', 'zootopia.jpg', 'zootopia.mp4', '2016', 'Judy Hopps has had the dream of being the first bunny police officer since she was a kid, and when she moved to Zooptopia- a city where animals live in harmony- that dream becomes a reality. But when she teams up with a mysterious, sly fox, a Zootopia wide scandal reveals that maybe not ALL animals live in harmony.', 8, 'Byron Howard', 1),
(9, 'Mary Poppins', 'Comedy', 'maryPoppins.jpg', 'maryPoppins.mp3', '1964', 'Spoiled and bored upper crust Edwardian English family has their world turned upside down by an all nonsensical nanny who teaches them how to enjoy life. This movie is a musical and has both comedy and pathos and lots of imaginative scenes that are wonderful for adults and children alike. You\'ll be singing along in no time...\"in the most delightful way!\"', 7, 'Robert Stevenson', 1),
(10, 'The Big Sick', 'Comedy', 'bigSick.jpg', 'bigSick.mp4', '2017', 'Kumail (Kumail Nanjiani), in the middle of becoming a budding stand-up comedian, meets Emily (Zoe Kazan). Meanwhile, a sudden illness sets in forcing Emily to be put into a medically-induced coma. Kumail must navigate being a comedian, dealing with tragic illness, and placating his family\'s desire to let them fix him up with a spouse, while contemplating and figuring out who he really is and what he truly believes.', 8, 'Michael Showalter', 0),
(11, 'Little Miss Sunshine', 'Comedy', 'littleMissSunshine.jpg', 'littleMissSunshine.mp4', '2006', 'The Hoover family is the dictionary definition for the word \"dysfunctional\". The dad Richard is a man who gives lectures on winners and losers, the wife is Sheryl, a chain-smoking, frazzled wife and working mother whose idea of a home cooked meal frequently consists of a bucket of chicken. Her gay brother Frank recently attempted suicide. The grandpa is Edwin, a drug addict. The son is Dwayne a rebel who has vowed not to talk until he gets into the Air Force. And then there is Olive, a seven-year old girl who dreams of going to the Little Miss Sunshine pageant. So what happens when they do?', 8, 'Jonathan Dayton', 0),
(12, 'Juno', 'Comedy', 'juno.jpg', 'juno.mp4', '2007', 'When precocious teen Juno MacGuff becomes pregnant, she chooses a failed rock star and his wife to adopt her unborn child. Complications occur when Mark, the prospective father, begins viewing Juno as more than just the mother of his future child, putting both his marriage and the adoption in jeopardy.', 8, 'Jason Reitman', 0),
(13, 'Avatar', 'Adventure', 'avatar.jpg', 'avatar.mp4', '2009', 'On the lush alien world of Pandora live the Na\'vi, beings who appear primitive but are highly evolved. Because the planet\'s environment is poisonous, human/Na\'vi hybrids, called Avatars, must link to human minds to allow for free movement on Pandora. Jake Sully, a paralyzed former Marine, becomes mobile again through one such Avatar and falls in love with a Na\'vi woman. As a bond with her grows, he is drawn into a battle for the survival of her world.', 8, 'James Cameron', 1),
(14, 'Moana', 'Adventure', 'moana.jpg', 'moana.mp4', '2016', 'An adventurous teenager sails out on a daring mission to save her people. During her journey, Moana meets the once-mighty demigod Maui, who guides her in her quest to become a master wayfinder. Together, they sail across the open ocean on an action-packed voyage, encountering enormous monsters and impossible odds. Along the way, Moana fulfills the ancient quest of her ancestors and discovers the one thing she always sought: her own identity.', 8, 'Ron Clements', 1),
(15, 'Up', 'Adventure', 'up.jpg', 'up.mp4', '2009', 'Carl Fredricksen, a 78-year-old balloon salesman, is about to fulfill a lifelong dream. Tying thousands of balloons to his house, he flies away to the South American wilderness. But curmudgeonly Carl\'s worst nightmare comes true when he discovers a little boy named Russell is a stowaway aboard the balloon-powered house.', 8, 'Pete Docter', 1),
(16, 'Dark Knight', 'Adventure', 'darkKnight.jpg', 'darkKnight.mp4', '2008', 'With the help of allies Lt. Jim Gordon and DA Harvey Dent, Batman has been able to keep a tight lid on crime in Gotham City. But when a vile young criminal calling himself the Joker suddenly throws the town into chaos, the caped Crusader begins to tread a fine line between heroism and vigilantism.', 9, 'Christopher Nolan', 0),
(17, 'The Shape of Water', 'Adventure', 'shapeOfWater.jpg', 'shapeOfWater.mp4', '2017', 'Elisa is a mute, isolated woman who works as a cleaning lady in a hidden, high-security government laboratory in 1962 Baltimore. Her life changes forever when she discovers the lab\'s classified secret -- a mysterious, scaled creature from South America that lives in a water tank. As Elisa develops a unique bond with her new friend, she soon learns that its fate and very survival lies in the hands of a hostile government agent and a marine biologist.', 8, 'Guillermo del Toro', 0),
(18, 'Life of Pi', 'Adventure', 'lifeofPi.jpg', 'lifeofPi.mp4', '2012', 'After deciding to sell their zoo in India and move to Canada, Santosh and Gita Patel board a freighter with their sons and a few remaining animals. Tragedy strikes when a terrible storm sinks the ship, leaving the Patels\' teenage son, Pi, as the only human survivor. However, Pi is not alone; a fearsome Bengal tiger has also found refuge aboard the lifeboat. As days turn into weeks and weeks drag into months, Pi and the tiger must learn to trust each other if both are to survive.', 8, 'Ang Lee', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

CREATE TABLE `tbl_mov_genre` (
  `mov_genre_id` int(11) NOT NULL,
  `movie_id` mediumint(255) NOT NULL,
  `genre_id` mediumint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movie_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 1, 3),
(3, 2, 1),
(4, 3, 1),
(5, 3, 3),
(6, 4, 1),
(7, 4, 2),
(8, 5, 1),
(9, 6, 1),
(10, 6, 3),
(11, 7, 1),
(12, 7, 2),
(13, 8, 2),
(14, 9, 2),
(15, 10, 2),
(16, 11, 2),
(17, 11, 3),
(18, 12, 2),
(19, 13, 1),
(20, 13, 3),
(21, 14, 2),
(22, 14, 3),
(23, 15, 2),
(24, 15, 3),
(25, 16, 1),
(26, 16, 3),
(27, 17, 1),
(28, 18, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`comments_id`);

--
-- Indexes for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  ADD PRIMARY KEY (`mov_genre_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `comments_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  MODIFY `mov_genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
