-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-05-2024 a las 04:07:52
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `curso_django_3_tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add Comuna', 7, 'add_comuna'),
(26, 'Can change Comuna', 7, 'change_comuna'),
(27, 'Can delete Comuna', 7, 'delete_comuna'),
(28, 'Can view Comuna', 7, 'view_comuna'),
(29, 'Can add Estado', 8, 'add_estado'),
(30, 'Can change Estado', 8, 'change_estado'),
(31, 'Can delete Estado', 8, 'delete_estado'),
(32, 'Can view Estado', 8, 'view_estado'),
(33, 'Can add Género', 9, 'add_genero'),
(34, 'Can change Género', 9, 'change_genero'),
(35, 'Can delete Género', 9, 'delete_genero'),
(36, 'Can view Género', 9, 'view_genero'),
(37, 'Can add Metadata', 10, 'add_metadata'),
(38, 'Can change Metadata', 10, 'change_metadata'),
(39, 'Can delete Metadata', 10, 'delete_metadata'),
(40, 'Can view Metadata', 10, 'view_metadata'),
(41, 'Can add País', 11, 'add_pais'),
(42, 'Can change País', 11, 'change_pais'),
(43, 'Can delete País', 11, 'delete_pais'),
(44, 'Can view País', 11, 'view_pais'),
(45, 'Can add Perfil', 12, 'add_perfiles'),
(46, 'Can change Perfil', 12, 'change_perfiles'),
(47, 'Can delete Perfil', 12, 'delete_perfiles'),
(48, 'Can view Perfil', 12, 'view_perfiles'),
(49, 'Can add Producto Categoría', 13, 'add_productocategoria'),
(50, 'Can change Producto Categoría', 13, 'change_productocategoria'),
(51, 'Can delete Producto Categoría', 13, 'delete_productocategoria'),
(52, 'Can view Producto Categoría', 13, 'view_productocategoria'),
(53, 'Can add Proveedor', 14, 'add_proveedor'),
(54, 'Can change Proveedor', 14, 'change_proveedor'),
(55, 'Can delete Proveedor', 14, 'delete_proveedor'),
(56, 'Can view Proveedor', 14, 'view_proveedor'),
(57, 'Can add Región', 15, 'add_region'),
(58, 'Can change Región', 15, 'change_region'),
(59, 'Can delete Región', 15, 'delete_region'),
(60, 'Can view Región', 15, 'view_region'),
(61, 'Can add Slide', 16, 'add_slide'),
(62, 'Can change Slide', 16, 'change_slide'),
(63, 'Can delete Slide', 16, 'delete_slide'),
(64, 'Can view Slide', 16, 'view_slide'),
(65, 'Can add Orden de compra', 17, 'add_ordendecompra'),
(66, 'Can change Orden de compra', 17, 'change_ordendecompra'),
(67, 'Can delete Orden de compra', 17, 'delete_ordendecompra'),
(68, 'Can view Orden de compra', 17, 'view_ordendecompra'),
(69, 'Can add Producto', 18, 'add_producto'),
(70, 'Can change Producto', 18, 'change_producto'),
(71, 'Can delete Producto', 18, 'delete_producto'),
(72, 'Can view Producto', 18, 'view_producto'),
(73, 'Can add Orden de compra detalle', 19, 'add_ordendecompradetalle'),
(74, 'Can change Orden de compra detalle', 19, 'change_ordendecompradetalle'),
(75, 'Can delete Orden de compra detalle', 19, 'delete_ordendecompradetalle'),
(76, 'Can view Orden de compra detalle', 19, 'view_ordendecompradetalle'),
(77, 'Can add Producto fotos', 20, 'add_productofotos'),
(78, 'Can change Producto fotos', 20, 'change_productofotos'),
(79, 'Can delete Producto fotos', 20, 'delete_productofotos'),
(80, 'Can view Producto fotos', 20, 'view_productofotos'),
(81, 'Can add Producto recomendados', 21, 'add_productorecomendados'),
(82, 'Can change Producto recomendados', 21, 'change_productorecomendados'),
(83, 'Can delete Producto recomendados', 21, 'delete_productorecomendados'),
(84, 'Can view Producto recomendados', 21, 'view_productorecomendados'),
(85, 'Can add User metadata', 22, 'add_usersmetadata'),
(86, 'Can change User metadata', 22, 'change_usersmetadata'),
(87, 'Can delete User metadata', 22, 'delete_usersmetadata'),
(88, 'Can view User metadata', 22, 'view_usersmetadata'),
(89, 'Can add Carrito', 23, 'add_carrito'),
(90, 'Can change Carrito', 23, 'change_carrito'),
(91, 'Can delete Carrito', 23, 'delete_carrito'),
(92, 'Can view Carrito', 23, 'view_carrito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$WZNOvL892VuIbqnZM0tLyU$dXCp3zOsEzT/7qRzw5n0460UlhfMgBx3dy8C48FAdkw=', '2024-05-28 01:12:46.286198', 1, 'admin', '', '', 'jav.cuevasp@duocuc.cl', 1, 1, '2024-05-26 01:25:38.706922'),
(4, 'pbkdf2_sha256$720000$YjiC6YThnMgzq2CKhX9ZE6$V6b/YHhbLn6Iu9oxKNS9qZ/xmT4gei91cI/Z0HCE7is=', '2024-05-26 23:08:45.677073', 0, 'javitops.2003@gmail.com', 'Javier', 'Cuevas', 'javitops.2003@gmail.com', 0, 1, '2024-05-26 22:00:29.889330'),
(5, 'pbkdf2_sha256$720000$zEsVvZiu4Jtdj4NdjD2nmF$X3DWyaunmoyC9L2YlKE5ckG8t9EM4S+/hOn8CghUbxs=', '2024-05-28 01:18:43.653365', 0, 'chriscuadra@gmail.com', 'Christobal', 'Cuadra', 'chriscuadra@gmail.com', 1, 1, '2024-05-26 22:07:34.078745');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id` bigint(20) NOT NULL,
  `cantidad` int(10) UNSIGNED NOT NULL CHECK (`cantidad` >= 0),
  `fecha` date DEFAULT NULL,
  `producto_id` int(11) NOT NULL,
  `users_metadata_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`id`, `cantidad`, `fecha`, `producto_id`, `users_metadata_id`) VALUES
(3, 1, '2024-05-26', 23, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comuna`
--

CREATE TABLE `comuna` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `region_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comuna`
--

INSERT INTO `comuna` (`id`, `nombre`, `region_id`) VALUES
(1, 'Alto Hospicio', 1),
(2, 'Iquique', 1),
(3, 'Huara', 1),
(4, 'Camiña', 1),
(5, 'Colchane', 1),
(6, 'Pica', 1),
(7, 'Pozo Almonte', 1),
(8, 'Tocopilla ', 2),
(9, 'María Elena ', 2),
(10, 'Calama ', 2),
(11, 'Ollagüe ', 2),
(12, 'San Pedro de Atacama', 2),
(13, 'Antofagasta ', 2),
(14, 'Mejillones ', 2),
(15, 'Sierra Gorda ', 2),
(16, 'Taltal', 2),
(17, 'Chañaral ', 3),
(18, 'Diego de Almagro ', 3),
(19, 'Copiapó ', 3),
(20, 'Caldera', 3),
(21, 'Tierra Amarilla', 3),
(22, 'Vallenar', 3),
(23, 'Freirina', 3),
(24, 'Huasco', 3),
(25, 'Alto del Carmen', 3),
(26, 'La Serena', 4),
(27, 'La Higuera', 4),
(28, 'Coquimbo', 4),
(29, 'Andacollo', 4),
(30, 'Vicuña', 4),
(31, 'Paihuano', 4),
(32, 'Ovalle', 4),
(33, 'Río Hurtado', 4),
(34, 'Monte Patria', 4),
(35, 'Combarbalá', 4),
(36, 'Punitaqui', 4),
(37, 'Illapel', 4),
(38, 'Salamanca', 4),
(39, 'La Ligua', 5),
(40, 'Petorca', 5),
(41, 'Cabildo', 5),
(42, 'Zapallar', 5),
(43, 'Papudo', 5),
(44, 'Los Andes', 5),
(45, 'San Esteban', 5),
(46, 'Calle Larga', 5),
(47, 'Rinconada', 5),
(48, 'San Felipe', 5),
(49, 'Putaendo', 5),
(50, 'Santa María', 5),
(51, 'Panquehue', 5),
(52, 'Llayllay', 5),
(53, 'Catemu', 5),
(54, 'Quillota', 5),
(55, 'La Cruz', 5),
(56, 'Calera', 5),
(57, 'Nogales', 5),
(58, 'Hijuelas', 5),
(59, 'Limache', 5),
(60, 'Olmué', 5),
(61, 'Valparaíso', 5),
(62, 'Viña del Mar', 5),
(63, 'Quintero', 5),
(64, 'Puchuncaví', 5),
(65, 'Quilpué', 5),
(66, 'Villa Alemana', 5),
(67, 'Casablanca', 5),
(68, 'Concón', 5),
(69, 'Juan Fernández', 5),
(70, 'San Antonio ', 5),
(71, 'Cartagena', 5),
(72, 'El Tabo', 5),
(73, 'El Quisco', 5),
(74, 'Algarrobo', 5),
(75, 'Santo Domingo', 5),
(76, 'Isla de Pascua', 5),
(77, 'Rancagua', 6),
(78, 'Graneros', 6),
(79, 'Mostazal', 6),
(80, 'Codegua', 6),
(81, 'Machalí', 6),
(82, 'Olivar', 6),
(83, 'Requinoa', 6),
(84, 'Rengo', 6),
(85, 'Malloa', 6),
(86, 'Quinta de Tilcoco', 6),
(87, 'San Vicente', 6),
(88, 'Pichidegua', 6),
(89, 'Peumo', 6),
(90, 'Coltauco', 6),
(91, 'Coinco', 6),
(92, 'Doñihue', 6),
(93, 'Las Cabras', 6),
(94, 'San Fernando', 6),
(95, 'Chimbarongo', 6),
(96, 'Placilla', 6),
(97, 'Nancagua', 6),
(98, 'Chépica', 6),
(99, 'Santa Cruz', 6),
(100, 'Lolol', 6),
(101, 'Pumanque', 6),
(102, 'Palmilla', 6),
(103, 'Peralillo', 6),
(104, 'Pichilemu', 6),
(105, 'Navidad', 6),
(106, 'Litueche', 6),
(107, 'La Estrella', 6),
(108, 'Marchihue', 6),
(109, 'Paredones', 6),
(110, 'Curicó', 7),
(111, 'Teno', 7),
(112, 'Romeral', 7),
(113, 'Molina', 7),
(114, 'Sagrada Familia', 7),
(115, 'Hualañé', 7),
(116, 'Licantén', 7),
(117, 'Vichuquén', 7),
(118, 'Rauco', 7),
(119, 'Talca', 7),
(120, 'Pelarco', 7),
(121, 'Río Claro', 7),
(122, 'San Clemente', 7),
(123, 'Maule', 7),
(124, 'San Rafael', 7),
(125, 'Empedrado', 7),
(126, 'Pencahue', 7),
(127, 'Constitución', 7),
(128, 'Curepto', 7),
(129, 'Linares', 7),
(130, 'Yerbas Buenas', 7),
(131, 'Colbún', 7),
(132, 'Longaví', 7),
(133, 'Parral', 7),
(134, 'Retiro', 7),
(135, 'Villa Alegre', 7),
(136, 'San Javier', 7),
(137, 'Cauquenes', 7),
(138, 'Pelluhue', 7),
(139, 'Chanco', 7),
(140, 'Chillán', 8),
(141, 'San Carlos ', 8),
(142, 'Ñiquén ', 8),
(143, 'San Fabián ', 8),
(144, 'Coihueco ', 8),
(145, 'Pinto ', 8),
(146, 'San Ignacio ', 8),
(147, 'El Carmen ', 8),
(148, 'Yungay ', 8),
(149, 'Pemuco ', 8),
(150, 'Bulnes ', 8),
(151, 'Quillón ', 8),
(152, 'Ránquil ', 8),
(153, 'Portezuelo ', 8),
(154, 'Coelemu ', 8),
(155, 'Treguaco ', 8),
(156, 'Cobquecura ', 8),
(157, 'Quirihue ', 8),
(158, 'Ninhue ', 8),
(159, 'San Nicolás ', 8),
(160, 'Chillán Viejo', 8),
(161, 'Alto Biobío', 8),
(162, 'Los Angeles ', 8),
(163, 'Cabrero ', 8),
(164, 'Tucapel ', 8),
(165, 'Antuco ', 8),
(166, 'Quilleco ', 8),
(167, 'Santa Bárbara ', 8),
(168, 'Quilaco ', 8),
(169, 'Mulchén ', 8),
(170, 'Negrete ', 8),
(171, 'Nacimiento ', 8),
(172, 'Laja ', 8),
(173, 'San Rosendo ', 8),
(174, 'Yumbel', 8),
(175, 'Concepción ', 8),
(176, 'Talcahuano ', 8),
(177, 'Penco ', 8),
(178, 'Tomé ', 8),
(179, 'Florida ', 8),
(180, 'Hualpén', 8),
(181, 'Hualqui ', 8),
(182, 'Santa Juana ', 8),
(183, 'Lota ', 8),
(184, 'Coronel ', 8),
(185, 'San Pedro de la Paz ', 8),
(186, 'Chiguayante', 8),
(187, 'Lebu ', 8),
(188, 'Arauco ', 8),
(189, 'Curanilahue ', 8),
(190, 'Los Alamos ', 8),
(191, 'Cañete ', 8),
(192, 'Contulmo ', 8),
(193, 'Tirua ', 8),
(194, 'Angol ', 9),
(195, 'Renaico ', 9),
(196, 'Collipulli ', 9),
(197, 'Lonquimay ', 9),
(198, 'Curacautín ', 9),
(199, 'Ercilla ', 9),
(200, 'Victoria ', 9),
(201, 'Traiguén ', 9),
(202, 'Lumaco ', 9),
(203, 'Purén ', 9),
(204, 'Los Sauces', 9),
(205, 'Temuco ', 9),
(206, 'Lautaro ', 9),
(207, 'Perquenco ', 9),
(208, 'Vilcún ', 9),
(209, 'Cholchol', 9),
(210, 'Cunco ', 9),
(211, 'Melipeuco ', 9),
(212, 'Curarrehue ', 9),
(213, 'Pucón ', 9),
(214, 'Villarrica ', 9),
(215, 'Freire ', 9),
(216, 'Pitrufquén ', 9),
(217, 'Gorbea ', 9),
(218, 'Loncoche ', 9),
(219, 'Toltén ', 9),
(220, 'Teodoro Schmidt ', 9),
(221, 'Saavedra ', 9),
(222, 'Carahue ', 9),
(223, 'Nueva Imperial ', 9),
(224, 'Galvarino ', 9),
(225, 'Padre las Casas', 9),
(226, 'Osorno ', 10),
(227, 'San Pablo ', 10),
(228, 'Puyehue ', 10),
(229, 'Puerto Octay ', 10),
(230, 'Purranque ', 10),
(231, 'Río Negro ', 10),
(232, 'San Juan de la Costa', 10),
(233, 'Puerto Montt ', 10),
(234, 'Puerto Varas ', 10),
(235, 'Cochamó ', 10),
(236, 'Calbuco ', 10),
(237, 'Maullín ', 10),
(238, 'Los Muermos ', 10),
(239, 'Fresia ', 10),
(240, 'Llanquihue ', 10),
(241, 'Frutillar', 10),
(242, 'Castro ', 10),
(243, 'Ancud ', 10),
(244, 'Quemchi ', 10),
(245, 'Dalcahue ', 10),
(246, 'Curaco de Vélez ', 10),
(247, 'Quinchao ', 10),
(248, 'Puqueldón ', 10),
(249, 'Chonchi ', 10),
(250, 'Queilén ', 10),
(251, 'Quellón ', 10),
(252, 'Chaitén ', 10),
(253, 'Hualaihué', 10),
(254, 'Futaleufú ', 10),
(255, 'Palena', 10),
(256, 'Coihaique ', 11),
(257, 'Lago Verde ', 11),
(258, 'Aisén ', 11),
(259, 'Cisnes ', 11),
(260, 'Guaitecas ', 11),
(261, 'Chile Chico ', 11),
(262, 'Río Ibánez ', 11),
(263, 'Cochrane ', 11),
(264, 'O\'Higgins ', 11),
(265, 'Tortel', 11),
(266, 'Natales ', 12),
(267, 'Torres del Paine ', 12),
(268, 'Punta Arenas ', 12),
(269, 'Rio Verde ', 12),
(270, 'Laguna Blanca ', 12),
(271, 'San Gregorio ', 12),
(272, 'Porvenir', 12),
(273, 'Primavera', 12),
(274, 'Timaukel', 12),
(275, 'Cabo de Hornos', 12),
(276, 'Antártica', 12),
(277, 'Santiago', 13),
(278, 'Independencia', 13),
(279, 'Conchalí', 13),
(280, 'Huechuraba', 13),
(281, 'Recoleta', 13),
(282, 'Providencia', 13),
(283, 'Vitacura', 13),
(284, 'Lo Barnechea', 13),
(285, 'Las Condes', 13),
(286, 'Ñuñoa', 13),
(287, 'La Reina', 13),
(288, 'Macul', 13),
(289, 'Peñalolén', 13),
(290, 'La Florida', 13),
(291, 'San Joaquín', 13),
(292, 'La Granja', 13),
(293, 'La Pintana', 13),
(294, 'San Ramón', 13),
(295, 'San Miguel', 13),
(296, 'La Cisterna', 13),
(297, 'El Bosque', 13),
(298, 'Pedro Aguirre Cerda', 13),
(299, 'Lo Espejo', 13),
(300, 'Estación Central', 13),
(301, 'Cerrillos', 13),
(302, 'Maipú', 13),
(303, 'Quinta Normal', 13),
(304, 'Lo Prado', 13),
(305, 'Pudahuel', 13),
(306, 'Cerro Navia', 13),
(307, 'Renca', 13),
(308, 'Quilicura', 13),
(309, 'Colina', 13),
(310, 'Lampa', 13),
(311, 'Tiltil', 13),
(312, 'Puente Alto', 13),
(313, 'San José de Maipo', 13),
(314, 'Pirque', 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-05-26 01:29:41.548076', '1', 'Herramientas Manuales', 1, '[{\"added\": {}}]', 14, 1),
(2, '2024-05-26 01:29:51.680464', '2', 'Proveedor Materiales Básicos', 1, '[{\"added\": {}}]', 14, 1),
(3, '2024-05-26 01:29:58.867345', '3', 'Proveedor Equipos de Seguridad', 1, '[{\"added\": {}}]', 14, 1),
(4, '2024-05-26 01:30:14.591247', '1', 'Herramientas Manuales', 3, '', 14, 1),
(5, '2024-05-26 01:30:31.489211', '4', 'Proveedor Herramientas Manuales', 1, '[{\"added\": {}}]', 14, 1),
(6, '2024-05-26 01:31:18.329095', '1', 'Herramientas Manuales', 1, '[{\"added\": {}}]', 13, 1),
(7, '2024-05-26 01:31:22.262079', '2', 'Materiales Básicos', 1, '[{\"added\": {}}]', 13, 1),
(8, '2024-05-26 01:31:27.150088', '3', 'Equipos de Seguridad', 1, '[{\"added\": {}}]', 13, 1),
(9, '2024-05-26 01:31:31.368911', '4', 'Tornillos y Anclajes', 1, '[{\"added\": {}}]', 13, 1),
(10, '2024-05-26 01:31:35.249434', '5', 'Fijaciones y Adhesivos', 1, '[{\"added\": {}}]', 13, 1),
(11, '2024-05-26 01:31:39.206882', '6', 'Equipos de Medición', 1, '[{\"added\": {}}]', 13, 1),
(12, '2024-05-26 01:36:09.548407', '1', 'MARTILLO DE MANGO FIBRA VIDRIO 16 OZ STANLEY', 1, '[{\"added\": {}}]', 18, 1),
(13, '2024-05-26 01:43:46.720147', '2', 'Destornillador Punta Phillips #2x101mm', 1, '[{\"added\": {}}]', 18, 1),
(14, '2024-05-26 01:44:32.800919', '3', 'Set Llaves Juego Llaves Allen 30 Pcs Juego De Llaves Allen', 1, '[{\"added\": {}}]', 18, 1),
(15, '2024-05-26 01:45:35.054422', '4', 'Sierra Caladora Makita Djv180z 135mm 18v Sin Bateria Sin Car', 1, '[{\"added\": {}}]', 18, 1),
(16, '2024-05-26 01:47:57.900487', '5', 'Taladro Atornillador 12v + 50 Accesorios Black+Decker Cd121k50-b2c Color Naranja', 1, '[{\"added\": {}}]', 18, 1),
(17, '2024-05-26 01:49:08.628792', '6', 'Sierra Circular Black & Decker 1.400w Cs1004 Frecuencia 50', 1, '[{\"added\": {}}]', 18, 1),
(18, '2024-05-26 01:50:14.534180', '7', 'Lijadora Orbital Rectangular 320w Total Tools Tf1301826 Color Verde Frecuencia 50', 1, '[{\"added\": {}}]', 18, 1),
(19, '2024-05-26 01:51:12.414163', '8', 'Plancha Yeso Carton 1.20 X 2.40 X12.5 Mm', 1, '[{\"added\": {}}]', 18, 1),
(20, '2024-05-26 01:52:39.386701', '9', 'Cemento Polpaico', 1, '[{\"added\": {}}]', 18, 1),
(21, '2024-05-26 01:53:51.504959', '10', 'arena gruesa 25 kilos', 1, '[{\"added\": {}}]', 18, 1),
(22, '2024-05-26 01:54:35.030742', '11', 'Ladrillo Fiscal Comun Euromoda Precio X 10/un', 1, '[{\"added\": {}}]', 18, 1),
(23, '2024-05-26 01:55:38.125533', '12', 'Protector de Madera Cerestain Natural 1 gl', 1, '[{\"added\": {}}]', 18, 1),
(24, '2024-05-26 01:56:28.994601', '13', 'Soquina Constructor pintura latex antihongos color blanco', 1, '[{\"added\": {}}]', 18, 1),
(25, '2024-05-26 01:56:56.942307', '14', 'Barniz Marino Ceresita 1/4 Galón Pinturasonlinecl', 1, '[{\"added\": {}}]', 18, 1),
(26, '2024-05-26 01:57:32.881108', '15', 'Ceramica Metro White Brillante 10x20 Cm', 1, '[{\"added\": {}}]', 18, 1),
(27, '2024-05-26 01:58:19.871947', '16', 'Casco Masprot Blanco Con Arnes Cinta Y Roller', 1, '[{\"added\": {}}]', 18, 1),
(28, '2024-05-26 01:58:55.697346', '17', 'Guante Multipropósito Flex 66 Palma Pu - Pack 12 Pare', 1, '[{\"added\": {}}]', 18, 1),
(29, '2024-05-26 01:59:29.926118', '18', 'Lente Blackbull B3000 Pro - Claro', 1, '[{\"added\": {}}]', 18, 1),
(30, '2024-05-26 02:00:32.010245', '19', 'Arnés Paracaidista 3argollas Kl-8000 T/m-l, Xl Certificado', 1, '[{\"added\": {}}]', 18, 1),
(31, '2024-05-26 02:01:12.415636', '20', 'Tornillo Volcanita Zincado 6 X 3 PuLG 1kg 300 Unidades', 1, '[{\"added\": {}}]', 18, 1),
(32, '2024-05-26 02:02:09.577307', '21', 'Anclaje De Techo Trx Yoga Ligas De Resistencia Box Techo', 1, '[{\"added\": {}}]', 18, 1),
(33, '2024-05-26 02:02:48.222885', '22', 'Pack 6 Scotchs Cinta Adhesiva 300 Mts X 48 Mm | Alta Calidad Color Amarillo Liso', 1, '[{\"added\": {}}]', 18, 1),
(34, '2024-05-26 02:03:45.210051', '23', 'Stanley huincha medir 8m', 1, '[{\"added\": {}}]', 18, 1),
(35, '2024-05-26 02:16:43.524810', '1', 'MARTILLO DE MANGO FIBRA VIDRIO 16 OZ STANLEY', 2, '[{\"changed\": {\"fields\": [\"Marca\", \"Codigo\"]}}]', 18, 1),
(36, '2024-05-26 02:17:25.206741', '2', 'Destornillador Punta Phillips #2x101mm', 2, '[{\"changed\": {\"fields\": [\"Marca\", \"Codigo\"]}}]', 18, 1),
(37, '2024-05-26 02:17:55.143453', '3', 'Set Llaves Juego Llaves Allen 30 Pcs Juego De Llaves Allen', 2, '[{\"changed\": {\"fields\": [\"Marca\", \"Codigo\"]}}]', 18, 1),
(38, '2024-05-26 02:18:15.040922', '4', 'Sierra Caladora Makita Djv180z 135mm 18v Sin Bateria Sin Car', 2, '[{\"changed\": {\"fields\": [\"Marca\", \"Codigo\"]}}]', 18, 1),
(39, '2024-05-26 02:18:31.599587', '5', 'Taladro Atornillador 12v + 50 Accesorios Black+Decker Cd121k50-b2c Color Naranja', 2, '[{\"changed\": {\"fields\": [\"Marca\", \"Codigo\"]}}]', 18, 1),
(40, '2024-05-26 02:18:58.324772', '6', 'Sierra Circular Black & Decker 1.400w Cs1004 Frecuencia 50', 2, '[{\"changed\": {\"fields\": [\"Marca\", \"Codigo\"]}}]', 18, 1),
(41, '2024-05-26 02:19:24.628962', '7', 'Lijadora Orbital Rectangular 320w Total Tools Tf1301826 Color Verde Frecuencia 50', 2, '[{\"changed\": {\"fields\": [\"Marca\", \"Codigo\"]}}]', 18, 1),
(42, '2024-05-26 02:19:44.498424', '8', 'Plancha Yeso Carton 1.20 X 2.40 X12.5 Mm', 2, '[{\"changed\": {\"fields\": [\"Marca\", \"Codigo\"]}}]', 18, 1),
(43, '2024-05-26 02:20:01.567671', '9', 'Cemento Polpaico', 2, '[{\"changed\": {\"fields\": [\"Marca\", \"Codigo\"]}}]', 18, 1),
(44, '2024-05-26 02:20:14.192862', '10', 'arena gruesa 25 kilos', 2, '[{\"changed\": {\"fields\": [\"Marca\", \"Codigo\"]}}]', 18, 1),
(45, '2024-05-26 02:20:30.231818', '11', 'Ladrillo Fiscal Comun Euromoda Precio X 10/un', 2, '[{\"changed\": {\"fields\": [\"Marca\", \"Codigo\"]}}]', 18, 1),
(46, '2024-05-26 02:20:49.630989', '12', 'Protector de Madera Cerestain Natural 1 gl', 2, '[{\"changed\": {\"fields\": [\"Marca\", \"Codigo\"]}}]', 18, 1),
(47, '2024-05-26 02:21:09.516126', '13', 'Soquina Constructor pintura latex antihongos color blanco', 2, '[{\"changed\": {\"fields\": [\"Marca\", \"Codigo\"]}}]', 18, 1),
(48, '2024-05-26 02:21:25.239228', '14', 'Barniz Marino Ceresita 1/4 Galón Pinturasonlinecl', 2, '[{\"changed\": {\"fields\": [\"Marca\", \"Codigo\"]}}]', 18, 1),
(49, '2024-05-26 02:21:55.167340', '15', 'Ceramica Metro White Brillante 10x20 Cm', 2, '[{\"changed\": {\"fields\": [\"Marca\", \"Codigo\"]}}]', 18, 1),
(50, '2024-05-26 02:22:09.447422', '16', 'Casco Masprot Blanco Con Arnes Cinta Y Roller', 2, '[{\"changed\": {\"fields\": [\"Marca\", \"Codigo\"]}}]', 18, 1),
(51, '2024-05-26 02:22:23.500330', '17', 'Guante Multipropósito Flex 66 Palma Pu - Pack 12 Pare', 2, '[{\"changed\": {\"fields\": [\"Marca\", \"Codigo\"]}}]', 18, 1),
(52, '2024-05-26 02:22:44.241213', '18', 'Lente Blackbull B3000 Pro - Claro', 2, '[{\"changed\": {\"fields\": [\"Marca\", \"Codigo\"]}}]', 18, 1),
(53, '2024-05-26 02:23:07.533943', '19', 'Arnés Paracaidista 3argollas Kl-8000 T/m-l, Xl Certificado', 2, '[{\"changed\": {\"fields\": [\"Marca\", \"Codigo\"]}}]', 18, 1),
(54, '2024-05-26 02:23:21.585019', '20', 'Tornillo Volcanita Zincado 6 X 3 PuLG 1kg 300 Unidades', 2, '[{\"changed\": {\"fields\": [\"Marca\", \"Codigo\"]}}]', 18, 1),
(55, '2024-05-26 02:23:45.727904', '21', 'Anclaje De Techo Trx Yoga Ligas De Resistencia Box Techo', 2, '[{\"changed\": {\"fields\": [\"Marca\", \"Codigo\"]}}]', 18, 1),
(56, '2024-05-26 02:24:02.062798', '22', 'Pack 6 Scotchs Cinta Adhesiva 300 Mts X 48 Mm | Alta Calidad Color Amarillo Liso', 2, '[{\"changed\": {\"fields\": [\"Marca\", \"Codigo\"]}}]', 18, 1),
(57, '2024-05-26 02:24:16.633518', '23', 'Stanley huincha medir 8m', 2, '[{\"changed\": {\"fields\": [\"Marca\", \"Codigo\"]}}]', 18, 1),
(58, '2024-05-26 02:52:30.175271', '24', 'a', 1, '[{\"added\": {}}]', 18, 1),
(59, '2024-05-26 02:58:17.800860', '24', 'a', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(60, '2024-05-26 03:17:01.974194', '25', 'b', 1, '[{\"added\": {}}]', 18, 1),
(61, '2024-05-26 03:22:50.845434', '25', 'b', 3, '', 18, 1),
(62, '2024-05-26 03:22:50.847886', '24', 'a', 3, '', 18, 1),
(63, '2024-05-26 03:31:44.333154', '23', 'Stanley huincha medir 8m', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(64, '2024-05-26 03:31:49.989217', '22', 'Pack 6 Scotchs Cinta Adhesiva 300 Mts X 48 Mm | Alta Calidad Color Amarillo Liso', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(65, '2024-05-26 03:31:57.326339', '21', 'Anclaje De Techo Trx Yoga Ligas De Resistencia Box Techo', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(66, '2024-05-26 03:32:03.056034', '20', 'Tornillo Volcanita Zincado 6 X 3 PuLG 1kg 300 Unidades', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(67, '2024-05-26 03:32:09.240069', '19', 'Arnés Paracaidista 3argollas Kl-8000 T/m-l, Xl Certificado', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(68, '2024-05-26 03:32:15.959103', '18', 'Lente Blackbull B3000 Pro - Claro', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(69, '2024-05-26 03:32:32.682149', '17', 'Guante Multipropósito Flex 66 Palma Pu - Pack 12 Pare', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(70, '2024-05-26 03:32:41.044035', '16', 'Casco Masprot Blanco Con Arnes Cinta Y Roller', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(71, '2024-05-26 03:32:47.848859', '15', 'Ceramica Metro White Brillante 10x20 Cm', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(72, '2024-05-26 03:32:54.533419', '14', 'Barniz Marino Ceresita 1/4 Galón Pinturasonlinecl', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(73, '2024-05-26 03:33:02.206599', '13', 'Soquina Constructor pintura latex antihongos color blanco', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(74, '2024-05-26 03:33:09.062578', '12', 'Protector de Madera Cerestain Natural 1 gl', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(75, '2024-05-26 03:33:15.415272', '11', 'Ladrillo Fiscal Comun Euromoda Precio X 10/un', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(76, '2024-05-26 03:33:22.320805', '10', 'arena gruesa 25 kilos', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(77, '2024-05-26 03:33:28.997070', '9', 'Cemento Polpaico', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(78, '2024-05-26 03:33:35.837538', '8', 'Plancha Yeso Carton 1.20 X 2.40 X12.5 Mm', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(79, '2024-05-26 03:33:42.640378', '7', 'Lijadora Orbital Rectangular 320w Total Tools Tf1301826 Color Verde Frecuencia 50', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(80, '2024-05-26 03:33:50.141794', '6', 'Sierra Circular Black & Decker 1.400w Cs1004 Frecuencia 50', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(81, '2024-05-26 03:33:59.534376', '5', 'Taladro Atornillador 12v + 50 Accesorios Black+Decker Cd121k50-b2c Color Naranja', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(82, '2024-05-26 03:34:07.994198', '4', 'Sierra Caladora Makita Djv180z 135mm 18v Sin Bateria Sin Car', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(83, '2024-05-26 03:34:16.777040', '3', 'Set Llaves Juego Llaves Allen 30 Pcs Juego De Llaves Allen', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(84, '2024-05-26 03:34:22.075182', '2', 'Destornillador Punta Phillips #2x101mm', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(85, '2024-05-26 03:34:29.236240', '1', 'MARTILLO DE MANGO FIBRA VIDRIO 16 OZ STANLEY', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(86, '2024-05-26 03:39:05.715151', '23', 'Stanley huincha medir 8m', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(87, '2024-05-26 03:40:57.481882', '22', 'Pack 6 Scotchs Cinta Adhesiva 300 Mts X 48 Mm | Alta Calidad Color Amarillo Liso', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(88, '2024-05-26 03:41:53.364511', '21', 'Anclaje De Techo Trx Yoga Ligas De Resistencia Box Techo', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(89, '2024-05-26 03:42:57.588436', '20', 'Tornillo Volcanita Zincado 6 X 3 PuLG 1kg 300 Unidades', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(90, '2024-05-26 03:43:25.907758', '19', 'Arnés Paracaidista 3argollas Kl-8000 T/m-l, Xl Certificado', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(91, '2024-05-26 03:43:57.969878', '18', 'Lente Blackbull B3000 Pro - Claro', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(92, '2024-05-26 03:44:30.402950', '17', 'Guante Multipropósito Flex 66 Palma Pu - Pack 12 Pare', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(93, '2024-05-26 03:44:48.497138', '16', 'Casco Masprot Blanco Con Arnes Cinta Y Roller', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(94, '2024-05-26 03:45:09.145860', '15', 'Ceramica Metro White Brillante 10x20 Cm', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(95, '2024-05-26 03:45:29.748421', '14', 'Barniz Marino Ceresita 1/4 Galón Pinturasonlinecl', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(96, '2024-05-26 03:46:01.011983', '13', 'Soquina Constructor pintura latex antihongos color blanco', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(97, '2024-05-26 03:46:38.711636', '12', 'Protector de Madera Cerestain Natural 1 gl', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(98, '2024-05-26 03:46:58.789592', '11', 'Ladrillo Fiscal Comun Euromoda Precio X 10/un', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(99, '2024-05-26 03:48:12.150747', '10', 'arena gruesa 25 kilos', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(100, '2024-05-26 03:48:33.510229', '9', 'Cemento Polpaico', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(101, '2024-05-26 03:49:01.920755', '8', 'Plancha Yeso Carton 1.20 X 2.40 X12.5 Mm', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(102, '2024-05-26 03:49:26.933967', '7', 'Lijadora Orbital Rectangular 320w Total Tools Tf1301826 Color Verde Frecuencia 50', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(103, '2024-05-26 03:51:12.961777', '6', 'Sierra Circular Black & Decker 1.400w Cs1004 Frecuencia 50', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(104, '2024-05-26 03:51:51.010526', '5', 'Taladro Atornillador 12v + 50 Accesorios Black+Decker Cd121k50-b2c Color Naranja', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(105, '2024-05-26 03:52:23.863214', '4', 'Sierra Caladora Makita Djv180z 135mm 18v Sin Bateria Sin Car', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(106, '2024-05-26 03:53:34.282344', '3', 'Set Llaves Juego Llaves Allen 30 Pcs Juego De Llaves Allen', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(107, '2024-05-26 03:54:18.699184', '2', 'Destornillador Punta Phillips #2x101mm', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(108, '2024-05-26 03:54:45.585761', '1', 'MARTILLO DE MANGO FIBRA VIDRIO 16 OZ STANLEY', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 18, 1),
(109, '2024-05-26 04:34:52.548720', '1', 'Administrador', 1, '[{\"added\": {}}]', 12, 1),
(110, '2024-05-26 04:35:47.217272', '1', ' ', 1, '[{\"added\": {}}]', 22, 1),
(111, '2024-05-26 21:30:13.612484', '3', 'javier Cuevas', 3, '', 22, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(23, 'home', 'carrito'),
(7, 'home', 'comuna'),
(8, 'home', 'estado'),
(9, 'home', 'genero'),
(10, 'home', 'metadata'),
(17, 'home', 'ordendecompra'),
(19, 'home', 'ordendecompradetalle'),
(11, 'home', 'pais'),
(12, 'home', 'perfiles'),
(18, 'home', 'producto'),
(13, 'home', 'productocategoria'),
(20, 'home', 'productofotos'),
(21, 'home', 'productorecomendados'),
(14, 'home', 'proveedor'),
(15, 'home', 'region'),
(16, 'home', 'slide'),
(22, 'home', 'usersmetadata'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-05-26 00:36:16.992677'),
(2, 'auth', '0001_initial', '2024-05-26 00:36:17.404301'),
(3, 'admin', '0001_initial', '2024-05-26 00:36:17.525513'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-05-26 00:36:17.531513'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-05-26 00:36:17.537517'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-05-26 00:36:17.598008'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-05-26 00:36:17.635323'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-05-26 00:36:17.653318'),
(9, 'auth', '0004_alter_user_username_opts', '2024-05-26 00:36:17.659313'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-05-26 00:36:17.719135'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-05-26 00:36:17.721131'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-05-26 00:36:17.726134'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-05-26 00:36:17.740134'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-05-26 00:36:17.752137'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-05-26 00:36:17.767141'),
(16, 'auth', '0011_update_proxy_permissions', '2024-05-26 00:36:17.774141'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-05-26 00:36:17.788138'),
(18, 'home', '0001_initial', '2024-05-26 00:36:18.871998'),
(19, 'sessions', '0001_initial', '2024-05-26 00:36:18.902999'),
(20, 'home', '0002_producto_codigo_producto_marca', '2024-05-26 02:12:08.389086'),
(21, 'home', '0003_alter_productofotos_foto', '2024-05-26 03:12:00.959399'),
(22, 'home', '0004_alter_productofotos_foto', '2024-05-26 03:12:41.703068');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('zgmk2c4qq5o68sk3tfonf04oie74mc9n', '.eJxVjjsOwjAQRO_iGln-7OKYkp4zWGt7TcInkWKnQtydBKWAdt7M07xEoKX1Yak8hyGLk0Bx-M0ipTuPG8g3Gq-TTNPY5iHKrSJ3WuVlyvw4790_QU-1X9epA4NwtN6iycawJw_kORUNLqaitI3oOgvaKHQFoCNHRaNVyinlHa_STVfDkxtlavR9i-8PxQ4-YQ:1sBlUB:IlFHPTIpRohRe97XuQ_RPGMTi08Z2elBBKbY7lZsgqA', '2024-06-11 01:18:43.660412');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id`, `nombre`) VALUES
(1, 'Activo'),
(2, 'No activo'),
(3, 'Ingresado'),
(4, 'Finalizado'),
(5, 'Cancelado'),
(6, 'En curso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id`, `nombre`) VALUES
(1, 'Masculino'),
(2, 'Femenino'),
(3, 'No informado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metadata`
--

CREATE TABLE `metadata` (
  `id` bigint(20) NOT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `description` longtext NOT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `metadata`
--

INSERT INTO `metadata` (`id`, `keyword`, `nombre`, `description`, `correo`, `telefono`) VALUES
(1, 'tienda, ecommerce, productos', 'Ferremas', 'Tienda desarrollada en Django', 'jav.cuevasp@duocuc.cl', '+56964470787');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_de_compra`
--

CREATE TABLE `orden_de_compra` (
  `id` bigint(20) NOT NULL,
  `token_ws` varchar(255) NOT NULL,
  `tarjeta` varchar(10) NOT NULL,
  `fecha_transbank` varchar(100) NOT NULL,
  `estado_transbank` varchar(100) NOT NULL,
  `suma` int(10) UNSIGNED NOT NULL CHECK (`suma` >= 0),
  `direccion` longtext NOT NULL,
  `observaciones` longtext NOT NULL,
  `fecha` date DEFAULT NULL,
  `comuna_id` int(11) NOT NULL,
  `estado_id` int(11) NOT NULL,
  `users_metadata_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `orden_de_compra`
--

INSERT INTO `orden_de_compra` (`id`, `token_ws`, `tarjeta`, `fecha_transbank`, `estado_transbank`, `suma`, `direccion`, `observaciones`, `fecha`, `comuna_id`, `estado_id`, `users_metadata_id`) VALUES
(1, '01abb4cda3a748a5a56bc4984a292d3f338db00f265b7bfde4dfd67061453135', '6623', '2024-05-27T01:32:57.444Z', 'AUTHORIZED', 37960, 'Calle falsa 123 ', '', '2024-05-26', 1, 6, 5),
(2, '01ab2d256dddd90e3517b092397618fa08d6a7246dfe91cc17d379d831f5903a', '6623', '2024-05-27T13:59:05.838Z', 'AUTHORIZED', 31960, 'Calle falsa 123 ', '', '2024-05-27', 1, 6, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_de_compra_detalle`
--

CREATE TABLE `orden_de_compra_detalle` (
  `id` bigint(20) NOT NULL,
  `cantidad` int(10) UNSIGNED NOT NULL CHECK (`cantidad` >= 0),
  `orden_de_compra_id` bigint(20) NOT NULL,
  `producto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `orden_de_compra_detalle`
--

INSERT INTO `orden_de_compra_detalle` (`id`, `cantidad`, `orden_de_compra_id`, `producto_id`) VALUES
(1, 1, 1, 23),
(2, 1, 1, 22),
(3, 2, 1, 21),
(4, 3, 2, 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id`, `nombre`) VALUES
(1, 'Chile'),
(2, 'Argentina'),
(3, 'México'),
(4, 'Perú'),
(5, 'Haití'),
(6, 'Venezuela'),
(7, 'Bolivia'),
(8, 'Paraguay'),
(9, 'Uruguay'),
(10, 'Ecuador'),
(11, 'Colombia'),
(12, 'Brasil'),
(13, 'Cuba'),
(14, 'España'),
(15, 'El Salvador'),
(16, 'Nicaragua'),
(17, 'Panamá'),
(18, 'Estados Unidos'),
(19, 'Honduras'),
(20, 'Guatemala');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`id`, `nombre`) VALUES
(1, 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `slug` varchar(50) NOT NULL,
  `descripcion` longtext NOT NULL,
  `foto` varchar(100) NOT NULL,
  `fecha` date NOT NULL,
  `precio` int(10) UNSIGNED NOT NULL CHECK (`precio` >= 0),
  `precio_antes` int(10) UNSIGNED NOT NULL CHECK (`precio_antes` >= 0),
  `sku` varchar(100) DEFAULT NULL,
  `stock` int(10) UNSIGNED NOT NULL CHECK (`stock` >= 0),
  `estado_id` int(11) NOT NULL,
  `producto_categoria_id` int(11) NOT NULL,
  `proveedor_id` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `marca` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre`, `slug`, `descripcion`, `foto`, `fecha`, `precio`, `precio_antes`, `sku`, `stock`, `estado_id`, `producto_categoria_id`, `proveedor_id`, `codigo`, `marca`) VALUES
(1, 'MARTILLO DE MANGO FIBRA VIDRIO 16 OZ STANLEY', 'martillo-de-mango-fibra-vidrio-16-oz-stanley', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras efficitur magna et mattis euismod. Sed quis dui augue. Suspendisse vel semper lorem, nec maximus justo. Etiam at pellentesque metus. Pellentesque erat lorem, egestas a ex in, viverra tincidunt nibh. Vivamus porttitor interdum purus quis congue.', 'producto/martilo.jpeg', '2024-05-25', 13990, 15990, '1', 10, 1, 1, 2, 'MAR-00001', 'STANLEY'),
(2, 'Destornillador Punta Phillips #2x101mm', 'destornillador-punta-phillips-2x101mm', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras efficitur magna et mattis euismod. Sed quis dui augue. Suspendisse vel semper lorem, nec maximus justo. Etiam at pellentesque metus. Pellentesque erat lorem, egestas a ex in, viverra tincidunt nibh. Vivamus porttitor interdum purus quis congue.', 'producto/desatr.jpg', '2024-05-25', 3990, 4990, '2', 12, 1, 1, 4, 'DES-00001', 'STANLEY'),
(3, 'Set Llaves Juego Llaves Allen 30 Pcs Juego De Llaves Allen', 'set-llaves-juego-llaves-allen-30-pcs-juego-de-llav', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras efficitur magna et mattis euismod. Sed quis dui augue. Suspendisse vel semper lorem, nec maximus justo. Etiam at pellentesque metus. Pellentesque erat lorem, egestas a ex in, viverra tincidunt nibh. Vivamus porttitor interdum purus quis congue.', 'producto/allen.jpg', '2024-05-25', 5990, 6990, '3', 1, 1, 1, 4, 'ALL-00001', 'STANLEY'),
(4, 'Sierra Caladora Makita Djv180z 135mm 18v Sin Bateria Sin Car', 'sierra-caladora-makita-djv180z-135mm-18v-sin-bater', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras efficitur magna et mattis euismod. Sed quis dui augue. Suspendisse vel semper lorem, nec maximus justo. Etiam at pellentesque metus. Pellentesque erat lorem, egestas a ex in, viverra tincidunt nibh. Vivamus porttitor interdum purus quis congue.', 'producto/caladora.jpg', '2024-05-25', 59990, 79990, '4', 3, 1, 1, 4, 'SIE-00001', 'Makita'),
(5, 'Taladro Atornillador 12v + 50 Accesorios Black+Decker Cd121k50-b2c Color Naranja', 'taladro-atornillador-12v-50-accesorios-blackdecker', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras efficitur magna et mattis euismod. Sed quis dui augue. Suspendisse vel semper lorem, nec maximus justo. Etiam at pellentesque metus. Pellentesque erat lorem, egestas a ex in, viverra tincidunt nibh. Vivamus porttitor interdum purus quis congue.', 'producto/taladro.jpeg', '2024-05-25', 23990, 27990, '5', 5, 1, 1, 4, 'TAL-00001', 'Black+Decker'),
(6, 'Sierra Circular Black & Decker 1.400w Cs1004 Frecuencia 50', 'sierra-circular-black-decker-1400w-cs1004-frecuenc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras efficitur magna et mattis euismod. Sed quis dui augue. Suspendisse vel semper lorem, nec maximus justo. Etiam at pellentesque metus. Pellentesque erat lorem, egestas a ex in, viverra tincidunt nibh. Vivamus porttitor interdum purus quis congue.', 'producto/sierra.jpeg', '2024-05-25', 42990, 59990, '1', 1, 1, 1, 4, 'CIR-00001', 'Black+Decker'),
(7, 'Lijadora Orbital Rectangular 320w Total Tools Tf1301826 Color Verde Frecuencia 50', 'lijadora-orbital-rectangular-320w-total-tools-tf13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras efficitur magna et mattis euismod. Sed quis dui augue. Suspendisse vel semper lorem, nec maximus justo. Etiam at pellentesque metus. Pellentesque erat lorem, egestas a ex in, viverra tincidunt nibh. Vivamus porttitor interdum purus quis congue.', 'producto/lijadora.jpg', '2024-05-25', 59990, 69990, '7', 6, 1, 1, 4, 'LIJ-00001', 'Total Tools'),
(8, 'Plancha Yeso Carton 1.20 X 2.40 X12.5 Mm', 'plancha-yeso-carton-120-x-240-x125-mm', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras efficitur magna et mattis euismod. Sed quis dui augue. Suspendisse vel semper lorem, nec maximus justo. Etiam at pellentesque metus. Pellentesque erat lorem, egestas a ex in, viverra tincidunt nibh. Vivamus porttitor interdum purus quis congue.', 'producto/yeso.jpg', '2024-05-25', 9990, 11990, '8', 13, 1, 1, 4, 'YES-00001', 'YESO'),
(9, 'Cemento Polpaico', 'cemento-polpaico', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras efficitur magna et mattis euismod. Sed quis dui augue. Suspendisse vel semper lorem, nec maximus justo. Etiam at pellentesque metus. Pellentesque erat lorem, egestas a ex in, viverra tincidunt nibh. Vivamus porttitor interdum purus quis congue.', 'producto/cemento.jpeg', '2024-05-25', 5990, 6990, '9', 10, 1, 2, 2, 'CEM-00001', 'Polpaico'),
(10, 'arena gruesa 25 kilos', 'arena-gruesa-25-kilos', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras efficitur magna et mattis euismod. Sed quis dui augue. Suspendisse vel semper lorem, nec maximus justo. Etiam at pellentesque metus. Pellentesque erat lorem, egestas a ex in, viverra tincidunt nibh. Vivamus porttitor interdum purus quis congue.', 'producto/arena.png', '2024-05-25', 0, 0, '10', 8, 1, 2, 2, 'ARE-00001', 'Arena'),
(11, 'Ladrillo Fiscal Comun Euromoda Precio X 10/un', 'ladrillo-fiscal-comun-euromoda-precio-x-10un', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras efficitur magna et mattis euismod. Sed quis dui augue. Suspendisse vel semper lorem, nec maximus justo. Etiam at pellentesque metus. Pellentesque erat lorem, egestas a ex in, viverra tincidunt nibh. Vivamus porttitor interdum purus quis congue.', 'producto/ladrillo.jpg', '2024-05-25', 5990, 10990, '11', 13, 1, 2, 2, 'LAD-00001', 'Euromoda'),
(12, 'Protector de Madera Cerestain Natural 1 gl', 'protector-de-madera-cerestain-natural-1-gl', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras efficitur magna et mattis euismod. Sed quis dui augue. Suspendisse vel semper lorem, nec maximus justo. Etiam at pellentesque metus. Pellentesque erat lorem, egestas a ex in, viverra tincidunt nibh. Vivamus porttitor interdum purus quis congue.', 'producto/terminaciones.jpeg', '2024-05-25', 30990, 35990, '12', 4, 1, 2, 2, 'PRO-00001', 'Cerestain'),
(13, 'Soquina Constructor pintura latex antihongos color blanco', 'soquina-constructor-pintura-latex-antihongos-color', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras efficitur magna et mattis euismod. Sed quis dui augue. Suspendisse vel semper lorem, nec maximus justo. Etiam at pellentesque metus. Pellentesque erat lorem, egestas a ex in, viverra tincidunt nibh. Vivamus porttitor interdum purus quis congue.', 'producto/pintura.jpeg', '2024-05-25', 9990, 11990, '13', 8, 1, 2, 2, 'PIN-00001', 'Soquina'),
(14, 'Barniz Marino Ceresita 1/4 Galón Pinturasonlinecl', 'barniz-marino-ceresita-14-galon-pinturasonlinecl', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras efficitur magna et mattis euismod. Sed quis dui augue. Suspendisse vel semper lorem, nec maximus justo. Etiam at pellentesque metus. Pellentesque erat lorem, egestas a ex in, viverra tincidunt nibh. Vivamus porttitor interdum purus quis congue.', 'producto/barniz.jpeg', '2024-05-25', 8990, 10990, '14', 15, 1, 2, 2, 'BAR-00001', 'Ceresita'),
(15, 'Ceramica Metro White Brillante 10x20 Cm', 'ceramica-metro-white-brillante-10x20-cm', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras efficitur magna et mattis euismod. Sed quis dui augue. Suspendisse vel semper lorem, nec maximus justo. Etiam at pellentesque metus. Pellentesque erat lorem, egestas a ex in, viverra tincidunt nibh. Vivamus porttitor interdum purus quis congue.', 'producto/ceramica.jpeg', '2024-05-25', 15990, 20990, '15', 14, 1, 2, 2, 'CER-00001', 'Metro'),
(16, 'Casco Masprot Blanco Con Arnes Cinta Y Roller', 'casco-masprot-blanco-con-arnes-cinta-y-roller', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras efficitur magna et mattis euismod. Sed quis dui augue. Suspendisse vel semper lorem, nec maximus justo. Etiam at pellentesque metus. Pellentesque erat lorem, egestas a ex in, viverra tincidunt nibh. Vivamus porttitor interdum purus quis congue.', 'producto/casco.jpeg', '2024-05-25', 7990, 10990, '16', 4, 1, 3, 3, 'CAS-00001', 'Masprot'),
(17, 'Guante Multipropósito Flex 66 Palma Pu - Pack 12 Pare', 'guante-multiproposito-flex-66-palma-pu-pack-12-par', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras efficitur magna et mattis euismod. Sed quis dui augue. Suspendisse vel semper lorem, nec maximus justo. Etiam at pellentesque metus. Pellentesque erat lorem, egestas a ex in, viverra tincidunt nibh. Vivamus porttitor interdum purus quis congue.', 'producto/guante.jpeg', '2024-05-25', 7990, 10990, '16', 14, 1, 3, 3, 'GUA-00001', 'Flex'),
(18, 'Lente Blackbull B3000 Pro - Claro', 'lente-blackbull-b3000-pro-claro', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras efficitur magna et mattis euismod. Sed quis dui augue. Suspendisse vel semper lorem, nec maximus justo. Etiam at pellentesque metus. Pellentesque erat lorem, egestas a ex in, viverra tincidunt nibh. Vivamus porttitor interdum purus quis congue.', 'producto/lente.jpeg', '2024-05-25', 2990, 3990, '15', 16, 1, 3, 2, 'LEN-00001', 'Blackbull'),
(19, 'Arnés Paracaidista 3argollas Kl-8000 T/m-l, Xl Certificado', 'arnes-paracaidista-3argollas-kl-8000-tm-l-xl-certi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras efficitur magna et mattis euismod. Sed quis dui augue. Suspendisse vel semper lorem, nec maximus justo. Etiam at pellentesque metus. Pellentesque erat lorem, egestas a ex in, viverra tincidunt nibh. Vivamus porttitor interdum purus quis congue.', 'producto/arnes.jpg', '2024-05-25', 19990, 25990, '17', 7, 1, 3, 3, 'ARN-00001', 'Paracaidista'),
(20, 'Tornillo Volcanita Zincado 6 X 3 PuLG 1kg 300 Unidades', 'tornillo-volcanita-zincado-6-x-3-pulg-1kg-300-unid', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras efficitur magna et mattis euismod. Sed quis dui augue. Suspendisse vel semper lorem, nec maximus justo. Etiam at pellentesque metus. Pellentesque erat lorem, egestas a ex in, viverra tincidunt nibh. Vivamus porttitor interdum purus quis congue.', 'producto/tornillo.jpeg', '2024-05-25', 2990, 3990, '18', 30, 1, 4, 2, 'TOR-00001', 'PuLG'),
(21, 'Anclaje De Techo Trx Yoga Ligas De Resistencia Box Techo', 'anclaje-de-techo-trx-yoga-ligas-de-resistencia-box', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras efficitur magna et mattis euismod. Sed quis dui augue. Suspendisse vel semper lorem, nec maximus justo. Etiam at pellentesque metus. Pellentesque erat lorem, egestas a ex in, viverra tincidunt nibh. Vivamus porttitor interdum purus quis congue.', 'producto/anclaje.jpeg', '2024-05-25', 7990, 10990, '19', 12, 1, 4, 2, 'ANC-00001', 'Trx'),
(22, 'Pack 6 Scotchs Cinta Adhesiva 300 Mts X 48 Mm | Alta Calidad Color Amarillo Liso', 'pack-6-scotchs-cinta-adhesiva-300-mts-x-48-mm-alta', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras efficitur magna et mattis euismod. Sed quis dui augue. Suspendisse vel semper lorem, nec maximus justo. Etiam at pellentesque metus. Pellentesque erat lorem, egestas a ex in, viverra tincidunt nibh. Vivamus porttitor interdum purus quis congue.', 'producto/scotch.jpeg', '2024-05-25', 12990, 13990, '20', 13, 1, 5, 2, 'SCO-00001', 'Scotchs'),
(23, 'Stanley huincha medir 8m', 'stanley-huincha-medir-8m', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras efficitur magna et mattis euismod. Sed quis dui augue. Suspendisse vel semper lorem, nec maximus justo. Etiam at pellentesque metus. Pellentesque erat lorem, egestas a ex in, viverra tincidunt nibh. Vivamus porttitor interdum purus quis congue.', 'producto/huincha.jpg', '2024-05-25', 8990, 12990, '23', 5, 1, 6, 4, 'HUI-00001', 'Stanley');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_categoria`
--

CREATE TABLE `producto_categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `slug` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto_categoria`
--

INSERT INTO `producto_categoria` (`id`, `nombre`, `slug`) VALUES
(1, 'Herramientas Manuales', 'herramientas-manuales'),
(2, 'Materiales Básicos', 'materiales-basicos'),
(3, 'Equipos de Seguridad', 'equipos-de-seguridad'),
(4, 'Tornillos y Anclajes', 'tornillos-y-anclajes'),
(5, 'Fijaciones y Adhesivos', 'fijaciones-y-adhesivos'),
(6, 'Equipos de Medición', 'equipos-de-medicion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_fotos`
--

CREATE TABLE `producto_fotos` (
  `id` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `producto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_recomendados`
--

CREATE TABLE `producto_recomendados` (
  `id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `slug` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id`, `nombre`, `slug`) VALUES
(2, 'Proveedor Materiales Básicos', 'proveedor-materiales-basicos'),
(3, 'Proveedor Equipos de Seguridad', 'proveedor-equipos-de-seguridad'),
(4, 'Proveedor Herramientas Manuales', 'proveedor-herramientas-manuales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `region`
--

CREATE TABLE `region` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `region`
--

INSERT INTO `region` (`id`, `nombre`) VALUES
(1, 'Tarapacá'),
(2, 'Antofagasta'),
(3, 'Atacama'),
(4, 'Coquimbo'),
(5, 'Valparaíso'),
(6, 'Bernardo OHiggins'),
(7, 'Maule'),
(8, 'Biobío'),
(9, 'Araucanía'),
(10, 'Los Lagos'),
(11, 'Aysén'),
(12, 'Magallanes y Antártica Chilena'),
(13, 'Metropolitana de Santiago'),
(14, 'Los Ríos'),
(15, 'Arica y Parinacota');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `link` varchar(100) DEFAULT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `target` int(10) UNSIGNED NOT NULL CHECK (`target` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_metadata`
--

CREATE TABLE `users_metadata` (
  `id` int(11) NOT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `comuna_id` int(11) NOT NULL,
  `estado_id` int(11) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `pais_id` int(11) NOT NULL,
  `perfiles_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users_metadata`
--

INSERT INTO `users_metadata` (`id`, `slug`, `correo`, `telefono`, `direccion`, `comuna_id`, `estado_id`, `genero_id`, `pais_id`, `perfiles_id`, `user_id`) VALUES
(1, 'Javier-Cuevas', 'jav.cuevasp@duocuc.cl', '+56935462134', 'Calle falsa 123', 302, 1, 1, 1, 1, 1),
(4, 'javier-cuevas', 'javitops.2003@gmail.com', '', '', 1, 2, 3, 1, 1, 4),
(5, 'christobal-cuadra', 'chriscuadra@gmail.com', '', '', 1, 2, 3, 1, 1, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carrito_producto_id_5365637e_fk_producto_id` (`producto_id`),
  ADD KEY `carrito_users_metadata_id_6e3578af_fk_users_metadata_id` (`users_metadata_id`);

--
-- Indices de la tabla `comuna`
--
ALTER TABLE `comuna`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comuna_region_id_1dd456cb_fk_region_id` (`region_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `metadata`
--
ALTER TABLE `metadata`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orden_de_compra`
--
ALTER TABLE `orden_de_compra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orden_de_compra_users_metadata_id_5492f09e_fk_users_metadata_id` (`users_metadata_id`),
  ADD KEY `orden_de_compra_comuna_id_8bc6ea3b_fk_comuna_id` (`comuna_id`),
  ADD KEY `orden_de_compra_estado_id_34779aaa_fk_estado_id` (`estado_id`);

--
-- Indices de la tabla `orden_de_compra_detalle`
--
ALTER TABLE `orden_de_compra_detalle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orden_de_compra_deta_orden_de_compra_id_4e2559b8_fk_orden_de_` (`orden_de_compra_id`),
  ADD KEY `orden_de_compra_detalle_producto_id_4a0f1756_fk_producto_id` (`producto_id`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_estado_id_c139ee6c_fk_estado_id` (`estado_id`),
  ADD KEY `producto_producto_categoria_id_c3791f45_fk_producto_categoria_id` (`producto_categoria_id`),
  ADD KEY `producto_proveedor_id_a09ce3bf_fk_proveedor_id` (`proveedor_id`),
  ADD KEY `producto_slug_6d26ea98` (`slug`);

--
-- Indices de la tabla `producto_categoria`
--
ALTER TABLE `producto_categoria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_categoria_slug_e49ca7a6` (`slug`);

--
-- Indices de la tabla `producto_fotos`
--
ALTER TABLE `producto_fotos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_fotos_producto_id_298f1dbc_fk_producto_id` (`producto_id`);

--
-- Indices de la tabla `producto_recomendados`
--
ALTER TABLE `producto_recomendados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_recomendados_producto_id_1fb3c081_fk_producto_id` (`producto_id`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proveedor_slug_d3faa75a` (`slug`);

--
-- Indices de la tabla `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users_metadata`
--
ALTER TABLE `users_metadata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_metadata_comuna_id_ae790436_fk_comuna_id` (`comuna_id`),
  ADD KEY `users_metadata_estado_id_b671e63b_fk_estado_id` (`estado_id`),
  ADD KEY `users_metadata_genero_id_aaaf1d25_fk_genero_id` (`genero_id`),
  ADD KEY `users_metadata_pais_id_340c301e_fk_pais_id` (`pais_id`),
  ADD KEY `users_metadata_perfiles_id_8ebebc71_fk_perfiles_id` (`perfiles_id`),
  ADD KEY `users_metadata_user_id_d31a5311_fk_auth_user_id` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `comuna`
--
ALTER TABLE `comuna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `metadata`
--
ALTER TABLE `metadata`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `orden_de_compra`
--
ALTER TABLE `orden_de_compra`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `orden_de_compra_detalle`
--
ALTER TABLE `orden_de_compra_detalle`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `producto_categoria`
--
ALTER TABLE `producto_categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `producto_fotos`
--
ALTER TABLE `producto_fotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto_recomendados`
--
ALTER TABLE `producto_recomendados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `region`
--
ALTER TABLE `region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users_metadata`
--
ALTER TABLE `users_metadata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `carrito_producto_id_5365637e_fk_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`),
  ADD CONSTRAINT `carrito_users_metadata_id_6e3578af_fk_users_metadata_id` FOREIGN KEY (`users_metadata_id`) REFERENCES `users_metadata` (`id`);

--
-- Filtros para la tabla `comuna`
--
ALTER TABLE `comuna`
  ADD CONSTRAINT `comuna_region_id_1dd456cb_fk_region_id` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `orden_de_compra`
--
ALTER TABLE `orden_de_compra`
  ADD CONSTRAINT `orden_de_compra_comuna_id_8bc6ea3b_fk_comuna_id` FOREIGN KEY (`comuna_id`) REFERENCES `comuna` (`id`),
  ADD CONSTRAINT `orden_de_compra_estado_id_34779aaa_fk_estado_id` FOREIGN KEY (`estado_id`) REFERENCES `estado` (`id`),
  ADD CONSTRAINT `orden_de_compra_users_metadata_id_5492f09e_fk_users_metadata_id` FOREIGN KEY (`users_metadata_id`) REFERENCES `users_metadata` (`id`);

--
-- Filtros para la tabla `orden_de_compra_detalle`
--
ALTER TABLE `orden_de_compra_detalle`
  ADD CONSTRAINT `orden_de_compra_deta_orden_de_compra_id_4e2559b8_fk_orden_de_` FOREIGN KEY (`orden_de_compra_id`) REFERENCES `orden_de_compra` (`id`),
  ADD CONSTRAINT `orden_de_compra_detalle_producto_id_4a0f1756_fk_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_estado_id_c139ee6c_fk_estado_id` FOREIGN KEY (`estado_id`) REFERENCES `estado` (`id`),
  ADD CONSTRAINT `producto_producto_categoria_id_c3791f45_fk_producto_categoria_id` FOREIGN KEY (`producto_categoria_id`) REFERENCES `producto_categoria` (`id`),
  ADD CONSTRAINT `producto_proveedor_id_a09ce3bf_fk_proveedor_id` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedor` (`id`);

--
-- Filtros para la tabla `producto_fotos`
--
ALTER TABLE `producto_fotos`
  ADD CONSTRAINT `producto_fotos_producto_id_298f1dbc_fk_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`);

--
-- Filtros para la tabla `producto_recomendados`
--
ALTER TABLE `producto_recomendados`
  ADD CONSTRAINT `producto_recomendados_producto_id_1fb3c081_fk_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`);

--
-- Filtros para la tabla `users_metadata`
--
ALTER TABLE `users_metadata`
  ADD CONSTRAINT `users_metadata_comuna_id_ae790436_fk_comuna_id` FOREIGN KEY (`comuna_id`) REFERENCES `comuna` (`id`),
  ADD CONSTRAINT `users_metadata_estado_id_b671e63b_fk_estado_id` FOREIGN KEY (`estado_id`) REFERENCES `estado` (`id`),
  ADD CONSTRAINT `users_metadata_genero_id_aaaf1d25_fk_genero_id` FOREIGN KEY (`genero_id`) REFERENCES `genero` (`id`),
  ADD CONSTRAINT `users_metadata_pais_id_340c301e_fk_pais_id` FOREIGN KEY (`pais_id`) REFERENCES `pais` (`id`),
  ADD CONSTRAINT `users_metadata_perfiles_id_8ebebc71_fk_perfiles_id` FOREIGN KEY (`perfiles_id`) REFERENCES `perfiles` (`id`),
  ADD CONSTRAINT `users_metadata_user_id_d31a5311_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
