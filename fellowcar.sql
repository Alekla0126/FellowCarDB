-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 06-12-2022 a las 03:09:32
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fellowcar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `communities`
--

CREATE TABLE `communities` (
  `community_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `creation` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `lastModified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(41, '2022_11_28_213501_users', 1),
(42, '2022_11_28_213508_trips', 1),
(43, '2022_11_28_213516_communities', 1),
(44, '2022_12_02_210315_user_communities', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trips`
--

CREATE TABLE `trips` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `trip_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `origin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `destiny` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password, 60` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profilePicture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `passport` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `driversLicence` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rating` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `created_at`, `updated_at`, `name`, `lastName`, `email`, `password, 60`, `phone`, `profilePicture`, `passport`, `driversLicence`, `rating`) VALUES
(1, '2022-12-06 02:07:39', '2022-12-06 02:07:39', '3r0iz2gi18', '6sXajFiWaJ', '9Cl11HtqbO@gmail.com', '$2y$10$QEWaWBlNzdr9PlsCcuax1OXbqGS6Q82IzPNYeIU7LFAsMhxfFXZHy', '8tqYkDsEfi', 'UWkzP/FNLuh', 'iAfeb/f7CiA', 'yeGjO/8ohRx', '2'),
(2, '2022-12-06 02:07:39', '2022-12-06 02:07:39', 'vYpKwNaLU2', 'qunkSOAS96', 'oed6bCalJN@gmail.com', '$2y$10$EhW8rd3z6ydLznlCLElkEesB/yRNbND4QY6YybXxIWKC11hAcIhQm', '5QHNEwI1Br', '3CqTm/94bLx', 'hiCvN/7DCSa', 'Pwg3v/aRGJB', '0'),
(3, '2022-12-06 02:07:39', '2022-12-06 02:07:39', 'NtkeSDla6E', 'Vr4rKogbeJ', 'utH8JVix0x@gmail.com', '$2y$10$Gkvp3xa7U7CcXj.5b2nR6O7PJDUn8SAnHbfSH7zvEbpXuXln2huKi', 'irMukKQuMk', 'F8Ev7/BshDE', '1crDA/VIVhO', 'xEVJt/TbPAC', '3'),
(4, '2022-12-06 02:07:39', '2022-12-06 02:07:39', 'KpuoEaZFpb', 'DvsPKsBEs9', 'T2XWHatLly@gmail.com', '$2y$10$DaqBVGGZ5ZgAQepKE2z2yujQ26L68emYdNlH8iFLUsxd3DMbh07nC', '1ihI0VlTuP', '5Rika/IDNx6', 'UG2cJ/Wxmkh', '9UuTL/VNhl4', '5'),
(5, '2022-12-06 02:07:39', '2022-12-06 02:07:39', 'rZQyy44Qix', 'fyDrmPRbpk', 'qecJw0e1h4@gmail.com', '$2y$10$X4cn7Q1DIXxq.8cwlmOIBebSTC3AvQTkYrmEmZo3Pgdbs9./HnV0W', 'MBeY1Q8FTe', 'rJfSp/fH8Z9', 'ZJfyx/XzrAu', 'rfhM3/7MPWK', '3'),
(6, '2022-12-06 02:07:39', '2022-12-06 02:07:39', 'L8vGlvJHye', 'KdBmFVsEGM', 'AEW3MLMaRS@gmail.com', '$2y$10$BwBRV57xpbBqgUYsLjFasufxuFhnFz29YNYdOPZ4rKs387bLulSm6', 'FHZTHLifps', 'P7kBz/ueoqW', 'dgsSg/8lyv2', '2qZNa/gNwfZ', '5'),
(7, '2022-12-06 02:07:39', '2022-12-06 02:07:39', '7tEY4LNmVB', 'AFVQWklmEd', 'mBD1enku6m@gmail.com', '$2y$10$HbgQuRkQICo79aT3yNNfseXj627Y7YLsHb8u4eUih683IiQiG.X6q', 'lrw0eUcsLB', 'A1hjJ/7C4QK', 'yNHUp/XRVip', 'ImFCa/tArXe', '4'),
(8, '2022-12-06 02:07:39', '2022-12-06 02:07:39', '0tCodOOGf8', 'U8KGIzUL6z', 'CtSBrLTvb1@gmail.com', '$2y$10$PhmyS4QJMLvRtDR0TSpJhOw2m8MI5IR28qSIKcksDmLbryt9RKUtG', 'oi7qKdDkOJ', 'uIxZy/PjUGr', '6JSj4/RBzka', 'uPiVF/lq9ij', '3'),
(9, '2022-12-06 02:07:39', '2022-12-06 02:07:39', 'nk4eUOMjoS', '5bWGnAbfiN', 'vOuPpGM1u4@gmail.com', '$2y$10$6LRwvGcVCR2eAJibE2TH2O9RI57YSHmNqDnA63tXwd4WJU.CxGxJa', 'gwW2Wo0aLc', '0omd4/BFdmk', 'HlyQf/8fW5l', 'q4gpq/iagjD', '3'),
(10, '2022-12-06 02:07:39', '2022-12-06 02:07:39', 'LSWhsitViy', 'CarAHa5KES', 'JMmkSK7qRQ@gmail.com', '$2y$10$lAbeRY/75oS04e.H3bpJOeCiSxaytnl88e2hd1rwelGcf7prUKTcO', 'BV7Iboe3Md', 'oqTyB/JPgqG', 'eXYyV/Jd3QH', 'W7wfS/MfWgB', '4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_communities`
--

CREATE TABLE `user_communities` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `community_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `communities`
--
ALTER TABLE `communities`
  ADD PRIMARY KEY (`community_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`trip_id`),
  ADD KEY `trips_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indices de la tabla `user_communities`
--
ALTER TABLE `user_communities`
  ADD KEY `user_communities_user_id_foreign` (`user_id`),
  ADD KEY `user_communities_community_id_foreign` (`community_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `communities`
--
ALTER TABLE `communities`
  MODIFY `community_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `trips`
--
ALTER TABLE `trips`
  MODIFY `trip_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `trips`
--
ALTER TABLE `trips`
  ADD CONSTRAINT `trips_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `user_communities`
--
ALTER TABLE `user_communities`
  ADD CONSTRAINT `user_communities_community_id_foreign` FOREIGN KEY (`community_id`) REFERENCES `communities` (`community_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `user_communities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
