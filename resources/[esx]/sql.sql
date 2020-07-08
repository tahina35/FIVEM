CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `imglink` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `shops` (`id`, `store`, `item`, `price`, `imglink`) VALUES
(1, 'TwentyFourSeven', 'water', 2, ''),
(2, 'RobsLiquor', 'water', 2, ''),
(3, 'LTDgasoline', 'water', 2, ''),
(4, 'TwentyFourSeven', 'bread', 2, ''),
(5, 'RobsLiquor', 'bread', 2, ''),
(6, 'LTDgasoline', 'bread', 2, ''),
(7, 'TwentyFourSeven', 'cola', 4, ''),
(8, 'RobsLiquor', 'cola', 4, ''),
(9, 'LTDgasoline', 'cola', 4, ''),
(10, 'RobsLiquor', 'hamburger', 12, ''),
(11, 'TwentyFourSeven', 'hamburger', 12, ''),
(12, 'LTDgasoline', 'hamburger', 12, ''),
(13, 'RobsLiquor', 'energetic', 5, ''),
(14, 'LTDgasoline', 'energetic', 5, ''),
(15, 'TwentyFourSeven', 'energetic', 5, ''),
(16, 'TwentyFourSeven', 'cupcake', 4, ''),
(17, 'RobsLiquor', 'cupcake', 4, ''),
(18, 'LTDgasoline', 'cupcake', 4, ''),
(19, 'TwentyFourSeven', 'beer', 8, ''),
(20, 'LTDgasoline', 'beer', 8, ''),
(21, 'RobsLiquor', 'beer', 8, ''),
(22, 'TwentyFourSeven', 'wytrych', 450, ''),
(23, 'RobsLiquor', 'wytrych', 450, ''),
(24, 'LTDgasoline', 'wytrych', 450, ''),
(25, 'TwentyFourSeven', 'lighter', 14, ''),
(26, 'RobsLiquor', 'lighter', 14, ''),
(27, 'LTDgasoline', 'lighter', 14, ''),
(28, 'TwentyFourSeven', 'cigarette', 20, ''),
(29, 'RobsLiquor', 'cigarette', 20, ''),
(30, 'LTDgasoline', 'cigarette', 20, ''),
(31, 'TwentyFourSeven', 'radio', 2500, ''),
(32, 'RobsLiquor', 'radio', 2500, ''),
(33, 'LTDgasoline', 'radio', 2500, ''),
(34, 'TwentyFourSeven', 'phone', 250, ''),
(35, 'RobsLiquor', 'phone', 250, ''),
(36, 'LTDgasoline', 'phone', 250, ''),
(37, 'VanillaUnicorn', 'handcuffs', 7500, '');

ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123124;
COMMIT;

CREATE TABLE `weashops` (
  `id` int(11) NOT NULL,
  `zone` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `imglink` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `weashops` (`id`, `zone`, `item`, `price`, `imglink`) VALUES
(1, 'GunShop', 'WEAPON_PISTOL', 12500, ''),
(2, 'GunShop', 'WEAPON_STUNGUN', 9000, ''),
(3, 'GunShop', 'WEAPON_KNUCKLE', 5000, ''),
(4, 'GunShop', 'WEAPON_KNIFE', 4000, ''),
(5, 'GunShop', 'WEAPON_FLASHLIGHT', 2500, ''),
(6, 'BlackWeashop', 'WEAPON_PISTOL', 17500, ''),
(7, 'BlackWeashop', 'WEAPON_KNUCKLE', 5000, NULL),
(8, 'BlackWeashop', 'WEAPON_MACHETE', 4000, NULL),
(9, 'BlackWeashop', 'WEAPON_HATCHET', 4500, NULL),
(10, 'BlackWeashop', 'WEAPON_HAMMER', 2500, NULL);

ALTER TABLE `weashops`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `weashops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55556;
COMMIT;
