#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '1', '1', 'Enim quo voluptas sequi sit possimus modi fugiat. Maiores reiciendis autem et labore et tempore tempore. Optio eos optio doloribus quis dicta ducimus iusto. Ipsam quia provident dolorum et eum earum ut.', 'quis', 222, NULL, '2003-11-07 11:33:24', '1975-08-17 02:35:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '2', '2', 'Ipsum qui autem fuga fugit ad in ut. Quidem tempore minima earum voluptas quos.', 'sequi', 465, NULL, '1983-03-23 22:13:26', '2004-04-06 22:01:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '3', '3', 'Odio corporis non eum error similique. Amet esse eos non perspiciatis. Praesentium ratione voluptas et inventore cum quod.', 'exercitationem', 5315, NULL, '2022-06-09 13:15:43', '1982-01-30 17:47:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '4', '4', 'Sed eum tempore est consequatur nihil. Dolor et qui quia et dolor. Suscipit et veniam eos aspernatur officia nostrum. Rerum deserunt saepe quis blanditiis ullam.', 'laborum', 0, NULL, '1980-12-05 14:24:26', '2002-01-08 03:56:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '5', '5', 'Qui voluptate incidunt asperiores voluptates et. At id odio atque ratione sit minima mollitia error. In odio velit doloribus. Omnis molestias recusandae facere molestiae et qui aut accusamus.', 'voluptates', 69, NULL, '2019-10-20 18:26:52', '2004-09-26 07:42:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '6', '6', 'Iste ea perspiciatis occaecati enim. Et perspiciatis esse est aliquam ut libero. Cumque ab ipsa necessitatibus aut labore sed eaque aliquam.', 'et', 98189323, NULL, '2003-03-09 18:29:11', '1997-11-01 21:11:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '7', '7', 'Quibusdam quasi sequi eum porro. Neque dicta maxime autem. Deserunt labore dolorum sed quidem.', 'ut', 24494451, NULL, '1982-10-20 04:04:19', '1982-01-09 04:41:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '8', '8', 'Possimus sed soluta eligendi dolorem iusto totam. Nemo est tempore quaerat excepturi perferendis nostrum tempora. Blanditiis aut dolorem quia voluptas enim optio ut laboriosam.', 'quam', 96066, NULL, '2019-05-16 09:04:37', '1973-03-23 00:49:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '9', '9', 'Qui porro mollitia repellat ullam voluptates reprehenderit consectetur. Inventore laborum et cumque ut quos. Asperiores accusantium eius laudantium porro dolorum. Qui nam voluptatem harum vel perferendis.', 'officia', 1444, NULL, '2013-11-25 01:55:51', '2011-03-07 03:30:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '10', '10', 'Explicabo error quis aut porro. Ea illum rem tenetur eligendi nostrum illo. Eum et possimus laborum repellat minima et cum. Voluptate ipsam qui exercitationem expedita.', 'itaque', 76423457, NULL, '2014-08-08 08:39:30', '2018-08-23 15:16:13');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'in', '1990-06-22 13:41:32', '2006-06-20 05:19:42');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'adipisci', '2014-04-02 14:53:03', '2007-01-30 17:19:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'ut', '1970-08-08 20:24:25', '1994-07-18 18:14:31');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'voluptatem', '2018-01-13 12:59:58', '2021-04-07 00:07:30');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'animi', '2013-06-20 07:38:38', '1988-07-06 16:36:57');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('6', 'eaque', '2017-11-11 11:30:55', '1977-05-12 23:47:54');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('7', 'itaque', '2003-09-11 23:15:29', '1976-06-04 17:58:27');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('8', 'et', '1995-09-25 04:39:52', '1980-04-13 16:13:07');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('9', 'in', '2006-01-23 08:18:16', '1977-01-10 06:12:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('10', 'eos', '2011-12-24 17:05:06', '2012-05-21 05:33:44');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('1', '6', '1', 'Rerum eveniet in perspiciatis saepe distinctio. Consectetur quisquam quo natus inventore doloribus eum. Dolorum sunt qui sit. Amet qui et illo debitis fugit quidem.', '2019-12-04 17:00:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('2', '3', '7', 'Magnam facere eveniet totam nulla. Pariatur vitae blanditiis provident voluptas ut. Et aut numquam dignissimos voluptas. Vitae quas ipsa pariatur eos.', '1971-05-20 01:10:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('3', '8', '10', 'Maxime amet deleniti suscipit rerum deleniti est nobis. Praesentium et tempora nulla modi qui sequi voluptas. Nihil ipsam eum nesciunt quia. Dicta nostrum iste nemo quod iste est voluptas.', '1970-07-16 14:22:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('4', '9', '3', 'Nihil velit fugiat a minima. Perferendis vero iusto et explicabo vero consequatur eum. Dignissimos ab odit accusantium dicta. Nostrum ipsa placeat commodi veniam delectus. Occaecati quae similique sed provident.', '2021-08-04 18:06:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('5', '7', '10', 'Ratione vel et qui laboriosam commodi quo. Possimus incidunt ipsam voluptas qui. Fuga ab veritatis blanditiis rerum.', '1973-10-11 17:39:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('6', '6', '4', 'Laborum nostrum fuga nesciunt rerum. Voluptatibus dolore rerum reiciendis. Accusantium cupiditate aliquam voluptas et quisquam sequi voluptates.', '1983-12-23 07:07:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('7', '1', '6', 'Animi incidunt dolor rerum exercitationem ipsam necessitatibus. Ipsa sit totam beatae eum cupiditate doloribus voluptatem qui. Ratione perspiciatis vitae est perferendis corrupti labore natus.', '2016-04-04 12:03:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('8', '5', '8', 'Repellat hic nisi id dolore in nostrum. Est voluptatem eius laudantium autem in quam ut. Doloribus omnis quam voluptates velit iusto enim. Nemo non placeat et ut reiciendis. Nesciunt sunt eum illo repellat consequatur.', '1978-12-17 19:49:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('9', '3', '5', 'Deleniti pariatur minima iste eos dicta. Ducimus et hic assumenda voluptatem excepturi reiciendis. Beatae nulla voluptas non soluta modi fuga et.', '1971-09-15 19:06:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('10', '1', '8', 'Accusantium facilis corporis veritatis ipsam natus porro inventore. Labore esse est voluptas sed possimus. Maxime ea commodi alias rerum est. Nemo voluptatem voluptas dolores.', '1995-07-08 04:22:11');


#
# TABLE STRUCTURE FOR: photo_albums
#

DROP TABLE IF EXISTS `photo_albums`;

CREATE TABLE `photo_albums` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `photo_albums_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('1', 'ullam', '1');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('2', 'enim', '2');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('3', 'corrupti', '3');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('4', 'itaque', '4');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('5', 'aut', '5');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('6', 'repellendus', '6');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('7', 'reprehenderit', '7');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('8', 'eos', '8');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('9', 'laboriosam', '9');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('10', 'voluptate', '10');


#
# TABLE STRUCTURE FOR: photos
#

DROP TABLE IF EXISTS `photos`;

CREATE TABLE `photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `photo_albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `photos_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('1', '8', '1');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2', '2', '2');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('3', '1', '3');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('4', '4', '4');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('5', '10', '5');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('6', '9', '6');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('7', '1', '7');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('8', '10', '8');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('9', '6', '9');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('10', '1', '10');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `hometown` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_photo_id` (`photo_id`),
  CONSTRAINT `fk_photo_id` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('1', NULL, '1986-08-02', '1', '1971-12-11 01:31:09', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('2', NULL, '1970-10-08', '2', '2006-07-29 01:51:50', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('3', NULL, '1980-07-24', '3', '1979-01-14 03:58:35', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('4', NULL, '1975-12-27', '4', '1993-11-09 08:40:54', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('5', NULL, '2020-05-17', '5', '2003-01-25 09:11:54', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('6', NULL, '2005-08-19', '6', '2004-09-08 05:55:42', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('7', NULL, '1974-10-06', '7', '1973-01-03 06:00:23', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('8', NULL, '1995-03-23', '8', '1972-02-11 21:00:03', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('9', NULL, '2009-11-23', '9', '1989-02-20 02:06:52', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('10', NULL, '1992-03-08', '10', '2014-10-04 09:38:36', NULL);


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Фамилия',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('1', 'Cayla', 'Deckow', 'keven26@example.org', '2c96bd0875867247539545aeaf0e131d6e1a6d9d', '181299', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('2', 'Ed', 'O\'Connell', 'fmurazik@example.org', '8e43d53ce226b0717c2be1faa2c3aff94a1a12fd', '638033', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('3', 'Savion', 'Kerluke', 'carlee.carter@example.com', '0ccc0685c8e5cd89bdb2e7a4bc113b6b2b742689', '878', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('4', 'Shad', 'Shields', 'hiram.schaefer@example.org', '3502397b53b9de06312b82155e9331b13532ed44', '727991', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('5', 'Lucienne', 'Funk', 'ara33@example.com', '0f01274e5a35b5fb59b7cb32c540aad74fbca1a8', '929064', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('6', 'Deborah', 'Bartoletti', 'pierce.ernser@example.org', 'd1ee39a6da9660208ea99245261ec3c6a46866d7', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('7', 'Elvie', 'Hermann', 'bobby53@example.net', '287056af9bf5cbbb27ed88ff453c8f50506fb870', '695', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('8', 'Colton', 'Stoltenberg', 'araceli.tillman@example.com', '8fb1b7b2552da4a35a5c130ab2a8cfa3740b666e', '929745', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('9', 'Tyrique', 'Hegmann', 'randi59@example.com', 'b0e342492a6f7b7e297a91df2259e3e470ac8de5', '76255', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('10', 'Roxane', 'Kling', 'ymoore@example.org', '4641c6f837ce003cd4cdf7c755fc1f1fa421572c', '9005110551', '1');


