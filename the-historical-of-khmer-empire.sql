-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2024 at 07:16 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `the-historical-of-khmer-empire`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `art`
--

CREATE TABLE `art` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `thumbnail` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `art`
--

INSERT INTO `art` (`id`, `title`, `thumbnail`, `description`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'ART OF CAMBODIA', '5742.jpg', 'The history of Cambodian art stretches back centuries to ancient times, but the most famous period is undoubtedly the Khmer art of the Khmer Empire (802–1431), especially in the area around Angkor and the mainly 12th-century temple-complex of Angkor Wat, initially Hindu and subsequently Buddhist. After the collapse of the empire these and other sites were abandoned and overgrown, allowing much of the era\'s stone carving and architecture to survive to the present day. Traditional Cambodian arts and crafts include textiles, non-textile weaving, silversmithing, stone carving, lacquerware, ceramics, wat murals, and kite-making. Beginning in the mid-20th century, a tradition of modern art began in Cambodia, though in the later 20th century both traditional and modern arts declined for several reasons, including the killing of artists by the Khmer Rouge. The country has experienced a recent artistic revival due to increased support from governments, NGOs, and foreign tourists. In pre-colonial Cambodia, art and crafts were generally produced either by rural non-specialists for practical use or by skilled artists producing works for the Royal Palace. In modern Cambodia, many artistic traditions entered a period of decline or even ceased to be practiced, but the country has experienced a recent artistic revival as the tourist market has increased and governments and NGOs have contributed to the preservation of Cambodian culture.', 1, '2024-03-28 07:55:28', '2024-03-30 22:23:46'),
(2, 'ART ARCHITECTURE OF CAMBODIA', '253.webp', 'Khmer architecture (Khmer: ស្ថាបត្យកម្មខ្មែរ), also known as Angkorian architecture is the architecture produced by the Khmers during the Angkor period of the Khmer Empire from approximately the later half of the 8th century CE to the first half of the 15th century CE. The architecture of the Indian rock-cut temples, particularly the sculptures, were widely adopted in South Indian, and Indianised architecture of Cambodian, Annamese (Khmer) and Javanese temples (of the Greater India). In any study of Angkorian architecture, the emphasis is necessarily on religious architecture, since all the remaining Angkorian buildings are religious in nature. During the period of Angkor, only temples and other religious buildings were constructed of stone. Non-religious buildings such as dwellings were constructed of perishable materials such as wood, and so have not survived. The religious architecture of Angkor has characteristic structures, elements, and motifs, which are identified in the glossary below. Since a number of different architectural styles succeeded one another during the Angkorean period, not all of these features were equally in evidence throughout the period. Indeed, scholars have referred to the presence or absence of such features as one source of evidence for dating the remains.', 1, '2024-03-28 08:07:09', '2024-03-28 08:07:09'),
(3, 'ART SCULPTURE OF CAMBODIA', '1188.jpg_large', 'Khmer sculpture refers to the stone sculpture of the Khmer Empire, which ruled a territory based on modern Cambodia, but rather larger, from the 9th to the 13th century. The most celebrated examples are found in Angkor, which served as the seat of the empire, captivating in its civility, refinement and delight, open to all forms of life, is made in the image of the country and its inhabitants. Nevertheless, among the arts of the Far East, few are as accessible to the Western temperament. Its profound beauty impresses itself upon the spirit and sensibility without requiring prior study. Its sobriety, its horror of excess and its sense of balance and harmony allow it to attain universal value.” Thus wrote Madeleine Giteau, the distinguished member of the École française d’Extrême-Orient, in the introduction to her book Les Khmers in 1965. Currently, the largest museums of the West dedicate entire halls to Khmer sculpture, not to mention the enormous exhibition which took place first at the Galeries Nationales du Grand Palais in Paris and later at the National Gallery of Art in Washington in 1997.', 1, '2024-03-28 08:07:49', '2024-03-28 08:07:49'),
(4, 'ART DRAWING OF CAMBODIA', '8951.jpg', 'Because of destruction during recent war, few historic wat murals remain in Cambodia. In the 1960s, art historians Guy and Jacqueline Nafilyan photographed 19th-century murals, providing a record of this lost cultural heritage. The best known surviving murals are at the Silver Pagoda in Phnom Penh, Wat Rajabo in Siem Reap province, and Wat Kompong Tralach Leu in Kompong Chhnang Province. In the last decade, wat murals have seen a resurgence, but Cambodia\'s surviving older murals are generally more refined and detailed.', 1, '2024-03-28 08:08:27', '2024-03-28 08:08:27'),
(5, 'ART MUSIC OF CAMBODIA', '5155.jpg', 'The music of Cambodia is derived from a mesh of cultural traditions dating back to the ancient Khmer Empire, India, China and the original indigenous tribes living in the area before the arrival of Indian and Chinese travelers. With the rapid Westernization of popular music, Cambodian music has incorporated elements from music around the world through globalization.\r\n\r\nFOLK AND CLASSICAL MUSIC\r\nCambodian Art music is highly influenced by ancient forms as well as Hindu forms. Religious dancing, many of which depict stories and ancient myths, are common in Cambodian culture. Some dances are accompanied by a pinpeat orchestra, which includes a ching (cymbal), roneat (bamboo xylophone), pai au (flute), sralai (oboe), chapey (bass moon lute or banjo), gong (bronze gong), tro (fiddle), and various kinds of drums. Each movement the dancer makes refers to a specific idea, including abstract concepts like today (pointing a finger upwards). The 1950s saw a revival in classical dance, led by Queen Sisowath Kossamak Nearyrath. During the early 1970s, the Khmer Rouge of Cambodia committed genocide among the country\'s citizens. During their reign, an estimated (90% of Cambodia\'s musicians, dancers, teachers, and instrument makers) were killed, interrupting the transmission of cultural knowledge to following generations. The country has been undergoing revival ever since, with those remaining trying to perform, teach, research, and document what they can.\r\n\r\nCAMBODIAN ROCK AND POP\r\nStarting in the late 1950, Head of State Norodom Sihanouk, a musician himself, encouraged the development of popular music in Cambodia. Initially, pop records from France and Latin America were imported into the country and became popular, inspiring a flourishing music scene based in Phnom Penh and led by singers like Ros Serey Sothea, Pen Ran or Sinn Sisamouth, with hits such as \'Violon Sneha\'. By the late 1960s and early 1970s, the scene was further influenced by Western rock and roll and soul music via U.S. armed forces radio that had been broadcast into nearby South Vietnam. This resulted in a unique sound in which Western pop and rock were combined with Khmer vocal techniques. Many of the most important singers of this era perished during the Khmer Rouge genocide. Western interest in the popular Cambodian music of the 1960s-70s was sparked by the bootleg album Cambodian Rocks in 1996, which in turn inspired the 2015 documentary film.', 1, '2024-03-28 08:09:36', '2024-03-28 08:09:36'),
(6, 'LITERATURE OF CAMBODIA', '9436.jpg', 'This type of art is a composition to be written as a story so that the reader and listener will not only be impressed but Literary texts Always contain a deep knowledge of the realities of real life, and they also reflect the phenomena that exist in society, especially in accordance with the laws of social progress. Knowledge of life, human issues related to traditions, geography, history and so on.', 1, '2024-03-28 08:10:08', '2024-03-28 08:10:08'),
(7, 'DANCE IN CAMBODIA', '9998.jpg', 'Dance in Cambodia (Khmer: របាំ robam) consists of three main categories: classical dance of the royal court, folk dance which portrays cultural traditions, and social dances performed in social gatherings.\r\n\r\nCLASSICAL DANCE\r\nCambodia\'s premier performing art form is Khmer classical dance, or Robam Preah Reach Trop, a highly stylized dance form originating from the royal courts. Originally performed and maintained by attendants of the royal palaces, Khmer classical dance was introduced to the general public in the mid-20th century and became widely celebrated as iconic of Cambodian culture, often performed during public events, holidays, and for tourists visiting Cambodia. Performances feature elaborately costumed dancers performing slow and figurative gestures to the musical accompaniment of a pinpeat ensemble. The classical repertoire includes dances of tribute or invocation and the enactment of traditional stories and epic poems such as the Ramayana. Two of the most performed classical dances are the Robam Chuon Por (\'Wishing dance\') and the Robam Tep Apsara (\'Apsara dance\').\r\n\r\nFOLK DANCE\r\nCreated in the 20th century are folk dances that emphasize that various cultural traditions and ethnic groups of Cambodia. Cambodian folk dances are usually more fast-paced than classical dances. The movements and gestures are not as stylized as classical dance. Folk dancers wear clothes of the people they are portraying such as Chams, hill tribes, farmers, and peasants. Some folk dances are about love or folktales. Most of the music of folk dances is played by a mahori orchestra.\r\n\r\nSOCAIL DANCE\r\nSocial dances commonly danced at social gatherings in Cambodia include the romvong, rom kbach, saravann, chok krapeus and lam leav. Other social dances from around the world have influenced Cambodian social culture, including the cha-cha, the bolero, and the Madison. Such dances are often performed at Cambodian banquet parties.', 1, '2024-03-28 08:11:21', '2024-03-28 08:11:21'),
(8, 'THEATRE OF CAMBODIA', '6663.webp', 'Theatre of Cambodia known as Lakhon (Khmer: ល្ខោន) is composed of many different genres. There are three main categories: classical, folk, and modern. Many forms of theatre in Cambodia incorporates dance movement into performances and are referred to as dance dramas.\r\n\r\nCLASSICAL\r\nLakhon Preah Reach Trop (Khmer: ល្ខោនព្រះរាជទ្រព្យ, also known as the Royal Ballet of Cambodia) is the main form of classical dance drama performed in Cambodia. It is also referred to as Lakhon luong and Lakhon Kbach Boran Khmer in Cambodia. This dance drama is the most refined of all theatre in Cambodia and was particularly patronized by royalty. It is heavily stylized with gestures and postures meant to entrance the viewer.\r\n\r\n\r\nLakhon Khol (Khmer: ល្ខោនខោល, Masked Drama Dance) is a masked dance drama featuring male performers. The repertoire consists solely of material from Reamker. The choreography is styled similarly to the Royal Ballet of Cambodia although not as refined and is performed along to narrators and a pinpeat ensemble.\r\n\r\n\r\nLakhon Pol Srey (Khmer: ល្ខោនពោលស្រី, Female Narrative Theatre) is a dance drama akin to the lakhon khol; the performers being female however. Both forms combine classical theatre and dance and are accompanied by the traditional pin peat orchestra. Unlike Lakhon Khol, which use a separate group of narrators, lakhon pol srey dancers take turns narrating while other members continue to dance. The dancers often lift their masks and narrate directly to the audience. It is believed to have originated from the Kingdom of Oudong between 1618-1628 during the reign of King Chey Chettha II. In 1878, Ms. Chinh, a great art teacher from Koh Oknheatey, came to teach Lakhon Pol Srey in Wat Keansvay Krao. Today, one of her students, a 70-year-old woman, Ms. Chea Samut, has taken a lead role in reviving lakhaon poul srei and currently teaches this drama form to students at Wat Keansvay Krao, after having disappeared for more than 40 years.\r\n\r\n\r\nLakhon Berk Bat is a lost theatre form in Cambodian Court. It is believed to have originated in the Post-Angkor period. Some older Royal Ballet dancers also recalled hearing that it was created in the late Angkor period, but little is known as to why it was discontinued. Evidence reveals that the drama was re-instituted during the reign of Oudong city by King Norodom in the late 1950s. The form disappeared again in the late 1970s during the time of the Khmer Rouge regime. It is assumed that lakhon berk bat was only performed in the presence of royal or noble families due to the dancers elaborate and expensive costumes and jewelry. As the art form emphasized beauty, character and technique, performers were expected to be not only beautiful, but to be able to act, sing, and speak well. The ability to sing unaccompanied was especially prized.\r\n\r\n\r\nLakhon Nang Sbek (Khmer: ល្ខោនណាំងស្បែក, Shadow Puppet Theatre) refers to Khmer shadow theatre.\r\n\r\nFOLK\r\nYike is dance drama with strong influences from Cham and Malay culture. It utilizes a style of singing reminiscent of the Islamic traditions of the Cham and Malay people. It incorporates basic dance movements with the hands swaying back and forth, although not as stylized as classic forms. The music consists of rebana drums and other Khmer instruments such as the tro.\r\n\r\n\r\nLakhon bassac or basak is one of the most popular folk theatre in Cambodia. It takes its name from the districts adjoining in the Bassac river in the former Cambodian province of Preah Trapeang, now known as Trà Vinh Province and part of Southern Vietnam. In the day of French rule, the troupes freely moved between Cambodia and Southern Vietnam, for both areas is the part of French Indochina. It is reminiscent of Vietnamese opera with the male character costumes styled after Vietnamese opera costumes, although the female characters wears traditional Cambodian costumes. Lakhon bassac is the only theatre form familiar with in which Indian based theatrical elements and Sinic based theatrical elements are mixed in almost equal amount.\r\n\r\n\r\nLakhon phleng kar (Khmer: ល្ខោនភ្លេងការ, lit., \'wedding music theatre\') is a drama performed accompanied by traditional wedding music. This theatre form had travel from the court into the regular people\'s favourite. It notable used in Cambodia for the rich family until Lovek era after the strongly Javanese Influenced both on Music and wedding dress. The drama, like the music, is believed to have appeared as early as the 1st century during the wedding ceremony of Preah Thong and Neang Neak.\r\n\r\n\r\nLakhon ape is a mixture of yike and classical dance form\r\n\r\n\r\nLakhon kamnap is a poetry theatre\r\n\r\n\r\nLakhon mahori (lit., mahori theatre) consists of folkloric dance accompanied by a mahori ensemble.\r\n\r\n\r\nMODERN\r\nLakhon niyeay is a spoken theatre', 1, '2024-03-28 08:12:08', '2024-03-28 08:12:08');

-- --------------------------------------------------------

--
-- Table structure for table `civilizations`
--

CREATE TABLE `civilizations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `thumbnail` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `civilizations`
--

INSERT INTO `civilizations` (`id`, `title`, `thumbnail`, `description`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'CULTURE & CIVILIZATION', '3048.jpg', 'Throughout Cambodia\'s long history, religion has been a major source of cultural inspiration. Over nearly two millennia, Cambodians have developed a unique Cambodian culture and belief system from the syncretism of indigenous animistic beliefs and the Indian religions of Buddhism and Hinduism. Indian culture and civilization, including its languages and arts reached mainland Southeast Asia around the 1st century AD. It is generally believed that seafaring merchants brought Indian customs and culture to ports along the Gulf of Thailand and the Pacific en route to trade with China. The Kingdom of Funan was most probably the first Cambodian state to benefit from this influx of Indian ideas. There is also French influence as well.', 1, '2024-03-30 20:01:41', '2024-03-30 20:28:39'),
(2, 'ARCHITECTURE AND HOUSING', '6709.jpg', 'The Angkorian architects and sculptors created temples that mapped the cosmic world in stone. Khmer decorations drew inspiration from religion, and mythical creatures from Hinduism and Buddhism were carved on walls. Temples were built in accordance with the rule of ancient Khmer architecture that dictated that a basic temple layout include a central shrine, a courtyard, an enclosing wall, and a moat. Khmer motifs use many creatures from Buddhist and Hindu mythology, like the Royal Palace in Phnom Penh, use motifs such as the garuda, a mythical bird in Hinduism.The architecture of Cambodia developed in stages under the Khmer empire from the 9th to the 15th century, preserved in many buildings of the Angkor temple. The remains of secular architecture from this time are rare, as only religious buildings were made of stone. The architecture of the Angkor period used specific structural features and styles, which are one of the main methods used to date the temples, along with inscriptions. In modern rural Cambodia, the nuclear family typically lives in a rectangular house that may vary in size from four by six meters to six by ten meters. It is constructed of a wooden frame with gabled thatch roof and walls of woven bamboo. Khmer houses are typically raised as much as three meters on stilts for protection from annual floods. Two ladders or wooden staircases provide access to the house. The steep thatch roof overhanging the house walls protects the interior from rain. Typically a house contains three rooms separated by partitions of woven bamboo. The front room serves as a living room used to receive visitors, the next room is the parents\' bedroom, and the third is for unmarried daughters. Sons sleep anywhere they can find space. Family members and neighbors work together to build the house, and a house-raising ceremony is held upon its completion. The houses of poorer persons may contain only a single large room. Food is prepared in a separate kitchen located near the house but usually behind it. Toilet facilities consist of simple pits in the ground, located away from the house, that are covered up when filled. Any livestock is kept below the house. Chinese and Vietnamese houses in Cambodian towns and villages are typically built directly on the ground and have earthen, cement, or tile floors, depending upon the economic status of the owner. Urban housing and commercial buildings may be of brick, masonry, or wood.', 1, '2024-03-30 20:02:24', '2024-03-30 20:02:24'),
(3, 'RELIGION', '9519.jpg', 'Cambodia is predominantly Buddhist with 80% of the population being Theravada Buddhist, 1% Christian and the majority of the remaining population follow Islam, atheism, or animism. Buddhism has existed in Cambodia since at least the 5th century CE. Theravada Buddhism has been the Cambodian state religion since the 13th century CE (excepting the Khmer Rouge period), and is currently estimated to be the faith of 90% of the population. A smaller number of Cambodians, mostly of Vietnamese and Chinese descent, practice Mahayana Buddhism. The main orders of Buddhism practiced in Cambodia are Dhammayuttika Nikaya and Maha Nikaya.', 1, '2024-03-30 20:03:20', '2024-03-30 20:03:20'),
(4, 'CLOTHES', '2406.jpg', 'The long-popular traditional garment known as the Sampot, is an Indian-influenced costume which Cambodians have worn since the Funan era. Historically, Khmer clothing has changed depending on the time period and religion. From the Funan era to the Angkor Era, there was a strong Hindu influence in Cambodian fashion which favored wearing Sampots over the lower body and oftentimes nothing from the waist up except jewelry including bracelets and collars such as the Sarong Kor, a symbol of Hinduism. Some Cambodians still wear a religious style of clothing. Some Khmer men and women wear a Buddha pendant on a necklace. There are different pendants for different uses; some are meant for protection from evil spirits, some are meant to bring good luck. Clothing in Cambodia is one of the most important aspects of the culture. Cambodian fashion differs according to ethnic group and social class. Khmer people traditionally wear a checkered scarf called a Krama. The \'krama\' is what distinctly separates the Khmer (Cambodians) from their neighbors the Thai, the Vietnamese, and the Laotians. The scarf is used for many purposes including for style, protection from the sun, an aid (for the feet) when climbing trees, a hammock for infants, a towel, or as a \'sarong\'. A \'krama\' can also be easily shaped into a small child\'s doll for play. Under the Khmer Rouge, krama of various patterns were part of standard clothing.\r\n\r\n\r\nSampot Phamuong Otherwise, in the notable class people in Cambodia, especially the royal caste, have adapted a well known dress as well as an expensive fashion style. Sampot is still well recognized among the royalty. Since the Udong period, most royalty have retained their dressing habits. Female royalty created the most attractive fashion. The lady always wears a traditional cape called sbai or rabai kanorng, which is draped over the left shoulder, leaving the right shoulder bare. Rarely was the cape worn over the right shoulder. The sbai or rabai kanorng would have been sumptuously fashioned in the old days in threads of genuine gold or silver.', 1, '2024-03-30 20:03:47', '2024-03-30 20:03:47'),
(5, 'CUISINE', '363.webp', 'Main article: Cambodian cuisine Amok, a popular Cambodian dish Khmer cuisine is similar to that of its Southeast Asian neighbors. It shares many similarities with Thai cuisine, Vietnamese cuisine and Teochew cuisine. Cambodian cuisine also uses fish sauce in soups, stir-fried cuisine, and as dippings. The Chinese influence can be noted in the common chha (Khmer: ឆារ, Stir frying) and in the use of many variations of rice noodles. In Chinese-Cambodian cuisine, a popular dish is a \'pork broth rice noodle soup\', called kuy tieu (Khmer: គុយទាវ). It is similar to the Thai kuaitiao ruea and Thai kuai tiao sukhothai. Indian influenced dishes include many types of curry known as kari (Khmer: ការី) that call for dried spices such as star anise, cardamom, cinnamon, nutmeg and fennel as well as local ingredients like lemongrass, garlic, kaffir lime leaves, shallots and galangal that give dishes a distinctive Cambodian flavor.Banh Chaew (Khmer: នំបាញ់ឆែវ), the Khmer version of the Vietnamese Bánh xèo, is also a popular dish.', 1, '2024-03-30 20:04:21', '2024-03-30 20:04:21'),
(6, 'ARTS AND LITERATURE', '5558.jpg', 'Visual artsDance\r\nMain articles: Visual arts of Cambodia and Khmer sculpture The history of visual arts in Cambodia stretches back centuries to ancient crafts; Khmer art reached its peak during the Angkor period. Traditional Cambodian arts and crafts include textiles, non-textile weaving, silversmithing, stone carving, lacquerware, ceramics, wat murals, and kite-making. Beginning in the mid-20th century, a tradition of modern art began in Cambodia, though in the later 20th century both traditional and modern arts declined for several reasons, including the killing of artists by the Khmer Rouge. The country has experienced a recent artistic revival due to increased support from governments, NGOs, and foreign tourists.\r\n\r\nDance\r\nMain article: Dance in Cambodia Cambodian dance can be divided into three main categories: classical dance, folk dances, and vernacular dances. Khmer Apsara dancers Khmer classical dance is a form of Cambodian dance originally performed only for royalty. The dances have many elements in common with Thai classical dance. During the mid-20th century, it was introduced to the public, where it now remains a celebrated icon of Khmer culture, often being performed during public events, holidays, and for tourists visiting Cambodia. Khmer classical dance is famous for its use of the hands and feet to express emotion; there are 4,000 different gestures in this type of dance.\r\n\r\nMusic\r\nMain article: Music of Cambodia The Cambodian pinpeat ensemble is traditionally heard on feast days in the pagodas. It is also a court ensemble used to accompany classical dance for ritual occasions or theatrical events. The pinpeat is primarily made up of percussion instruments: the roneat ek (lead xylophone), roneat thung (low bamboo xylophone), kong vong touch and kong vong thom (small and large sets of tuned gongs), sampho (two-sided drum), skor thom (two large drums), and sralai (quadruple-reed instrument).\r\n\r\nShadow Theatre\r\nNang Sbek Thom figure plate. Nang Sbek (shadow theatre) (or Lakhaon Nang Sbek; Khmer) is closely related to the Nang Yai of Thailand, Wayang and Indonesia like the islands of Java and Bali, thus implying that Nang Sbek may have an Indonesian origin many centuries ago. Nang Sbek is also a dying art form and may disappear because of the decline in popularity due to the introduction of modern entertainment. Before the spread of modern entertainment such as movies, videos and television the Khmer enjoyed and watched shadow theatre apart from the other sources of entertainment available during that time. There are three kinds of shadow theatre in Cambodia: Nang Sbek Thom is an art that involves mime, song, music as well as dance and narration to the accompaniment of the Pinpeat orchestra. It most often features the Reamker. Nang Sbek Toch also called Nang Kalun and sometimes called Ayang (small shadow theatre) uses smaller puppets and a wide range of stories. Sbek Paor (coloured puppet theatre) uses coloured leather puppets.\r\n\r\nFilm\r\nMain article: Cinema in Cambodia Cinema in Cambodia began in the 1950s; King Norodom Sihanouk himself was an avid film enthusiast. Many films were being screened in theaters throughout the country by the 1960s, which are regarded as the \'golden age\'. After a decline during the Khmer Rouge regime, competition from video and television has meant that the Cambodian film industry is relatively weak today.', 1, '2024-03-30 20:05:49', '2024-03-30 22:24:48');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(250) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `thumbnail` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `histories`
--

INSERT INTO `histories` (`id`, `title`, `thumbnail`, `description`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'HISTORY OF CAMBODIA', '7625.jpg', 'The history of Cambodia, a country in mainland Southeast Asia, can be traced back to Indian civilisation. Detailed records of a political structure on the territory of what is now Cambodia first appear in Chinese annals in reference to Funan, a polity that encompassed the southernmost apart of the Indochinese peninsula during the 1st to 6th centuries. Centered at the lower Mekong, Funan is noted as the oldest regional Hindu culture, which suggests prolonged socio-economic interaction with maritime trading partners of the Indosphere in the west. By the 6th century a civilisation, called Chenla or Zhenla in Chinese annals, firmly replaced Funan, as it controlled larger, more undulating areas of Indochina and maintained more than a singular centre of power.', 1, '2024-03-30 19:24:20', '2024-03-30 22:24:17'),
(2, 'FUNAN KINGDOM (1ST CENTURY – 550/627)', '7411.jpg', 'The Early history of Cambodia follows the prehistoric and protohistoric development of Cambodia as a country in mainland Southeast Asia. Thanks to archaeological work carried out since 2009 this can now be traced back to the Neolithic period. As excavation sites have become more numerous and modern dating methods are applied, settlement traces of all stages of human civil development from neolithic Hunter-gatherer groups to organized preliterate societies are documented in the region. Historical records of a political structure on territory that is now modern-day Cambodia first appear in Chinese annals in reference to Funan, a polity that encompassed the southernmost part of the Indochinese peninsula during the 1st to 6th centuries. Centered at the lower Mekong, Funan is noted as the oldest regional Hindu culture, which suggests prolonged socio-economic interaction with maritime trading partners of the Indosphere in the west. By the 6th century a civilization, titled Chenla or Zhenla in Chinese annals, had firmly replaced Funan, as it controlled larger, more undulating areas of Indochina and maintained more than a singular center of power.', 1, '2024-03-30 19:25:21', '2024-03-30 19:25:21'),
(3, 'CHENLA KINGDOM (6TH CENTURY – 802)', '6910.webp', 'The History of the Chinese Sui dynasty contains records that a state called Chenla sent an embassy to China in 616 or 617 CE It says, that Chenla was a vassal of Funan, but under its ruler Citrasena-Mahendravarman conquered Funan and gained independence. Most of the Chinese recordings on Chenla, including that of Chenla conquering Funan, have been contested since the 1970s as they are generally based on single remarks in the Chinese annals, as author Claude Jacques emphasised the very vague character of the Chinese terms \'Funan\' and \'Chenla\', while more domestic epigraphic sources become available. Claude Jacques summarises: \'Very basic historical mistakes have been made\' because \'the history of pre-Angkorean Cambodia was reconstructed much more on the basis of Chinese records than on that of [Cambodian] inscriptions\' and as new inscriptions were discovered, researchers \'preferred to adjust the newly discovered facts to the initial outline rather than to call the Chinese reports into question\'.', 1, '2024-03-30 19:26:42', '2024-03-30 19:26:42'),
(4, 'KHMER EMPIRE (802–1431)', '6490.jpg', 'The six centuries of the Khmer Empire are characterised by unparalleled technical and artistic progress and achievements, political integrity and administrative stability. The empire represents the cultural and technical apogee of the Cambodian and Southeast Asian pre-industrial civilisation. Bakong, one of the earliest temple mountain in Khmer architecture. The Khmer Empire was preceded by Chenla, a polity with shifting centres of power, which was split into Land Chenla and Water Chenla in the early 8th century. By the late 8th century Water Chenla was absorbed by the Malays of the Srivijaya Empire and the Javanese of the Shailandra Empire and eventually incorporated into Java and Srivijaya. Jayavarman II, ruler of Land Chenla, initiates a mythical Hindu consecration ceremony at Mount Kulen (Mount Mahendra) in 802 CE, intended to proclaim political autonomy and royal legitimacy. As he declared himself devaraja - god-king, divinely appointed and uncontested, he simultaneously declares independence from Shailandra and Srivijaya. He established Hariharalaya, the first capital of the Angkorean area near the modern town of Roluos. Indravarman I (877–889) and his son and successor Yasovarman I (889–900), who established the capital Yasodharapura ordered the construction of huge water reservoirs (barays) north of the capital. The water management network depended on elaborate configurations of channels, ponds, and embankments built from huge quantities of clayey sand, the available bulk material on the Angkor plain. Dikes of the East Baray still exist today, which are more than 7 km (4 mi) long and 1.8 km (1 mi) wide. The largest component is the West Baray, a reservoir about 8 km (5 mi) long and 2 km (1 mi) across, containing approximately 50 million m3 of water.', 1, '2024-03-30 19:27:31', '2024-03-30 19:27:31'),
(5, 'OUDONG ERA', '4277.jpg', 'In 1618, the capital of Cambodia was once again relocated and was moved to Oudong. udong was founded by King Srei Soryapor in 1601, after the abandonment of Longvek. Under the reign of King Ang Duong (1841-1850), he constructed canals, terraces, bridges and erected hundreds of pagodas in this region. From 1618 until 1866 it was formally called Oudong Meanchey, home to a succession of kings deposed from the former capital of Lovek by the invading Thais. In 1866, it was abandoned by King Norodom, taking his royal court along with him to the current capital, Phnom Penh. During the Cambodian Civil War the town was captured by Khmer Rouge in March 1974, and marched the citizens into the countryside, as well as executing a large number of prisoners. This proved to be a trial-run for the evacuation of Phnom Penh a year later.The Government retook the town in August the same year, but evidence of atrocities was widely discarded by international journalists. It was extensively damaged by the Khmer Rouge in 1977, along with the other temples, monuments, and religious structures there.', 1, '2024-03-30 19:28:18', '2024-03-30 19:28:18'),
(7, 'KHMER REPUBLIC AND THE WAR (1970–75)', '901.jpg', 'While visiting Beijing in 1970 Sihanouk was ousted by a military coup led by Prime Minister General Lon Nol and Prince Sisowath Sirik Matak in the early hours of 18 March 1970. However, as early as 12 March 1970, the CIA Station Chief told Washington that based on communications from Sirik Matak, Lon Nol\'s cousin, that \'the (Cambodian) army was ready for a coup\'.Lon Nol assumed power after the military coup and immediately allied Cambodia with the United States. Son Ngoc Thanh, an opponent of Pol Pot, announced his support for the new government. On 9 October, the Cambodian monarchy was abolished, and the country was renamed the Khmer Republic. The new regime immediately demanded that the Vietnamese communists leave Cambodia.In April 1970, US President Richard Nixon announced to the American public that US and South Vietnamese ground forces had entered Cambodia in a campaign aimed at destroying NVA base areas in Cambodia (see Cambodian Incursion). Lon Nol\'s control was reduced to small enclaves around the cities and main transportation routes. More than two million refugees from the war lived in Phnom Penh and other cities. On New Year\'s Day 1975, Communist troops launched an offensive which, in 117 days of the hardest fighting of the war, caused the collapse of the Khmer Republic. Simultaneous attacks around the perimeter of Phnom Penh pinned down Republican forces, while other CPK units overran fire bases controlling the vital lower Mekong resupply route. A US-funded airlift of ammunition and rice ended when Congress refused additional aid for Cambodia. The Lon Nol government in Phnom Penh surrendered on 17 April 1975, just five days after the US mission evacuated Cambodia.', 1, '2024-03-30 19:31:24', '2024-03-30 19:31:24'),
(8, 'VIETNAMESE OCCUPATION AND THE PRK (1979–93)', '7303.jpg', 'On 10 January 1979, after the Vietnamese army and the KUFNS (Kampuchean United Front for National Salvation) invaded Cambodia and overthrew the Khmer Rouge, the new People\'s Republic of Kampuchea (PRK) was established with Heng Samrin as head of state. Pol Pot\'s Khmer Rouge forces retreated rapidly to the jungles near the Thai border. The Khmer Rouge and the PRK began a costly struggle that played into the hands of the larger powers China, the United States and the Soviet Union. The Khmer People\'s Revolutionary Party\'s rule gave rise to a guerrilla movement of three major resistance groups – the FUNCINPEC (Front Uni National pour un Cambodge Indépendant, Neutre, Pacifique, et Coopératif), the KPLNF (Khmer People\'s National Liberation Front) and the PDK (Party of Democratic Kampuchea, the Khmer Rouge under the nominal presidency of Khieu Samphan).\'All held dissenting perceptions concerning the purposes and modalities of Cambodia’s future\'. Civil war displaced 600,000 Cambodians, who fled to refugee camps along the border to Thailand and tens of thousands of people were murdered throughout the country. Peace efforts began in Paris in 1989 under the State of Cambodia, culminating two years later in October 1991 in a comprehensive peace settlement. The United Nations was given a mandate to enforce a ceasefire and deal with refugees and disarmament known as the United Nations Transitional Authority in Cambodia (UNTAC).', 1, '2024-03-30 19:32:07', '2024-03-30 19:32:07'),
(9, 'MODERN CAMBODIA (1993–PRESENT)', '3357.jpg', 'On 23 October 1991, the Paris Conference reconvened to sign a comprehensive settlement giving the UN full authority to supervise a cease-fire, repatriate the displaced Khmer along the border with Thailand, disarm and demobilise the factional armies, and prepare the country for free and fair elections. Prince Sihanouk, President of the Supreme National Council of Cambodia (SNC), and other members of the SNC returned to Phnom Penh in November 1991, to begin the resettlement process in Cambodia.The UN Advance Mission for Cambodia (UNAMIC) was deployed at the same time to maintain liaison among the factions and begin demining operations to expedite the repatriation of approximately 370,000 Cambodians from Thailand. On 16 March 1992, the UN Transitional Authority in Cambodia (UNTAC) arrived in Cambodia to begin implementation of the UN settlement plan and to become operational on 15 March 1992 under Yasushi Akashi, the Special Representative of the U.N. Secretary General. UNTAC grew into a 22,000-strong civilian and military peacekeeping force tasked to ensure the conduct of free and fair elections for a constituent assembly. On 4 October 2004, the Cambodian National Assembly ratified an agreement with the United Nations on the establishment of a tribunal to try senior leaders responsible for the atrocities committed by the Khmer Rouge.[166] International donor countries have pledged a US$43 Million share of the three-year tribunal budget as Cambodia contributes US$13.3 Million. The tribunal has sentenced several senior Khmer Rouge leaders since 2008. Cambodia is still infested with countless land mines, indiscriminately planted by all warring parties during the decades of war and upheaval.', 1, '2024-03-30 19:32:34', '2024-03-30 19:32:34');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `thumbnail` varchar(191) NOT NULL,
  `link` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `thumbnail`, `link`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'linkin', 'https://www.linkedin.com/in/nang-lengkea-6578612b4?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=ios_app', 1, '2024-03-30 20:43:24', '2024-03-30 21:28:02'),
(2, 'facebook', 'https://www.facebook.com/leng.kea.77/', 1, '2024-03-30 20:47:20', '2024-03-30 20:47:20'),
(3, 'telegram', 'https://t.me/LENGKEA', 1, '2024-03-30 20:49:24', '2024-03-30 21:27:17'),
(4, 'linkin', 'https://www.linkedin.com/in/van-virot-120bb0298?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=ios_app', 2, '2024-03-30 20:52:24', '2024-03-30 21:29:35'),
(5, 'facebook', 'https://www.facebook.com/pee.lee.54584', 2, '2024-03-30 20:53:08', '2024-03-30 21:29:55'),
(6, 'telegram', 'https://t.me/Vanvirot', 2, '2024-03-30 20:54:46', '2024-03-30 21:30:48'),
(7, 'linkin', 'https://www.linkedin.com/in/leanghak-seirey-41901a236/', 3, '2024-03-30 20:58:19', '2024-03-30 20:58:19'),
(8, 'facebook', 'https://www.facebook.com/sleanghak', 3, '2024-03-30 20:59:33', '2024-03-30 21:34:53'),
(9, 'telegram', 'https://t.me/SEIREY_Leanghak', 3, '2024-03-30 21:00:13', '2024-03-30 21:33:50'),
(10, 'facebook', '#', 4, '2024-03-30 21:05:20', '2024-03-30 21:05:20'),
(11, 'linkin', '#', 4, '2024-03-30 21:05:38', '2024-03-30 21:05:38'),
(12, 'telegram', '#', 4, '2024-03-30 21:06:18', '2024-03-30 21:06:18'),
(13, 'facebook', '#', 5, '2024-03-30 21:08:25', '2024-03-30 21:08:25'),
(14, 'linkin', '#', 5, '2024-03-30 21:08:39', '2024-03-30 21:08:39'),
(15, 'telegram', '#', 5, '2024-03-30 21:08:58', '2024-03-30 21:08:58'),
(16, 'facebook', '#', 6, '2024-03-30 21:13:55', '2024-03-30 21:13:55'),
(17, 'telegram', '#', 6, '2024-03-30 21:14:20', '2024-03-30 21:14:20'),
(18, 'linkin', '#', 6, '2024-03-30 21:14:39', '2024-03-30 21:14:39'),
(19, 'facebook', '#', 7, '2024-03-30 21:14:52', '2024-03-30 21:14:52'),
(20, 'linkin', '#', 7, '2024-03-30 21:15:08', '2024-03-30 21:15:08'),
(21, 'telegram', '#', 7, '2024-03-30 21:15:24', '2024-03-30 21:15:24');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_19_053203_create_media_table', 1),
(6, '2024_03_19_055315_create_about_us_table', 1),
(7, '2024_03_26_112607_history', 1),
(8, '2024_03_26_112726_civilization', 1),
(9, '2024_03_26_112737_art', 1),
(10, '2024_03_26_161006_site_config', 1),
(11, '2024_03_28_051900_contact', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(250) NOT NULL,
  `token` varchar(250) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_configs`
--

CREATE TABLE `site_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `header_logo` varchar(191) NOT NULL,
  `footer_logo` varchar(191) NOT NULL,
  `phone_number` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `address` varchar(191) NOT NULL,
  `telegram` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_configs`
--

INSERT INTO `site_configs` (`id`, `header_logo`, `footer_logo`, `phone_number`, `email`, `address`, `telegram`, `created_at`, `updated_at`) VALUES
(1, 'header_logo_7156.png', 'footer_logo_9911.png', '099717800', 'admin_kea@gmail.com', 'lengkea', 'lengkea', '0000-00-00 00:00:00', '2024-03-28 08:34:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `profile` varchar(191) NOT NULL,
  `position` varchar(191) NOT NULL,
  `email` varchar(250) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(250) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `profile`, `position`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'NANG LENGKEA', '844.jpg', 'Admin', 'admin@gamil.com', NULL, '$2y$10$cyzGQMvJHuaaTvkpsMNtmuqzyYDV.LBvB/3R9979.DustljvSAQ7C', '5sh0dtXr8Ysa3FNmNAIiMEfCcfch5Az1QT43cm4iaDc3UaJQKzTgSV6v7hzd', '2024-03-28 04:09:10', '2024-03-30 20:34:29'),
(2, 'Van virot', '7039.jpg', 'Backend developer', 'virot@gmail.com', NULL, '$2y$10$6q1KoW/NvF6jPDWGeLxVS.5yQlCG51mKZyXxGdBDgh746VkaSt8FO', NULL, '2024-03-30 20:51:15', '2024-03-30 20:51:15'),
(3, 'Leanghak SEIREY', '8804.jpg', 'Web Front-end Developer', 'leanghak@gmail.com', NULL, '$2y$10$p0921xEJifP.WH.ZJDTHKucxaostvd508H8RrtdTUufnFM55TwyLS', '8dIB2636jXuv5HZTh0FFXPpzMzJjpeyplrTSDaSJkeYKbM2cAGM1y3YKGelr', '2024-03-30 20:57:25', '2024-03-30 20:57:25'),
(4, 'Menghong Taihor', '7366.jpg', 'Web Developer', 'menghong@gmail.com', NULL, '$2y$10$OBK7rAffo3kQIXHLVotuC.Sa2ga1TU/a9s/w6Fu81x97M35m.oglC', NULL, '2024-03-30 21:03:06', '2024-03-30 21:03:06'),
(5, 'Himim Nheantusanak', '5010.jpg', 'Web Developer', 'nheantusanak@gmail.com', NULL, '$2y$10$/ql6ntX8XENROIIGbxqWa.600owFojMNPJjlM2Ys5w36Rpn3NFrJi', NULL, '2024-03-30 21:08:03', '2024-03-30 21:08:03'),
(6, 'Vit Phnumvann', '9814.jpg', 'Web Developer', 'phnumvann@gmail.com', NULL, '$2y$10$y7HNBLk.m5yu36k0KUcoN.xSxChVSkPWeIOt4qbq9ZLKda5EUbz3W', NULL, '2024-03-30 21:11:12', '2024-03-30 21:11:12'),
(7, 'CHUOK KIMSENG', '7668.jpg', 'Web Developer', 'kinseng@gmail.com', NULL, '$2y$10$miyaaClslEKSxR/3/Rd8BeCrfY8oKl.q1dlGkLPbNPNNOdkm0aTbu', NULL, '2024-03-30 21:13:06', '2024-03-30 21:13:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `art`
--
ALTER TABLE `art`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `civilizations`
--
ALTER TABLE `civilizations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `site_configs`
--
ALTER TABLE `site_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `art`
--
ALTER TABLE `art`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `civilizations`
--
ALTER TABLE `civilizations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_configs`
--
ALTER TABLE `site_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
