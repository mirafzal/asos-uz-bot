-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 06, 2020 at 04:20 PM
-- Server version: 5.7.24
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id11985705_asostestbot`
--

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `keyword` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uz` text COLLATE utf8_unicode_ci,
  `ru` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `keyword`, `uz`, `ru`) VALUES
(1, 'yunusobod', 'Yunusobod tumani', 'Юнусабаский район'),
(2, 'mirzo_ulugbek', 'Mirzo Ulug\'bek tumani', 'Мирзо Улугбекский район'),
(3, 'chilonzor', 'Chilonzor tumani', 'Чиланзарский район'),
(4, 'yashnaobod', 'Yashnaobod tumani', 'Яшнабадский район'),
(5, 'uchtepa', 'Uchtepa tumani', 'Учтепинский район'),
(6, 'olmazor', 'Olmazor tumani', 'Алмазарский район\r\n'),
(7, 'qibray', 'Qibray tumani', 'Кибрайский район'),
(8, 'shayxontoxur', 'Shayxontohur tumani', 'Шайхантахурский район'),
(9, 'yakkasaroy', 'Yakkasaroy tumani', 'Яккасарайский район'),
(10, 'mirobod', 'Mirobod tumani', 'Мирабадский район'),
(11, 'bektemir', 'Bektemir tumani', 'Бектемирский район'),
(12, 'sergeli', 'Sergeli tumani', 'Сергелийский район');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `keyword` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uz` text COLLATE utf8_unicode_ci,
  `ru` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `keyword`, `uz`, `ru`) VALUES
(1, 'russian', 'Rus tili', 'Русский язык'),
(2, 'chinese', 'Xitoy tili', 'Китайский язык'),
(3, 'arabic', 'Arab tili', 'Арабский язык'),
(4, 'buxgalteriya', 'Buxgalteriya', 'Бухгалтерия'),
(5, 'pochemuchka', 'Pochemuchka', 'Почемучка'),
(6, 'chess', 'Shaxmat', 'Шахматы'),
(7, 'mental_arifmetika', 'Mental arifmetika', 'Ментальная арифметика'),
(8, 'drawing', 'Rassomlik', 'Рисование'),
(9, 'english', 'Ingliz tili', 'Английский язык'),
(11, 'physics', 'Fizika', 'Физика'),
(12, 'chemistry', 'Ximiya', 'Химия'),
(13, 'biology', 'Biologiya', 'Биология'),
(14, 'history', 'Tarix', 'История'),
(15, 'mother_language', 'Ona tili', 'Родной язык'),
(16, 'korean', 'Koreys tili', 'Корейский язык'),
(17, 'german', 'Nemis tili', 'Немецкий'),
(18, 'komputer', 'Kompyuter kurslari', 'Компьютерные курсы'),
(19, 'math', 'Matematika', 'Математика'),
(20, 'informatika', 'Informatika', 'Информатика'),
(21, 'japanese', 'Yapon tili', 'Японский язык'),
(22, 'turkish', 'Turk tili', 'Турецкий язык'),
(23, 'french', 'Fransuz tili', 'Французский язык');

-- --------------------------------------------------------

--
-- Table structure for table `texts`
--

CREATE TABLE `texts` (
  `id` int(11) NOT NULL,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `uz` text COLLATE utf8_unicode_ci NOT NULL,
  `ru` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `texts`
--

INSERT INTO `texts` (`id`, `type`, `uz`, `ru`) VALUES
(1, 'btn_main1', 'O\'quv markazini tanlang', 'Выбор учебного центра'),
(2, 'btn_main2', 'O\'quv markazlari ro\'yxati', 'Список учебных центров'),
(3, 'btn_back', 'Ortga', 'Назад'),
(4, 'btn_main_page', 'Bosh menu', 'Главное меню'),
(5, 'text_main', 'Kerakli yo\'nalishni tanlang', 'Выберите нужное направление'),
(6, 'btn_change_lang', 'Tilni o\'zgartirish', 'Изменить язык'),
(7, 'text_choose_district', 'Kerakli tumanni tanlang', 'Выберите нужный район'),
(9, 'text_choose_subject', 'Fanni tanlang', 'Выберите предмет');

-- --------------------------------------------------------

--
-- Table structure for table `trainingcentres`
--

CREATE TABLE `trainingcentres` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `subjects` text COLLATE utf8_unicode_ci,
  `price` int(11) DEFAULT '0',
  `district` text COLLATE utf8_unicode_ci,
  `info` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `trainingcentres`
--

INSERT INTO `trainingcentres` (`id`, `name`, `subjects`, `price`, `district`, `info`) VALUES
(3, 'Mega School', 'russian, chinese, arabic, buxgalteriya, pochemuchka, chess, mental_arifmetika, drawing, english', 0, 'null', 'Tm8gaW5mbw=='),
(4, 'Prestige Study', 'math, physics, chemistry, biology, history, mother_language, english, russian, korean, german, komputer', 0, 'qibray', '4piR77iPUFJFU1RJR0UgU1RVRFnimJHvuI8KINCf0YDQtdC00LzQtdGC0Ys6CiDwn5S4INCc0LDRgtC10LzQsNGC0LjQutCwCiDwn5S4INCk0LjQt9C40LrQsAog8J+UuCDQpdC40LzQuNGPCiDwn5S4INCR0LjQvtC70L7Qs9C40Y8KIPCflLgg0JjRgdGC0L7RgNC40Y8KIPCflLkg0JDQvdCz0LvQuNC50YHQutC40Lkg0Y/Qt9GL0LoKIPCflLkg0JrQvtGA0LXQudGB0LrQuNC5INGP0LfRi9C6CiDwn5S5INCg0YPRgdGB0LrQuNC5INGP0LfRi9C6CiDwn5S5INCd0LXQvNC10YbQutC40Lkg0Y/Qt9GL0LoKIPCflLgg0JTQvtGI0LrQvtC70YzQvdC+0LUg0L7QsdGA0LDQt9C+0LLQsNC90LjQtQoKINCh0YLQvtC40LzQvtGB0YLRjDogCiDQntC00LjQvSDQv9GA0LXQtNC80LXRgiAtIDI1MC4wMDAg0YHRg9C8CiDQlNCy0LAg0L/RgNC10LTQvNC10YLQsCAtINC/0L4gMjIwLjAwMCDRgdGD0LwKINCi0YDQuCDQv9GA0LXQtNC80LXRgtCwIC0g0L/QviAyMDAuMDAwINGB0YPQvAoKINCf0YDQuNC80LXRh9Cw0L3QuNC1Ogog8J+UmCDQmtCw0LbQtNGL0Lkg0LzQtdGB0Y/RhiDQv9GA0L7QstC+0LTQuNGC0YHRjyDRgtC10YHRgtC40YDQvtCy0LDQvdC40LUuINCj0YfQtdC90LjQutCw0Lwg0YEg0LvRg9GH0YjQuNC80Lgg0L/QvtC60LDQt9Cw0YLQtdC70Y/QvNC4INGB0LrQuNC00LrQsCDQtNC+IDUwJQoKINCg0LXQttC40Lwg0YDQsNCx0L7RgtGLOgog0J/QvtC90LXQtNC10LvRjNC90LjQuiAtINGB0YPQsdCx0L7RgtCwCiDQoSAwNzowMCDQtNC+IDIxOjAwCiDQktC+0YHQutGA0LXRgdC10L3RjNC1IC0g0LLRi9GF0L7QtNC90L7QuQoKIOKWq++4jyDQpNC+0YDQvNCwINC+0L/Qu9Cw0YLRiyDQu9GO0LHQsNGPCiDilqvvuI8g0J/QtdGA0LLRi9C5INGD0YDQvtC6INCx0LXRgdC/0LvQsNGC0L3Qvgog4par77iPINCj0YHQu9GD0LPQuCDQu9C40YbQtdC90LfQuNGA0L7QstCw0L3RiwoKINCQ0LTRgNC10YE6INCa0LjQsdGA0LDQudGB0LrQuNC5INGA0LDQudC+0L0sINGD0Lsu0KPQvdC40LLQtdGA0YHQuNGC0LXRgi4g0JTQvtC8IDEKCiDQntGA0LjQtdC90YLQuNGAOiDQodC10LvRjNGF0L7QtyAtINCh0LDQvNCf0Jgg0L/QtdGA0LXQutGA0LXRgdGC0L7QugoKIOKYju+4jyDQotC10LsuOiAKICs5OTg3MTI2MDQ3MjcKICs5OTg5MzAwNjQ3Mjc='),
(5, 'Humo Education', 'english, russian, german, korean, chinese, math, physics, chemistry, biology, history, mother_language', 200000, 'null', 'Tm8gaW5mbw=='),
(6, 'Ekspress kurs', 'math, physics, history, mother_language, chemistry, biology, informatika, arabic, english, russian, japanese, chinese, korean', 0, 'yunusobod', 'Tm8gaW5mbw=='),
(7, 'Ziyo ta\'lim', 'math, chemistry, biology, history, arabic, russian, english, korean', 250000, 'qibray', 'Tm8gaW5mbw=='),
(8, 'Smart Education ML', 'english, russian, mental_arifmetika, math, ', 0, 'yunusobod', 'Tm8gaW5mbw=='),
(9, 'Mega Universal Study', 'math, physics, chemistry, biology, history, mother_language, english, russian, arabic, korean, chinese, turkish, japanese, french, german', 0, 'yunosobod', 'Tm8gaW5mbw=='),
(10, 'You Matter', 'math, physics, chinese, russian', 0, 'null', 'Tm8gaW5mbw=='),
(11, 'Caesium', 'german, chemistry, biology, math, history, russian', 0, 'mirzo_ulugbek', 'Tm8gaW5mbw=='),
(12, 'New level learning center', 'english, math, arabic', 0, 'mirzo_ulugbek', 'Tm8gaW5mbw=='),
(13, 'IELTS-house.uz', 'english', 0, 'yunusobod', 'Tm8gaW5mbw=='),
(14, 'Global peer education', 'english', 0, 'mirzo_ulugbek', 'Tm8gaW5mbw=='),
(15, 'West school', 'english, math, russian', 0, 'mirzo_ulugbek', 'Tm8gaW5mbw=='),
(16, 'Harvard class', 'english, russian, chinese, japanese, korean, biology, chemistry, physics, history', 0, 'yunusobod', 'Tm8gaW5mbw=='),
(17, 'Toshkent moliya instituti qoshidagi ABITURIYENTLAR MAKTABI', 'math, physics, informatika, english, korean, japanese, russian, mother_language', 0, 'null', 'Tm8gaW5mbw=='),
(18, 'in London education center', NULL, 0, 'null', 'Tm8gaW5mbw=='),
(19, 'Software Design', NULL, 400000, 'yunusobod', 'Tm8gaW5mbw==');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `data_json` longtext COLLATE utf8_unicode_ci,
  `chatID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `data_json`, `chatID`) VALUES
(9, '{\"lang\":\"ru\",\"step\":\"main_page\",\"$district\":\"yunusobod\"}', 787113560),
(10, '{\"lang\":\"ru\",\"step\":\"main_page\",\"$district\":\"yunusobod\"}', 583412087),
(23, '{\"lang\":\"uz\",\"step\":\"districts\",\"$district\":\"yunusobod\"}', 635793263);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `districts_keyword_uindex` (`keyword`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subjects_keyword_uindex` (`keyword`);

--
-- Indexes for table `texts`
--
ALTER TABLE `texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainingcentres`
--
ALTER TABLE `trainingcentres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `texts`
--
ALTER TABLE `texts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `trainingcentres`
--
ALTER TABLE `trainingcentres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
