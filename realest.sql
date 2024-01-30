-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 28 May 2023, 13:24:49
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `realest`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `register`
--

CREATE TABLE `register` (
  `username` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL,
  `register_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `register`
--

INSERT INTO `register` (`username`, `email`, `password`, `register_id`) VALUES
('asdsad', 'karaduman188@gmail.com', '8811134b', 1),
('asdasd', 'karaduman188@gmail.com', '8811134b', 2),
('rorrono', 'karaduman188@gmail.com', '123213', 3),
('123', '123@gmail.com', '123', 4),
('4444', 'karaduman188@gmail.com', '4444', 5),
('4444', '4444', '4444', 6),
('sdfdsf', 'sdfasd', '234234', 7);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `rent`
--

CREATE TABLE `rent` (
  `name` varchar(25) NOT NULL,
  `surname` varchar(25) NOT NULL,
  `phoneNumber` int(11) NOT NULL,
  `email` varchar(25) NOT NULL,
  `address` varchar(25) NOT NULL,
  `size` int(11) NOT NULL,
  `rooms` int(11) NOT NULL,
  `price` float NOT NULL,
  `picture` blob NOT NULL,
  `title` varchar(45) NOT NULL,
  `rent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `rent`
--

INSERT INTO `rent` (`name`, `surname`, `phoneNumber`, `email`, `address`, `size`, `rooms`, `price`, `picture`, `title`, `rent_id`) VALUES
('dasdasd', 'asdsad', 34324, 'asdsad', 'asdasd', 2, 3, 1, 0x706963732f383636343236355f3132323835383933305f6269672e6a7067, 'asdas', 12),
('123', '123', 123, '123', '123', 123, 123, 123, 0x706963732f383636343236355f3132323835383933305f6269672e6a7067, '123', 13),
('dene', 'sdads', 324234, 'asdas', '234sd', 23, 12, 12, 0x706963732f383737363334305f3132333539353537345f6269672e6a7067, 'dene', 14),
('dsad', 'asdas', 0, 'sadsadsa', 'dsadsad', 0, 0, 0, 0x706963732f383431383231375f3132313232343036355f6269672e6a7067, 'sd', 15);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sell`
--

CREATE TABLE `sell` (
  `name` varchar(25) NOT NULL,
  `surname` varchar(25) NOT NULL,
  `phoneNumber` int(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `size` int(10) NOT NULL,
  `rooms` int(5) NOT NULL,
  `price` int(25) NOT NULL,
  `sell_id` int(11) NOT NULL,
  `picture` blob NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `sell`
--

INSERT INTO `sell` (`name`, `surname`, `phoneNumber`, `email`, `address`, `size`, `rooms`, `price`, `sell_id`, `picture`, `title`) VALUES
('ASDAS', '324', 0, '34', 'ASDAS', 332, 23, 232, 61, 0x706963732f706578656c732d70686f746f2d3130363339392e6a706567, 'ASDSAD'),
('ASDSA', 'ASDASD', 0, 'ASDASDSA', 'SAD', 0, 0, 0, 62, 0x706963732f6c6f632e706e67, 'SADSA');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`register_id`);

--
-- Tablo için indeksler `rent`
--
ALTER TABLE `rent`
  ADD PRIMARY KEY (`rent_id`);

--
-- Tablo için indeksler `sell`
--
ALTER TABLE `sell`
  ADD PRIMARY KEY (`sell_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `register`
--
ALTER TABLE `register`
  MODIFY `register_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `rent`
--
ALTER TABLE `rent`
  MODIFY `rent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `sell`
--
ALTER TABLE `sell`
  MODIFY `sell_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
