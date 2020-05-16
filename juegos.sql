-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-05-2020 a las 00:38:01
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
-- Base de datos: `Juegos`
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
('Final Fantasy Anthology', 'PSX', 'RPG', 0, '', 'CompilaciÃ³n de videojuegos de Squaresoft que trae Final Fantasy V y Final Fantasy VI.', 'ffa'),
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
('Resident Evil 4', 'PS2', 'Terror', 0, '', 'La historia trata sobre Leon S. Kennedy, uno de los sobrevivientes al desastre de Raccoon City; este es enviado a una misiÃ³n especial para rescatar a Ashley Graham, la hija del presidente de los Estados Unidos que fuÃ© secuestrada.', 're4'),
('Tekken Tag Tournament', 'PS2', 'Lucha', 0, '', 'Es una compilaciÃ³n de la serie de Tekken que da a los fans la oportunidad de jugar como si cada personaje de la serie subiera hasta ese punto.', 'ttt'),
('Killzone', 'PS2', 'FPS', 0, '', 'Killzone se centra en el control del capitÃ¡n Jan Templar miembro de ISA que con la ayuda de su equipo, tendrÃ¡ como objetivo repeler la invasiÃ³n de los Helghast y hacerlos retroceder a cualquier precio.', 'killzone'),
('Assasins Creed Revelations', 'PS3', 'AcciÃ³n-aventura', 0, '', 'La historia continÃºa tras lo ocurrido al final de AC Brotherhood, Desmond vuelve a entrar en el Animus para tomar el control de Ezio Auditore.', 'acr'),
('Assasins Creed Brotherhood', 'PS3', 'AcciÃ³n-aventura', 0, '', 'Cuenta nuevamente con Ezio Auditore da Firenze como protagonista, quien ahora es un legendario Maestro Asesino, que lidera a su reciÃ©n fundada hermandad en la cacerÃ­a de los Templarios en Roma.', 'acb'),
('Assasins Creed II', 'PS3', 'AcciÃ³n-aventura', 0, '', 'ContinÃºa la historia de Desmond Miles quien despuÃ©s de haber sido forzado a revivir los recuerdos genÃ©ticos de su antepasado AltaÃ¯r ibn La-Ahad a travÃ©s de la mÃ¡quina conocida como \"Animus\", logra escapar.', 'ac2'),
('Assasins Creed III', 'PS3', 'AcciÃ³n-aventura', 0, '', 'La guerra entre asesinos y templarios ha sido envuelta en la Guerra de independencia estadounidense. Un joven mestizo llamado Connor Kenway, es atraÃ­do hacia la lucha contra la tiranÃ­a cuando su pueblo es atacado y arrasado por colonizadores.', 'ac3'),
('Beyond Two Souls', 'PS3', 'Interactivo', 0, '', 'La historia narra la vida de Jodie, quien naciÃ³ vinculada a una entidad llamada Aiden, un ser inmaterial con poderes telequinÃ©ticos que ademÃ¡s hizo que Jodie tuviera contactos con el mundo de los espÃ­ritus.', 'bts'),
('Bioshock Ultimate Rapture Edition', 'PS3', 'FPS', 0, '', 'EdiciÃ³n especial que contiene los juegos de Bioshock 1 y Bioshock 2.', 'bioshockur'),
('Catherine', 'PS3', 'Puzzle', 0, '', 'Narra la historia de Vincent Brooks, un hombre que se siente indeciso por el compromiso de su novia Katherine, hasta que una mujer llamada Catherine entra a su vida, y desata una serie de eventos que traeran el caos.', 'catherine'),
('Darksouls', 'PS3', 'AcciÃ³n-RPG', 0, '', 'El juego tiene lugar en los Ãºltimos dÃ­as de la Edad del Fuego, donde el mundo estÃ¡ pereciendo. SegÃºn la profecÃ­a del no-muerto elegido, nuestro hÃ©roe deberÃ¡ embarcarse en una aventura para lograr salvar el reino, o lo que queda de Ã©l.', 'darksouls'),
('Devil May Cry 4', 'PS3', 'Hack and Slash', 0, '', 'La historia sigue a Nero, un adolescente que posee poderes demonÃ­acos que se encuentra en una misiÃ³n para detener a Dante despuÃ©s de que Ã©ste asesinara a varios miembros de la Orden de la Espada incluyendo a su lÃ­der.', 'dmc4'),
('Dragons Age Inquisition', 'PS3', 'AcciÃ³n-RPG', 0, NULL, '', 'dai'),
('Final Fantasy Lighting Returns', 'PS3', 'AcciÃ³n-RPG', 0, '', 'Varios cientos de aÃ±os despuÃ©s del final de Final Fantasy XIII-2, Lightning despierta en el mundo Nova Chrysalia, que son el Ãºltimo reducto para la humanidad. A tan solo trece dÃ­as de su fatÃ­dico final, Lightning debe luchar para salvarlo.', 'fflr'),
('Final Fantasy X HD Collection', 'PS3', 'RPG', 0, '', 'EdiciÃ³n que trae Final Fantasy X, Final Fantasy X-2 y su expansiÃ³n Last Mission.', 'ff10hd'),
('Final Fantasy XIII-2', 'PS3', 'AcciÃ³n-RPG', 0, '', 'Tras 3 aÃ±os despuÃ©s de que Lightning y demÃ¡s salvaran el Nido, algunos supervivientes han decidido reconstruir el Gran Paals. Lightning ha desaparecido y algunos piensan que estÃ¡ muerta, pero Serah no lo cree, y tratarÃ¡ de buscarla.', 'ff13-2'),
('Final Fantasy XIV', 'PS3', 'RPG', 0, '', 'Las naciones de Eorzea solÃ­an estar en guerra entre ellas hasta hace quince aÃ±os cuando el Garlean Empire, una misteriosa naciÃ³n del este, arrasÃ³ con la ciudad-estado mÃ¡s poderosa, Ala Mhigo. Ahora deberÃ¡n unirse para derrotar la amenaza.', 'ff14'),
('Grand Thef Auto IV', 'PS3', 'Sandbox', 0, '', 'Grand Theft Auto IV narra la historia de Niko Bellic, un inmigrante ilegal y veterano de la Guerra de Bosnia. Tras ser convencido por su primo Roman, Niko decide abandonar Europa del Este con rumbo a Liberty City.', 'gta4'),
('Heavy Rain', 'PS3', 'Aventura grÃ¡fica', 0, '', 'Sigue la historia de Ethan Mars, un hombre que perdiÃ³ todo con la muerte de su hijo. Y aÃ±os despuÃ©s, su otro hijo es secuestrado, y harÃ¡ todo lo que estÃ© en su poder para lograr conseguirlo.', 'hr'),
('ICO Collection', 'PS3', 'AcciÃ³n-aventura', 0, '', 'ColecciÃ³n que contiene los juegos ICO y Shadow of the Colossus.', 'icoc'),
('Metal Gear Solid 4', 'PS3', 'AcciÃ³n-aventura', 0, '', 'La historia se sitÃºa en el aÃ±o 2014, cinco aÃ±os despuÃ©s del Incidente Manhattan  y nueve aÃ±os despuÃ©s del incidente de Shadow Moses. Snake deberÃ¡ enfrentarse por Ãºltima vez con la red creada por los Patriotas.', 'mgs4'),
('Ninja Gaiden Sigma 2', 'PS3', 'Hack and Slash', 0, '', 'Un aÃ±o despuÃ©s de lo ocurrido en Ninja Gaiden, Ryo deberÃ¡ recorrer el mundo en bÃºsqueda de ElizÃ©beth y la Estatua del Demonio, que fueron llevados por la reina de los Demonios MÃ¡ximos y Soberana de la Sangre.', 'ngs2'),
('Playstation All Star Battle Royale', 'PS3', 'Lucha', 0, '', 'Juego crossover de los mÃ¡ximos exponentes de los juegos de sony.', 'pasbr'),
('Resident Evil 5: GE', 'PS3', 'Terror', 0, '', 'Cinco aÃ±os despuÃ©s de los acontecimientos de Resident Evil 4, en el 2009, Chris Redfield es enviado a un lejano poblado africano siguiendo los pasos de un bioterrorista llamado Ricardo Irving, quien es buscado por vender armas biolÃ³gicas.', 're5ge'),
('Resonance of Fate', 'PS3', 'RPG', 0, '', 'La tierra ha sufrido un cambio drÃ¡stico en el medio ambiente, siendo ahora tÃ³xico. FuÃ© creado un dispositivo llamado Basel encargado de purificar el aire, sin embargo, tras un tiempo de tranquilidad, la depuradora empieza a fallar.', 'rof'),
('Splinter Cell Blacklist', 'PS3', 'AcciÃ³n-aventura', 0, '', 'DespuÃ©s de actuar como agente de la NSA, infiltrarse en una cÃ©lula terrorista y perder a su familia, Sam Fisher regresa para acabar con Los Ingenieros, un grupo rebelde que ataca objetivos americanos por todo el mundo. ', 'scb'),
('Star Wars the Force Unleashed', 'PS3', 'AcciÃ³n-aventura', 0, '', 'Cuenta la historia de Galen Marek, un discÃ­pulo que fuÃ© entrenado en secreto por Vader para acabar con Darth Sidious, asÃ­ como su historia de redenciÃ³n.', 'swtfu'),
('Star Wars the Force Unleashed 2', 'PS3', 'AcciÃ³n-aventura', 0, '', 'Seis meses despuÃ©s de la primera entrega y un aÃ±o antes del Episodio 4, Darth Vader lleva el cuerpo de su antiguo aprendiz a las instalaciones clonadoras de Kamino en busca de conseguir un nuevo aprendiz mejor que su predecesor.', 'swtfu2'),
('Street Fighter IV Arcade Edition', 'PS3', 'Lucha', 0, '', 'Situado cronolÃ³gicamente entre Street Fighter II y Street Fighter III, la corporaciÃ³n S.I.N. comenzÃ³ otro torneo de lucha, con el fin de atraer los luchadores mÃ¡s poderosos de todo el mundo para completar el proyecto BLECE.', 'ssf4'),
('Street Fighter x Tekken', 'PS3', 'Lucha', 0, '', 'Crossover entre los videojuegos Street Fighter y Tekken.', 'sfxt'),
('The Last of Us', 'PS3', 'AcciÃ³n-Aventura', 0, '', 'Se desata una pandemia en Estados Unidos ocasionada por una cepa del hongo Cordyceps, que al infectar a los humanos los convierte en criaturas canÃ­bales. El mundo busca desesperadamente la cura o la humanidad serÃ¡ extinguida.', 'tlou'),
('Eternal Darkness', 'Gamecube', 'Terror', 0, '', 'El videojuego trata de una chica llamada Alexandra Roivas quien hereda una mansiÃ³n familiar, descubriendo una oscura trama que envuelve a una amoral y demonÃ­aca especie que dominaba la Tierra antes de que lo hiciera el Hombre.', 'ed'),
('Final Fantasy Crystal Chronicles', 'Gamecube', 'RPG', 0, '', 'El juego nos sitÃºa en un mundo donde el miasma ha contaminado todo el aire e impide la vida de los pueblos que hay en el mundo. Para sobrevivir protegen sus pueblos con un cristal que debe ser recargado con mirra cada aÃ±o.', 'ffcc'),
('Pokemon Colosseum', 'Gamecube', 'RPG', 0, '', 'Una misteriosa compaÃ±Ã­a llamada Cipher se encarga de robar pokemones, cerrÃ¡ndoles su corazÃ³n y creÃ¡ndo los llamados Pokemones Oscuros.', 'pokemonc'),
('Pokemon XD: Gale of Darkness', 'Gamecube', 'RPG', 0, '', 'Un par de aÃ±os despuÃ©s de los acontecimientos de la primera entrega, el equipo Cipher regresa con sus planes, sin embargo Ã©sta vez tienen un as bajo la manga: Shadow Lugia.', 'pokemonxd'),
('Pokemon Diamond', 'DS', 'RPG', 0, '', 'Diamante estÃ¡ situado en la regiÃ³n de Sinnoh. Los villanos son el Equipo Galaxia, que desean despertar a los legendarios pokÃ©mones Dialga y Palkia, para asÃ­ tener el control sobre todos los PokÃ©mon.', 'pokemond'),
('Pokemon Platinum', 'DS', 'RPG', 0, '', 'La trama principal de este juego se centra en Giratina, pues esta vez el Equipo Galaxia intentarÃ¡ crear un nuevo mundo sin saber que ya existÃ­a otro mundo llamado Mundo DistorsiÃ³n que estÃ¡ bajo el reinado del PokÃ©mon Giratina.', 'pokemonp'),
('Pokemon White 2', 'DS', 'RPG', 0, '', 'La aventura transcurre en la regiÃ³n de Teselia dos aÃ±os despuÃ©s de los eventos de White/Black. Aparece un nuevo misterio con dos pokemones: Kyurem Negro y Kyurem Blanco.', 'pokemonw2'),
('The World ends with you', 'DS', 'AcciÃ³n-RPG', 0, '', 'El juego se desarrolla en el distrito comercial de Shibuya, en Tokio. Unos elegidos de entre los muertos son transportados a un universo paralelo dÃ³nde tiene lugar el juego cuyo premio por ganar es ser devuelto a la vida.', 'twewy'),
('Pokemon X', '3DS', 'RPG', 0, '', 'El juego se desarrolla en la regiÃ³n de Kalos. Nuestro protagonista seguirÃ¡ su aventura pokemon mientras deberÃ¡ hacer frente al Team Flare, una malvada organizaciÃ³n cuyos planes son un misterio.', 'pokemonx'),
('Pokemon Y', '3DS', 'RPG', 0, '', 'El juego se desarrolla en la regiÃ³n de Kalos. Nuestro protagonista seguirÃ¡ su aventura pokemon mientras deberÃ¡ hacer frente al Team Flare, una malvada organizaciÃ³n cuyos planes son un misterio.', 'pokemony'),
('Dragons Age Origins', 'PS3', 'RPG', 1, 'Cuchin', 'Encarnamos a uno de los Ãºltimos guardas grises del reino de Ferelden, y deberemos luchar contra la Ruina que amenaza el reino ademÃ¡s de hacer frente a los conflictos polÃ­ticos provocados por la batalla de Ostagar, entre otros.', 'dao'),
('Folklore', 'PS3', 'AcciÃ³n-RPG', 1, 'Cuchin', 'Viaja al mundo de las tradiciones culturales acerca de la muerte en una deliciosa y arriesgada historia sobre los misterios que esconde esa gran desconocida. Dos mundos, dos personajes', 'folklore'),
('God of War Saga', 'PS3', 'Hack and Slash', 1, 'Cuchin', 'RecopilaciÃ³n de los videojuegos God of War, God of War 2, God of War 3, y las remasterizaciones God of War: Chains of Olympus y Ghost of Sparta. (No tengo los 2 Ãºltimos)', 'gowsaga'),
('Grand Thef Auto: San Andreas', 'PS2', 'Sandbox', 1, 'Mechudo', ' Ambientado en 1992, la obra cuenta la historia de Carl Johnson â€œCJâ€, quien decide volver a Los Santos tras cinco aÃ±os de haberse ausentado en Liberty City, Ciudad de otros Grand Theft Auto como GTA 3, GTA Liberty City Stories o GTA 4.', 'gtasa'),
('Kingdom Hearts', 'PS2', 'AcciÃ³n-RPG', 1, 'Mechudo', ' La historia se centra en un joven llamado Sora, quien se adentra en una Ã©pica batalla en contra de la oscuridad. A Ã©l se le unen el Pato Donald y Goofy, personajes de la serie Mickey Mouse, quienes lo ayudan en su aventura.', 'kh'),
('Kingdom Hearts 1.5 Remix', 'PS3', 'AcciÃ³n-RPG', 1, 'Cuchin', 'RecopilaciÃ³n en HD de los videojuegos Kingdom Hearts y KH: Chain of Memories, ademÃ¡s de la pelÃ­cula realizada por las cinemÃ¡ticas de KH: 358/2 Days.', 'kh1hd'),
('Kingdom Hearts 2', 'PS2', 'AcciÃ³n-RPG', 1, 'Mechudo', 'Sora vuelve a recorrer los mundos de Disney volviendo a sellar las cerraduras que se habÃ­an abierto. Durante su aventura encuentran al Rey Mickey y a Riku, pero la organizaciÃ³n Xlll secuestra a Kairi junto con Pluto.', 'kh2'),
('Obscure', 'PS2', 'Terror', 1, 'Mechudo', 'El juego se centra en el instituto Leafmore, donde estudian los protagonistas que deberÃ¡n enfrentar una amenaza que permanecÃ­a oculta en la oscuridad de su propia ciudad.', 'obscure'),
('Resident Evil Remake', 'Gamecube', 'Terror', 1, 'Negro', 'En las MontaÃ±as Arklay, a las afueras de la localidad ficticia de Raccoon City, una oleada de extraÃ±os asesinatos empiezan a ocurrir cerca de la ciudad. y un grupo especializado llamado S.T.A.R.S. en enviado para averiguar que sucede.', 'rere'),
('Prince of Persia Trilogy', 'PS3', 'AcciÃ³n-aventura', 1, 'Cuchin', 'RecopilaciÃ³n HD de los videojuegos Prince of Persia: the Sands of Time, Prince of Persia: Warrior Within y Prince of Persia: The Two Thrones.', 'poptrilogy'),
('Final Fantasy XIII', 'PS3', 'AcciÃ³n-RPG', 1, 'Cuchin', 'El mundo estÃ¡ constituido por Paals y el Nido, mundos dirigidos por los falCie, entes paranormales con un tremendo poder mÃ¡gico. Nuestros protagonistas deberÃ¡n completar la tarea impuesta por uno de ellos, o su vida terminarÃ¡ pronto.', 'ff13'),
('Tekken 5', 'PS2', 'Lucha', 1, 'Negro', 'Luego de los acontecimientos de Tekken 4, Jinpachi Mishima emergiÃ³ de entre las ruinas, tomÃ³ el control de la Mishima Zaibatsu convocando el 5 Torneo del Rey del PuÃ±o de Acero', 'tekken5'),
('Crash Bandicoot', 'PSX', 'Plataforma', 1, 'Mechudo', 'Narra la creaciÃ³n del personaje principal a manos del antagonista de la serie Doctor Neo Cortex y el secuaz Doctor Nitrus Brio. La historia sigue a Crash mientras intenta evitar los planes de Brio y Cortex para dominar el mundo.', 'crash'),
('Resident Evil Code: VerÃ³nica', 'PS2', 'Terror', 0, '', 'Sigue a Claire Redfield, su hermano Chris Redfield y el joven Steve Burnside en sus esfuerzos por sobrevivir a un brote viral en una remota isla militar en el ocÃ©ano AntÃ¡rtico ademÃ¡s de una base de investigaciÃ³n en la AntÃ¡rtida.', 'reveronica'),
('Pokemon Emerald', 'GBA', 'Rol', 1, 'Negro', 'Compartido con el negro.', 'pokemonem'),
('Pokemon Fire Red', 'GBA', 'Rol', 1, 'Negro', 'Compartido con el negro.', 'pokemonfr'),
('Mortal Kombat 9', 'PS3', 'Lucha', 0, '', 'Compartido con Victor.', 'mk9');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
