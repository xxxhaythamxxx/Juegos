-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-05-2020 a las 22:51:44
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `juegos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

CREATE TABLE `juegos` (
  `nombre` varchar(40) NOT NULL,
  `consola` varchar(15) NOT NULL,
  `genero` varchar(20) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `persona` varchar(50) DEFAULT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  `portada` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `juegos`
--

INSERT INTO `juegos` (`nombre`, `consola`, `genero`, `estado`, `persona`, `descripcion`, `portada`) VALUES
('Final Fantasy Anthology', 'PSX', 'RPG', 0, '', 'CompilaciÃ³n de videojuegos de Squaresoft que trae Final Fantasy V y Final Fantasy VI', 'ffa'),
('Final Fantasy Chronicles', 'PSX', 'RPG', 0, NULL, 'CompilaciÃ³n de videojuegos de Squaresoft que trae Final Fantasy IV y Chrono Trigger.', 'ffc'),
('Final Fantasy IX', 'PSX', 'RPG', 0, NULL, 'Ãšltimo capÃ­tulo de la saga realizado para la consola Playstation. En esta ocasiÃ³n, Squaresoft preparÃ³ un capÃ­tulo con el que pretendÃ­a volver a los orÃ­genes de la saga, mostrÃ¡ndonos un mundo clÃ¡sico entre lo medieval y lo fantÃ¡stico.', 'ff9'),
('Final Fantasy Origins', 'PSX', 'RPG', 0, NULL, 'CompilaciÃ³n de videojuegos de Squaresoft que trae Final Fantasy I y Final Fantasy II.', 'ffo'),
('Final Fantasy VII', 'PSX', 'RPG', 0, NULL, 'Se trata del primer juego de la saga en presentar grÃ¡ficos tridimensionales. Sigue la historia de Cloud y su misiÃ³n de destruir la compaÃ±Ã­a Shinra evitando que drenen la Corriente Vital del planeta.', 'ff7'),
('Final Fantasy VIII', 'PSX', 'RPG', 0, NULL, 'Octava entrega de la serie que a diferencia de la anterior, usa personajes enteramente realistas dejando parcialmente de lado los elementos fantÃ¡sticos de la serie.', 'ff8'),
('Final Fantasy VIII GH', 'PSX', 'RPG', 0, NULL, 'Octava entrega de la serie que a diferencia de la anterior, usa personajes enteramente realistas dejando parcialmente de lado los elementos fantÃ¡sticos de la serie.', 'ff8gh'),
('Koudelka', 'PSX', 'RPG', 0, NULL, 'Ambientada en el aÃ±o 1898 en Gales, el juego sigue los acontecimientos que rodearon a un monasterio abandonado donde los tres protagonistas se ven envueltos en una enrevesada trama de hechizos y brujerÃ­a.', 'koudelka'),
('Metal Gear Solid', 'PSX', 'AcciÃ³n-aventura', 0, NULL, 'Metal Gear Solid sigue a Solid Snake, un soldado que se infiltra en una instalaciÃ³n de armas nucleares para neutralizar la amenaza terrorista de FOXHOUND, una unidad genÃ©ticamente mejorada de fuerzas especiales.', 'mgs'),
('Parasite Eve', 'PSX', 'RPG', 0, NULL, 'Es un videojuego de estrategia, terror y acciÃ³n, con algunos toques de rol. Nos presenta a Aya Brea, una policÃ­a que deberÃ¡ atravesar un infierno en Nueva York descubriendo una amenaza que podrÃ­a destruir el mundo.', 'pe'),
('Parasite Eve 2', 'PSX', 'RPG', 0, NULL, 'Es un juego de Survivor Horror que sigue los acontecimientos tres aÃ±os despuÃ©s de la primera entrega. Ahora Aya es una agente del FBI y deberÃ¡ acabar con la amenaza mitocondrial que ahora se expandiÃ³.', 'pe2'),
('Resident Evil 2', 'PSX', 'Terror', 0, NULL, 'La trama tiene lugar dos meses despuÃ©s de los acontecimientos del primer juego. Transcurre en Raccoon City, una ciudad cuya poblaciÃ³n en su mayorÃ­a ha sido transformada en zombi por el virus-T.', 're2'),
('Crash Bandicoot 2', 'PSX', 'Plataforma', 0, NULL, 'ContinuaciÃ³n del juego original donde Crash es secuestrado por el villano de la serie, el Doctor Neo Cortex, quien lo engaÃ±a haciÃ©ndole creer que quiere salvar el mundo.', 'crash2'),
('UmJammer Lammy', 'PSX', 'Rhythm', 0, NULL, 'EstÃ¡ considerado como un spin-off dentro de la saga PaRappa the Rapper y tiene como protagonista a Lammy, una especie de cordero antropomÃ³rfica que toca la guitarra elÃ©ctrica.', 'ulj'),
('Devil May Cry', 'PS2', 'hack and slash', 0, NULL, 'La historia transcurre en la isla ficticia de Mallet y se centra en los personajes de Dante y Trish y en su bÃºsqueda para enfrentarse al demonio Mundus.', 'dmc1'),
('Devil May Cry 2', 'PS2', 'hack and slash', 0, NULL, 'Secuela del del exitoso Devil May Cry de PlayStation 2. La historia sigue a Dante y LucÃ­a mientras recorren la isla de Dumary para detener los planes de Arius, un hombre que utiliza poderes demonÃ­acos y que intenta conquistar el mundo.', 'dmc2'),
('Devil May Cry 3', 'PS2', 'hack and slash', 0, NULL, 'Precuela del primer Devil May Cry, Dante es un joven arrogante y compulsivo, que se ve envuelto en una misiÃ³n de derrotar a su hermano gemelo Vergil, que planea abrir las puertas del infierno para obtener el poder de su padre Sparda.', 'dmc3'),
('Final Fantasy X', 'PS2', 'RPG', 0, NULL, 'DÃ©cima entrega de la serie Final Fantasy, y fue la primera en desarrollarse para esta videoconsola. La historia sigue a Tidus mientras viaja al futuro para detener a Sinh, una enorme criatura que comparte nuestro destino.', 'ff10'),
('Final Fantasy X-2', 'PS2', 'RPG', 0, NULL, 'Dos aÃ±os despuÃ©s de La Calma Rikku convence a Yuna para abandonar todo y emprender nuevas aventuras. Viajaran por toda Spira en busca de las esferas que les den alguna pista para poder llegar hasta \"Ã‰l\"...', 'ff10-2'),
('Final Fantasy XII', 'PS2', 'RPG', 0, NULL, 'En el mundo llamado Ivalice, el imperio de Arcadia se levanta colonizando los demÃ¡s reinos. Las fuerzas de la resistencia deberÃ¡n hacerle frente mientras descubren la verdad detrÃ¡s de todo.', 'ff12'),
('Final Fantasy XII SE', 'PS2', 'RPG', 0, NULL, 'En el mundo llamado Ivalice, el imperio de Arcadia se levanta colonizando los demÃ¡s reinos. Las fuerzas de la resistencia deberÃ¡n hacerle frente mientras descubren la verdad detrÃ¡s de todo.', 'ff12'),
('Metal Gear Solid 2', 'PS2', 'AcciÃ³n-aventura', 0, NULL, 'Dos aÃ±os despuÃ©s del incidente de Shadow Moses, la tecnologÃ­a de Metal Gear ha circulado libremente por el mercado negro. Snake descubre una nueva versiÃ³n llamada Ray y se infiltra para detener los planes.', 'mgs2'),
('Metal Gear Solid 3', 'PS2', 'AcciÃ³n-aventura', 0, NULL, 'El juego se desarrolla en la UniÃ³n SoviÃ©tica durante la Guerra FrÃ­a. La historia tiene por protagonista a un espÃ­a estadounidense codificado como Naked Snake, cuya misiÃ³n es rescatar a un cientÃ­fico desertor soviÃ©tico.', 'mgs3'),
('Resident Evil 4', 'PS2', 'Terror', 0, NULL, 're4', 're4'),
('Resident Evil Code: Verónica', 'PS2', 'Terror', 0, NULL, 'reveronica', 'reveronica'),
('Tekken Tag Tournament', 'PS2', 'Lucha', 0, NULL, 'ttt', 'ttt'),
('Killzone', 'PS2', 'FPS', 0, NULL, NULL, 'killzone'),
('Assasins Creed Revelations', 'PS3', 'AcciÃ³n-aventura', 0, NULL, '', 'acr'),
('Assasins Creed Brotherhood', 'PS3', 'AcciÃ³n-aventura', 0, NULL, '', 'acb'),
('Assasins Creed II', 'PS3', 'AcciÃ³n-aventura', 0, NULL, '', 'ac2'),
('Assasins Creed III', 'PS3', 'AcciÃ³n-aventura', 0, NULL, '', 'ac3'),
('Beyond Two Souls', 'PS3', 'Interactivo', 0, NULL, NULL, 'bts'),
('Bioshock Ultimate Rapture Edition', 'PS3', 'FPS', 0, NULL, NULL, 'bioshockur'),
('Catherine', 'PS3', 'Puzzle', 0, NULL, NULL, 'catherine'),
('Darksouls', 'PS3', 'AcciÃ³n-RPG', 0, NULL, '', 'darksouls'),
('Devil May Cry 4', 'PS3', 'Hack and Slash', 0, NULL, NULL, 'dmc4'),
('Dragons Age Inquisition', 'PS3', 'AcciÃ³n-RPG', 0, NULL, '', 'dai'),
('Final Fantasy Lighting Returns', 'PS3', 'AcciÃ³n-RPG', 0, NULL, '', 'fflr'),
('Final Fantasy X HD Collection', 'PS3', 'RPG', 0, NULL, NULL, 'ff10hd'),
('Final Fantasy XIII-2', 'PS3', 'AcciÃ³n-RPG', 0, NULL, '', 'ff13-2'),
('Final Fantasy XIV', 'PS3', 'RPG', 0, NULL, NULL, 'ff14'),
('Grand Thef Auto IV', 'PS3', 'Sandbox', 0, NULL, 'gta4', 'gta4'),
('Heavy Rain', 'PS3', 'interactivo', 0, NULL, 'hr', 'hr'),
('ICO Collection', 'PS3', 'AcciÃ³n-aventura', 0, NULL, '', 'icoc'),
('Metal Gear Solid 4', 'PS3', 'AcciÃ³n-aventura', 0, NULL, '', 'mgs4'),
('Ninja Gaiden Sigma 2', 'PS3', 'Hack and Slash', 0, NULL, NULL, 'ngs2'),
('Playstation All Star Battle Royale', 'PS3', 'Lucha', 0, NULL, NULL, 'pasbr'),
('Resident Evil 5: GE', 'PS3', 'Terror', 0, NULL, 're5ge', 're5ge'),
('Resonance of Fate', 'PS3', 'RPG', 0, NULL, 'rof', 'rof'),
('Splinter Cell Blacklist', 'PS3', 'AcciÃ³n-aventura', 0, NULL, '', 'scb'),
('Star Wars the Force Unleashed', 'PS3', 'AcciÃ³n-aventura', 0, NULL, '', 'swtfu'),
('Star Wars the Force Unleashed 2', 'PS3', 'AcciÃ³n-aventura', 0, NULL, '', 'swtfu2'),
('Street Fighter IV Arcade Edition', 'PS3', 'Lucha', 0, NULL, 'ssf4', 'ssf4'),
('Street Fighter x Tekken', 'PS3', 'Lucha', 0, NULL, 'sfxt', 'sfxt'),
('The Last of Us', 'PS3', 'AcciÃ³n-Aventura', 0, NULL, '', 'tlou'),
('Eternal Darkness', 'Gamecube', 'Terror', 0, NULL, 'ed', 'ed'),
('Final Fantasy Crystal Chronicles', 'Gamecube', 'RPG', 0, NULL, NULL, 'ffcc'),
('Pokemon Colosseum', 'Gamecube', 'RPG', 0, NULL, 'pokemonc', 'pokemonc'),
('Pokemon XD: Gale of Darkness', 'Gamecube', 'RPG', 0, NULL, 'pokemonxd', 'pokemonxd'),
('Pokemon Diamond', 'DS', 'RPG', 0, '', 'Pues pokemon diamante', 'pokemond'),
('Pokemon Platinum', 'DS', 'RPG', 0, NULL, 'pokemonp', 'pokemonp'),
('Pokemon White 2', 'DS', 'RPG', 0, NULL, 'pokemonw2', 'pokemonw2'),
('The World ends with you', 'DS', 'AcciÃ³n-RPG', 0, NULL, '', 'twewy'),
('Pokemon X', '3DS', 'RPG', 0, NULL, 'pokemonx', 'pokemonx'),
('Pokemon Y', '3DS', 'RPG', 0, NULL, 'pokemony', 'pokemony'),
('Dragons Age Origins', 'PS3', 'RPG', 1, 'Cuchin', NULL, 'dao'),
('Folklore', 'PS3', 'AcciÃ³n-RPG', 1, 'Cuchin', 'folklore', 'folklore'),
('God of War Collection', 'PS3', 'Hack and Slash', 1, 'Cuchin', 'gowsaga', 'gowsaga'),
('Grand Thef Auto: San Andreas', 'PS2', 'Sandbox', 1, 'Mechudo', 'gtasa', 'gtasa'),
('Kingdom Hearts', 'PS2', 'AcciÃ³n-RPG', 1, 'Mechudo', 'kh', 'kh'),
('Kingdom Hearts 1.5 Remix', 'PS3', 'AcciÃ³n-RPG', 1, 'Cuchin', 'kh1hd', 'kh1hd'),
('Kingdom Hearts 2', 'PS2', 'AcciÃ³n-RPG', 1, 'Mechudo', 'kh2', 'kh2'),
('Obscure', 'PS2', 'Terror', 1, 'Mechudo', NULL, 'obscure'),
('Resident Evil Remake', 'Gamecube', 'Terror', 1, 'Negro', 'rere', 'rere'),
('Prince of Persia Trilogy', 'PS3', 'AcciÃ³n-aventura', 1, 'Cuchin', 'poptrilogy', 'poptrilogy'),
('Final Fantasy XIII', 'PS3', 'AcciÃ³n-RPG', 1, 'Cuchin', '', 'ff13'),
('Tekken 5', 'PS2', 'Lucha', 1, 'Negro', 'tekken5', 'tekken5'),
('Crash Bandicoot', 'PSX', 'Plataforma', 1, 'Mechudo', 'Narra la creaciÃ³n del personaje principal a manos del antagonista de la serie Doctor Neo Cortex y el secuaz Doctor Nitrus Brio. La historia sigue a Crash mientras intenta evitar los planes de Brio y Cortex para dominar el mundo.', 'crash');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
