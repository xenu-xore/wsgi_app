BEGIN TRANSACTION;
CREATE TABLE region (
	id INTEGER NOT NULL,
	name_region VARCHAR(125),
	PRIMARY KEY (id)
);
INSERT INTO

	"region"

VALUES
		(2,'������'),
		(3,'�����'),
		(4,'��������� ����'),
		(5,'�������� �������'),
		(6,'������������� �������'),
		(7,'������������ �������'),
		(8,'������������'),
		(9,'������������ �������'),
		(10,'�������� �������'),
		(11,'�������'),
		(12,'������������ �������'),
		(13,'������������� �������'),
		(14,'����������� �������'),
		(15,'����������� �������'),
		(16,'��������'),
		(17,'��������� ��'),
		(18,'������������� ����'),
		(19,'���������� �������'),
		(20,'���������'),
		(21,'��������� �������'),
		(22,'���������-��������'),
		(23,'��������������� �������'),
		(24,'��������'),
		(25,'��������� �������'),
		(26,'���������� ����'),
		(27,'���������-���������'),
		(28,'�������'),
		(29,'����������� �������'),
		(30,'��������� �������'),
		(31,'����'),
		(32,'����������� �������'),
		(33,'������������� ����'),
		(34,'������������ ����'),
		(35,'���������� �������'),
		(36,'������� �������'),
		(37,'������������� �������'),
		(38,'�������� �������'),
		(39,'����������� �������'),
		(40,'����� ��'),
		(41,'��������'),
		(42,'������'),
		(43,'���������� �������'),
		(44,'���������� �������'),
		(45,'�������� ��'),
		(46,'������������� �������'),
		(47,'������������ �������'),
		(48,'������������� �������'),
		(49,'������ �������'),
		(50,'������������ �������'),
		(51,'��������� �������'),
		(52,'���������� �������'),
		(53,'�������� ����'),
		(54,'���������� ����'),
		(55,'��������� �������'),
		(56,'���������� �������'),
		(57,'��������� �������'),
		(58,'��������� �������'),
		(59,'�����-���������'),
		(60,'����������� �������'),
		(61,'���� (������)'),
		(62,'����������� �������'),
		(63,'������������ �������'),
		(64,'�������� ������ - ������'),
		(65,'���������� �������'),
		(66,'�������������� ����'),
		(67,'���������� �������'),
		(68,'���������'),
		(69,'�������� �������'),
		(70,'������� �������'),
		(71,'�������� �������'),
		(72,'����'),
		(73,'��������� �������'),
		(74,'��������'),
		(75,'����������� �������'),
		(76,'����������� ����'),
		(77,'�������'),
		(78,'�����-���������� �� - ����'),
		(79,'����������� �������'),
		(80,'��������� ����������'),
		(81,'��������� ����������'),
		(82,'��������� ��'),
		(83,'�����-�������� ��'),
		(84,'����������� �������'),
		(86,'����'),
		(87,'�����������');
CREATE TABLE city (
	id INTEGER NOT NULL,
	region_id INTEGER,
	name VARCHAR(250),
	PRIMARY KEY (id),
	FOREIGN KEY(region_id) REFERENCES region (id)
);
INSERT INTO

	"city"

VALUES
		(1,2,'������'),
		(2,3,'�����-�������'),
		(3,4,'�������'),
		(4,4,'�����'),
		(5,4,'��������'),
		(6,4,'�����������'),
		(7,4,'�������'),
		(8,5,'������������ (�������� �������)'),
		(9,5,'��������� (�������� �������)'),
		(10,5,'���������'),
		(11,6,'�����������'),
		(12,6,'������������'),
		(13,6,'������'),
		(14,7,'���������'),
		(15,7,'���������'),
		(16,7,'��������'),
		(17,8,'���'),
		(18,8,'�����������'),
		(19,8,'�������'),
		(20,8,'����������'),
		(21,8,'�����������'),
		(22,8,'��������'),
		(23,8,'������������ (������������)'),
		(24,9,'��������'),
		(25,9,'������ �����'),
		(26,9,'������'),
		(27,9,'��������'),
		(28,9,'����� �����'),
		(29,10,'������'),
		(30,10,'������'),
		(31,11,'����-���'),
		(32,11,'���������������'),
		(33,12,'��������'),
		(34,12,'������'),
		(35,12,'�����'),
		(36,12,'�����������'),
		(37,12,'����-�����������'),
		(38,12,'������'),
		(39,13,'���������'),
		(40,13,'��������'),
		(41,13,'�������'),
		(42,13,'�����-��-����'),
		(43,14,'���������'),
		(44,14,'�������'),
		(45,14,'�����'),
		(46,15,'�������'),
		(47,15,'������������'),
		(48,15,'�������'),
		(49,15,'�����'),
		(50,15,'��������'),
		(51,16,'���������'),
		(52,16,'��������'),
		(53,16,'�������'),
		(54,17,'����������'),
		(55,18,'����'),
		(56,18,'�������������'),
		(57,19,'�������'),
		(58,19,'�������'),
		(59,19,'���'),
		(60,20,'�������'),
		(61,21,'�������'),
		(62,21,'������'),
		(63,21,'�������'),
		(64,21,'����-������'),
		(65,22,'�������'),
		(66,22,'����������'),
		(67,23,'�����������'),
		(68,23,'������� (��������������� �������)'),
		(69,24,'������'),
		(70,25,'������'),
		(71,25,'�������'),
		(72,26,'�������������-����������'),
		(73,26,'�������'),
		(74,26,'���������'),
		(75,27,'��������'),
		(76,28,'������������'),
		(77,28,'���������'),
		(78,29,'�����������'),
		(79,29,'��������'),
		(80,29,'�����������'),
		(81,29,'�������-���������'),
		(82,29,'������������'),
		(83,29,'��������'),
		(84,29,'����'),
		(85,30,'����� (��������� �������)'),
		(86,30,'������-������'),
		(87,31,'���������'),
		(88,31,'����'),
		(89,31,'�������'),
		(90,31,'������'),
		(91,32,'��������'),
		(92,33,'���������'),
		(93,33,'����'),
		(94,33,'������������'),
		(95,33,'�������'),
		(96,33,'����'),
		(97,33,'���������'),
		(98,33,'������'),
		(99,33,'��������'),
		(100,33,'�����'),
		(101,33,'�����������'),
		(102,33,'���������'),
		(103,34,'����������'),
		(104,34,'��������'),
		(105,34,'������'),
		(106,34,'�����'),
		(107,34,'������������ (������������ ����)'),
		(108,34,'�����������'),
		(109,35,'������'),
		(110,35,'��������'),
		(111,36,'�����'),
		(112,36,'������������ (������� �������)'),
		(113,36,'��������'),
		(114,37,'�������'),
		(115,37,'������'),
		(116,37,'�������� ���'),
		(117,37,'������'),
		(118,37,'������'),
		(119,37,'���������'),
		(120,37,'����������'),
		(121,37,'������'),
		(122,37,'���������'),
		(123,37,'����'),
		(124,37,'�����'),
		(125,37,'������'),
		(126,37,'������� (������������� �������)'),
		(127,37,'�������� ����'),
		(128,37,'�������'),
		(129,37,'��������'),
		(130,37,'����������'),
		(131,37,'��������'),
		(132,37,'���������'),
		(133,37,'����������'),
		(134,37,'������������'),
		(135,37,'����������'),
		(136,37,'���������'),
		(137,37,'������������'),
		(138,37,'���������'),
		(139,37,'��������'),
		(140,37,'���������'),
		(141,37,'������'),
		(142,37,'������� ��. ��������'),
		(143,38,'������'),
		(144,38,'����'),
		(145,39,'�������'),
		(146,40,'������-���'),
		(147,40,'������'),
		(148,41,'�������'),
		(149,41,'��������'),
		(150,43,'��������'),
		(151,43,'�����'),
		(152,43,'��������'),
		(153,43,'������'),
		(154,43,'������'),
		(155,43,'�������'),
		(156,43,'�������'),
		(157,43,'������������'),
		(158,43,'��������'),
		(159,43,'��������������� (��������)'),
		(160,43,'��������'),
		(161,43,'�������-�����'),
		(162,43,'�������'),
		(163,43,'ٸ�����'),
		(164,43,'������� �����'),
		(165,43,'���������'),
		(166,43,'�����������'),
		(167,43,'�������'),
		(168,43,'�����������'),
		(169,43,'����������'),
		(170,43,'���������'),
		(171,43,'������'),
		(172,43,'������������'),
		(173,43,'����'),
		(174,43,'�����'),
		(175,43,'����-�������'),
		(176,43,'�����'),
		(177,43,'���������'),
		(178,43,'�������'),
		(179,43,'�������'),
		(180,43,'�����'),
		(181,43,'���������� �����'),
		(182,43,'�������������'),
		(183,43,'����������'),
		(184,42,'�������� (������)'),
		(185,43,'������'),
		(186,43,'�������'),
		(187,43,'���������'),
		(188,43,'�����������'),
		(189,43,'������'),
		(190,43,'��������'),
		(191,42,'������ (������)'),
		(192,42,'��������� (������)'),
		(193,43,'�����'),
		(194,43,'��������'),
		(195,43,'�������������� (���������� �������)'),
		(196,43,'��������'),
		(197,42,'�������� (������)'),
		(198,43,'������'),
		(199,43,'������-�����'),
		(200,43,'�������'),
		(201,43,'��������'),
		(202,43,'�������'),
		(203,43,'������������� (���������� �������)'),
		(204,43,'�������'),
		(205,43,'����'),
		(206,43,'�������'),
		(207,43,'���������'),
		(208,43,'�����������'),
		(209,43,'������-����������'),
		(210,43,'������ �������'),
		(211,43,'������'),
		(212,43,'������������'),
		(213,43,'�����������'),
		(214,43,'������������'),
		(215,43,'����������'),
		(216,43,'������'),
		(217,43,'��������'),
		(218,44,'��������'),
		(219,44,'�������'),
		(220,44,'�����������'),
		(221,45,'������-���'),
		(222,46,'������ ��������'),
		(223,46,'���������'),
		(224,46,'�������'),
		(225,46,'�����'),
		(226,46,'���'),
		(227,46,'������'),
		(228,46,'�������'),
		(229,46,'�����'),
		(230,46,'�������'),
		(231,47,'������� ��������'),
		(232,47,'��������'),
		(233,47,'������ �����'),
		(234,48,'�����������'),
		(235,48,'������'),
		(236,48,'��������'),
		(237,49,'����'),
		(238,50,'��������'),
		(239,50,'����'),
		(240,50,'����������'),
		(241,50,'�������'),
		(242,51,'���'),
		(243,51,'�����'),
		(244,51,'������'),
		(245,52,'�����'),
		(246,52,'�������'),
		(247,52,'�������� (���������� �������)'),
		(248,52,'�������'),
		(249,53,'�����'),
		(250,53,'���������'),
		(251,53,'���������'),
		(252,53,'����������'),
		(253,53,'������'),
		(254,53,'������'),
		(255,53,'�����������'),
		(256,54,'�����������'),
		(257,54,'�������'),
		(258,54,'���������'),
		(259,54,'����'),
		(260,55,'�����'),
		(261,55,'������� ����'),
		(262,56,'������-��-����'),
		(263,56,'��������'),
		(264,56,'�����'),
		(265,56,'������������'),
		(266,56,'����������'),
		(267,56,'������������'),
		(268,56,'�������'),
		(269,56,'�������-����������'),
		(270,56,'����'),
		(271,56,'������'),
		(272,56,'������'),
		(273,56,'������'),
		(274,56,'����� �������'),
		(275,57,'������'),
		(276,57,'�������'),
		(277,58,'������'),
		(278,58,'��������'),
		(279,58,'�������'),
		(280,58,'��������������'),
		(281,58,'��������'),
		(282,58,'��������'),
		(283,60,'�������'),
		(284,60,'�������'),
		(285,60,'��������'),
		(286,60,'�������'),
		(287,60,'������'),
		(288,61,'������'),
		(289,61,'��������'),
		(290,61,'������'),
		(291,62,'����-���������'),
		(292,63,'������������'),
		(293,63,'������ �����'),
		(294,63,'�������-���������'),
		(295,63,'������������'),
		(296,63,'�����'),
		(297,63,'�����������'),
		(298,63,'������'),
		(299,63,'���������'),
		(300,63,'�����'),
		(301,63,'��������������'),
		(302,64,'�����������'),
		(303,64,'������'),
		(304,65,'��������'),
		(305,65,'������'),
		(306,66,'����������'),
		(307,66,'���������'),
		(308,66,'����������'),
		(309,66,'���������'),
		(310,66,'����������� ����'),
		(311,66,'���������'),
		(312,67,'������'),
		(313,67,'���������'),
		(314,68,'������'),
		(315,68,'���������� �����'),
		(316,68,'����������'),
		(317,68,'�����������'),
		(318,68,'������������'),
		(319,68,'��������'),
		(320,69,'�����'),
		(321,69,'����'),
		(322,70,'�����'),
		(323,70,'�������'),
		(324,71,'����'),
		(325,71,'������������'),
		(327,71,'�������'),
		(328,72,'�����'),
		(329,73,'������'),
		(330,73,'��������'),
		(331,74,'������'),
		(332,74,'�������'),
		(333,74,'������'),
		(334,74,'��������'),
		(335,75,'���������'),
		(336,75,'������������'),
		(337,76,'���������'),
		(338,76,'�����������-��-�����'),
		(339,76,'������'),
		(340,77,'������'),
		(341,77,'����������'),
		(342,78,'������'),
		(343,78,'�������������'),
		(344,78,'�����������'),
		(345,78,'�����-��������'),
		(346,79,'���������'),
		(347,79,'������������'),
		(348,79,'��������'),
		(349,79,'�����'),
		(350,79,'�������'),
		(351,79,'�����'),
		(352,79,'������'),
		(353,79,'��������'),
		(354,79,'�����'),
		(355,80,'�������'),
		(356,80,'����-������'),
		(357,81,'���������'),
		(358,81,'��������������'),
		(360,83,'����� �������'),
		(361,83,'��������'),
		(362,84,'���������'),
		(363,84,'�������'),
		(364,84,'����������-���������'),
		(365,42,'������'),
		(366,59,'�����-���������'),
		(367,77,'�����'),
		(369,50,'��������'),
		(370,33,'������'),
		(371,8,'�������'),
		(372,68,'�����'),
		(373,2,'��������'),
		(374,68,'���������'),
		(376,72,'��-�������'),
		(377,56,'�����'),
		(378,64,'������'),
		(379,63,'���������'),
		(380,81,'�������'),
		(381,61,'�����'),
		(382,4,'������'),
		(384,53,'�������������'),
		(385,62,'�������������-�����������'),
		(386,9,'����������'),
		(387,71,'�������'),
		(388,21,'�������'),
		(391,82,'�������'),
		(394,69,'����������'),
		(395,29,'������-��������'),
		(396,62,'�����'),
		(398,43,'���������'),
		(399,33,'���������'),
		(400,63,'�������'),
		(401,80,'�����'),
		(402,41,'�������'),
		(403,64,'�����'),
		(405,60,'�������'),
		(407,54,'��������'),
		(408,68,'����'),
		(410,34,'��������'),
		(411,63,'����������'),
		(414,70,'�����'),
		(416,60,'�������'),
		(419,79,'���'),
		(420,14,'�������'),
		(421,11,'��������'),
		(422,68,'�����'),
		(423,23,'�������������'),
		(424,21,'���������'),
		(425,8,'������'),
		(426,79,'�����'),
		(427,22,'������'),
		(428,25,'����������'),
		(433,18,'�����'),
		(434,23,'��������'),
		(435,48,'���������'),
		(437,75,'�����'),
		(439,69,'������'),
		(440,71,'����'),
		(442,30,'����� ��������'),
		(444,8,'�������'),
		(445,52,'���������'),
		(446,29,'������'),
		(448,14,'���������'),
		(449,4,'����������'),
		(450,28,'���������'),
		(453,25,'���������'),
		(454,78,'����������'),
		(455,69,'�����'),
		(456,29,'����������� (����������� �������)'),
		(457,63,'����������� (������������ �������)'),
		(460,64,'������'),
		(462,76,'�����'),
		(463,82,'��������'),
		(465,8,'�����'),
		(466,21,'���������'),
		(467,9,'�����'),
		(470,66,'�����������'),
		(471,15,'������'),
		(472,63,'����������'),
		(473,71,'����������'),
		(474,46,'���������'),
		(475,34,'�������'),
		(476,15,'�������'),
		(477,21,'�������'),
		(479,68,'������'),
		(480,69,'�������'),
		(481,48,'��������'),
		(482,71,'��������'),
		(483,51,'������'),
		(484,54,'������� ������'),
		(486,18,'�����'),
		(489,25,'�������'),
		(490,34,'��������'),
		(492,43,'��������'),
		(495,50,'����������'),
		(498,68,'������'),
		(499,32,'���'),
		(500,16,'��������'),
		(501,15,'������������'),
		(502,47,'������'),
		(503,9,'�������'),
		(504,65,'�����'),
		(507,14,'������� �����'),
		(508,6,'������'),
		(509,71,'�����'),
		(510,53,'����������'),
		(511,43,'�����'),
		(512,79,'�������������'),
		(513,63,'������� �����'),
		(514,79,'������� ������'),
		(515,63,'������� �����'),
		(516,63,'������� �����'),
		(517,63,'������� ����'),
		(518,63,'����������'),
		(519,61,'���������'),
		(520,69,'����������'),
		(521,46,'�������'),
		(523,61,'�������'),
		(525,21,'���������'),
		(526,19,'������'),
		(532,32,'������������'),
		(536,46,'���������'),
		(540,63,'��������'),
		(544,46,'������'),
		(548,31,'������'),
		(551,43,'���������'),
		(552,37,'������'),
		(553,14,'�������'),
		(554,69,'������ �������'),
		(555,76,'���������'),
		(556,12,'�������'),
		(558,30,'������� ������'),
		(559,19,'�������� �����'),
		(560,84,'��������-��'),
		(561,65,'�������'),
		(562,44,'��������'),
		(563,50,'���'),
		(564,32,'�����'),
		(566,23,'���������'),
		(567,55,'����'),
		(569,66,'����������'),
		(571,43,'��������'),
		(572,46,'��������'),
		(574,53,'������������'),
		(575,4,'������'),
		(576,46,'�������'),
		(577,52,'��������'),
		(578,24,'�������������'),
		(579,12,'���������'),
		(580,33,'������� ����'),
		(581,9,'���������'),
		(582,53,'����������'),
		(584,38,'�����'),
		(585,14,'��������'),
		(586,53,'������'),
		(588,83,'����������'),
		(589,80,'��������'),
		(591,33,'����������'),
		(592,23,'�������� (��������������� �������)'),
		(593,29,'�������� (����������� �������)'),
		(594,23,'�����'),
		(595,11,'�����������'),
		(597,8,'�����������'),
		(598,16,'������������ ����'),
		(599,35,'���������'),
		(600,54,'�����������'),
		(601,54,'�������������'),
		(602,84,'�������'),
		(603,38,'������'),
		(604,63,'��������'),
		(606,65,'�������'),
		(608,65,'����������'),
		(611,34,'����������'),
		(612,64,'������'),
		(614,36,'��������'),
		(616,51,'���������'),
		(617,55,'���'),
		(618,53,'��������'),
		(620,62,'�������'),
		(623,71,'�������'),
		(624,65,'���������'),
		(625,43,'������'),
		(627,13,'�������'),
		(628,34,'�������'),
		(629,65,'���������'),
		(630,8,'�������'),
		(631,10,'��������'),
		(635,68,'�������'),
		(638,65,'�����'),
		(639,79,'�����������'),
		(640,31,'����'),
		(641,34,'��������'),
		(642,25,'��������'),
		(643,60,'�����'),
		(645,71,'�������'),
		(646,66,'������������'),
		(649,21,'������������-��������'),
		(651,67,'��������'),
		(653,25,'������'),
		(654,13,'��������'),
		(655,25,'�����'),
		(656,10,'�������'),
		(658,5,'���������'),
		(659,73,'������������'),
		(660,19,'��������'),
		(661,46,'��������'),
		(662,38,'�������'),
		(663,68,'������'),
		(664,11,'���������'),
		(665,34,'��������'),
		(666,44,'�������'),
		(667,69,'�������� �����'),
		(668,44,'����������'),
		(671,63,'�������� (������������ �������)'),
		(673,40,'���������'),
		(674,43,'����������'),
		(675,56,'�������'),
		(677,23,'������������'),
		(679,66,'�����������'),
		(680,56,'���������'),
		(681,5,'���'),
		(682,21,'����'),
		(684,10,'������'),
		(685,4,'�����������'),
		(687,69,'������'),
		(688,30,'������'),
		(692,63,'������'),
		(693,34,'������'),
		(695,16,'��������'),
		(696,66,'����������'),
		(697,34,'��������'),
		(698,75,'����'),
		(699,41,'�����'),
		(700,31,'����'),
		(701,66,'�������'),
		(702,63,'�����'),
		(704,49,'���������'),
		(705,48,'�������'),
		(707,73,'����'),
		(708,8,'�������'),
		(710,14,'��������'),
		(712,15,'�����'),
		(714,49,'���������'),
		(716,60,'���������'),
		(717,29,'������'),
		(719,69,'�������'),
		(720,74,'��������'),
		(722,37,'������������'),
		(725,4,'������-��-���'),
		(726,12,'���������'),
		(727,7,'�������'),
		(729,63,'��������'),
		(730,81,'�����'),
		(731,44,'����������'),
		(733,12,'����������'),
		(734,79,'�������'),
		(735,20,'���������'),
		(736,48,'�������'),
		(737,27,'����������'),
		(738,10,'�������'),
		(739,48,'������'),
		(740,6,'���������'),
		(741,63,'��������'),
		(742,79,'�������'),
		(744,79,'�����'),
		(745,16,'��������'),
		(746,79,'�����-��������'),
		(747,35,'�������'),
		(748,63,'��������'),
		(749,69,'�����'),
		(751,70,'��������'),
		(753,28,'����'),
		(754,53,'�����'),
		(755,16,'��������'),
		(756,16,'������'),
		(757,71,'�������'),
		(758,69,'�����'),
		(760,58,'������'),
		(762,71,'��������'),
		(763,21,'�������'),
		(765,14,'��������'),
		(768,25,'����� (��������� �������)'),
		(769,63,'���������'),
		(772,44,'������� (���������� �������)'),
		(773,30,'����'),
		(774,67,'��������'),
		(780,46,'���������'),
		(781,44,'������'),
		(783,41,'���������'),
		(784,78,'�������'),
		(785,34,'�������'),
		(786,25,'��������'),
		(787,81,'��������'),
		(788,40,'��������������'),
		(789,44,'����'),
		(790,32,'��������'),
		(792,70,'���������'),
		(793,12,'����������'),
		(795,19,'�����������'),
		(797,69,'��������'),
		(799,25,'��������'),
		(800,56,'��������������'),
		(802,57,'���������'),
		(803,33,'���������'),
		(804,79,'�������'),
		(806,9,'������'),
		(807,62,'��������'),
		(808,6,'�������'),
		(809,12,'��������'),
		(810,28,'����������'),
		(813,13,'������������'),
		(814,30,'���������'),
		(816,13,'������'),
		(817,67,'�������'),
		(818,19,'�����'),
		(819,14,'���������'),
		(821,60,'������������� (����������� �������)'),
		(822,53,'�������������'),
		(825,43,'�������������'),
		(830,13,'�������������� (������������� �������)'),
		(831,41,'�������������� (��������)'),
		(833,63,'�������������'),
		(834,63,'������������'),
		(836,60,'������� ���'),
		(837,56,'������� �����'),
		(838,69,'������� ����'),
		(839,25,'�������'),
		(841,33,'������'),
		(844,50,'��������'),
		(845,69,'���������'),
		(846,53,'��������'),
		(849,46,'��������'),
		(850,8,'��������'),
		(852,48,'������'),
		(854,33,'����������'),
		(855,62,'��������'),
		(856,12,'�������'),
		(857,43,'���������'),
		(859,35,'��������'),
		(861,79,'����'),
		(862,63,'�����'),
		(864,79,'������'),
		(865,11,'�����'),
		(866,33,'�������'),
		(867,83,'����������'),
		(868,24,'������'),
		(869,23,'��������'),
		(870,68,'�������'),
		(871,12,'�������'),
		(872,78,'��������'),
		(873,28,'�����������'),
		(874,38,'��������'),
		(875,68,'�����������'),
		(876,13,'�������'),
		(878,61,'�����'),
		(879,66,'���������'),
		(880,63,'������'),
		(881,54,'�����������'),
		(882,34,'�����������'),
		(886,71,'�����'),
		(888,69,'����������'),
		(893,30,'����'),
		(894,46,'��������'),
		(896,46,'�������'),
		(899,36,'�����'),
		(900,37,'������'),
		(902,84,'�����'),
		(903,25,'��������'),
		(904,78,'������'),
		(906,20,'�����'),
		(909,22,'�������'),
		(910,62,'�������'),
		(911,32,'��������'),
		(912,35,'��������'),
		(913,47,'����� ������'),
		(914,20,'��������'),
		(915,30,'������'),
		(916,51,'���������������'),
		(917,25,'�������������'),
		(918,68,'�������'),
		(919,23,'��������'),
		(920,32,'���������'),
		(921,29,'��������'),
		(922,81,'���������� �����'),
		(923,60,'�����'),
		(925,10,'�����'),
		(926,78,'������'),
		(927,28,'�������������'),
		(928,50,'����������'),
		(929,25,'������'),
		(930,8,'��������'),
		(932,6,'������'),
		(933,12,'�������'),
		(934,8,'������'),
		(935,68,'�����������'),
		(936,68,'����������'),
		(937,25,'�������'),
		(939,31,'������'),
		(940,56,'���������'),
		(942,34,'���������'),
		(943,79,'������'),
		(946,57,'��������'),
		(947,13,'����������'),
		(948,63,'���������� (������������ �������)'),
		(949,66,'���������� (�������������� ����)'),
		(951,18,'������'),
		(953,74,'�����'),
		(955,44,'����������'),
		(956,56,'���������'),
		(957,67,'��������'),
		(958,25,'��������'),
		(960,83,'����������'),
		(961,30,'������'),
		(965,29,'�����'),
		(967,84,'������'),
		(969,46,'��������'),
		(970,19,'��������'),
		(971,83,'�����'),
		(972,34,'��������'),
		(974,49,'����������'),
		(976,7,'���������'),
		(978,22,'��������'),
		(981,55,'������'),
		(982,62,'��������'),
		(983,66,'������������'),
		(984,63,'��������'),
		(985,69,'��������'),
		(986,23,'�����'),
		(987,32,'�������'),
		(988,18,'��������'),
		(990,23,'��������'),
		(991,58,'����������'),
		(993,66,'����������'),
		(995,32,'���'),
		(998,21,'�����������'),
		(999,63,'������ �����'),
		(1000,52,'������ �����'),
		(1003,63,'������ �����'),
		(1004,63,'������ ����'),
		(1005,13,'����������'),
		(1006,76,'����������-��-�����'),
		(1007,14,'�������� (����������� �������)'),
		(1008,52,'�������� (���������� �������)'),
		(1010,37,'����� ������'),
		(1011,63,'����� ����'),
		(1012,66,'�����������������'),
		(1014,13,'�������������'),
		(1015,15,'�����������'),
		(1016,6,'����������'),
		(1017,10,'����������'),
		(1018,33,'�����������'),
		(1021,57,'�������������'),
		(1023,66,'������������'),
		(1024,55,'��������'),
		(1027,51,'��������'),
		(1028,55,'��������������'),
		(1030,60,'����������'),
		(1031,75,'�������������'),
		(1033,15,'����������'),
		(1040,30,'�������'),
		(1043,68,'������'),
		(1044,53,'�����'),
		(1045,61,'�����'),
		(1046,78,'������'),
		(1047,79,'������������'),
		(1048,6,'�������'),
		(1049,17,'�������'),
		(1051,36,'������'),
		(1052,48,'���'),
		(1054,43,'��������'),
		(1058,58,'���������'),
		(1060,47,'��������'),
		(1061,61,'��������'),
		(1062,44,'����������'),
		(1063,28,'������'),
		(1065,30,'���������'),
		(1066,6,'�����'),
		(1067,55,'������'),
		(1071,30,'�����'),
		(1073,53,'���'),
		(1074,29,'��������'),
		(1075,69,'��������'),
		(1076,55,'������'),
		(1077,44,'���������'),
		(1078,15,'����������'),
		(1080,58,'��������'),
		(1081,62,'���'),
		(1082,53,'������'),
		(1083,53,'����'),
		(1087,13,'����������'),
		(1088,54,'����������'),
		(1089,82,'�����'),
		(1091,46,'����������'),
		(1093,46,'�������'),
		(1094,43,'��������'),
		(1097,47,'�������'),
		(1098,13,'������ ���'),
		(1099,60,'��������'),
		(1100,18,'��������-�������������'),
		(1103,35,'��������'),
		(1104,12,'�������'),
		(1106,55,'������'),
		(1108,23,'����������'),
		(1109,28,'����������'),
		(1110,19,'���'),
		(1111,71,'������'),
		(1112,79,'�����'),
		(1113,15,'��������'),
		(1116,78,'������'),
		(1117,12,'������'),
		(1118,61,'��������'),
		(1120,23,'�������'),
		(1121,29,'���������'),
		(1122,44,'�������� ����'),
		(1123,44,'��������'),
		(1124,62,'���������'),
		(1125,55,'������'),
		(1126,58,'�����������'),
		(1127,10,'�����'),
		(1128,65,'�������'),
		(1129,84,'���������'),
		(1130,23,'���������'),
		(1131,19,'���������'),
		(1132,23,'�������� (��������������� �������)'),
		(1133,37,'�������� (������������� �������)'),
		(1134,33,'���������-�������'),
		(1137,56,'����������'),
		(1141,60,'�������'),
		(1142,28,'�����'),
		(1143,55,'��������'),
		(1144,19,'�����'),
		(1147,55,'��������'),
		(1148,78,'����-��'),
		(1150,12,'�������� (������������ �������)'),
		(1151,78,'�������� (�����-���������� �� - ����)'),
		(1152,5,'����������'),
		(1154,67,'����������'),
		(1156,63,'���'),
		(1159,19,'�������'),
		(1160,65,'��������'),
		(1162,84,'������'),
		(1165,60,'�������'),
		(1167,65,'�����'),
		(1168,43,'����'),
		(1171,57,'������'),
		(1172,36,'������'),
		(1173,57,'�����'),
		(1176,29,'������'),
		(1177,83,'��������'),
		(1185,57,'������'),
		(1187,65,'��������'),
		(1188,77,'����������'),
		(1189,21,'������'),
		(1190,23,'�����������'),
		(1191,66,'����������'),
		(1192,23,'�������'),
		(1194,21,'������'),
		(1196,55,'�����'),
		(1197,62,'������-��������'),
		(1201,63,'�������������'),
		(1203,10,'�����'),
		(1204,28,'������'),
		(1205,10,'������'),
		(1206,46,'������'),
		(1207,56,'�������������'),
		(1208,15,'��������'),
		(1209,75,'��������'),
		(1210,13,'�����������'),
		(1211,46,'������'),
		(1213,52,'��������'),
		(1217,8,'�����'),
		(1218,79,'���'),
		(1219,5,'�����������'),
		(1220,57,'������'),
		(1221,4,'���������'),
		(1222,23,'������'),
		(1223,33,'��������-��-������'),
		(1225,30,'����������'),
		(1226,21,'��������'),
		(1229,44,'�����������'),
		(1230,12,'�������'),
		(1232,30,'������� (��������� �������)'),
		(1233,71,'������� (�������� �������)'),
		(1234,76,'��������� ������'),
		(1235,78,'���������'),
		(1237,32,'���������'),
		(1240,50,'����-�����'),
		(1241,6,'�������������'),
		(1242,47,'������'),
		(1243,50,'���������'),
		(1244,77,'�����'),
		(1245,28,'���������'),
		(1246,25,'���������'),
		(1247,30,'��������'),
		(1248,34,'������������'),
		(1250,31,'����������'),
		(1252,25,'����-�������'),
		(1253,57,'����-�������'),
		(1254,52,'������'),
		(1255,54,'������-�������'),
		(1256,57,'������-���������'),
		(1257,61,'�������������'),
		(1258,63,'�������������'),
		(1259,18,'��������'),
		(1263,69,'�������'),
		(1264,10,'��������'),
		(1267,70,'���������'),
		(1268,9,'���������'),
		(1269,12,'��������'),
		(1271,71,'�������'),
		(1272,36,'�����'),
		(1273,12,'�������'),
		(1274,12,'�������'),
		(1275,28,'�������'),
		(1276,10,'�����'),
		(1278,13,'����������'),
		(1279,52,'�����'),
		(1280,39,'�������'),
		(1281,25,'��������'),
		(1282,63,'����� ���'),
		(1285,63,'�������'),
		(1286,65,'�������'),
		(1288,63,'�����'),
		(1290,29,'�����'),
		(1291,21,'������'),
		(1292,43,'������'),
		(1293,63,'������'),
		(1295,49,'����'),
		(1296,83,'�����-����'),
		(1297,25,'������'),
		(1298,48,'�������'),
		(1299,29,'��������'),
		(1301,27,'�������'),
		(1302,19,'�������'),
		(1303,41,'��������'),
		(1304,33,'������'),
		(1305,22,'�����'),
		(1306,68,'������'),
		(1307,33,'���������'),
		(1311,48,'�������'),
		(1313,62,'������'),
		(1314,61,'������'),
		(1316,29,'�����'),
		(1317,69,'������'),
		(1318,69,'�������'),
		(1320,14,'������'),
		(1321,79,'���������'),
		(1323,10,'���������'),
		(1325,8,'�������'),
		(1327,21,'�����'),
		(1328,72,'�����'),
		(1329,63,'�������'),
		(1330,84,'������'),
		(1331,5,'�����'),
		(1332,22,'��������'),
		(1333,49,'���������'),
		(1335,67,'�������'),
		(1336,62,'���������'),
		(1337,84,'�����'),
		(1338,61,'�������'),
		(1339,69,'������'),
		(1340,34,'����'),
		(1344,10,'�����'),
		(1345,78,'����'),
		(1346,46,'�����'),
		(1347,30,'�����'),
		(1349,13,'��������'),
		(1350,31,'������'),
		(1351,38,'������'),
		(1352,53,'������'),
		(1353,21,'������-���������'),
		(1355,27,'����-�������'),
		(1357,79,'����-�����'),
		(1358,21,'����-���'),
		(1359,33,'����-�������'),
		(1360,14,'�������'),
		(1363,8,'�����'),
		(1364,34,'���'),
		(1365,36,'�����'),
		(1366,10,'������ (�������� �������)'),
		(1367,54,'������ (���������� ����)'),
		(1368,13,'�������'),
		(1370,19,'��������'),
		(1372,33,'���������'),
		(1374,7,'��������'),
		(1375,14,'�������'),
		(1377,60,'��������'),
		(1378,18,'�����'),
		(1380,47,'����'),
		(1381,62,'������'),
		(1382,43,'��������'),
		(1383,81,'��������'),
		(1384,56,'��������'),
		(1385,53,'׸����'),
		(1386,72,'�����'),
		(1389,38,'��������'),
		(1390,79,'���������'),
		(1392,22,'�����'),
		(1393,71,'�������'),
		(1395,53,'�������'),
		(1396,21,'���������'),
		(1397,48,'����������'),
		(1402,53,'��������'),
		(1403,23,'����������'),
		(1405,68,'���������'),
		(1407,46,'��������'),
		(1408,47,'������'),
		(1409,48,'�����'),
		(1410,53,'�������'),
		(1411,32,'�������'),
		(1412,72,'�������'),
		(1414,80,'����'),
		(1415,34,'��������'),
		(1416,32,'�����'),
		(1418,62,'�������'),
		(1420,46,'�������'),
		(1421,57,'����'),
		(1423,21,'�������'),
		(1424,6,'��������'),
		(1425,18,'�����'),
		(1426,5,'���������'),
		(1427,60,'������'),
		(1429,81,'�������'),
		(1430,35,'������'),
		(1432,71,'ٸ����'),
		(1434,36,'�����'),
		(1435,35,'�����'),
		(1441,15,'������'),
		(1443,78,'������'),
		(1444,19,'���'),
		(1446,16,'����-���������'),
		(1447,79,'�����������'),
		(1449,12,'�����-��������'),
		(1450,19,'�������'),
		(1451,79,'�������'),
		(1452,25,'�����'),
		(1453,81,'�����'),
		(1455,73,'����������'),
		(1456,8,'�����'),
		(1457,30,'������'),
		(1458,4,'������'),
		(1460,65,'������'),
		(1461,71,'���������'),
		(1462,50,'�����'),
		(1463,43,'������'),
		(1467,86,'������'),
		(1468,86,'������'),
		(1469,86,'�������'),
		(1470,86,'����������'),
		(1471,86,'��������� (����)'),
		(1472,86,'�������'),
		(1473,86,'���������'),
		(1474,87,'��������'),
		(1475,68,'���������'),
		(1476,86,'�����'),
		(1477,23,'�������������� (��������������� �������)'),
		(1478,86,'���������������'),
		(1479,6,'������ (������������� �������)'),
		(1480,23,'������ (��������������� �������)'),
		(1481,86,'����'),
		(1482,87,'�����������'),
		(1483,86,'�����������'),
		(1484,86,'������ ����'),
		(1485,86,'�����'),
		(1486,5,'�����������'),
		(1487,86,'��������'),
		(1488,86,'�������'),
		(1489,86,'����');

CREATE TABLE users (
	id INTEGER NOT NULL,
	"firstName" VARCHAR(125),
	"middleName" VARCHAR(125),
	"lastName" VARCHAR(125),
	phone VARCHAR(12),
	email VARCHAR(50),
	city_id INTEGER,
	region_id INTEGER,
	PRIMARY KEY (id),
	FOREIGN KEY(city_id) REFERENCES city (id) ON DELETE CASCADE,
	FOREIGN KEY(region_id) REFERENCES region (id) ON DELETE CASCADE
);
INSERT INTO

	"users"

VALUES
	(1,'����','������','������','+7123456789','my@email.com',386,9),
	(2,'����','','���������','','',NULL,NULL);
COMMIT;