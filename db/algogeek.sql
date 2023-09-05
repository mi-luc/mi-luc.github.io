-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2023 at 06:47 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `algogeek`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `id_user`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_problem` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `text` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `problems`
--

CREATE TABLE `problems` (
  `id` int(10) UNSIGNED NOT NULL,
  `cerinta` varchar(1000) NOT NULL,
  `inData` varchar(1000) NOT NULL,
  `outData` varchar(1000) NOT NULL,
  `constrangeri` varchar(1000) NOT NULL,
  `id_added` int(10) UNSIGNED NOT NULL,
  `Titlu` varchar(80) NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `in_num` varchar(500) NOT NULL,
  `out_num` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `problems`
--

INSERT INTO `problems` (`id`, `cerinta`, `inData`, `outData`, `constrangeri`, `id_added`, `Titlu`, `type`, `in_num`, `out_num`) VALUES
(1, 'Se dau n numere întregi. Calculaţi cel mai mare dintre cele n numere date.', 'Programul citește de la tastatură numărul n, iar apoi n numere întregi, separate prin spaţii.', 'Programul afișează pe ecran numărul MAX, reprezentând cel mai mare dintre cele n numere date.', '1 ≤ n ≤ 1000\r\ncele n numere citite vor avea cel mult 9 cifre\r\n', 1, 'n_maxim', 0, '5\r\n7 6 9 6 8', '9'),
(2, 'Se dau n numere întregi. Calculaţi cel mai mic dintre cele n numere date.', 'Programul citește de la tastatură numărul n, iar apoi n numere întregi, separate prin spaţii.', 'Programul afișează pe ecran numărul MIN, reprezentând cel mai mic dintre cele n numere date.', '1 ≤ n ≤ 1000\r\ncele n numere citite vor avea cel mult 9 cifre\r\n', 1, 'n_minim', 0, '5\r\n7 6 9 6 8', '6'),
(5, 'Un număr natural nenul n se numește norocos dacă pătratul lui se poate scrie ca sumă de n numere naturale consecutive. Exemplu:\r\n\r\n3 deoarece <code>3 * 3 = 2 + 3 + 4</code>.\r\nSe dă un număr natural n. Dacă numărul este norocos afișați cele n numere consecutive care adunate dau pătratul acestuia.', 'Programul citește de la tastatură numărul <code>n</code>.', 'Daca n este norocos, programul va afișa pe ecran cele n numere consecutive care adunate dau <code>n * n</code>, separate prin spații. In caz contrar, programul va afișa mesajul <code>NU ESTE NOROCOS</code>.', '<code>1 ≤ n ≤ 1000</code>', 1, 'Snorocos', 0, '7', '4 5 6 7 8 9 10'),
(6, 'La matematică, pentru un număr natural <code>n</code>, se notează cu n! valoarea produsului <code>1*2*3*...*n</code>, și se citește <code>n</code> factorial.Să se scrie un program care citește numărul natural <code>n</code> și determină valoarea lui <code>n!</code>.', 'Programul citește de la tastatură numărul <code>n</code>.', 'Programul afișează pe prima linie a ecranului valoarea lui <code>n!</code>.', '0 <= n <= 15\r\nprin definiție, 0! = 1', 1, 'Factorial!', 0, '4', '24'),
(7, 'Se dă numărul natural nenul <code>n</code>. Să se determine produsul primelor <code>n</code> numere pare nenule.', 'Programul citește de la tastatură numărul <code>n</code>.', 'Programul va afișa pe ecran numărul P, reprezentând produsul primelor <code>n</code> numere pare nenule.', '1 ≤ n ≤ 10', 1, 'ProdPare', 0, '4', '24');

-- --------------------------------------------------------

--
-- Table structure for table `problems_solved`
--

CREATE TABLE `problems_solved` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_problem` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `text` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `problems_solved`
--

INSERT INTO `problems_solved` (`id`, `id_problem`, `id_user`, `text`) VALUES
(1, 1, 2, 'First solve!'),
(2, 2, 3, 'Second solve :)');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `about` varchar(1000) DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `passwd`, `about`, `created`) VALUES
(1, 'admin', 'admin', 'Salut! Acesta este primul cont de admin...Este un test...', '2023-04-02 15:59:08'),
(2, 'Lucax', '1234', NULL, '2023-04-13 14:59:59'),
(3, 'Maria', 'maria', 'test!!!', '2023-04-13 15:00:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_problem` (`id_problem`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `problems`
--
ALTER TABLE `problems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_added` (`id_added`);

--
-- Indexes for table `problems_solved`
--
ALTER TABLE `problems_solved`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_problem` (`id_problem`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`id_problem`) REFERENCES `problems` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Constraints for table `problems`
--
ALTER TABLE `problems`
  ADD CONSTRAINT `problems_ibfk_1` FOREIGN KEY (`id_added`) REFERENCES `users` (`id`);

--
-- Constraints for table `problems_solved`
--
ALTER TABLE `problems_solved`
  ADD CONSTRAINT `problems_solved_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `problems_solved_ibfk_2` FOREIGN KEY (`id_problem`) REFERENCES `problems` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
