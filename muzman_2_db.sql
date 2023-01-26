-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 26, 2023 at 05:43 PM
-- Server version: 8.0.30
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `muzman_2_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint UNSIGNED NOT NULL,
  `id_user` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `id_user`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cart_products`
--

CREATE TABLE `cart_products` (
  `id` bigint UNSIGNED NOT NULL,
  `id_cart` bigint UNSIGNED NOT NULL,
  `id_product` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_products`
--

INSERT INTO `cart_products` (`id`, `id_cart`, `id_product`) VALUES
(126, 1, 20),
(127, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_12_08_162625_create_products_table', 1),
(3, '2022_12_08_171256_create_users_table', 1),
(4, '2022_12_08_171442_create_orders_products_table', 1),
(5, '2022_12_08_171531_create_statuses_table', 1),
(6, '2022_12_08_171620_create_cart_products_table', 1),
(7, '2022_12_08_171641_create_carts_table', 1),
(8, '2022_12_08_174027_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `status` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `id` bigint UNSIGNED NOT NULL,
  `id_product` bigint UNSIGNED NOT NULL,
  `id_order` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `product_img` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_text` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double NOT NULL,
  `product_description` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_img`, `product_title`, `product_text`, `product_price`, `product_description`) VALUES
(1, '/images/yamaha_hs5_black_1.png', 'Yamaha HS5', 'Студийные мониторы', 39990, ''),
(2, '/images/studio-monitor-krk.png', 'KRK Rokit 5 G3', 'Студийные мониторы', 24000, 'Активный монитор 1.0 KRK RP5G4 представляет собой профессиональную монофоническую систему фазоинверторного типа, оснащенную 5-дюймовым кевларовым низкочастотным драйвером и 1-дюймовым твиттером, которые обеспечивают точную и чистую передачу звука. Благодаря этому данная модель станет отличным выбором для расширения ваших музыкальных и творческих возможностей.Мощность активного монитора 1.0 KRK RP5G4 составляет 55 Вт, что обеспечит достаточную громкость в помещениях практически любой площади. Частотный диапазон данной модели представлен значениями от 43 до 40000 Гц, что положительно влияет на качество и точность воспроизведения звука. Помимо этого устройство отличается хорошим соотношением сигнала к шуму, которое соответствует 106 дБ, а также низким уровнем искажений.Активный монитор 1.0 KRK RP5G4 выполнен в корпусе из качественного МДФ. Модель отличается лаконичным дизайном, благодаря чему легко впишется в любой интерьер. На задней панели расположен LED-дисплей и поворотный регулятор громкости. Для подключения используется XLR-выход. Работа монитора осуществляется от сети 220 В, потребляемая мощность достигает 82 Вт. Комплект поставки включает в себя кабель питания.'),
(3, '/images/studio-monitor-jbl305.png', 'JBL 305P MKII', 'Студийные мониторы', 14990, 'JBL 305P MKII – это активный двухполосный студийный монитор (Bi-amp). Монитор отличителен точностью звука и высокой детализацией, большим динамическим диапазоном. Для воспроизведения используется один длинноходовый НЧ-вуфер, диаметром 5\" и ВЧ-твитер с неодимовым магнитом, диаметром 1\".\r\nЗа усиление отвечает интегрированный усилитель класса D. Мощность активного монитора составляет 82 Вт, звуковое давление (макс) - 108 дБ (пик). Коммутация монитора представлена балансными разъемами XLR и TRS. Корпус монитора изготовлен из МДФ (15 мм).'),
(4, '/images/studio-monitor-genelec8010.png', 'GENELEC 8010AP', 'Студийные мониторы', 51108, 'Genelec 8010AP активный 2-полосный монитор ближнего поля. НЧ 3\" 25Вт, ВЧ 0.75\" 25Вт. Подставки. Вход: аналог. XLR. Макс. SPL 96 дБ, 67Гц-25кГц (±6 дБ). Кроссовер 3кГц. Габариты (ВхШхГ): 195х121х116мм (с подставками). Вес 1.5кг.'),
(5, '/images/studio-monitor-m-audio-bx5.png', 'M-Audio BX5 D3', 'Студийные мониторы', 16191, 'Представляем вам мониторы M-Audio BX5-D3 — возвращение студийной иконы и преемника известных в индустрии мониторов BX D2. Мониторы M-Audio серии BX, которым доверяют звукорежиссеры и композиторы по всему миру, гарантируют абсолютную хирургическую точность звучания и неизменное техническое совершенство.\r\n\r\nСо студийными мониторами M-Audio BX5-D3 вы услышите все мельчайшие детали, благодаря чему ваши миксы будут звучать наилучшим образом!'),
(6, '/images/studio-monitor-mackie-cr8.png', 'MACKIE CR8-XBT', 'Студийные мониторы', 50000, 'CR8-XBT – это 8” новинка в серии Mackie CR, призванная перенести все достоинства младших моделей в более крупный формат мониторов. От своих компактных собратьев 8-дюймовая модель получила стильный дизайн, удобство подключения и богатый комплект поставки: за указанную стоимость вы получаете сразу два подобранных монитора, а также необходимую коммутацию и изолирующие подставки.\r\n\r\nБлагодаря большому диаметру диффузора CR8-XBT является отличным решением не только для домашней студии большой площади, но и для серьезного гейминга, просмотра блокбастеров и прослушивания музыки.\r\n\r\nКроме того, CR8-XBT оснащены модулем Bluetooth, позволяющим подключать любой современный планшет, смартфон или ноутбук без использования проводов, что делает эти мониторы действительно удобным решением для домашнего использования.\r\n\r\nЛинейка CR-X – это обновленные версии серии-бестселлера Mackie CR, известной своими высоким качеством и надежностью при отличной цене. Новые версии сохранили все лучшее, что было в оригинальных CR, а выбор моделей стал более богатым.'),
(7, '/images/studio-monitor-iloud.png', 'IK MULTIMEDIA iLoud', 'Студийные мониторы', 34400, 'IK MULTIMEDIA iLoud Micro Monitor – это высококлассные студийные мониторы ближнего поля. Мониторы имеют расширенное цифровое управление с 56-битным DSP, обеспечивающее беспрецедентное качество звучание. Мощный двухканальный усилитель D-класса обеспечивает 50W RMS для пары. iLoud Micro Monitor являются самыми компактными студийными мониторами в мире и первыми мониторами, которые всегда можно взять с собой. Мониторы имею удобные подставки, с помощью которых вы сможете установить оптимальное положение каждого монитора на вашем столе, кроме этого вы можете закрепить монитор на обычной микрофонной стойке.'),
(8, '/images/studio-monitor-fluid-audio-f4.png', 'Fluid Audio F4', 'Студийные мониторы', 13990, 'Студийные мониторы ближнего поля F4 серии Fader от Fluid Audio идеально подойдут для начинающих музыкантов или опытных профи. F4 схожи по характеристикам с мониторами F5, поскольку в них используется тот же шелковый купольный твитер и волновод. Времени и усилий на разработку данной серии было потрачено не меньше, чем на более серьезные модели. Результат: отличная стереокартина, четкое воспроизведение средних частот и достаточно слышимый бас не \"замыливают\" вокал. Именно эта отличительная черта звучания от Fluid Audio поможет вам точно определить, что вы хотите создать в своем звуковом ландшафте.\r\nБудучи младшей моделью, данным мониторам присущи все достоинства этого модельного ряда ... например, удобство. Их компактные размеры допускают гибкое размещение: сведение альбома на небольшой консоли или видео монтаж на узком рабочем столе - F4 обеспечат профессиональное студийное качество звука в любой среде.\r\nПомимо TRS и RCA входов, на передней панели также есть Aux вход и выход для наушников. Усилитель оснащен внешним теплоотводом и контуром Standby, который отключает усилитель после 20 минутного простоя. Как и у всех мониторов серии Fader, регулировка громкости осуществляется фейдером громкости на передней перегородке.'),
(9, '/images/studio-monitor-beringer-b1030.png', 'BEHRINGER B1030A', 'Студийные мониторы', 15400, 'Когда инженеры компании «BEHRINGER» разрабатывали B1031A, в первую очередь была поставлена цель дать возможность максимальному количеству исполнителей наслаждаться звуком отличного качества.\r\nВ итоге были получены активные студийные мониторы с ультра-линейной частотной характеристикой, которые можно размещать в любом месте и получать звучание без искажений.'),
(10, '/images/studio-monitor-tannoy-rev802.png', 'TANNOY REVEAL 802', 'Студийные мониторы', 20300, 'Настраиваемый 8-дюймовый низкочастотный динамик и 1-дюймовый твитер точно сообщают вам, что происходит в вашем миксе, благодаря тонко настроенному активному фильтру кроссовера. Объедините это с новым 100-ваттным модулем bi-amp, и вы получите потрясающие басы на любой громкости.\r\n\r\nСпециально разработанные гуру-спикером TANNOY, доктором Полом Миллсом, активные перекрестные фильтры REVEAL 802 имеют абсолютно безупречную синхронизацию.\r\n\r\nС помощью Aux Link настройка никогда не была такой простой. Используйте прилагаемый кабель с разъемом mini jack для подключения к вашему любимому музыкальному проигрывателю для мгновенной настройки стереосистемы – и никакой необходимости во внешних интерфейсах.'),
(11, '/images/studio-monitor-madboy.png', 'Madboy BONEHEAD', 'Студийные мониторы', 32900, 'Подключаете музыкальную систему к колонкам через провода? Кабели путаются под ногами и мешают?  Они портят интерьер квартиры?\r\n\r\nОтличная новость – теперь в нашем магазине вы найдете усовершенствованную акустическую пару MadBoy BONEHEAD-206 ВТ с беспроводным соединением Bluetooth! Эти великолепные активные колонки уже давно полюбились нашим покупателям. И неудивительно – ведь они созданы специально для вокального исполнения! Испытайте их в сравнении с другими шестидюймовыми динамиками и сразу почувствуете преимущества!\r\n\r\nЭлегантные стильные колонки очень компактны и предназначены для домашнего использования. Их отличает непревзойденное качество звучания. Помимо использования с караоке системами вы можете применять их и во многих других случаях: например, повысить качество звука компьютера или ТВ, а также без всяких проводов подсоединить к проигрывателю мультимедиа или плееру MP3.\r\n\r\nНаслаждайтесь идеальным звуком и свободой беспроводного подключения!'),
(12, '/images/studio-monitor-genelec8040.png', 'Genelec 8040BPM', 'Студийные мониторы', 156858, ''),
(13, '/images/studio-monitor-pioneer-dm-40.png', 'PIONEER DM-40', 'Студийные мониторы', 21400, ''),
(14, '/images/studio-monitor-yamaha-msp3a.png', 'YAMAHA MSP3A', 'Студийные мониторы', 20990, ''),
(15, '/images/studio-monitor-jbl104.png', 'JBL 104 BT', 'Студийные мониторы', 14990, ''),
(16, '/images/studio-monitor-monkey-banana-baboon6-red.png', 'Monkey Banana Baboon6 red', 'Студийные мониторы', 52380, ''),
(17, '/images/headphones-beyerdynamics-dt990.png', 'Beyerdynamic DT 990 Pro', 'Наушники', 27430, 'Beyerdynamic DT 990 Pro - открытые головные наушники профессиональной серии PRO. Наушники предназначены для прослушиванию музыки и мониторинга в студии звукозаписи. Наушники Beyerdynamic DT 990 Pro обладают элегантным стилем, который не оставит никого равнодушным. Звучание наушников выделяет четкая звуковая картина и сбалансированное звучание низких частот. Наушники имеют витой кабель, длиной 1 - 3 м.. Для подключения к устройствам медиа есть позолоченный разьем 3.5 мм. Наушники обеспечивают сбалансированное, мощное и качественное звучание во всем частотном диапазоне от 5 до 35000 Гц.'),
(18, '/images/audio-technica-m50x.png', 'Audio-Technica ATH-M50x', 'Наушники', 19590, 'Audio-Technica ATH-M50x - это закрытые мониторные наушники. Наушники обеспечивают комфорт при прослушивании музыки и аудио благодаря динамическим драйверам (45 мм.), удобной конструкции оголовья и малому весу (284 гр.). Два мощных динамика обеспечивают насыщенное звучание басов и всего спектра звуковых частот. Благодаря таким драйверам пользователи могут всецело насладиться и ощутить энергетику любой музыкальной композиции. Диапазон воспроизводимых частот 15 - 28000 Гц , импеданс - 38 Ом. В конструкции наушников используется регулируемое мягкое оголовье и полноразмерные амбушюры, сделанные с использованием мягкого акустического поролона. Кроме этого амбушюры имеют мягкую внешнюю отделку из искусственной кожи (опционально).'),
(19, '/images/headphones-shure-750.png', 'SHURE SRH750DJ', 'Наушники', 9115, 'Профессиональные динамические наушники для диджеев от компании «Shure», на протяжении уже 70 лет выпускающей акустическую продукцию высокого класса. Удобная и функциональная конструкция наушников с наклоном амбушюр на 90 градусов позволяют при микшировании использовать только одно ухо. Диджеи по достоинству оценят качество и технические характеристики этого оборудования, такие как мощность, высокое входное сопротивление, изоляцию от постороннего шума, мягкие и удобные подушечки, регулируемое пластмассовое оголовье. Несмотря на большие размеры, наушники имеют малый вес. В комплектации предусмотрены переносная сумка, 3х-метровый витой кабель и сменные подушечки.'),
(20, '/images/headphones-mackie-mc10.png', 'MACKIE MC-100', 'Наушники', 5200, 'MC-100 - закрытые мониторные наушники, разработанные Mackie с применением всего своего опыта в создании студийных мониторов. Отличаются высокопроизводительными драйверами, сбалансированным звучанием и отличной эргономикой. Идеально подойдут для мониторинга, создания контента и простого прослушивания музыки.'),
(21, '/images/headphones-superlux.png', 'Superlux HD681B', 'Наушники', 2870, 'Superlux HD681 – это серия наушников с тремя различными звуковыми профилями, каждый из которых обладает отличительными характеристиками.\r\n\r\nГлавной чертой модели HD681 является исключительно глубокие басы, в то время как HD681F имеет плоскую АЧХ, а HD681B обладает сбалансированным звуковым характером и мощными басами.\r\n\r\nХарактер звучания в наушниках HD681 создает впечатление, что вы находитесь непосредственно на сцене с музыкантами, в то время как HD681F заставляет вас почувствовать себя сидящим в первых рядах. А HD681B переносит вас в самый центр концертного зала, позволяя наслаждаться глубоким и богатым звучанием.'),
(22, '/images/midi-akai-pro.png', 'AKAI PRO MPK MINI MK3', 'MIDI Клавиатуры', 14600, 'Самая популярная в мире компактная клавиатура Akai Professional MPK mini стала еще привлекательнее. Теперь она может похвастаться бесконечными ручками, дисплеем, отображающем параметры, легендарными пэдами МРС и новой улучшенной клавиатурой. В комплекте с Akai Professional MPK mini mk3 поставляется набор программ: секвенсор/плагин MPC Beats, виртуальные инструменты Bassline, Tubesynth, Electric, Hybrid 3, Mini Grand, Velvet и 2GB семплов. При этом цена инструмента осталась прежней.'),
(23, '/images/midi-arturia.png', 'Arturia MiniLab mkII', 'MIDI Клавиатуры', 7690, 'Arturia MiniLab MKII — портативный 25-клавишный USB-MIDI-контроллер для музыкантов и продюсеров. В плане функционала новинка не отличается от оригинальной модели MiniLab, однако имеет обновлённый дизайн и ещё более компактный корпус. Также разработчик подчёркивает, что каждый компонент контроллера был улучшен, от клавиатуры до «крутилок». Ещё одним важным отличием версии MKII является расширенный набор прилагаемого софта, который включает программу Ableton Live Lite и виртуальные инструменты Analog Lab Lite и UVI Grand Piano Model D.'),
(24, '/images/midi-alesis.png', 'ALESIS V25 MKII', 'MIDI Клавиатуры', 11200, 'Alesis V25 – это мощный и интуитивно понятный MIDI-контроллер, который позволит вам управлять своим музыкальным программным обеспечением множеством регуляторов, кнопок и пэдов. С помощью 25 полноразмерных клавиш с чувствительностью к скорости нажатия и регуляторам октавы, вы сможете расширить вашу клавиатуру до полного музыкального диапазона и играть басовую линию, аккорды и мелодии. V25 также снабжена четырьмя назначаемыми кнопками и регуляторами для управления плагинами эффектов и виртуальными инструментами: вы может открывать и закрывать фильтры, настраивать уровни громкости, активировать эффекты, настраивать параметры под себя и многое другое. Восемь пэдов, чувствительных к скорости нажатия позволят запускать клипы и играть барабанные партии пальцами с необычайной отдачей, а колесики регулировки высоты тона и модуляции добавятся выразительности вашему выступлению.'),
(25, '/images/midi-novation.png', 'NOVATION Mini MK3', 'MIDI Клавиатуры', 13100, 'NOVATION LaunchKey Mini MK3 – самая компактная и легкая MIDI клавиатура от Novation с 25 мини-клавишами. Это портативное устройство, предоставляющее все возможности для создания музыки с применением Ableton Live, Logic, Reason и другого программного обеспечения, и при этом легко помещающееся в сумке. С LaunchKey Mini MK3 Вы получите возможность создавать треки в любом месте, применяя интуитивно понятный и удобный интерфейс для управления Ableton Live. Простой и мощный арпеджиатор позволяет получать новые мелодии, ритмы и звуки, шестнадцать высокочувствительных пэдов с RGB подсветкой дают возможность запуска клипов, добавления динамичных, экспрессивных ритмов, максимально точно передают все нюансы работы с барабанами. Предусмотрен разъем для опциональной педали сустейна. Режим Fixed Chord дополнительно расширяет возможности модификации аккордов. LaunchKey Mini обладает обширной встроенной библиотекой звуков, инструментов и эффектов от AS, Softube, Spitfire, XLN и Klevgrand. Вместе с клавиатурой поставляется ПО Ableton Live Lite плюс членская карточка для доступа к контенту Sound Collective. Возможности коммутации включают разъемы USB и MIDI.'),
(26, '/images/midi-korg.png', 'KORG microKEY2-37', 'MIDI Клавиатуры', 10100, 'KORG MICROKEY2-37 представляет собой второе поколение MIDI-клавиатур microKey с 37 клавишами. Обновленная серия сохранила все достоинства предшествующих популярных моделей. Кроме этого, все MIDI-клавиатуры обновлённой линейки обзавелись поддержкой iPad и iPhone. Также есть гнездо для подключения опционального контроллера Korg PS-1, или же демпферной педали DS-1H. Для этого может потребоваться комплект Lightning to USB Camera Adapter для взаимодействия с устройствами iOS.'),
(27, '/images/guitar-belucci.png', 'Belucci BC 3825 N', 'Гитары', 3291, '');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `phone`, `password`) VALUES
(1, '+7(222) 222-22-22', '$2y$10$MxXywsS9IrW1/v3qNVxqI.c9Pa6TKrCZlcWnSuGFSCyweGuRTksEG'),
(2, '+7(333) 333-33-33', '$2y$10$FWbndszChSYuMB6q4Q/.8ehLYOiayHrkr45ezLk5b/UWRFJqmYyVu'),
(3, '+7(444) 444-44-44', '$2y$10$p6gQ3jzRBLggd1hz12rDr.hQA5Uz8vs43Bu4HI.YXep9W1TchhlQi'),
(4, '+7(666) 222-22-22', '$2y$10$erxoQRZuZHbVjs3.wikg/egB9wBh500OPp6RBtO8qb1A6rFa.Bdn.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `cart_products`
--
ALTER TABLE `cart_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cart` (`id_cart`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_order` (`id_order`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`,`password`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart_products`
--
ALTER TABLE `cart_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `cart_products`
--
ALTER TABLE `cart_products`
  ADD CONSTRAINT `cart_products_ibfk_1` FOREIGN KEY (`id_cart`) REFERENCES `carts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `cart_products_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`status`) REFERENCES `statuses` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD CONSTRAINT `orders_products_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `orders_products_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
