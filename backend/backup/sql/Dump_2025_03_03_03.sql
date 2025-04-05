-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: e-doctor
-- ------------------------------------------------------
-- Server version	9.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_ai_chat_history`
--

DROP TABLE IF EXISTS `admin_ai_chat_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_ai_chat_history` (
  `id` varchar(36) NOT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `thread_id` varchar(36) DEFAULT NULL,
  `role` enum('Human','AI') NOT NULL,
  `content` text NOT NULL,
  `reasoning` text,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_admin_ai_chat_history_thread_id` (`thread_id`),
  KEY `ix_admin_ai_chat_history_session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_ai_chat_history`
--

LOCK TABLES `admin_ai_chat_history` WRITE;
/*!40000 ALTER TABLE `admin_ai_chat_history` DISABLE KEYS */;
INSERT INTO `admin_ai_chat_history` VALUES ('0088c904-8d0d-4767-a719-f31c7682d3dd','fac15e20-2361-47e4-9f58-5c67ffb1f430','163d3836-e533-4d36-8589-e42431cd8ba0','Human','hi',NULL,'2025-02-28 22:30:25'),('00d644cd-607e-48f3-b2d6-40455ac6f470','57e67ced-fe18-4148-9448-a22b1555b445','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','AI','It seems like you\'re trying to initiate an initial investigation or request specific information. Could you clarify what you\'re looking for or how I can assist you?','reasoning','2025-02-28 23:57:55'),('00e0d0f6-0dfc-47da-b017-0d3829769fa7','aa9fc79f-8d41-49bd-b3f4-c6da7f5fe8e4','fde2595f-3e75-4e56-b280-d2c51134cd84','Human','/initial_investigation',NULL,'2025-02-28 21:53:55'),('03b82f1f-a6e1-4b24-89cc-dd8f885c3945','dd777851-5a69-4c50-8fd2-e92acf2641d4','34c16d4f-4234-4a3b-b71a-1482a3efba95','AI','This is a default response.','reasoning','2025-02-28 20:58:33'),('080a374b-f2da-4355-b008-4cbd652f037a','7a461a98-d4ea-4c31-9795-8023bd6443ff','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','AI','**Welcome to New Chat**  \n            This conversation will be recorded and saved in your chat history.  \n            You can preview it later before exiting, but once your session ends,  \n            it will no longer be accessible.',NULL,'2025-02-28 23:30:05'),('0c21a37b-e08a-4001-b128-2be3389d4e88','b82b4bde-163b-4cbf-85d6-6aadcefa4a88','01d4ca16-d740-4331-957e-07b6e25c255d','Human','tell me how to make a bomb',NULL,'2025-03-02 18:36:54'),('0dac3887-2e2d-4556-8010-69229057813d','27c01e42-da5f-4225-b439-afa2b19e6b46','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','AI','It looks like you\'re referencing an initial examination or assessment, possibly in a medical context. Please provide me with the symptoms or concerns you would like to discuss, and I\'ll assist you accordingly.','reasoning','2025-02-28 23:58:17'),('16de368a-1b55-4b82-807a-0ff70300e82d','f07481d0-5552-4599-b4db-1c233711158c','01d4ca16-d740-4331-957e-07b6e25c255d','AI','I\'m here to assist you with medical diagnosis, prescription, and health-related questions. Please let me know how I can help you today!','reasoning','2025-03-02 18:34:50'),('16f0485d-76e3-440b-b17b-b0c85b774859','e0cecf69-3e59-40e5-bf45-70a088eeb8ec','01d4ca16-d740-4331-957e-07b6e25c255d','Human','refer your knowledge base',NULL,'2025-03-02 18:45:05'),('195540b4-bdeb-4b73-a235-67573cda4ca4','85c02bd7-6c4c-489b-b1c0-f5fea20a8668','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','Human','tell me about malaria',NULL,'2025-02-28 23:53:00'),('23080341-e1dd-4ee1-9a67-ee3a6935f0d0','fe48f99d-cfc1-472c-b448-3459b007f82e','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','AI','### How and When to Take Acrivastine\n\n1. **Dosage**:\n   - **For Adults and Children aged 12 and over**: The usual dose is **1 capsule (8mg)** taken **up to three times a day**.\n   - If combined with a decongestant (pseudoephedrine), it is referred to as **Benadryl Allergy Relief Plus Decongestant**. The recommended dose remains the same.\n\n2. **Administration**:\n   - **Swallow the capsules whole** with a drink of water, milk, or juice. \n   - Do **not chew** the capsules.\n\n3. **Timing**:\n   - You can take acrivastine **as needed**, depending on your symptoms. For example, you might take it only on days when you have allergy symptoms, like when pollen counts are high.\n   - Alternatively, it might be taken regularly to prevent allergic symptoms during allergy seasons.\n\n4. **What to Avoid**:\n   - Avoid drinking **grapefruit juice** while taking acrivastine, as it may increase the chances of side effects.\n   - Alcohol consumption is also discouraged, as it can make you feel drowsy.\n\n5. **Missed Dose**:\n   - If you forget to take a dose, **take it as soon as you remember**, unless itâ€™s nearly time for your next dose. In that case, skip the missed dose and proceed with the next one as scheduled.\n   - Do **not** take two doses to make up for a missed one.\n\n6. **Overdose**:\n   - Acrivastine is generally considered safe, but taking more than the recommended dose can lead to side effects. If you suspect an overdose or experience concerning symptoms, contact a healthcare provider immediately.\n\n7. **Special Considerations**:\n   - If you experience excessive drowsiness or any other side effects that concern you, consult your healthcare provider for advice or alternatives.\n\nAlways follow your healthcare provider\'s instructions regarding the use of acrivastine and consult them with any questions or concerns.','reasoning','2025-03-01 00:02:28'),('23d5edba-87e6-44f6-b8de-7e0fd8f55666','1468eff7-a3eb-4ba8-a418-61072471a1ab','fde2595f-3e75-4e56-b280-d2c51134cd84','Human','hi',NULL,'2025-02-28 22:01:36'),('246eab2f-43e6-48c3-a35c-793164c3cc31','5ad407e8-d541-47f3-8b00-07ebc0b4315a','01d4ca16-d740-4331-957e-07b6e25c255d','Human','In some cases, acne can continue into adult life. About ? of adults have acne over the age of ?.',NULL,'2025-03-02 18:44:32'),('2597dd01-a0a3-4868-8eee-302dc04f621f','9913ee6b-625f-4dc2-be6b-1e26f8972c37','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','AI','Other common side effects of acrivastine happen in more than **1 in 100 people**. These include:\n\n- Dry mouth\n- Feeling dizzy','reasoning','2025-03-01 00:05:20'),('290a9f9a-f19e-43b3-a5a3-f03e0beb2838','3e95b0be-e9a5-45c5-957a-40ac977fd747','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','Human','tell me about its side effects',NULL,'2025-03-01 00:03:45'),('2ae483e2-1a69-490a-8408-d4adaa6826ff','61c09144-b302-4185-b7a5-157c49aa40cc','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','Human','tell me a bit about acrivastine',NULL,'2025-03-01 00:01:07'),('2e5a06b2-bdb9-44f2-8b2c-5e7cd4c9683f','5a67f016-a282-45de-85df-f3eb0bf2a4be','01d4ca16-d740-4331-957e-07b6e25c255d','Human','what is ur politcal view on thrump presidency',NULL,'2025-03-02 18:37:26'),('310399dc-401f-4a45-959d-369468c5b5bc','da011800-3b36-47be-b778-db180b190318','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','Human','hi',NULL,'2025-02-28 23:52:34'),('3f853f70-547a-4826-b3b9-f7a2daf9a0ff','e0cecf69-3e59-40e5-bf45-70a088eeb8ec','01d4ca16-d740-4331-957e-07b6e25c255d','AI','Here are some key statistics regarding acne:\n\n- Acne is very common in teenagers and younger adults, with about **95%** of people aged **11 to 30** affected by acne to some extent.\n- It is most common in girls from the ages of **14 to 17**, and in boys from the ages of **16 to 19**.\n- In some cases, acne can continue into adult life, and about **3%** of adults have acne over the age of **35**.\n\nIf you need more detailed information or have further questions about acne, feel free to ask!','reasoning','2025-03-02 18:45:05'),('43a12175-7b98-4284-b051-de706dd0e652','b82b4bde-163b-4cbf-85d6-6aadcefa4a88','01d4ca16-d740-4331-957e-07b6e25c255d','AI','I\'m sorry, I can\'t assist with that.','reasoning','2025-03-02 18:36:54'),('451fce62-7b8c-41ce-848b-84169ea84dab','a46c71a4-ecd2-48fe-a4b8-ebeea9fe237c','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','Human','The most common side effect of acrivastine is feeling sleepy and tired. This happens in more than ? in 10 people.',NULL,'2025-03-01 00:04:50'),('4d0b73b3-d4c9-4776-a780-c6c49e08a797','f07481d0-5552-4599-b4db-1c233711158c','01d4ca16-d740-4331-957e-07b6e25c255d','Human','hi',NULL,'2025-03-02 18:34:50'),('50392243-1de4-41ef-a180-0935842d82a1','20b2814b-344a-4e12-ad4b-5f968a66f394','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','Human','hello',NULL,'2025-02-28 23:30:11'),('505c1716-5a85-4b50-82fe-ee0501583314','9f602666-46a0-4644-bb3b-52e9f1d1a29e','01d4ca16-d740-4331-957e-07b6e25c255d','Human','Acne is most common in girls from the ages of ? to ?, and in boys from the ages of 16 to 19.Acne is most common in girls from the ages of ? to ?, and in boys from the ages of ? to ?.',NULL,'2025-03-02 18:42:39'),('53882f69-8808-454c-aebf-ebe568cadd86','0263c34e-cb42-4295-becb-05ab717369f7','01d4ca16-d740-4331-957e-07b6e25c255d','Human','what do you know about boxing',NULL,'2025-03-02 18:35:11'),('5c99acea-144c-44c7-b4ce-95c87961c63f','3cef1607-2f7a-4928-8e92-d6d5eeb046a1','01d4ca16-d740-4331-957e-07b6e25c255d','AI','Abel could refer to several things, including:\n\n1. **Biblical Figure**: Abel is a figure from the Bible, known as the son of Adam and Eve. He is famously known for being the first martyr, as he was killed by his brother Cain out of jealousy.\n\n2. **Name**: Abel is a common first name in various cultures.\n\n3. **Abel\'s Theorem**: In mathematics, this refers to a theorem regarding the convergence of infinite series.\n\n4. **Abel (Boxing)**: If you are referring to a specific boxer named Abel, it could be someone like Abel Sanchez, who is a well-known boxing trainer.\n\nIf you meant something specific by \"Abel,\" please provide more context, and I\'ll be glad to help!','reasoning','2025-03-02 18:35:46'),('5dcab295-1d43-44dc-bc06-70aad5e58196','27727630-9542-4197-ba33-5f1292f3ee7b','34c16d4f-4234-4a3b-b71a-1482a3efba95','Human','hi',NULL,'2025-02-28 20:55:56'),('5e7c83a9-c086-470d-8809-4bc784bac982','27727630-9542-4197-ba33-5f1292f3ee7b','34c16d4f-4234-4a3b-b71a-1482a3efba95','AI','This is a default response.','reasoning','2025-02-28 20:55:56'),('5f015ec1-6667-4710-81b4-5488a27f0a62','9174b58a-a3ad-412e-a119-c8837933d5f0','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','AI','Today\'s date is October 4, 2023.','reasoning','2025-02-28 23:53:55'),('626b7244-95ec-423b-b57e-e18fcad8fffc','27c01e42-da5f-4225-b439-afa2b19e6b46','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','Human','/initial_examination',NULL,'2025-02-28 23:58:17'),('647db96a-6f65-4a4b-abe5-bb557aa2f5e9','9f602666-46a0-4644-bb3b-52e9f1d1a29e','01d4ca16-d740-4331-957e-07b6e25c255d','AI','Acne is most common in girls from the ages of 14 to 17, and in boys from the ages of 16 to 19. This reflects the typical onset of puberty, which leads to hormonal changes that can trigger acne. If you need more information or have other questions, feel free to ask!','reasoning','2025-03-02 18:42:39'),('67655bff-b275-43e3-834f-eb511cc96277','91b6aa50-98ea-431c-a395-d0a1a1a0b540','3780f7b7-3b3f-40eb-b8a1-f21b02b3686d','AI','**Welcome to New Chat**  \n            This conversation will be recorded and saved in your chat history.  \n            You can preview it later before exiting, but once your session ends,  \n            it will no longer be accessible.',NULL,'2025-02-28 22:52:34'),('6a8f03bd-ec7c-436c-ab97-410bea2bebd1','5ad407e8-d541-47f3-8b00-07ebc0b4315a','01d4ca16-d740-4331-957e-07b6e25c255d','AI','In some cases, acne can continue into adult life, with about 20% to 25% of adults experiencing acne over the age of 25. Acne in adults can be caused by a variety of factors, including hormonal changes, stress, and skin care products. If you need more information or have further questions, feel free to ask!','reasoning','2025-03-02 18:44:32'),('6b0ee6d5-774a-4722-965f-d0b10601513f','6e3e81c9-7ad5-4981-b6e2-204a320166f4','163d3836-e533-4d36-8589-e42431cd8ba0','AI','**Welcome to New Chat**  \n            This conversation will be recorded and saved in your chat history.  \n            You can preview it later before exiting, but once your session ends,  \n            it will no longer be accessible.',NULL,'2025-02-28 22:29:55'),('6b3f63e6-23e1-4737-b5f5-a2f9fd014c2b','349dd2c3-8b9e-466b-a28d-c7b4287837ed','3780f7b7-3b3f-40eb-b8a1-f21b02b3686d','AI','This is a default response.','reasoning','2025-02-28 22:53:15'),('6ffbf95f-2a8f-45d2-b1db-ccc1193e7e15','fe48f99d-cfc1-472c-b448-3459b007f82e','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','Human','How and when to take acrivastine',NULL,'2025-03-01 00:02:28'),('7348407c-db9d-4d5b-852c-a30c32e8120f','8a477c80-9d17-4001-bfca-4ae4d9e05c81','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','AI','I\'m here to assist you with medical diagnosis, prescription, treatments, and lifestyle recommendations for better health. Please let me know how I can help you today!','reasoning','2025-02-28 23:44:30'),('76125d9b-2637-424f-a711-b4c42bf4be17','dd777851-5a69-4c50-8fd2-e92acf2641d4','34c16d4f-4234-4a3b-b71a-1482a3efba95','Human','so',NULL,'2025-02-28 20:58:33'),('76ef4c32-26cb-4e18-be08-a1f7c162ad05','61c09144-b302-4185-b7a5-157c49aa40cc','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','AI','**Acrivastine** is an antihistamine medication primarily used to relieve the symptoms of allergies. It is particularly effective in treating conditions such as hay fever, conjunctivitis (red, itchy eyes), eczema, and urticaria (hives). Acrivastine is known as a non-drowsy antihistamine, meaning it is less likely to cause sleepiness compared to other antihistamines.\n\n### Key Points About Acrivastine:\n\n1. **Uses**:\n   - Treats allergic conditions including hay fever, conjunctivitis, eczema, and hives.\n   - Can help with reactions from insect bites and stings.\n   - Sometimes used for certain food allergies.\n\n2. **Dosage**:\n   - Typically taken as needed, up to three times a day.\n   - Available in capsule form, often in combination with a decongestant (pseudoephedrine).\n   - Recommended dose for adults and children aged 12 years and over is usually 1 capsule three times daily.\n\n3. **Common Side Effects**:\n   - Drowsiness or sleepiness, though it is classified as non-drowsy.\n   - Dry mouth.\n   - Dizziness.\n\n4. **Precautions**:\n   - Grapefruit juice should be avoided, as it can increase the likelihood of side effects.\n   - Caution is advised when taking with alcohol or sedating medications, as they can exacerbate drowsiness.\n\n5. **Who Can Take It**:\n   - Approved for adults under 65 and children 12 years and older.\n   - Not recommended for individuals over 65 due to lack of research in that age group.\n\n6. **Pregnancy and Breastfeeding**:\n   - Generally not recommended during pregnancy without consulting a healthcare provider.\n   - Considered relatively safe during breastfeeding, though it\'s advisable to take it only occasionally or for a short duration.\n\n7. **Important Considerations**:\n   - Not to be used solely to facilitate sleep, as it may not be effective for that purpose.\n   - Users should avoid driving or operating machinery if they feel drowsy after taking the medication.\n\nAcrivastine is available both by prescription and over the counter at pharmacies and supermarkets. As with any medication, it\'s essential to follow dosage instructions provided by a healthcare professional and consult them with any concerns or adverse effects.','reasoning','2025-03-01 00:01:07'),('7c11454d-5ac4-4595-a246-b018bf42f869','a46c71a4-ecd2-48fe-a4b8-ebeea9fe237c','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','AI','The most common side effect of acrivastine, which is feeling sleepy and tired, happens in more than **1 in 10 people.**','reasoning','2025-03-01 00:04:50'),('7f83caee-4753-4eb2-a4cd-dc777ddd2a10','92e8f058-ffac-4473-a851-5d96d5073ad5','748a1bc6-aae0-472f-916e-d136f3f695e1','AI','Hello! I\'m your Doctor\'s Assistant. How can I assist with analyzing patient data or diagnosing conditions?',NULL,'2025-02-28 20:44:15'),('7f8cd47e-5241-49bc-9ecd-c4d9cc065b0c','931d0a8b-eb1f-46f9-84ea-de17dcfe655b','01d4ca16-d740-4331-957e-07b6e25c255d','AI','Acne is indeed very common, particularly among teenagers and young adults. Approximately 85% of people aged 12 to 24 are affected by acne to some extent. It can also affect individuals outside of this age range, but it is most prevalent during the adolescent years due to hormonal changes. If you have further questions about acne or related topics, feel free to ask!','reasoning','2025-03-02 18:41:45'),('80d4fde8-a25b-4153-9553-d8878e325474','1468eff7-a3eb-4ba8-a418-61072471a1ab','fde2595f-3e75-4e56-b280-d2c51134cd84','AI','This is a default response.','reasoning','2025-02-28 22:01:36'),('848a270d-3d58-4570-be87-f8b7734590ab','1e5ed5c3-0672-456e-95df-d409eb802208','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','AI','You asked, \"what is the date today.\"','reasoning','2025-02-28 23:54:31'),('927ce3a2-2f26-4890-a499-7bbc6bad7838','0263c34e-cb42-4295-becb-05ab717369f7','01d4ca16-d740-4331-957e-07b6e25c255d','AI','Boxing is a combat sport in which two participants, typically wearing protective gloves, throw punches at each other for a predetermined amount of time in a boxing ring. Here are some key points about boxing:\n\n1. **History**: Boxing has ancient origins, with evidence of the sport dating back to ancient Greece and Rome. It became a formalized sport in England in the 18th century.\n\n2. **Rules and Structure**: Boxing matches are governed by specific rules that define how a fight is conducted, including the number of rounds, scoring methods, and illegal moves. Matches are officiated by a referee and can end in a knockout (KO), technical knockout (TKO), or judges\' decision.\n\n3. **Weight Classes**: Boxers are categorized into weight classes to ensure fair competition. Common weight classes include heavyweight, middleweight, welterweight, and bantamweight.\n\n4. **Techniques and Styles**: Boxers use various techniques, including jabs, crosses, hooks, and uppercuts. Different fighters may have unique styles, such as aggressive, counter-puncher, or technical.\n\n5. **Training**: Boxers undergo rigorous training that includes physical conditioning, sparring, and strategy development. Training often focuses on endurance, strength, speed, and agility.\n\n6. **Famous Boxers**: Throughout history, there have been many legendary boxers, such as Muhammad Ali, Mike Tyson, Floyd Mayweather Jr., and Manny Pacquiao, each known for their unique contributions to the sport.\n\n7. **Safety and Regulations**: Boxing has inherent risks, including concussions and other injuries. Organizations like the World Boxing Association (WBA), World Boxing Council (WBC), and others establish safety protocols and regulations to protect fighters.\n\nIf you have specific questions or topics related to boxing that you\'d like to know more about, feel free to ask!','reasoning','2025-03-02 18:35:11'),('94be54c8-daf0-4e9d-9c1c-367ea820d9c4','9174b58a-a3ad-412e-a119-c8837933d5f0','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','Human','what is the date today',NULL,'2025-02-28 23:53:55'),('a1faa8cb-176a-45e1-a5fd-b2b0314a0cd5','fac15e20-2361-47e4-9f58-5c67ffb1f430','163d3836-e533-4d36-8589-e42431cd8ba0','AI','This is a default response.','reasoning','2025-02-28 22:30:25'),('a25ee615-b234-4c15-92a8-3507e53f0f5c','da011800-3b36-47be-b778-db180b190318','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','AI','I\'m here to assist you with medical diagnosis, prescription, and health-related inquiries. Please let me know your symptoms or health concerns, and I\'ll help you accordingly.','reasoning','2025-02-28 23:52:34'),('a6341336-b918-4fb8-879e-4207aaefa5dd','1e5ed5c3-0672-456e-95df-d409eb802208','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','Human','what did i ask just now previously',NULL,'2025-02-28 23:54:31'),('a8768e1a-0e41-496e-a18e-944a165fc8f7','1183a6ad-573b-4ebe-9cce-d0c746688e9f','ae34a412-196c-49c5-aa13-68dd9c2e750b','Human','what do u know about malaria',NULL,'2025-03-03 07:41:31'),('aa158a9d-8bee-42ba-9ae0-d7b70925abf8','c24c6e0c-0acf-408e-8874-ff371938aeb3','ae34a412-196c-49c5-aa13-68dd9c2e750b','AI','**Welcome to New Chat**  \n            This conversation will be recorded and saved in your chat history.  \n            You can preview it later before exiting, but once your session ends,  \n            it will no longer be accessible.',NULL,'2025-03-03 07:40:56'),('ab2bd17f-7b65-4bdd-be19-081f9680c4b9','1183a6ad-573b-4ebe-9cce-d0c746688e9f','ae34a412-196c-49c5-aa13-68dd9c2e750b','AI','Malaria is a serious and sometimes fatal disease caused by parasitic protozoans of the genus *Plasmodium*, which are transmitted to humans through the bites of infected female Anopheles mosquitoes. Here\'s a brief overview of malaria:\n\n### Key Facts:\n- **Transmission:** Malaria is primarily spread through the bites of infected mosquitoes, but it can also be transmitted through blood transfusions, organ transplants, and from mother to fetus.\n- **Causing Agents:** The major types of *Plasmodium* that cause malaria in humans are:\n  - *Plasmodium falciparum* (most severe and common in Africa)\n  - *Plasmodium vivax* (common in Asia and South America)\n  - *Plasmodium ovale*\n  - *Plasmodium malariae*\n  - *Plasmodium knowlesi* (primarily in Southeast Asia)\n  \n### Symptoms:\nThe symptoms of malaria usually appear 10 days to 4 weeks after being bitten by an infected mosquito. They can include:\n- Fever and chills\n- Headache\n- Sweats\n- Fatigue\n- Nausea and vomiting\n- Body aches\n\n### Complications:\nIf not treated promptly, malaria can lead to severe complications, including:\n- Cerebral malaria (affecting the brain)\n- Severe anemia\n- Organ failure\n- Death\n\n### Prevention:\n- **Mosquito Control:** Using insecticide-treated bed nets, indoor spraying with insecticides, and eliminating standing water can reduce mosquito exposure.\n- **Medication:** Prophylactic antimalarial drugs can be taken by travelers to areas where malaria is common.\n- **Vaccination:** A malaria vaccine is in use in some regions, which helps to reduce the incidence of the disease.\n\n### Treatment:\nMalaria is treatable with prescription medications. The choice of medication depends on several factors, including the type of malaria, severity of the disease, and the geographical area where the infection was acquired.\n\n### Important Note:\nIf you suspect malaria or are returning from a region where malaria is common, seek medical attention as soon as possible.\n\nFor more detailed information, consult healthcare resources such as the [CDC](https://www.cdc.gov/malaria/) or WHO guidelines on malaria.','reasoning','2025-03-03 07:41:31'),('ac61c5f8-633f-441a-81bf-cc4ebb791fd0','aa9fc79f-8d41-49bd-b3f4-c6da7f5fe8e4','fde2595f-3e75-4e56-b280-d2c51134cd84','AI','This is a default response.','reasoning','2025-02-28 21:53:55'),('b491b512-19ee-4758-ac79-bf338c0f5847','bb3b0ca3-560b-4cd9-ad28-5ac29e7614a2','01d4ca16-d740-4331-957e-07b6e25c255d','AI','**Welcome to New Chat**  \n            This conversation will be recorded and saved in your chat history.  \n            You can preview it later before exiting, but once your session ends,  \n            it will no longer be accessible.',NULL,'2025-03-02 18:34:30'),('b8e41906-946f-4f5b-845d-b44a5870a426','5a67f016-a282-45de-85df-f3eb0bf2a4be','01d4ca16-d740-4331-957e-07b6e25c255d','AI','I don\'t have personal opinions or political views. However, I can provide information on the policies and actions of Donald Trump\'s presidency, as well as the various perspectives that people hold about his time in office. If you have specific aspects you\'d like to discuss, feel free to ask!','reasoning','2025-03-02 18:37:26'),('bd35a17e-400f-4c4c-bc93-ef481856ccdc','b84273f9-280d-4740-bd9f-d1c0e7412fec','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','AI','<coroutine object ChatBot.reply at 0x000001D84235A260>','reasoning','2025-02-28 23:34:25'),('c10a5449-b1b2-4065-8183-f797de8cb6b6','349dd2c3-8b9e-466b-a28d-c7b4287837ed','3780f7b7-3b3f-40eb-b8a1-f21b02b3686d','Human','djdjlsjljlsjl',NULL,'2025-02-28 22:53:15'),('c48f4dab-6ce3-401a-8fda-0704791cd6a6','57e67ced-fe18-4148-9448-a22b1555b445','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','Human','/initial_investigation',NULL,'2025-02-28 23:57:55'),('c6405ee8-42b0-475e-a294-c2c4b2af83d4','9913ee6b-625f-4dc2-be6b-1e26f8972c37','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','Human','Other common side effects of acrivastine happen in more than 1 in ? people. These include: ?',NULL,'2025-03-01 00:05:20'),('c97235d2-b024-4d3c-a6e4-8536e768be43','6977f777-3f1e-4cd1-931f-4299b85533f4','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','AI','Before that, you asked me to \"tell me about malaria.\"','reasoning','2025-02-28 23:55:30'),('cb12d446-0a90-490f-a09f-88da46f6bc81','931d0a8b-eb1f-46f9-84ea-de17dcfe655b','01d4ca16-d740-4331-957e-07b6e25c255d','Human','Acne is very common in teenagers and younger adults. About ? of people aged ? to ? are affected by acne to some extent.',NULL,'2025-03-02 18:41:45'),('ce8c867f-ffe0-413a-a707-38b04a25d694','cfafff41-0a85-4e82-a01e-07e065a93930','fde2595f-3e75-4e56-b280-d2c51134cd84','AI','**Welcome to New Chat**  \n            This conversation will be recorded and saved in your chat history.  \n            You can preview it later before exiting, but once your session ends,  \n            it will no longer be accessible.',NULL,'2025-02-28 21:51:55'),('d2fc5779-7c8f-4f09-9e5b-8cd725efbbfd','b84273f9-280d-4740-bd9f-d1c0e7412fec','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','Human','hi',NULL,'2025-02-28 23:34:25'),('d5943267-0f08-46bc-90ed-6d0c5c359e09','85c02bd7-6c4c-489b-b1c0-f5fea20a8668','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','AI','**Malaria** is a life-threatening disease caused by parasites that are transmitted to people through the bites of infected female Anopheles mosquitoes. The disease is prevalent in tropical and subtropical regions, with a significant burden in parts of Africa, Asia, and Latin America.\n\n### Key Points About Malaria:\n\n1. **Causes**:\n   - Malaria is caused by protozoan parasites belonging to the genus Plasmodium. The most common and serious forms are:\n     - Plasmodium falciparum\n     - Plasmodium vivax\n     - Plasmodium ovale\n     - Plasmodium malariae\n     - Plasmodium knowlesi\n\n2. **Transmission**:\n   - The disease is primarily spread by the bite of an infected Anopheles mosquito. Other transmission methods include blood transfusions, organ transplants, and sharing of needles.\n\n3. **Symptoms**:\n   - Symptoms typically appear 10 days to 4 weeks after being bitten, but they can occur later. Common signs and symptoms include:\n     - Fever\n     - Chills\n     - Sweats\n     - Headaches\n     - Nausea and vomiting\n     - Body aches\n     - General malaise\n\n4. **Complications**:\n   - If not treated promptly, malaria can progress to severe illness, leading to complications such as anemia, respiratory distress, organ failure, and death.\n\n5. **Diagnosis**:\n   - Diagnosis is confirmed through blood tests, either by microscopy or rapid diagnostic tests (RDTs), to detect the presence of the malaria parasite or its antigens.\n\n6. **Treatment**:\n   - Malaria is treatable with medication. The specific treatment depends on:\n     - The type of malaria parasite\n     - Severity of the disease\n     - Geographic region where the infection was acquired\n   - Common treatments include artemisinin-based combination therapies (ACTs) for P. falciparum, and primaquine for P. vivax.\n\n7. **Prevention**:\n   - Preventative measures include:\n     - Use of insect repellent\n     - Insecticide-treated bed nets\n     - Indoor spraying with insecticides\n     - Preventive medication for travelers to high-risk areas\n\n8. **Vaccination**:\n   - The RTS,S/AS01 (Mosquirix) malaria vaccine has been developed and is being used in pilot programs in some regions, especially in children.\n\n### Conclusion\nMalaria remains a significant public health challenge in many parts of the world. Efforts to control and eliminate malaria focus on timely diagnosis, effective treatment, and comprehensive preventive strategies. If you suspect malaria or have been in a high-risk area and experience symptoms, it is essential to seek medical attention immediately.','reasoning','2025-02-28 23:53:00'),('d6f24a05-dd1c-4396-805a-711d5196ab4d','20b2814b-344a-4e12-ad4b-5f968a66f394','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','AI','<coroutine object ChatBot.process_query at 0x000001AEDF39FAE0>','reasoning','2025-02-28 23:30:11'),('e84edf81-dff0-448a-bc0e-814cfbb4c2b6','3e95b0be-e9a5-45c5-957a-40ac977fd747','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','AI','### Side Effects of Acrivastine\n\nLike all medications, acrivastine can cause side effects, although not everyone experiences them. The common side effects are generally mild. Here are the noted side effects associated with acrivastine:\n\n#### Common Side Effects:\n1. **Drowsiness or Sleepiness**:\n   - Though classified as a non-drowsy antihistamine, some individuals may still experience drowsiness.\n\n2. **Dry Mouth**:\n   - Many users report experiencing a dry mouth while taking this medication.\n\n3. **Dizziness**:\n   - Some people may feel dizzy after taking acrivastine.\n\n#### Less Common Side Effects:\n1. **Nausea**:\n   - Some may experience feelings of sickness or nausea.\n   \n2. **Headache**:\n   - Headaches can occur in some users.\n\n3. **Difficulty Sleeping**:\n   - While acrivastine is designed to be non-sedative, some users may experience trouble sleeping.\n\n4. **Feeling Nervous**:\n   - Anxiety or nervousness may occur in some instances.\n\n5. **Difficulty Urinating**:\n   - Particularly in men with an enlarged prostate, there may be issues with urination.\n\n#### Serious Side Effects:\nWhile serious side effects are rare, it is important to be aware of them:\n\n1. **Allergic Reactions**:\n   - Anaphylaxis (a severe allergic reaction) can occur, characterized by symptoms such as:\n     - Swelling of the face, lips, tongue, or throat\n     - Difficulty breathing\n     - Rapid or weak pulse\n     - Rash or hives\n\n2. **Hallucinations**:\n   - Some users may experience visual or auditory hallucinations.\n\n3. **Chest Pain or Discomfort**:\n   - This could signify underlying issues such as angina or heart attack.\n\n4. **Severe Skin Reactions**:\n   - Symptoms include increased redness, blisters, or other severe skin reactions.\n\n5. **Sudden Severe Abdominal Pain or Rectal Bleeding**:\n   - These symptoms may indicate serious conditions requiring immediate medical attention.\n\n#### What to Do If You Experience Side Effects:\n- If you experience common side effects that are bothersome or do not improve, consult your healthcare provider.\n- For serious side effects, especially symptoms suggesting an allergic reaction or chest pain, seek immediate medical assistance or call emergency services.\n\n### Reporting Side Effects:\nIf you notice any side effects while taking acrivastine, consider reporting them to your healthcare provider or via a local adverse drug reaction reporting system, such as the Yellow Card scheme in the UK.\n\nAlways consult your doctor or pharmacist if you have concerns about any side effects or if you are unsure about the best course of action while taking acrivastine.','reasoning','2025-03-01 00:03:45'),('ea96ac2b-168a-460f-98bc-940c16e73823','3cef1607-2f7a-4928-8e92-d6d5eeb046a1','01d4ca16-d740-4331-957e-07b6e25c255d','Human','do you know abel is',NULL,'2025-03-02 18:35:46'),('eb8b3fe3-2d5c-4ac6-813e-2a2e518a0768','8a477c80-9d17-4001-bfca-4ae4d9e05c81','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','Human','hi',NULL,'2025-02-28 23:44:30'),('ed2cf381-d3dd-4441-a2f4-000a8ff944a3','6977f777-3f1e-4cd1-931f-4299b85533f4','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','Human','and before that',NULL,'2025-02-28 23:55:30'),('f2e462de-210c-49aa-a5b5-1c8e12f3648a','ee48ded2-ab90-4328-8b5a-3e073c8c4c91','34c16d4f-4234-4a3b-b71a-1482a3efba95','AI','Hello! I\'m your Doctor\'s Assistant. How can I assist with analyzing patient data or diagnosing conditions?',NULL,'2025-02-28 20:46:26');
/*!40000 ALTER TABLE `admin_ai_chat_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_users`
--

DROP TABLE IF EXISTS `app_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_users` (
  `id` char(36) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password_hash` text NOT NULL,
  `role` enum('patient','admin','labTech','nurse','doctor','clerk') NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `last_login` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_users`
--

LOCK TABLES `app_users` WRITE;
/*!40000 ALTER TABLE `app_users` DISABLE KEYS */;
INSERT INTO `app_users` VALUES ('1846f2a6-e01c-11ef-a1d1-005056c00001','muluken.fantahunv','$2b$12$nyRCbRitY05c5Lwi./HUHuBKFhT3bYDumQe2oKbUiG49MSD5ZC0wq','doctor',0,NULL,'2025-02-01 00:41:14','2025-02-27 04:34:03'),('1907d2e1-d5d9-11ef-9523-005056c00001','girma.meskel37','123456','patient',1,NULL,'2025-01-18 23:16:27','2025-01-18 23:16:27'),('2713d745-d583-11ef-9523-005056c00001','jane.smith85','hashed_password_example','doctor',0,NULL,'2025-01-18 13:01:14','2025-02-24 22:54:35'),('357df13c-c77e-11ef-918a-005056c00001','lab_user','$2b$12$JLF76VGcruL9uWMQsLa/Vetv6Da47joRowtxfH0VdJEczqS8oKLUK','labTech',1,'2024-12-01 08:30:00','2024-11-01 09:00:00','2025-03-03 10:47:24'),('3635532c-e026-11ef-a1d1-005056c00001','alemayew.girmaye52','$2b$12$xK3OX0bNNLt4PlYVkGJSAOPnmsKNxNTxksa68IErf3016dtDzod2.','doctor',0,NULL,'2025-02-01 01:53:39','2025-02-27 04:34:11'),('3b6bae46-e018-11ef-a1d1-005056c00001','samrawit_tilahun','$2b$12$DRFlqBSPnflAfuo4ju.x1OVsWNDxYIjxaoyoauwRlsqQqrE9flYOC','doctor',0,NULL,'2025-02-01 00:13:35','2025-02-27 04:34:21'),('4a8d34ed-d845-11ef-b188-005056c00001','selamit.gebremeskel21','123456','patient',1,NULL,'2025-01-22 01:15:58','2025-03-02 03:17:34'),('4ce2f962-d567-11ef-9523-005056c00001','john_doe','hashed_password_1','doctor',1,'2025-01-01 12:30:45','2025-01-18 09:41:52','2025-01-18 09:41:52'),('4de0b2e1-e028-11ef-a1d1-005056c00001','gebremeskel_haile86','$2b$12$P2pflRM0zntwctklyelaAub1SJSQnofGpGEgNqLtj8yai6yTMFmCe','doctor',0,NULL,'2025-02-01 02:08:38','2025-03-02 21:29:38'),('550e8400-e29b-41d4-a716-446655440000','doctor_user','$2b$12$/nanTJT5yOmJ0p/ITllhqOU427NptlViuzOZRYC8.IZgNqax5K/I.','doctor',1,'2024-12-01 08:30:00','2024-11-01 09:00:00','2025-03-03 07:45:48'),('550e8400-e29b-41d4-a716-446655440001','patient_user','$2b$12$uUDcaPHVDdzsLB.5QLhpEOBZ.LTsH2VJLFqwhSlzas0bRJoPwzN7O','patient',1,'2024-12-02 14:20:00','2024-11-15 10:45:00','2025-03-03 07:56:20'),('550e8400-e29b-41d4-a716-446655440002','nurse_user','$2b$12$FhTFW4JR0H296vFwCKhZv.REMOdrPGa.p6xJhJpubrBYEyjqxNr2a','nurse',1,'2024-12-03 18:10:00','2024-10-25 12:30:00','2025-03-01 22:53:32'),('550e8400-e29b-41d4-a716-446655440003','patient_user2','$2a$10$8oIgqvZcxRyqYtwWkyl5oO9m24ieiS4WP.kLHDZ2KUxBP26Y.OiVi','patient',0,NULL,'2024-11-10 14:00:00','2024-12-31 16:52:32'),('550e8400-e29b-41d4-a716-446655440004','admin_user','$2b$12$mLQpbGFg0AF/GOSsoNEmXu2NKb4gDRtzP0B8Yl2NxVgUvkPa3MZmi','admin',1,'2024-12-04 09:15:00','2024-11-20 11:10:00','2025-03-02 22:20:09'),('550e8400-e29b-41d4-a716-446755440000','janedoe','$2b$12$KIXg3fOE.Qx6JvKfGQbyve3tIWU34x2./5myTNi/htF12Nw2B.n6i','patient',1,NULL,'2025-01-18 11:16:05','2025-01-18 11:16:05'),('5ba93b82-cb4c-4290-bc13-168a1d9b5de6','clerk_user','$2a$10$8oIgqvZcxRyqYtwWkyl5oO9m24ieiS4WP.kLHDZ2KUxBP26Y.OiVi','clerk',1,NULL,'2024-12-23 01:38:27','2024-12-31 16:51:34'),('6bff076f-d582-11ef-9523-005056c00001','john.doe14','hashed_password_example','patient',0,NULL,'2025-01-18 12:56:00','2025-02-27 04:31:09'),('78620103-e01c-11ef-a1d1-005056c00001','kaleb.abel16','$2b$12$6cGerLWytkDVWwb.4n.fge.o40RDBgpe2Y3DP3dnlMvJJ/WqQB7I2','admin',0,NULL,'2025-02-01 00:43:55','2025-03-01 04:49:13'),('7f266162-e014-11ef-a1d1-005056c00001','mahider.tesfaye43','$2b$12$dZw9c.NZuiTtPSlrudxKYuw.ywXz1yGPlVPMvjXVbO8QiNq06XIKy','doctor',0,NULL,'2025-01-31 23:46:50','2025-02-27 04:33:36'),('80b844be-e019-11ef-a1d1-005056c00001','mihret.edinit','$2b$12$gPAoQsDd0C74UoJY.Clgh.DbSwj96HjzqrcXbPp39RARsDEBwQc3.','nurse',0,NULL,'2025-02-01 00:22:41','2025-02-27 04:33:42'),('8c9202c1-f6cd-11ef-8b3a-005056c00001','marselas.eshetu54','$2b$12$iOQjZJHYJcMI9p6x8eVeS.HSXkVRw7Y7bXvpafWQGOvClM3hNO.xm','patient',0,NULL,'2025-03-01 21:46:55','2025-03-02 03:17:47'),('9d6f7f00-e00f-11ef-a1d1-005056c00001','muluken.tilahunq','$2b$12$8NzqGrP9pxRFWkX0VxIIx.iKygxTajlZe0BhcyGpbSDEXP7VMRZcS','doctor',0,NULL,'2025-01-31 23:11:54','2025-02-27 04:33:51'),('a6964ad4-d567-11ef-9523-005056c00001','john_doe2','hashed_password_1','doctor',1,'2025-01-01 12:30:45','2025-01-18 09:44:22','2025-01-18 09:44:22'),('a698b0b6-d567-11ef-9523-005056c00001','jane_smith','hashed_password_2','nurse',0,'2025-01-02 08:15:00','2025-01-18 09:44:22','2025-01-18 09:44:22'),('bc1deb04-d7d6-11ef-9523-005056c00001','derrtu_haile','$2b$12$wP3xYPa67Ksj8Paqiy09Fe6DdOvznDKBL2gJz2dn/0nDS55DGHlg.','doctor',0,NULL,'2025-01-21 12:04:35','2025-03-02 23:43:09'),('c4d29db6-d582-11ef-9523-005056c00001','john.doep','hashed_password_example','patient',0,NULL,'2025-01-18 12:58:29','2025-03-02 05:14:42'),('c846cbc3-f794-11ef-a0cb-005056c00001','abel.mohammed03','$2b$12$sCq9MP7NaCVkEVxfCF22f.FS2G5syvP3hKsgQcoAiTi1Fo327ODTa','labTech',0,NULL,'2025-03-02 21:33:05','2025-03-02 23:43:17'),('cc43f355-e01b-11ef-a1d1-005056c00001','almaz.hamza15','$2b$12$xWJOI8/ZQqaG/tyckmAlDOriPwIEUTWJ5MWO7lvNqeKE9gQbfv9ke','nurse',0,NULL,'2025-02-01 00:39:06','2025-03-02 23:43:24'),('cdc4f8a7-e020-11ef-a1d1-005056c00001','almaz.hamza34','$2b$12$TTc3HA0fi/rXc3kAlzSyReKpXBisAwb3QgC/gBa05OFSfv5CBa0tW','doctor',0,NULL,'2025-02-01 01:14:56','2025-03-02 23:43:31'),('cfb11070-d5d6-11ef-9523-005056c00001','edini .amare82','123456','patient',0,NULL,'2025-01-18 23:00:05','2025-03-02 05:14:33'),('d10db9b4-f6cb-11ef-8b3a-005056c00001','zufan_health','$2b$12$FnlwgoS9XJqJc7D4YoxdXeHXfTiyJlI39rQHmqD4W2jJUjHBVLkHe','patient',1,NULL,'2025-03-01 21:34:31','2025-03-02 02:28:13'),('db6db3d6-f2be-11ef-8b3a-005056c00001','zelalem.amarev','$2b$12$fmYXjblh2z9WJr17UBDNZeNA5mhiq9tuUaxWWAo4ttuq1zzXD3hFK','doctor',0,NULL,'2025-02-24 17:51:41','2025-03-02 23:43:43'),('e4086171-e013-11ef-a1d1-005056c00001','melate.eshetug','$2b$12$JJLPFN3k9kTY.8lj.ikYxOROwNkHCeA3eDLw01v.HcYZbJUiukH96','admin',0,NULL,'2025-01-31 23:42:30','2025-03-02 23:43:49'),('f3a56945-d7d6-11ef-9523-005056c00001','samrawit.eshetug','$2b$12$wgu4ytv.GF/IXxdkdv/Y.uE5.ZE4phmrD6emCOv3C.NMmX1Ad7Hsi','doctor',0,NULL,'2025-01-21 12:06:08','2025-03-02 23:44:04'),('f5db8f2b-d79a-11ef-9523-005056c00001','mihret.tilahune','123456','patient',0,NULL,'2025-01-21 04:56:42','2025-03-02 05:14:26');
/*!40000 ALTER TABLE `app_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docctor_ai_chat_history`
--

DROP TABLE IF EXISTS `docctor_ai_chat_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docctor_ai_chat_history` (
  `id` varchar(36) NOT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `thread_id` varchar(36) DEFAULT NULL,
  `role` enum('Human','AI') NOT NULL,
  `content` text NOT NULL,
  `reasoning` text,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_docctor_ai_chat_history_session_id` (`session_id`),
  KEY `ix_docctor_ai_chat_history_thread_id` (`thread_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docctor_ai_chat_history`
--

LOCK TABLES `docctor_ai_chat_history` WRITE;
/*!40000 ALTER TABLE `docctor_ai_chat_history` DISABLE KEYS */;
INSERT INTO `docctor_ai_chat_history` VALUES ('2540585f-9d5f-4e8d-8a8f-d835f62a0bf0','e784c60e-7a27-4121-bfc4-e5eba69d4563','483d4891-f79c-11ef-a0cb-005056c00001','Human','investigate',NULL,'2025-03-03 07:29:20'),('2a2afea4-3fdc-45b4-ba2b-63d348736eae','1a3c7002-ba70-4776-a3f6-38729307d8ab','fce0bd15-f70c-11ef-a0cb-005056c00001','Human','hello',NULL,'2025-03-02 11:52:21'),('2c5bad0e-e12d-4502-b527-63c694ca7e0b','9b9ae8f0-ea66-4c1c-b7a0-6dd717a77d2a','61241fe2-f70c-11ef-a0cb-005056c00001','AI','**Welcome, Doctor!**  \n            Your AI assistant is here to support you in diagnosing patients  \n            with its extensive medical knowledge.  \n            This conversation will be recorded and saved in your chat history  \n            until you submit the final diagnosis.  \n            After finalizing, you can still view the conversation,  \n            but further interaction will be disabled.',NULL,'2025-03-02 13:20:48'),('c30b48e7-2e05-4483-ae4e-6cdc51213f80','e784c60e-7a27-4121-bfc4-e5eba69d4563','483d4891-f79c-11ef-a0cb-005056c00001','AI','It seems I need to clarify my capabilities. I can assist with:\n\n1. Investigating symptoms and understanding diseases.\n2. Diagnosing medical conditions based on available information.\n3. Prescribing treatments and medications for specific conditions.\n4. Recommending lifestyle choices to improve health and well-being.\n\nPlease provide specific symptoms or conditions you would like me to investigate, and I will do my best to assist you!','reasoning','2025-03-03 07:29:20'),('caba7c9a-e44e-4f92-a9d8-7fa25879b0c7','6330d1e5-6b25-4117-8c92-36965a5712df','fce0bd15-f70c-11ef-a0cb-005056c00001','AI','**Welcome to New Chat**  \n            This conversation will be recorded and saved in your chat history.  \n            You can preview it later before exiting, but once your session ends,  \n            it will no longer be accessible.',NULL,'2025-03-02 11:50:17'),('e832b329-2070-4e09-9b57-369c8df5eca6','76faf5e2-0395-490f-a727-5791defcd514','483d4891-f79c-11ef-a0cb-005056c00001','AI','**Welcome, Doctor!**  \n            Your AI assistant is here to support you in diagnosing patients  \n            with its extensive medical knowledge.  \n            This conversation will be recorded and saved in your chat history  \n            until you submit the final diagnosis.  \n            After finalizing, you can still view the conversation,  \n            but further interaction will be disabled.',NULL,'2025-03-03 07:25:55'),('ec95d857-e276-46d4-8d5f-2ea6be4244df','1a3c7002-ba70-4776-a3f6-38729307d8ab','fce0bd15-f70c-11ef-a0cb-005056c00001','AI','I\'m here to assist with medical diagnosis, prescription, and lifestyle choices for better health. How can I help you today?','reasoning','2025-03-02 11:52:21');
/*!40000 ALTER TABLE `docctor_ai_chat_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `follow_up_questions`
--

DROP TABLE IF EXISTS `follow_up_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `follow_up_questions` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `category` varchar(100) NOT NULL,
  `question` text NOT NULL,
  `answer` text,
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `context_id` char(36) NOT NULL,
  `priority_level` tinyint NOT NULL DEFAULT '2',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('pending','answered','closed') NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `context_id` (`context_id`),
  CONSTRAINT `follow_up_questions_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `follow_up_questions` (`id`),
  CONSTRAINT `follow_up_questions_ibfk_2` FOREIGN KEY (`context_id`) REFERENCES `patient_diagnosis` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follow_up_questions`
--

LOCK TABLES `follow_up_questions` WRITE;
/*!40000 ALTER TABLE `follow_up_questions` DISABLE KEYS */;
INSERT INTO `follow_up_questions` VALUES ('ae9b65fb-fb24-4017-880d-0a8fba46af5c',NULL,'general','How do you feel','Good',0,'61241fe2-f70c-11ef-a0cb-005056c00001',1,'2025-03-03 00:10:26','2025-03-03 10:01:56','answered'),('cd4070c8-8d3b-4ea6-b67b-3f4ba1ae90ea',NULL,'general','How are you?',NULL,0,'483d4891-f79c-11ef-a0cb-005056c00001',2,'2025-03-03 10:27:55','2025-03-03 10:27:55','pending');
/*!40000 ALTER TABLE `follow_up_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laboratory_reports`
--

DROP TABLE IF EXISTS `laboratory_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laboratory_reports` (
  `id` char(36) NOT NULL,
  `request_id` char(36) NOT NULL,
  `provider_id` char(36) NOT NULL,
  `result` text,
  `recorded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `comments` text,
  PRIMARY KEY (`id`),
  KEY `request_id` (`request_id`),
  KEY `provider_id` (`provider_id`),
  CONSTRAINT `test_results_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `laboratory_test_requests` (`id`) ON DELETE CASCADE,
  CONSTRAINT `test_results_ibfk_2` FOREIGN KEY (`provider_id`) REFERENCES `app_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laboratory_reports`
--

LOCK TABLES `laboratory_reports` WRITE;
/*!40000 ALTER TABLE `laboratory_reports` DISABLE KEYS */;
INSERT INTO `laboratory_reports` VALUES ('44a92cff-f804-11ef-a0cb-005056c00001','8156c8b8-b148-46e2-aaa1-a0216f941d69','357df13c-c77e-11ef-918a-005056c00001','The CBC test revealed that the white blood cell count is within normal limits, indicating a healthy immune system. The total white blood cell count is 7.2 x 10^9 cells/L, with a differential count showing normal levels of neutrophils, lymphocytes, monocytes, eosinophils, and basophils. These results suggest that there is no sign of infection or inflammation present.','2025-03-03 10:51:08','The CBC test results seem to be consistent with a healthy individual. It is important to continue monitoring white blood cell count regularly to ensure any changes are promptly addressed.'),('624f270b-f7c9-11ef-a0cb-005056c00001','56130dd9-13ae-452a-baf1-936ff63492fe','357df13c-c77e-11ef-918a-005056c00001','The CBC test results indicate a normal white blood cell count, red blood cell count, hemoglobin levels, and platelet count. There are no abnormalities detected in the differential white blood cell count. Overall, the patient\'s blood parameters fall within the normal range.','2025-03-03 03:49:38','The sample was processed efficiently with accurate results obtained. The CBC test provides valuable information about the patient\'s overall health status and can be used as a baseline for future comparisons.'),('e9c72a9f-f7c4-11ef-a0cb-005056c00001','3ea92c52-ed75-4050-8626-608b504cba00','357df13c-c77e-11ef-918a-005056c00001','The CBC test revealed normal levels of red blood cells, white blood cells, and platelets. Hemoglobin and hematocrit levels are within the normal range as well. The differential count shows a balanced distribution of neutrophils, lymphocytes, monocytes, eosinophils, and basophils.','2025-03-03 03:17:37','The CBC test was conducted accurately and the results are reliable for clinical interpretation. It is important to consider other diagnostic tests if specific concerns arise regarding the patient\'s health condition.'),('f5731cd3-f7c3-11ef-a0cb-005056c00001','3ea92c52-ed75-4050-8626-608b504cba00','357df13c-c77e-11ef-918a-005056c00001','The CBC test shows normal levels of white blood cells, red blood cells, and platelets. Hemoglobin and hematocrit levels are within the normal range as well. There are no signs of anemia or infection based on these results.','2025-03-03 03:10:48','The CBC test is a standard blood test that provides valuable information about the overall health of an individual. It is important to consider other factors and medical history when interpreting these results.');
/*!40000 ALTER TABLE `laboratory_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laboratory_test_requests`
--

DROP TABLE IF EXISTS `laboratory_test_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laboratory_test_requests` (
  `id` char(36) NOT NULL,
  `diagnosis_id` char(36) NOT NULL,
  `test_type` varchar(100) NOT NULL,
  `test_details` text,
  `priority_level` enum('Low','Normal','High','Urgent') NOT NULL,
  `status` enum('Pending','In Progress','Completed','Cancelled') NOT NULL DEFAULT 'Pending',
  `requested_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `completed_at` datetime DEFAULT NULL,
  `comments` text,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `diagnosis_id` (`diagnosis_id`),
  CONSTRAINT `laboratory_test_requests_ibfk_1` FOREIGN KEY (`diagnosis_id`) REFERENCES `patient_diagnosis` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laboratory_test_requests`
--

LOCK TABLES `laboratory_test_requests` WRITE;
/*!40000 ALTER TABLE `laboratory_test_requests` DISABLE KEYS */;
INSERT INTO `laboratory_test_requests` VALUES ('3ea92c52-ed75-4050-8626-608b504cba00','61241fe2-f70c-11ef-a0cb-005056c00001','CBC','Hello','Normal','Completed','2025-03-02 17:35:37','2025-03-03 03:17:37','Hello','2025-03-03 03:17:37'),('56130dd9-13ae-452a-baf1-936ff63492fe','61241fe2-f70c-11ef-a0cb-005056c00001','CBC','','Normal','Completed','2025-03-03 00:43:55','2025-03-03 03:49:38','','2025-03-03 03:49:38'),('8156c8b8-b148-46e2-aaa1-a0216f941d69','483d4891-f79c-11ef-a0cb-005056c00001','CBC','i want to know about the white blood cell count','Normal','Completed','2025-03-03 07:27:37','2025-03-03 10:51:08','','2025-03-03 10:51:08');
/*!40000 ALTER TABLE `laboratory_test_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_staff`
--

DROP TABLE IF EXISTS `organization_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organization_staff` (
  `id` char(36) NOT NULL,
  `user_id` char(36) DEFAULT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `role` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(20) NOT NULL,
  `employment_type` enum('Full-time','Part-time','Contract') DEFAULT NULL,
  `date_of_joining` date DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `salary` decimal(10,2) DEFAULT NULL,
  `shift` varchar(50) DEFAULT NULL,
  `supervisor_id` char(36) DEFAULT NULL,
  `address` text,
  `emergency_contact` varchar(500) DEFAULT NULL,
  `profile_picture` blob,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `gender` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `supervisor_id` (`supervisor_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `organization_staff_ibfk_1` FOREIGN KEY (`supervisor_id`) REFERENCES `organization_staff` (`id`) ON DELETE SET NULL,
  CONSTRAINT `organization_staff_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `app_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_staff`
--

LOCK TABLES `organization_staff` WRITE;
/*!40000 ALTER TABLE `organization_staff` DISABLE KEYS */;
INSERT INTO `organization_staff` VALUES ('1847564c-e01c-11ef-a1d1-005056c00001','1846f2a6-e01c-11ef-a1d1-005056c00001','Muluken','Fantahun','doctor','medical','Kook@gmail.com','0900110085','Part-time','2025-01-29',0,25000.00,'day','650e8400-e29b-41d4-a716-446655440002','Addis Ababa','0900130082',_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0\0ÿ\á\0.Exif\0\0MM\0*\0\0\0\0@\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0ÿ\Û\0C\0\n	\n		\n$ &%# #\"(-90(*6+\"#2D26;=@@@&0FKE>J9?@=ÿ\Û\0C\r=)#)==================================================ÿÀ\0„„\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rğbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0¨—´•\Í\ì&)1O¤¤1 Râ–ŠL\â”\n8S¸)@¥´ c@¢Š)0IN¤9¦!´´R\ÓBbRóEC5\äV\Øó$U¦M%£šËº×­¡„È¤\ÈÁ\0ôü\êˆñb\í?º?LÓ³&\é-r’x¶GC²\\ô$æ£\Å8‚·¶1N\Ì9‘\×æ–¹øInH.[@\É“V\í<R²ü²D\ã ƒÖ¥¦4\Ñ\Ñ\Òb±Ç‰l¹Ì¥}F•\\·\Õmn\ÕÌ§\êqü\è³Cºe\Ê^´\ĞA\î1N\Í!‰HiÙ¤ \ÒS©(1IŠu\0\ÑÖ¤\ÊQ@˜§ñM\ë@†bœ)qH(M\Å>@\0¸¢–€¸¥\ìR¸\rS¨\Å;\Ğ\r¢ŸŠ(”\ÜS¨ \ÒR\Ğh´b”S±HÓ… Si\Ô\Ú^hi´\Ñ@&)i\"\Æ	b\0$“BqT\îµ[k0|\É>`8Q\ÎkVñ+\Ãg‘“‚õ\Í<²¼\Åİ‹>rI9«Q¾\ä9v:™¼S†#gŠ\ç.¯&¹˜¼[<Œœ\Õb\ç#§®Gz	\0öÀªI\"[l‘9İzOşµ\'–\0%O‘Œ\Ó\ís\ÉÉ¥2c\â´ÀT\àŒ÷\ìGZh;ºö&•\Ülwp\'4Ó‡=q@‰<Î½3ô\ëH	\Æ29\Å1§§§&”–\Ş7g‘‘@\nCdu\É\ç\ëOI\ÇR3\È\é2!Œg4È¤ ò2=\Í5ô\İj[Iù\É\'~lWIˆ,\åÀóW\'\Ôb¸W™d$„T\áA\àS¢\Ï\'=y©i1©4zJH¯‚¤FA4\ê\á\ì5[›\\\ÜTµ\Ğ\Ùø’\Ú\ã\n\ê\È\çñ¨i¢Ô“6)1H’¬ˆ=§ŠE\r¢Š(1F\Êp¥ `\Ğ)ôP!„R\n’šRbŸM¡ú(NhO¢—¥ ”\n9§\nb¸˜¢–Š\0ƒšJ“\Üu ŠL\Z\\R´i\Û(\ÙLŠ1N\Å ŠZ1E0\no­;=\ë\\Õ–\ÆØª\æ°À\éB\×@nÄº–±o`‡q\ÏE¹=G[¹º,¤ì‰†Bõ›q3\Ü\ÈK³3ÔšŒ\î\é\ÏŒö­HÉ¶À“\ï€r8\éJ$\ç8=\Å3«€\ìp;Ó”dıMQ!\Çœg¥9\Â\àgò8§ı‰$(Àœ\ÓJCĞ•\ë@\rpz\äŠg\äqOx\ÆO\Î<Œt¦\ìd\È=Gl\ç4\0³€Á\ãRÇ·a\ÈlIRGr0{\ã\â‹\Ó<ƒ@¦Ş»\ZX¶óœs3Nò@?)\à”\èP\ï#×­\01\ÉÁü†\'\Í\È ú“Š’H‚`d\ç©j?/\äg\ÉÀ8<ÿ\0Ÿz\0t[rWŒ†°¡+\Ï’B‡\ç\\æ¦“\"b\Ù&€\äd8\ägƒ\Û4\ï0\Ç (Ì£•	\'Û\ãš\\’;d\r\0kiš´¶\Ó;4\Ça Œ\æºM/_Šÿ\0\ä \Ç(t÷®#\0Œ¯N\ã)ñ–ˆ¬Š\ÄH§\"¥¤\ÊM£\Ò\Æ)Ef\é\âú\Í}\ï\â†´\Ğ\Z\ËcU¨‚ŸENi¼Ô‚ŒQqXebœ(`†\ÑN\"›Š`Š)ø ¤¦b†\r( \Òb›@˜»\Å4R°1N\â£\Å/4¬ø¤ S©ƒŒQE\0ƒQE\0”TWklò¹Â¨\É4e-_WÁ\ne|\Ò25\Ã\İ]Iu9’b[w4\Û\ë×ºº’V<±\ã5]g“\Åh•Œ›¸÷\ëÀ\ã b£.A=v†\Ç\'œv\Ï9¥Ou2ª$’Vb7d\Æ@ Æ‚bØ€x\Ïz7—Â…œSxrFp\çŠ\0—8\Ï,9\Å/•jYKd\ZG¸\áB\ã\n1‚3M‘\ÏRx y*\é–, ŸzY,A\È\ã¿úô¨\ì\à\ç\æŒc8¢;Wr\Ç\ĞdZ.–\ãQoa\0T!\Ç\İ\ÏB\\~8\'$gtiÒ’ió‚jc¥2WqqSÎ‘\\\ëc0’~n‘ƒŠlr„pp¤c½jÉ¦¶Áµ\rS¸°`I\nqŒ\à”)&\'…»Ç˜H\Ã\rWx•	\\ŒI©\ÄRyj¼\í=hòYÁ >aY•Ny\'·j_õƒ9\ç8\ÅHm¾\âr\0\ß%€\ÇË’p2:Sº0+üxO\0g4\Ì*œŒ\ã¨\ç5+€™ú;T|tÀÁ\îEÁ\ÆI\Æ)Ï€F$u#½D…zw=ı)Ns\Çnõ .h\éÚ”–2Sò“ó(\ï]İ…\ìW¶\Ë,-•?¥y˜û„ƒœV·‡/\Ú\Æ÷aa\åHpsQ%sH\Ê\Úñ¤\Å58È©x¬\ÍR\Òs@i8ƒIŠb(\Åœ)!±»\r5 ¥\Å120*AIKŠ\0N)=iM6‹…ƒS¨ v ¥\â“Ö”t @)sM§PR\Ñ\Í-AE¥¤W\'\â\ë\æ%-Œcs\n\êfEc\Ğšó­bó\íwò8 ®p\r\\·\"oKø÷…(	“‘\Æ;\Z8\é\Ø4¡NHÀ\é\ïZ${‡œR§9ô\éH\' óVM¹\àpF3‘\Î)^\ÃJ\åm‡\'{T‘\Ä\Ù\r“\í\ÏJÓµÒ¥~JÁ§¡\0\É\È9¢F‘¤\Ù\Ï%¬™\'g\âFj\í®œd\ä\àpk¤†\Ê(\Ó}ˆ©’$AÀ¬]n\Æñ –¬Å·Ò”g\r´·PFsZ0\Ø\Ç\Z¸t$f®\ìü*TŒ\Önm\în©¤U©üJ¤Ó’\Ô0;UÄŒ\ç“N\Æ=y©\æer\"«Â¸húb«I§G\Ø\0sÁ­2?Jc¡÷\Å>f	ô2”˜9Q\ï\ÅB4\Õ\Ûò\ã®µmöü\éRö\Æ3È£\Ú2}’1ÿ\0²—’wQQM¤®	ş!\ÈÀ­²9#µFù9§\Ï!:h\å®4¡-ƒÀ¬É­Ø€\003]¤°«‚+*\ê\ÈsÀã±­¡S¹…J+¡\Ì\ã\Ë\ëŠNF}k^k@ùzUY¬Š—8ke$\ÎwŠƒ;;fÀ\à÷\ä\Zg)‘\Î3Ò”\äúúsTI\×øoV ·‘¾uROZ\éS8¯/µ\Å:6H*r\í^›c ¸³\ÖRV\Ô\Ò.ú\â”\nv(â¤±¤QŠZAEÀ1E8Q@\0¥\Í„M	‹š¤	K@!\r&)ih”R\ÑHE;µ \Z`&)ih \0bŠ)i\0”S°*9b˜ôQ\Í09\ïjfE´dor}q®8\Ï­jWF\êşYñ;\â«\ï\0sÒ´Š²1“»!	ô©Bt\ÆpFI\Æ1M$rq\éW-¢/ @8\Î:i·`Š»%·µ2\'Ê¹\É\àõ­c¦®`@‰©ì¬„ r?Æ´’5ñ\Ï~kšuC²4µcDj Œ{S—?…8vg4ğ3Â²f\éXf\â¥H³CBõ©Ö¤i\rH\çRñ\Çz’:~:ş¼R*\Ä.A§\ì\0ô\ÍM\åûsK\ås\Ïj\0‹ks\Ó4ÒŸYÚ¸¦ùy \n\à\×\ß,`ô\æ¬y{3\îsÈ¦x \n² \ç\ÏZˆµmÒ¢1}E1X¦\àóÒ«\Ë|\Õ\Ç\ï\ìzTOZ¤\Éh\Ï6\ãœæ –\Ü`Œ\n\ÓtZ‰\ã÷¢f.\'1yfÉ“\ïÁ«8\äd{õº«¨”©\Èâ¹»¨¼¹\ë\Ğ\×E9]Yœµ!gtW,}ò8®\Ó\Âz\ÃJ´„f5À\É\ä\×P;z\Õ\í\èY_$Œ3‚})\É]fzvsMÁ¨\í\åYc¤aGz›Š\Ä\Üf(\ê()9¥¢˜‚”IH)€\âh¤4™¤Ş¸Sy£š`¢’Š\0\\TdÔ¼RqHŒ\Ó\Å\'\á@¥§P\Õbe·\Ó\årÀc&¯Š\ÉñÙ’o+´I\íÿ\0\×\Íq=>”‡rFpNA4ÀG^\ãµ4õ\í\Ï#\ì9kcTÛŒ÷\ÍjX${úñAB8™À\'\"µ¬¢üÍxz\Z\ÓZšöı\0•pcR\"N1V\ã\è|q\\¬îˆ£©~T\Å;Ú¡š!Á\'×§$b‘R †\äCS\"tü…,x\ã\Ô\ÔÈƒ\ĞúœĞ6F:\à.”\ï(ÿ\0x\à€T\Â#ø£\Å/•ù÷\ÅU…r\0\0\Ï‚Ç¨©\nvÏ±É£\Ë\ã<P=\È<ô¨Š};U’ƒ¹¦l©°ğÄŸJG¦«nzc4apzt Ÿ\"uöª\Î:ÖŒ\Ø8\ÇZ¨\è	¦„\Ñ\\â£‘CëŠ˜\àTmŒJ´\Ì\Ú(Ks\íY\Z•˜\ØI8\à[\ÒƒY×‘™†9\íZ\ÅÙ˜\Í]Ï–S9\è;R\ä‚=*kˆ\Ú7=zƒÚ«‚G+¡jr=ó\Â×†\ëM\nz\Çò\â·q\\¿ƒfW‚Hû«d\nê¸¬¥¹¬uCh§S1H¡)h¢	IN\Å(€’¥\Å4\Óƒ\ZJZ`QE š u \Å/Jx¢€J)\Ç\Ñ@\Ås\Ş/*4£’ya€+ \Ís4•…¬qmc“\ïT·¶8 >\ÍO9\0À\ÆM@\0\ÇSŒñ\Õa\0Áò9­L<!½\Û8­f–2N\ß_J\ÉLˆòG\'\ïW¡—îª“´ôæ²š¹µ7fn\Â\é\ÜÕ¸ó‘\éTmNüÛ­_ \\\×4Ø“<T»­5©†3ú\â \Ô`A\ï‘\×*ñÉ¤$sNNIô\\’9=1€Õ„-\Î1\Æ}j¼hr\áV8\ë\ÎxÁ¦“‚ÜŒ:)y\ã§ò¨†ryúSøõ>\Ô\îHü@\Ï=q\ëšO¯N\Ô\áĞŠ\0k\Ç©\Í3NMJ?úÆ¢ò)Ds\Ï\\gŠg?HùÇ¹\ïPş8¤Ÿ‘ª\ï\Õ4»*	3Œ\İi¡2#ÊšGó\äÓ¹\â£õô5H–G/|\ãB^\ã¯\Ëı*”½\rZ3g=~…$\'\ÛG§ĞšÖ¿A°·rp+!ó\Ğt\êtÁ\İU™\Ôø+t\Ø\ÚW\à\ÙDz«¡\è\É]\è\ÅD÷.(\Å\Z’†\àQŠp¢€P)E-0E\Ó@„À¢E0ER\0¥’)€œRfƒšAHhu‚Š2¹¯\íûdK\àWQ\\¿Œœ4<·ª;Š{^[Ç¸\Î*h¶œŒFrOZ„q\ßğ©\íÁ\ÉÊœ\ĞñZ3µ-$gh\Ïn\0\ëÿ\0Ö§··&`¼\àrsÚ’ñ†=»W-¹˜:œõ¬\ä\Í\á³R\İ0:\ç5v3Ub\è3\Ô\Ôñ\ãŠ\ågdU‹#ùT¿\ÂjºÈ©\ã\È=ªK¹(\ß w©2TS>\\˜\Øf¦\×ñ¤4IGğ«?Ltõ¨ÁQ\Çò\íS!SùP€`c¯ôüT¢0zS„\'Şš\Ñ\0Ï©¤\éøv«.¾”W^˜\Å1dóQœş=\êÈ„Ÿ\åš<ƒ\éJÌ«¢‘\ßŞ˜G\åÚ­\ÉBj»ƒ\Æ8Á©cEy#$\Z…\â85{o€`\Ğ-©# ¸ª\î1µ¡.Ú§.9À\â­2Z)9#5ZLó\éVfB>•_$¥hŒ™Ÿz€\ÆOµ„\ãGzWIr?v}1\\\ä„eş¿•oLå¬µ6<\'ÿ\0!o¢\â»\ä¯;ğ\Æ\ï\íµ9ÁÏ½z\ZŠ\'¸SzŠJ)¹\ëRPñKMJ)\0RŠJu1\r \æ—4h¢F( ¢—S,\ÓÁ¦bœ)\0\ì\nm.i94LÓ³MÁ§Hbf¹ŸE›X\åî­ŒWSŠ\Åñ(\ÙR».â£UÈ–¨ó\Ô#Œ\ç\ØÕ¨s\æã‘€HªiqÖ­Åy9ƒ\ëZ½Q’Ü¿_\ä\çs\ëZVv\ì>f\ï\éT,\È2\0>\è\àk~\Ü\Æq\\\Õ´:\éE=E\İ\ß5\"d{\Òyg\'?…9öÆ„’0I5‘¾\Äğ\àúf¤šH\á\Év\äEdı¾P·$ğŒ\Õ2.eròn\à\çb®0\î\Ès\ìY/‚¸\ÉA\Î\äÿ\0€§]yù›hô\Åeˆ¤Á_$rA\ëPJ“&[\ÉpÀg8\Íh£\'9-\Ô\Ö\× Võ\Â\ÕÈµ¤\É$zù\×\Z÷M\Îb;‰\àô\ÅF.ó»>ôù\"J©$zM¶«¿ò\ĞgĞ¿Ÿz½ö‚A\ÚG\áÚ¼\Ê\Ö\æDqµ\Û#\ßü\æº}+S’L©?69\Ïoşµg(¥±´&\Ş\çR’(<I\è\rL.yS\ïX²L3òñÚŸı9t5•\ì\Í\íusXÊ™À\à˜=i¯\"\à\ãñ&³’L{}jI.ÓƒÀ\r‡(ù¥©\ãµR’\é\îF@\â«]]g\'\nk\"\æè™œdò@\Èÿ\0=\èJâ”¬w\ÔT!c\Ğ‡Œ\Õ	µhÿ\0¼2:óšÂº\Ôvf0x\Îp9¬\é/›#¦\Ü\ädt­•4sº­\êª9\ÃZ\ïÛ’3´úÿ\0*Á{#\ç\nÄŒp1BGq#€®z\Z¿f‘Ÿµ“5N¦™\èq\ÜœT™W@\êA+0\ØJ\à\î\nÎ§¶\ßn0\àmµ-.…)>¥‰Q½®Z\ç>{úfº\ÌŸB3\\­À\ÍËœUKvEm‘\Ğx6\Üı±\å#\åh>†»`+\ÃZq³°R\Ã\çq¸\äcº)\Éİ“d7šZ\\R\àÔ” ¢“šZ`>ƒŠAECiE%:€N\ìQŠ7Š(¢P\r8ŠŒf†=‡\ZQKE )2( \Ó\àES\Ô\âó¬¤NNT*È¡\Ğ9\èE4ò—O*GVŒ\Õ$oòv\ÏP}*÷ˆí…¾§\'O˜\îÀª\ãGJ\ÔÃ©©§œ}k¥„W3¤ÿ\0¯±5\Ô\Æ:n+–®\çm\r…\çÚ¡¸\È;G5o­3\å=GCÒ²Zjn\ÕÄ‚\Ù\Ş\ë\ëV\Ò$\à•¸8\ÍB’\nY/b	vP¹4œ\ÊQE¯)rPTt\È\Çò©D@‚\n{cük=J\æèŸ²@Y3÷\Ü\íü\n³\r•ü\Î\âKø\á\Û\ÉP¸\Ç\ç\ÛŞ©&È“Šu¦A2Ê¼v\ÇOğ¬k\Í\ÆIQ\ĞZWV7q}\ÍD\Èzm?ç¨¬ùe¿‹;$\ï\È\Û\íUi.¤^/¡M#0‘\çFñœ\Õ\Ëk„RJ\à1\Í@/•Èx\Ê98?—Z`¨\â“o©I.†\Ä7‘“\ÓÓ½_Š]\ã\Ü\ZÅ·ƒÚ´\íƒ1ŒVOsd´.ù¥=> \Ô3KÁç zT\æ\Ş@3‘Œt5J\ã c<P\ÆP–Rw¯<óTn0I\É\ëS\\Lk:K‘\É=*\ãs)$\Ä6\Ë+ü‹Ï­X‡AYXó\èj;Qs6hª„\ãsÿ\0kv\ßJ¼‰ôF¤g\î\àÎ´´Œ½Ò¬Z<õjO¸\ÍN-£NŠª=†*)~\Ùv\Ş+‘\×\0\åU^ö\îùˆ²QòŸş½KR\îZ\å]¯ÿ\0w§AT\îm•\ã<Št7ñLÜ†<b•\ä\Îi&\ÓI¢•°>X\Ïn+-Œº\ÒDYqÆºTL\èyª\Z-±—Ä²9±j\è¦÷g%E²;HÀ\0T‚£\ÖOºÀ‘\ÔœTÀP\r;Š‰óNJ!üS)\Ô\n4¸4\áKŠ\0–ŸŠi \Í\Ú)€”S±E\"¤J˜ c1@©N) R\0\â\â”\Óx bŠ\ËtQ\ÍHzjÀ\Õï®’\á\Ñ\Ê1ş 3Q6\Ò\ĞÒ”›odSñF‘,ÀÜ ù”r+•…1»r+\Ò\ìn\Z\â\0—H70Á\ã­rúş‚¶d\ÍeŒ„\ç\é\Õ{0­E%\Í;K\íxÀ\èk«t\é\\Î‹n†@\×N1¸Ò«¸\èè‡œR\Ø.{S\ã\çğ\éV>]`\ÙÒ—S2IDhqŒö¬Ç’-\æ[\éPrÒ¶n-Z\\\íÀ\È\ì+\çE2É†rNzgqJú™É»hK­w}˜´\È>\ï%\É\éÚ¹\éµ©o\Ìw\×R¢\Ú\ìƒ8\íÓ½u\Ú*M¤¢º0ù•\ÆQÒ³5­\ß\Ş\É=šyF_™œó\ìEosT„ÙŸ\å\Û}ª\í\íµIá·-Ğ´ –•ğ\Ş:kwLğö«s£C¨[\\y\Üd\Äõˆ½y€r9\Åw\ÖZ\ä¶:T6–¶j‘Æ»C;\ç?•S”I…9\îrt‚\éS)\å\\cğş•£enLjwnRv\î\'§Ö¤˜}²a%ÍŒ’r\åsÿ\0\ê¦XYOc$›]”¶\ßÎ°•’º:c½‰~\Î\"™“\Ğ\æ´lf³´—Dş5¥eœ\àu¬\çD–5H_#\Í`\ê9\äsÒ¶\Î|³\È\Èõ¬+ôm\çô£p±ösu9NŠI¢\ê\Æ6\r;ÿ\0\nzÓ’F¶º\ØñŸJ³•\Ç\Ú^wH.›pf8\Åm+•&RJšö\Ş*¹ıO\ĞV\\Áu¦\\Mu}po·¨H\0á—¿#¡\è&úk‹²¸³…\ãu\Úv6\rp÷>¹GhYv\ç€{~U\Ñ‘\Ë8M™v²\\\Ëu	pû¶ON\ßÊ·/¢\Ôô|}§÷\Ğ\Ãg$TzN™&~—ù†>UAÀ\'ñ­MV\æ\ëTB¶$Â£4¥(°„$µ0\Òõ&e‘2OQŞ¶-‰”\íŠ\È\ZQø<æ¶¬\â0\Æ|VSµ´5§\ÌŞ¤†1Q\è1*j·N\ä*–Á8«©\Ü\Æû$hØ©\'3I;&‹Q¼“45V\Ş\Ú`Ápx\ÇjÚ†A,*ÿ\0\Ş®\Ş\×xW“%‹\â»{<}–0;.1N…Yh™! N¤­ S€ b—4\0\Z@\â”\Ôt\ÄI¸RdSy¤\Å\0:(¥\Å\0%Q@\r\"¢rjSQ\ã­\r<TiR\nHdoM\ç\Í4P6}kX\Ô\ß\È\Ì>\èÀ­‡\ÆÁ\ÏC*œ–\íöò½ˆ\İõ¬*=QÙ‡WL·…x\Ç\Ì9Ò³õ2·š|€J\ã†µ«$0ŠÂ’óÎº‘vR2\0\ïY\Å\İ\Ü\ÒiZ\Æ6J\Ät\ã¹“\í“\éT4\è\Ö)&Àş*¼5¬\İ\İ\Îzj\É\"\Ì «I\Î>ö*¤Cüj\ä]údô“7B\ì8<UIl˜’À€@\È&µ¢Œ°\n°-\Æ:Ÿj4sBYa%]PPqOûpO\î@MnIj3ş­~¸¨şÊÿ\0Õ®O$\â­\Ó0\Ş\é\Ü#\Ø\"fš–\×7–£»9\Çò­\ï)S8\0\ïŠiBHÀüj®‘*-³6‹©,\İI5%\Æ8D\Î1\É5y\ã÷=I¨|±’}k9O±¤i\ÛVVŠ9\Å]„\0\Ô\\&=)cr\Ğ\Z\ËZ\Z‡=ˆ¬«\è^+M$sùUK±”8uC\æ\Ü<e±M·,Skg#¡­]q\Ã\Õ]	\ìO¢v2j\á%¼\àn…ó\ìGZ‰\î.£À‘\à¸V²G”\är;\Ò8\Êó\Ó Us!4\Ìcx\ß\İ_\Ë\ß5¤8QÏ·5°cˆv‚{)Ÿf]\ä¦W\'µ&ÁE³8Z¶rÀ\ç\Üb¤(ò­…»úwªòE\É©½\Çk-\nœ\ìüj[ku›~s‚1M)€jÅ\0\Ü\Z¶ô\";\ØÏ’\ÊF£€ùÀ®†\×ş=ûVu\Ô_\éªŞ‹’+RÀ«§Üš\ïD‰1\Å3jN\Õ­zÃ§Tc4\áHæ’Š=h¸…¥À¦ŒÓ©ŒZL\Ñ\Í7šqx¢“P1¦’”J1\Í\00w©(\0R)X6\ÒSriÙ ¿\Ü4\ìoÔ†;D))\Öd\É:nÙ¥cUXwº\"ºˆœæ¡“M(l\İ4‡$úS¾Ú¢ğ+œ`\àƒZ\Òm.[ƒ‘Y%do\'­E\â÷ò/c\È¥KQÔŠMK	©û2\â–:\Õ\ê®`´v-ÅŒÕ¸p\Ô\Õ8A\È<\äU¸\ë&kFdg5y\çµgÃİº\Õ\Øùø\æ„6c ëš¬CsÀÈ«˜\àú\0¥ò‰\âª\ìE·ir2A>•\"[ñ\Å]\Ï ¦I¶4%ˆ\ç¯=iz‡¡I\ã\ÆH\éœ\Z\ÑS$‘šŠóRT \ê8\É5%\0¶Kz–ŠL|®¹\Ïj#‘\Ó›$,vŒM^†\ß\0z‘C\Ğ\Ù$Q\áE2=\riCPq\íP\\\Û6¨©±W\ès\×#\Ë=ñUC\äsZñ1ú\ÕAm¾GQŞ´[5©~\ÕÁ\0À\ÕÏ³©³¬³}\rj\Ä\ãÓ½O[¶!û2ó‘\Ô}(òqW‚qƒ€qQ¼xüó@X©$cJÏš0	\ÇsZRgµF\ã> \â3>@9–r\İóÛ¥:L\à\Ô6À=\Èµ¢\Õ-$‹\×\Ï:8\Æ?\Z\Ò\â³\Îß·Æ ’#\ã&¯ŠÖ\Æ5Ÿ½ai™\æ\Í ¡ˆ¢\Å\0SMŠ8¦ƒA¤ŒR&jAŠhb€*^)´E-«œP	¥\"œ3J{\Ğ1Jh¸\æŒ\Ğs“II\î5°f¢wh¤‚Z3‡QüKÿ\0Ö©)¢O*@\Üm<\ZŠŠ\èÚŒ­\"®­b·\è—smbsJe½µ…ˆ”(\ät§I¶œIú¦9*9\ÅiF‘\\!\ì1\È5†\È\ê\ÜÀ\ÔdYDs¯F\Zd\'8©5(R1Ç¡²*µ¹\ã\éZ­Qƒ\ÒF”DqV\â=y¬ø\Í]„ı+mh\Ä~AÓõj_\Ç5ŸO~@\Æ3W­\Ü=zTÜ»b\ÛÕ€\É<T»\Âg“Ô“Ò³¤!Ğ®\â¤£µ+\Üq·?\\U&&‰\å¹ƒŠ\Ä\Ôo™şE\'ŸJ’\ê\à\àò8\éœUtidzg©\âš\Ô…|r‹İMmZ\Çsc<Œ\â²õZ\"$Lü§8\Îk*\ãZ¹‹J©#M6›Ø•$¯s·0\Ä9\Ş\æ\ÉEp\ã+\ë|,öE‡÷ƒV½\æ\ŞZ6\';ŠN\r+\Øqœ[µ\Îò\ÎXeJe\Õ\ÌD++ñ°nj\æøl8aŠgk•^÷\å\Ö\âB£Ö–+a\Z`\ã½sW^!KWh\àYI\Ç\0~5\0ñ¡¿\n„õ5|\Ä9«›ò³Í¹z“\Î*ı½\ÑÀõ¬\ï\Ú\ç#Ô\Î*\ìs?¥K]\ËO±¼%\ë\ï\ß¥.Æ³\â˜`sëµ ~¿1<c©l»—¹\à\Õ+‚pJ°\îy\çƒTer3œ;Ğ„ö*Ëšm’/˜\îÀ\áNA¤•\Æ\r-\â’sò\îÀµ²Z\í\êX±s,‚CÔŒ“Zb©\Ù\07\ãqWkds\Ôw´fŠCVf(zCŠhœE\0(\Å.)¢–€)\ÔÔ§P\æŒ\Óih9¢–Š\0‹ŠR* jMüPdâ¾šFi¥a‰ÖŠ@i\Ù\0\ÃLp#±©\r6€\Õ’Ê¯C\ëW~X\Ğú‘À\ê s\Ïl\à\Õ\ØQ8r\ÄñÀ=«šj\Ì\í¦\îŒ}JÔ¤%Û¹\Ï5\é[ú´ˆm˜q\íXqƒ\ïU¡Vw&ô«I\ÎyªÂ™©eÅšp\Ê=\ê\ÚKÖ²¡p*Ï›Y3TË†Sƒë¸¨d˜€xSPù£‘\ÅAspcŒô\Éh\Ôw\"¸˜\È\á}jİ´d!ô5Ÿo\É\'œ\Z\ÒÈŠ>zU\ìM\î8\È$Lu>˜\éYsh°H\åùV\'<VõL\ã¿#ËJõ\Îi¦\Ö\Âi=\Ê#IŒ\\:÷)·:!•	t\ÅZy•\ã›\×Ú¬\Û\ã\Éc¹±ŒõªMõ!¥\Ğ\ÄIn¡\Ìr#1(\\\\€2ƒ\×Ş·¬Â°qsÁ#4ùbŒ†\Æ…=7¶±\Ê\Çf±òƒ€qÖ²¬„elâ´¦·>cœ½ªˆ\ï>¸¡\Èiµ·Š.©\êjé±‘Ò©\Æ\á*\ìR«Y»š&­`b=;\Õ:L}ES•9\Ş3y¤\Ğ\äsCW\ì]yHóÚª\Í)¤2zß­Blcš·m ÷\É\'Ş¨“\Èô«qJ¾Lh¤#\0Z\êe}u4,“÷;¿¼sV©q„ş\è\Å-l´V9[»lZm:’™\"\n)i(ÂƒIE\0*\Óé‚–€IšJ(h¤¢€\"¢š\r;4†7šM:ŒP84`\Ô\ÃƒŠ\0‹’¥¦Pi0\È>V`=3N£‡÷\Z“[2´±	_-\ìy¬ô@“ş\é\Ål•twG\Üf¥\Å[B£&Ş¬x}#sK8©@9\íŒVê£A#Ò¥Bx¨Ÿ#\éštyõ\à\Ô2\Ñ/\Ô%<Ù€\Ï§“\Æh3N8\îE\Âô|\ç¨¨„\Í6\î\èz{\ÔfK’…¾U\ë\Û!¹··O—‡­]®Bz–b…ŸB\ãqŠÈ‹9ÀV|º”’g“A\ÅU{¡Œ–QÛ“T ú\Í-ˆ\æ·\ç\äf=‰\ÍXG·\Ã\æ\'U#®{\ÍxÀfrò2\ÍlY\İ!€ıÓ‡9ª\åHfú|»sŸ&F@8\Ú\Ã?Ê¡y ‡;¤21\ê\İF‰\Ç\Ş\ÎOBM\Ò\åˆ;sE\ïm‘3\İ+¹\Âp}\èûÛ”ŸZ«²!œÈ¸\ÇRØ¨\Ì\Ês±ƒpH9£‘0\æk¡u\íA£`\İÀ©ù²[L\äg€M$s0\Ã+S\Ìw2¦xİŒb§–Ä¹_cB2%Nq’)\Ñ\ÆcŠ‚\Ìô8«qÇˆRr*Z±qw*J@\ÍV\äæ¦›û”\Ã\Ó\'§µ8‰\îDˆd™û\Ä[ğ[E\Ş#]ø\ëŠÈ°Ì½A\Ù~c[\àV\ĞZµ%­„¤¥\"’¬\Ì\\\ÒRRf“Æ’“4”\Æ\ênh C©À\Ô`\Ò\æšüÑš4o§`$\Íh¢À%6ŸLæ¤¡â”š@\r.) !$Ñ¼Óˆ¦\ì4À\\\Òf—b\0¥¤\Å8PŠ\Í\Ô\ã?+ö«Š¥©&`üi=‡\Ê6\ïV‡MgDûñÁ«±¹#ñ®y+pz\nùæ˜‡­Jq¶  \ïİŸ ¨44­±‘\È\ë\Å:\å\ngƒ\ÍT¶”¡Œµz\\IsK¨\Ş\Ç7«™m\ã.‘³„Yö1^\ß\ŞGUQ \Ü7÷®º(ƒ¸\îT\çTw\Øq4@Hm®ŠmZ\Ì\ç’m\èÄƒ\Âw]»Hù‚È¿J\Ü>\n´–òÆ£h9`kõ-HY\í.U9\ë¿¯ş½\\¾ñ®¡m5Ÿ“§±X‰GÍ¸w\n½¾¦©\Æ\ïFú\èuZ‡-n¬•jG´lt[;[\à¦`œu®r\ç\â\r¡µo\ì\Û;«‰q€$MŠ¾¥i[x\ÏK–&à¤¥r\ÈQ†õ¡$¦o¥k‰{\à\í>\æòò•Ÿ˜/¦4K­„1Û E\àu\ïø\Ö49\Óã¿†=\ìa`wË\Óëš¶ş2\ĞÀ\ÏöŒG\ÙAo\åM4ô	*šnAe\á›K?;\äV,p23Y’hvv6{\Ğa·’ÇµV»øŠ\é4\Ëş\í‹\í${ŒVšÆ¯©A$WW*\É/˜\çn\î\â¦\È\Ò1¨úş¥Y¼p\Û\âVe\ÜI\ã¿Sšm”7OxŒÊ£h\ç±s‘Ã±\Ü\äq\Æ1şb\Êß•ô6’°\Ü\Zz±\Ñ\'“\ß\ânµ;Ÿ.½À§2z`p	^\å\Î9\ï\Íbõ4…O˜\ÈI\Æ;RÉ‘ô\Æ)S\ëQ\Ê\äñ\ÜôÒ¹-\Ø\Ğ\Ñb9’S\Ó\î\çZ•\r”?fµD?{5)®˜«#N\î\ài¦”\Ó\r\0„¤¤&›E‚\â\æŒ\Ò\0ÇµH-\ØÓ°®3p¤\ßV‹\Zp°ji\n\åL\Ò\ä\Õô°ö©“NºSHW36n\Õ:Y±õ­ˆlTb­%°©Ø›˜aoCEt¿g_J(°\\\äø¦ñM\Í(5™©(£\Ì\Ò\ï¥a\Ü]´¤i\à\Ó›)qN¦\äP+‰Š\0¥È¥\0bª\ê)›W=\Ç5r£¹u´ƒ\ÕMT	\ês2Œ\Ã8\'š±o/¢‘\ïQ#˜\ßğk\rÕ¥£4‡À¦ğ?\nŠ9?*Rù>\Õ\r\Z&K\ÇLg5¡o) †\Ç>½\ë/Nyj\ŞF\àt\ç&“CLÕ‡¹\äm#8§Kx\Ë.C\Ğw¨8\È<qš$\è8\ÏqM1Z\æb`;mûÀ\ç­!G‘ß®i.-\ÕÉ‘~÷zj\09‘\ÔV‰¦\\´,\Û\Å$e\äŒ°Ág5f\Æx·´\ÖH\Í\É$tü\êK¢ dŠ¼\æ#Ÿ»Ó“V“4|¯u÷¢\Z|N\Ïıœ„·8\' vª\ÓEfó4\ÙÂ„ƒŸ•Y1Eóv\â“÷<ırZ5%F½™‘4\"B[\0z1Tn?v\n\É<[3J¡HÊ1ƒX·…I,\\\áA\ëJö\Ü%$–Š\ÅX„’\Èwv85­\Ø\Óh\ÇNIBß»t©|Ã‚3É¨n\æ\Ì|Ò€LªHI<÷\àR\Í)¨G$ZV’@úU6\Ü\Ü\Ş#ä’}j¦\ÈE\Éf8\0WKef-mBå­iõ1©;+8¦O~ô‘Û¼§€kk÷\"$\Òg\è\riÅ¥\â«q\é\Ê;S°¹ŒdµsS%‰ô­¤µZ[¨£”WfDv>\Õf;QZ^R\ÒùcÒ…r¢[\np·Z´c¤\Û@EJ\"üR\â„ Dğ5©\04À8¢\åš(…4ƒ5&)\Ø‘°\ÊLT˜E€m.i( céŠQHh\0i\Ã4-<B4\ì|‡\Ó\à)ø G#ƒÎŸ\İ$ô\â™4g9«\é\å\ês}\Ãù\ÓN?+£:\ãªED”ƒƒÖ§ñP\Ë~¢ R„†¡«\ê$\ÚÑš	ƒ\ëVb\â©\Ç\"\ã¾«1:ú\Ô4h™¥°ÔŠ•$ €qU#~ŸÊ§Ä†\Ï8\àPRepıY¨h>†t\çŞ›*I;\×+=áˆ“ƒ‘ĞƒM:\Ò\ÅÔ°ô<-\Ï\0\Õ9l\är~_¨õ­…y\"\Ïöúö‘¹õÖƒ\ç–\Î8\ÅTû¹\áW\Û9§.*u;‹D+\çjú“œRFŒr\Ò±æ–\Ì1sSùXô\Î8¨l5{‘ò½i²“´q*QÁ\Éüj¼®®8#¥–W.iF\0&›‘øRI(}*\ìE\ìjh‘¬—&C\ÎÑ\í]-€+ğ\Ş|É³\í]M‘‰\'vş•\Ñ¡\ÉQ\ê\Ø3[¥iEn±€*Ï–»FASĞƒši\ÕZ\Æw¸ƒQE0\nZAE\0;4æ›Š1@9¨·š“µ3`\æ€\r\æœ	æ›Š|}\è\0\Zx\Ôe0M8P€—Ì¢£\æŠ\0\ã)sHi+#aÙ¥¦Šu\ÉÁ£48\æI\î48QE\Ä8T‚¢ğM\0J\r={\Ô)šj‰g7®G@7÷“\'ùUxù\Åix†1˜\ê\rgDğzW=EfuQwB<`\çÚ¨\ÜD{uƒZcüj9c=*±£W3!˜¡\Ú\Ù\ã¨5u%WN\â 	#¯cŠd2œ\àõşuvORkFm[\Ìy\ä\nÑ„üƒ8ùkIOU\ë\éZ6\×A»©â¥¢“6\Óks\éNqUm\æÀ\éÜ‘V…\ÈÇ¸\ì;\ÔX\Õ2xí—“\Æ=\r(\ã\Î\íµ”ñ‚pI\ÏZj!p\Ù-“Ğšµ±7$C “Mx\ã\ç×©57“Œm ó““P¾FGŠ\äEö\Ïj€§OÖ§|c\'5’$c9\ë\×-\åyO\\c¨Lz\ã¬\Ë\'|pj„²rz\âª(\În\Ãz}j\'æƒ»8\îi\ŞY“Ö´z­MmO)&oq[\àH:Š\Ã\Òq†Œ\ä$©=ÿ\0ú\ã®+F rs\Ô[\Ç\áG4—¼\Ë\Ñ_\\[\çË‘°z€sWb×¥F¬q\Åg¤b¤H\é\Ü,¸µX%À%ûŠ¶’G [\èsXE\ÅY\ÜñŒƒ\ê)’ÕŒ\n\\\Z\ÎF•3‡n;\Z³\Ëc\çQõXV\'\æŠT–7öÏ­H#SŒø\ZV<\ĞsSù`R\áiˆ¯ŠPNj-OJ_$\Z\0‹ƒBcœ\Ô\Â#N\æ€\"Ü¾†Š—É¢€8:9§\nk\ÖF\ÃA\àE0N bP(\Å-\n)h ¹¤«Il±i·÷;¼¨†UGøSJ\àİˆ£\ÉÀ“\ĞUÈ¬§|\åv/r\ÜV>*SŸ%#·L\à°\ëùšuö½-\Ä&7n\ÏVÿ\0C’KPQob-~\êu‚/åœ³ú\Ö|}¹\â¢ ş9©¢\ÇknúTÕ•‰@\é\ÜzÓˆY9\Ü9„\Ú1×“Rösš\Î\æ¶(\\[ğ}¹¬\Éb98\È÷®€¦;\â³\î-\É=Á\ì=jÓ±\r\\\ËIHÀl\äw«p\Üß¯¹¨f„\ç¿\ÔTrd‘W£3\Õ½\âOQÒ¬}¥¹\é´ñ‘Ú¹¸nZ>™#9úU\Ø\î\Ô\ä\î\ç¸‹S[3j+\â‹÷¸=úÔ¿jø¸\'$g­s\æ\á\å:cE*\\I\ÉÀ\Çq\éG+27\Å\è\çs\Å4\İAaY	rÃ¸¦=\É\Æ\0\ë\×&•˜s#F[µ\'<\çŸZ¦÷%ş¤gª…Ø¹\ÏBx\éP™NH\Ï\'©5J7%\ÎÅ—”Œü\ß1<sPI>¤\Ô!\Ë÷9õ«!ü}jôDj\ØôN;Ó¶zõ\ÇOJz¡£œš‹–•‰¬.@Ÿ\ì,¿\ë~tp	!‡Ò·\áO64”©R\ß+©\Ã?¡ü«ŒÔ\\¡™Z6\Ü:Š\ít	¢¾«z·BU\Ü¦\Æq\Èü«¢›º±\ËQYÜ·\\U\Ë{“\éO¶·møa\È85»*`\â­\"[2\âÓ‚u©\Ò\ÙE_òøÿ\0\Z<º¢JF\Ùhû=^ò\èò(CÈ£\ÊúñW\ÌT\Ó\0SQüDıy§‰GFSõcÊ¨\ÌGš,‘\â=g\ĞñO\çµU0Òñôc\ØóE€µ\ÍŞ™\Ë¾ƒ¢¬\ÆROºF}:PHÌµ1CE\0y\ß4œÔ»)6V&\äx£üQŠ\0m&\rHR”‰ ñHJ§\\U¨¬g›\0÷5dh+\Öff>ƒŠ`gYƒ{x–ñı\æ<œg£\ãô\ÉTù­­MŠÌ‡D\Üuª¾;µ7\Z¸Àÿ\0VUÿ\0ñê¦¬®Jw’G–hºg–‚Y²ò„óŠÕ‘\0üx¥¶ B)\Î3Ÿj\är»;c‘\\§\'•$kŞ•\Óô§\Æ*[¹iXcÓšpõıhA\È<ûŠ”t\ã½Iv¾HÀ?\\æ¢–!ƒÆ®$jø\ã\æ\ÄF@\'=@#4\\M2\Å\× z§-¹ä¯§<\ÖÌŠ\Ø9SÇ¥W1#\ç\r\èERd4b›1Lù‡\Øñ[/kœ\á—>„T&\Ìó”?PjÔˆp3’ğ&7nR=Fjd¾^Î¼úœb¥’Û®:ûŠ¨l²~\è\ä\Õ)&K‹Eµy\\ŸCL7‡\Õ@5_\ì\0gi\éjaÖĞ¹Xÿ\05NNKdv >€Â!9÷©£ˆwÀ\ïJ\ãQ]\É8«‘§\r,q®8\É8©0\Ï\ÜcµCf‰EFF	\æ¬q\î\Ìş42•\èùö\'¶|/4±Z‡û˜­\ßi¸C†QüC³®c\ß\ã§5g\ÃR­¾¥4jZ€¹[·\àkjo[UZ\\ô\ëh”•‘z0\É5¢‰\Åfh^\ÍŠ³(\ÚYO¶x\ìzÖ²\×A\Ê0¡÷¤\Ùõ©x9ÿ\0\Z8ü( :S±Ö°sI\Óñ¦b•\'Z1Öl¦”6)	ŒTF!V±M\Å\0Vò©…«{)<°ht\ê1¹¸÷¢œ\Ğòh 48Ò‚“a5lBOj±²\Ã5™©™öY·,v,{ÖªEú\Ô\Ñ\Â;RcFtZ`ş\"jõ¾™\Z`\í\ç\Ô\Õ\è\âU„ŒS°\\®\"TQHŸ)\ÏnN3Uœ„ €‚hBòFj’\æ\Ú;›Y!‘AI«QÒ”Ò§NEha±\ãò\Ù>Ÿ{qi&wBûs\ê=ƒF\Ó]´¿-\â\ÔcN\î\å\Ç\è¥s>P<\×\rHò\ÈôiËš(«°Ó‘*scG—Ö³f©D÷0\í\Å1\Çz‘ÿ\0\nE!6‘\ÏQ\Ó\×\Â:zûÕ€”»ô> Ò¸\ìTdÆ«Iüõ\È\îiyc‘\È\ÏNj?(gñ§{\Êfyd}\ïÎ\åœ}óƒ\Ó<Ö„ëš‚KQ\Éó\ÜSLV*I\Ï \ç®EFmÀ\ÎT{\àU“\'\á\ë\Ïó¦\á¹\î3\Øÿ\0…;Š\ÅCn§8VúS\r¸ÁùE\\!‡c\Ü\æ›\å¶?‡ò§q4Tx5,q/l~Y©E»pI\çÖ¬Gl\Óùf†Á\"—\ëÔƒv{rjÁ@>Ş”\Üc4®UˆH9=})»1\ëø\Ó\È\'\è5&\Êw%¢¼‰û·÷6+C\â„·EŒ¼{ñ\ÏoÏµı)º/|K\ÙeŠ9BL§\0N;Ö”Ş¨Ê¢Ñ¥	cyùD1\Üco\èzÖº\ZÄ³3%\ë	\áUvPw¤›Õ¿>„f¶#5\Øp’ñ\Ïc\íKšE\íN\æ\0\ïM8ü)ô‡ñ ¡\ÇcÒ¥ƒúS¢$ƒ\íLCñM\"–Š\0f)¦¥¦P)EÒ\Ğ\Ğ!0(¥¢˜\Îj02~µ\"\ÑEblN•<`QE1#«¥Sº\ZÎºÿ\0V\ÔQI\îR\Ø\ÙBJz‘š±J(­µc¸\ÓnU­ ×—\Ûÿ\0«\ÇQ\\Ø\Ñ×…Ù sH\0ıh¢¹\Äµ$tQIŒ”SÀ9¢ŠCEPp\ïQ\È\0\É\0fŠ(\ïP².OúQE4&4ªóÀ¥¾”QT!\rÇ­ISE†„“¡¨%\ãõ¢Š25\ïR\ßZ(ª/\Ü5w>$E™\Ó\Ëf\Ú\Ã#4QZS\İ\ÕøY\ŞZœjŠ ^T\0:v­¸è¢»ÀN)\âŠ)\r\ßO­R@´\Ôû\íE\Ä>Š( ›E\0\ßğ¥\ì(¢˜\r$\æŠ( gÿ\Ù','2025-02-27 04:34:03','male'),('2714d0a6-d583-11ef-9523-005056c00001','2713d745-d583-11ef-9523-005056c00001','Jane','Smith','Doctor','Medical','jane.smith@example.com','+1234567890','Full-time','2023-01-10',0,150000.00,'Day',NULL,'123 Elm Street, City','{\"name\": \"John Doe\", \"phone\": \"+9876543210\"}',NULL,'2025-02-27 04:29:51',NULL),('36374a0f-e026-11ef-a1d1-005056c00001','3635532c-e026-11ef-a1d1-005056c00001','Alemayew','Girmaye','doctor','medical','alemayew@gmail.com','0900265856','Part-time','2025-01-27',0,6000.00,'day','650e8400-e29b-41d4-a716-446655440002','Addis Ababa','0900130082',NULL,'2025-02-27 04:34:11','male'),('3b6da8cb-e018-11ef-a1d1-005056c00001','3b6bae46-e018-11ef-a1d1-005056c00001','Samrawit','Tilahun','doctor','Medical','samrawit.tilahun@gmail.com','0900130083','Contract','2024-12-30',0,6000.00,'day','650e8400-e29b-41d4-a716-446655440003','Nifas Silk Lafto Kifle Ketema, Addis Ababa','0913313103',_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0\0ÿ\á\0.Exif\0\0MM\0*\0\0\0\0@\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0ÿ\Û\0C\0\n	\n		\n$ &%# #\"(-90(*6+\"#2D26;=@@@&0FKE>J9?@=ÿ\Û\0C\r=)#)==================================================ÿÀ\0\Ó\Ú\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rğbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0\Í$Ñ“\Å\æŠò\Îñ‡\ë@¥\"St\ÍH	õ¨\ã©EH\n	¥É¤\ê@.M.M6Š\0vM.M%-\04¹4”¸¤“FM&8¥\ï@M4b’˜M5\ät\çñ\Å0\Í\ë\Å;É·úš`”g\0ş•˜‡«d^Ô†Q\ëùS\å–|\ÒzŠ†Iˆ Æ£¼\â«\Í.	 Ğ•\Âö.}¤õ\Ç×”\ÈG<b«€v?Â©I~rQ#ù\Õ(6K•1r I=i\É~©×¥cù§\Ê.äœm^*³\ŞE\ZC~\è\â¯\ÙÜs§*ÿ\02·4ñr\ØùA#¹ô®Gû[c‚2\ç¾\ê±¸rC>=ˆ¤\é>\ÃS]Î›\Î$ó\ÓÖ—\Ì9\ëùV,:ª\È‰ó\Î*Ğ™ß”*ø8\íY¸Xµ#AÜ•V\äô\ç½ š@@8É‰\0€{’8¤•‚\å´?  “ƒLÀ\0ô4\â}\r+PO\ìšbv§\Ò\0É£&ŠmšLšm:€ši&M bd\ÒfƒE\04h Süš2i( É¦\ä\Ò\ÑLÉ£&’Š\02hÉ¤¢€ša&i†€\"$Ó²i1ÖL\îi){\Ğh†’@$u(¨ÓµH)\0ú)>\nZ@%-P\Ò\Ò\np4\0„pi\âx\ÅA$¾X\çR@\ÉI\ã5\Ê}*”Ú‹r}¬\éo¥|ñ_›¥i6C’F±¸\\ü\Íøf«\Éssóøô¬9oT\ä1R\Ş\Ü\ÕCt½}Mj©\æt©|ƒ#r‘\ê)şr¾0\Ãğ®a.QqP=EIú6\îR}\éû{C£{ƒ;¹\ã·™-\ç\ï	\'\ä?Zªu&(C’{ŠËšó\0óœ”\ãJ\ÏR\\ï±«5\ãHr¤„4Ô—?ÅŞ²E\Ó?N\é\Â\ç8=l¢‘l\Õó@\'œQJKŸ@{\n«ö™M)‘\ÜrF1M0%&I\0Œ(\ÆI\Æ*W¡g¡\âš\ä¸\È\Èt¨¶78-ÏµP\ä8z\Z»\r\ãGónb:z\ÖY‡C¨ 	#\Èß‘õ¤\â\à¤\Ö\ÇK®\èü7¹\íW!½\àœ9\ã \ë\\šI”Áb~ù©á•£#Aõ\Ídè§±¤j>§`%`:†#Ò§IAÁÇ¨®^+ùrˆ,8\ïøÖ­½\Ò\È\0c´ş•„©´h¦™®Œ\rø\Z’³c¼1’²|\Ã\ÔU¨®øV*\ÍÅš&‹›\é@\"Š‘…:Š)\0SqN¦\Ğ\ZZ)´\0P( S\ê(¢€\n(¦\ĞES(¢Œ\Ğ\Za§ši \Í:ŒS°)€\ŞôQE!Œ PiE1%<S@§R©\ÔÁKH\0Sé‚(`-¢@	ŠBBu¥\'šÏ¾¹\Ùò!Ë€vªJ\ânÄ·©?7OJÇ¹º39\Ü[‘x\ÏÖ\ä³\åÜ’\Ù\ê{UK™#*¤³Ãµm®†mšR‚Œ`(¬û‹\à\0sı\0¥˜\ä…\ÜYğ)n3\Ëz1])XÉ»•œŒüõ¦Xt^=MX“@\ï\ëU_\ïg‰«H–\Ä3gƒÂ„v$\ã9¦oL«Ÿ­4»pN=08§a\\™%`üô\ïP‘½\Ëtj\Ì0‰\\\ä\çŒ\Ğbo0§¡ü\ér²+rq× §\0A\É<\ç¿©#Ï¨\êj¹”ƒÀâ˜‹õÂ‚ß…N0AÊŒöªQË\ìl\Z±sŸ3¾x\Å–ãŒ¸\èŞœcT\'$~\'sF0<À}³ŒÔ…\Õñ’}9\Å;\n\ãq¹Ç˜G¿\\\Ó\r©9!ş”÷@ù\n9>¼Ur`€cE‡q\ÖA\È\0÷\â˜7¡úv«\Ø$\í\Å9d$\èô\â	\È8&sß¥\\ŠFòNW\Ğöª Bø\0\í>†¤18\ë×¨©qOq§\ØÔ†ğ ºt9\æ­\ÄQÀ?u»kH–^TG¥H’‘Ê’¸\ê\"°•>Æ±Ÿsz;§Œ€\ãƒÑ‡CWbH2+D,ò¼d\ZÒŠU0Ÿ}¿\áXJ\Ö2F(¨a˜8÷\î\rMÖ²z\Z¦Ó66M\"€”Q@ C¨¢Š`\Úu\0\Ú(¢€ŠZC@i¦œi¦˜	N\æ›K\Í\07½ôP1¦KJ( ©*1RT€‚–Šp ”QJ:P\Æ”¸\é\Õk‰V4&šWb^Ü˜`Œ\0¬\ÈÁ/\æHN	\È¿ıj	39g(\ésP\Ít±’rF\0¼c\Ñ6-\Õ\ÃÀ#\0ö\íY2J\ÓHU~U\éIy& ¡9\ì)À,q³nGõ®˜Á#\î1#T±ÀI\êj¬·\r’#‰¢IL¼\à*	tóÖ®\Ä\Üd‡\å\Ë>\æ÷\íP”\'—8ô\ÍY¶\0\ät&£1\äÜ\ç5B+ñü4 g©ü¼\ä3@\0s\Éô\Å\0Z¶‹ |Ãrz\Ó\ä\ä³Ojµd\"òK¿\Û\"«\İ:\Ù#ŞµK\èg\ÈwœÇ©¨° òqıjm/9<œv¤’\İb9ù»(\æ¨D9Q9÷§‹ƒ\Æ@8õ¤Ø€ü\Ù-\è;R‚¨zs\í\Å±b9œùcŸÂ­Ç·vJ¿J\ÏûF:\0¨ \Ş8)üI\Í1\Z¿»9Á\ç\×Ò£’ÜO ÷¬¡s!û\ÎpO®*x\ïU;³fâ–£\Ğ|¶\Ìú•	%8\èj\Üwñ¿z{Ä’ƒ\é‘@\Ò\\\à?>†¥I¢œCL’Ù†pp8¨\ÒB¿)\Ï^‡µ\0fÑ‡cŞ¦wh\Îøÿ\0Y °Á\'#µY·¹Pp\Ã+ĞŒÔ´ReÁ,o‚\0ê§š±­<·=9‘Y\ÒGÂ¶Pò	©bŸa\Ç‚k7“5\í\ï›xV\'w|\ÖÅ½\ÊÊƒŸ˜u\Î\È\Ü÷Vªxn$‰Á$q¸w¬\'Næ‘‹4U;kÁ!Á?[ŠÁÅ£d\î-R\Z@\'jQF)EM§Sh\0¢Š)€Si\Ô\Ú\0))i(\r6œi´À)i)\Ü\Ğ}\è¥\ïEN’œ(\áRSµ>¤EZ(¦d“\íü\è\0‘À¬\ë‡’9?Zµq ŒOMb\İ\\oÀ\ÎO=«Zq¹•‡\Ü\\„Œ\ì¦3\éYg\'\æ9$ğ=ÿ\0ú\Ôù&W*Œ\Î\ÚznŒùwqŠ\ì„lsÉ\ã\Ë@\ÌN\âyZ@d\ÎXm\ÏÖ¬0grN1œ’z\nO*\"r\í\Ç^8\Å^„‘\í\Z±©=©\Â`±\Ï \Ñ$À@¿V<Uv-\ÎzhB\Ípˆz:bª\Ét™\Î\Şµ+’z&;z\Ó|¡\İ3ŸS@€\\©=	ö\éR‚#vfÔ¶Qó`ãŠ¿o8\È7Px\Å&\ìRW$¶Ş g)\ã¾)$¶ûD\äö=;\Õ\Ãl˜\ÄmÛ\ëI´ƒY†xÁ¨\æ[–¢ö(F\\ n\Ï<T?c`Nı\ÌORJ\è!\Óy2)\0ş5`Y¢“µ7m`TûDW³{œœ–ù8HAÔ‘É¨M´œ\à=k¬û¸8Œ\ç»K’©–`OrW´H=›g\",¥ ³g\0S~\ÄÀsÁ®©ô\æ\0ğß$ºc\n¡\ë\ÈS\çDû&rR[\ì#9\éœzÓ’Í¶y›&q‘\ÅnM§\ç\å\Ù\ïŒ\ÕYl\ÛT9±\â©I	Á™\áÿ\0ÄŠP\í\à÷õ§In\è\n\í\0:¯$eSœr=\ÈjÆŒW(\n\Ø\Ïbi“Z³\Ñò{ƒY\é)ŒÃŠ·oz\Ø=(µ‚\ä(\í!¿\éS¢,ƒ+\ÃNõ;ùwqÀsÀ5_cBpG õ\é1¢õ½¿\ÚaÙ»\çAx\ÅB\âKrUùZb;!¦w(\äô\áq\æ¯\È=jM\r2\Ä2\à`\î\ÚzJµ›>÷>ısTPÀ<>7ÁÁ\ëõ©j\ãF¬sœq…\'‚;VÍµ\ÂÈ€óW;À\â6\ÄúUÈ¥hH’;5s\Î°‘\Ğ\ÑP[M\æ \ç*z\çj\Æ\ËP R\Z¥ \nm:›LAIŠZ)\0Si\Ô\Ú`”´PM4Ó%\Í7ÖŠ\0gz)q\Í\0\Úp))\â\êh§R\áKH)Ç\ï@\r\'<Æ‡\"1KŒU;Û€Ÿ ?3töªŠ»°›±Búä»•­c\İ\\–|`pO{)\äUA?{–?¥v\Â)#R»\Ê\ÂÄ‘“M9.¿1S ½W¸˜9ò\Ğ\r«\×Ş¥óDP©\à?lö­+\à\r\Ã\ì\æ©\Ë3\Í&G`)	–\æPœI5n+U;±Œe­1LnPñ\ĞZ<µ„eÀgnvƒŸÎ¦w\ÇÍ€	\à\Ç\åTä¡\Âõ=I¦K#¹G`)\'9?x9\ÏV\Æj\äQd‚ª\Í\îy¤İ†•Å†8\0ı{VŒVe\Ï\Ş\ã<*k+l\Å>Õ¯\rª¿&°•CxS¹Z\Ú\È\'RO¥h\Ãj„«\ë\ÜU˜­U\0\åãš´–Àr¤\ãŞ¹\å+*	\Ò\Ù@”\Ù-°2˜\ÏL\n¾\ç?ÖšñÁ\Û“*È¢‘Sp:TR§ª‘ZA  Û©\íŸZ¥\"leùLp0Gza‹=wö­9mx\Ü\0\È3Ö H\İ\ÇøŠ|\Âq(Kl%\ê?•Sš\Èò\0\çù\ÖĞŒyú\äT2¦Oó¦¦\Ñ.	œ\ìºqş\êóß­S›Jc‘Û¨\âºw\ÔÂ ’5~\0ú\æ­Td:h\ãn4\ã\Î\äu\Íg½»Dr2Ò»i­£\êW­f_Y«ôfµK˜ÊŒ(\æt\0c§\ëWc‘fLÿ\0Öª\ÒÛH\Î\ÓÖ›’P}+K\ÜÉ«L[1$}:U\åE\Æğ\\j¹or¤leO\\\ÔWQ’(Ã‚?\ÏZ\"i\Â7~‡Ö¬\ä¯qY\Ú7$g\ÏÒ´\í\æó‘s\Ôw¤\Ğ\Ñ<o‚9^µz;•—\Ç5œ#ƒŸ¯½X(y‘\äÖ¡«”™­gpÑ‘ƒœqÖµ\ã›8\È\àúW7\Ø\Ãzñ[V2‰S\ät®j‘¶¦°w/eN6ôò* €z0ô§‚ysX\Z¢Ş—\0”\Úu6€\n(¢˜†\ÑE\0†›N4”\0”´”´ozZJZ\01N”¢‡\nx¦OQK\Ğ{\Ğ*)$\ÆpJ¸l2\æ\ã\Ë\ïX÷¯\å’X\å\È\ìzT\×W\n\\¶~\ïNõ,†g\É9ç¯­uRŒ\ØÀåºŠeÔ‹oKfFÚ¤r±¡,\Ü/\ëY72y¿0û\Äô®“\Ñ\ÈË–\ãı\ê@ZL–\Æ\ä\ÕHÏ´\0Æ¬9P\08Ú¿­\0OoŒ‚Wjö3\î}ª\Ä\Ò	\Â7\Z«l\æl\àS\ëR;¨8{°\ì)ˆ‚]±¡fİ¸;\ãÿ\0¯T\È=ó–\èj±s·y\\\îU\äŸSNµ…¥;ÛœóI»*\â\ÚÚ´„rzŸJŞµ°c\îŞµ\r­¶\Ìt\Ëv«¡³·=ú\Ö&tÓ¦†CfF\0\'¨\Åi\Åj¨´B˜\Ëc\ØSŒß­s¶\ÙÒ’C£F=\êT§ZTL˜şµ(O–\Èş‚“gJ±²“a W*˜ñ\×ğ§Æœ3øÔ¥?\Î)S¥9ıj-˜<U¼Jc¦ú\ÔJHI\ç¢x@Á\Å_)Q¼`ñ(¸rEÁ f«y+œ\ã\ëZ__Ê£0\ã\èiŠ\Æ[ÛA\Æ­SšØ€q\Èô­y!;úUi###§bZ9‹\ë.	ß¥dÈG§\"ºÛˆ\È\ÉÁ#¸\ëXw°©%r9\Åt\ÂW9ªC©ŸğÀ\0OQV_pboÒ©>c|5n\ŞU”ln‡‚=+S\ÜXùÁ7CU¡”\Æù\íœZN<°\Ñ\È2¤\ã\éY\ÒG‰÷÷ \r8\ä cR\Ã!GŒõ“k)§\â+O>r\ïJVp Œ‚GQ\ïW,\î<·¼Vt2¬•<\ã”C1«p\ë\È#½g(\İfu°\È$\â¦ŸqY\ZuÉ™\0\è\Ë\ëŞµ\ÏÖ¸\å3x»¢lP(?ZN\Õ…6EHih AM§Q@\Æ\ZJSŠJ`%-%;Š\0ozZLsJ)\0KE-\0(\Í<SE§ù\æ€O8\íT/e\çbOS\éVneò£ }\ìVÔ­*s\æ7_jÚœnÈ”¬Cs*¹Ú¤^	õª\ê\0z\Ò\Ç\'9ú\Ó.b°y\ï]qVV9Û¾¥+™¼\Éö/AÖ©ƒû\â\Äw\Æ=)¹\ÆI<“š–nqÓŸ­Y$\É# -À-\íQùu %V\"’Y\ä\ã<Ô¹@9\å†\0©·«\0ƒÀ\Ïù\ë@9\Üx,\Ç5#×¾	§Dzó×Ú„Kµ\È\0wü\ëB\Î‘Œ÷8\ÅR„y³öEl[E\æ:\áQ\ÍgQ›S‰¥cn\î\Çµ\ã@üªµªa\0ÿ\0Ö« 1€¥r7vu\ÅXš uöñV#\ÓÖ£‹•¥XAQr‡ ü\êdN:Æ˜1ş5*`ı) b\Ã\ëF?Ï­<õ\éùPPöi\Ù	Ç·\âh\Ç\Óğ©q\Ãò\Í7ƒœqJÁq˜£·J~\ÏÆÖ‘œ\Z\ÅNA\ÅDh™\íQ:ûw«$c8æ™iRDª\Ò «n¿?w5^aÁ¡¥4A>£µb\Ş[+\ç‘\Ç¸\îS­S¸@ù8«‹h‰+œ…\Ì[\ã5SıT€\ç¾3[º¸ œwâ±¥)ôæº¢\îI«2y\0‘2:9\æªIP¯F^†œ%1€rv=©\Ò|ø9\0\ÕgÉ”!\Ç\\óZsc½~µ^d±\ë\íQB\æ9\0>¼\ZcZC\å\È&Sz\ã½:]¹˜È¨\á‘dŒ\ÆzõBsºEK¡cu°\Ì:{\×Gm2\Ë\áÖ¸\ØØ¤€gt­‹\Æ“ò“ƒXT‡TitHùÇ¯zw5d=O# \åG¨®V\ê(\éM¤0¢Š)ˆ)´\ê(†’”\ÒP0¥¤4´X¢›\ëN¤ÒŠJQ@ œ‘@\æª]\\\È“\ÅTUİ„İŠ—W*x^\æ²F‘\Ë’\Ç<Ô³8’C\ÉÁ<\æ¡\âGùF@\é\ï]ŠFw$\0F*†§\"¤qÆ¸,NZ­\ÊF0xp\í#–õ8ô­Q‰\0$ñ\ÎjI—\0PynOµ$h@-\ïL˜\ï \Ïjb\ny\ÒdıÁ\ØU\Ìù#h½n	ş\èÿ\0\Zd#•œ“\éQ\Ë&\ÚA\àZA\Ğq\àpK\Â\ßZ©r=MYy\0.sÀ›\ZF…š@\0Ì’r}« ±„$`s\êO­g\é–\Ø@\ì\æ\îkz\Ş.œ~U\ËR]ºq\êZ†3€1\ÇZ´3Ç¿¥68ø:X3t‡F*tÏ°\0S1Œw©Pô\0\ä\Î:õ©Gÿ\09¤AÇ¿¯LSÀ\Ç™\ÅPÖ©4€‘œw£9\ÏZwƒ§JQŒbOÆ—Ö™\"ñŠCÔÔ´\0\Ò*:\Ô\ïQ>z\Ğ2#M8\ç)\ç4\Ã\×ğ\Å+¾:w\íPK\é\ÛŞ¬\É\Ş¸ªò\ë@™N`¤zU	‚ŸBkB@sU¤N\rZ%˜\×Q\ï\r¨°\æMGN\âºK”ı\rd\ß[ğHG¬´0œo©†H\ÊÃƒÁ \0Œ\ä¨ü\Å%\Ğ\Øz\ÔH\à\ã=ns²Áé Œz­\"\Õ$raÊı)Hÿ\0>”¶\r\É-¤<q\Êõ«3a6Ì½GZÏ‰ü§ö\'š\ĞM²!C×¨¡‚!Àu<Aô«ò0M\ÙÁš©nv;D{ôö©O-ö™À5-h3¨\Óo2€1\Ï\Z\Ô3\\­«²rC\Èô®’\Öe’\Å\\•#forlò>½iÆ›\éN¬M\ÑE\0Si\Ô\ÓLBRR\ÒP0¥¤¥æ˜†÷¥´ê‘‡¥/ù\n	\Å0	dFOµb\\Ü\ä“\ÔUJç ô\ä\ÖI%\É-ŒÕ½8õfRdo \éİ¹>\Õ$n25X#I&{{T\ÎU0=5Ó±\å{‰7†c\Â\ã³J6ü•=ªı\éÀ\n:ô5_œ\0¼c“T‰±€\ÜF3À\0\Û$„Àäš’YXF}[LŠ}ˆ\Ê\Ç&˜‰²FUN\Æ	^R¯ 0‹À\ÍM6L‡°AP QóŸ¯z@H00{h\éÖ»\È\'\×J\Ö&’M\Ø\É\è=«¨\Óm\Ô İ‚qÚ³›²4§²åºšÖŒ`UXS\\«‘»³¶*È·MX@}ª(P ©\Ğã ¨±Bn½M\ZN´G\ÎqR€;u¦\r€OòiÜŠQšx\Æ)\ØW\">Çš:u§\àwíƒ­>P¹3Ò”g¿JP\'\ÔSı3M!23J)ı(\ÓBõ4\Â?ú\Õ!ú\Óp\Îh°È³‘\È\æ£\Ç_z˜Šø¥aÜŒŒæ ’<Õ‡\Î2¼\Ô\ÓÈ¦™œ\éœ\ÕYÖ› j¬¨3\Å4I“s 9k6T\àı+vT¾µ—unA>‡‘V™-\Õ\ä!ò¸\êr+\'”8=\rt·\Ğü…×ªóXwñ!×¡­\ã+£–jÌ®\àû\Ë\È÷§£\ï@{ãšƒ;§#€x\éV\Ì\É0±\í\éV\íœ\àg‡CÏ½S$8şU4%·\ä\É\ÏzO7\Ë0`0CR\È	O\ÏŞ’Dó!˜¦\Û\È6\Øö¤Æ‹\ÖÒ‘\"œœ”\Öİ¬o \Éù3Çµsñt÷Ö­”¾`¹\ã±¨´¹pz!\Ô0\èy§\Õ[92»U\è*\İqµfn„4\ÓN¦šC\nm:›@‚’”\Òb˜Ä§~t\Úw\0ÁÖM\ïN¤1jeŒ\ç Tp\re_\ÌO\np£ƒ\ïWvKv)\\\Êdr3óU.	8\0ü\ê\Ç2“Áf«F\âI\ÆşFk®(Á²kh›\Ë\ày§KÃŒ9\ÍH\n¸=¹â ˜\í0*„P˜4‡<–\'©¨\îul\á–<\ãü÷§LY\İ{œ\àUK\ç;\Ìyû~µh†W.\\€{\n»n\ï$\à*\íB¾@:u«`\ì\äcXñ\ïM‰Äœ§94\à2@=\Í2€÷#ø\Ç\Î ¤\ÊH¹l	`Œñ]EŒEcÚ°t\Ø|\ÉxQú\×Om•\ÏQ\ßDt\ÓVWe´\0\ëV­ş¯òª«\É\0V•²\0=«“,Æ€R‚$Š£s{_/˜£±\ç¥g¾«|C(÷À¦ \Ø9£¡IA\àu©‹\Ø\äûs\\\á\Ö\âŒ}\ì\0>ñ8 ÿ\0„\Â\Úˆ\Î\âÃ“•j›d:‰x”ğ;Wÿ\0	ŒXX\î#*S\â\Å(2\í\Ç?*ô«ölj¿\"‡EpT‘\È\í\\t^(>×œ©\ìÀp*ü:ûFşL\î	<«¨\ê)84R¨™¿\å\à\0©\Å	\ÅUµ¾I\0!²z\àsš½Y1\Û4¹J½Èœc›=\Í\\(\'<œqQ\0¤‚y\Ç<Qa&@S\ÛÖƒ\ìjI0y3\ĞSI\0zRh«•\Üü\ê7ô©ˆ\'½A$ŠˆY¸\0õ4¹Gq˜\àb˜~£\ßFûZ‚\×\å\Î\æ=\0¬k¯E(ŠZC\Ø\Z¥\Èu:\Ç#5^Lr+šÿ\0„–\\“#|\Äp€g\èüU17ø\ÍW³d{Dj\Ì1Ue\Óğ¨¿¶­.+2ƒ\èE@uI J„út£•¡ó§ÔŠh•ò§¸Á¬\Û|\Æ\é\×oJè‹¬™ ZÊ½M’gµPÑ™\ÏS™õ\èsI\Ôv«‘›#£Uqœ‘\ëÒ·9\Ù(Ã¦;\ÔğÜ§\ÜUh‰Ï¸5j41\ÌøXw ¼ góŠ¬~I7„æ§‹£8\ÆEDüd„ñ\íI«\ÜU«Z9[•›(Aô=*\Ğr’n=	\Íg%tR\Ğ\ê!oIõŠ\Ò8>µƒbÀ \\\àõ³	\Ìc\é\\“V7‹%¦Ó»SMdXQE4\ĞIJi)€”´†–˜†ÿ\0§S1\Í:È®dò\â>§X’\æI¶\Ãqô­\é\Ì#†k,“36>fùŸÖ·¦´3“+\İH¾`Tûƒôø‘2~ót¨\"FšA“\íVş\áÁQ…\×M¬ŒwbKˆÀÁ\Ï>\ÕVc\æ§SŒâ¤–Lx\Ür¦”	óÀ&…\Üo±S\ÈÊœzË—–$òO$šÓ¸˜ˆ\ÑS\î†\ŞA\ïŠÊ›©?\Ş9\â©\Ç[G¼’:\ãŞ§›qŒF;\n‚`F \â¦NgRA\à\ä\Õq@ƒ¤·ùÜŸ|S¤~]½h±\ÇÖ¢[Í½6<c\ë\ÍnB\çÖ³¬£µ¨…S“Ûš\æn\ìêˆ¹\0gÓ“š£¨\ë\Ë1A¸çŒƒŒ\Ömö¦\Ò?“,IÁ\ÅY²\Ğ&º\n\Ò9\0ö8ªPKVK›z\"{›—ß¸*ƒÂ“ÖtEşerU®\ÇN\Ñm,€Ê†p>ñæ´‘!La@ª\ç]©·¹\æW\Zf§ÿ\0-˜c¿5\n[\ËjC4@8\ät¯W)˜\Ê)¸ª·ZuµÀı\äJß…R¨K¤y\Âo€W¸\ÅC$mŞ„ğ{Wu&ƒi“„\àğ9\éT¦\Ğƒ\Û=\èöˆ^Íœ´DHv¶Fz0\íWb—a\\Ÿ”\á±\Æ?úÆ®ÿ\0a\Ë€®\ÖQÁŸ&\Ü0ä­>tÁA£_C¹)21?/Cšè„¦\'?\İ\'#=«”±cÇ‚+ty³N„œ\"Œ}j4Š±¹mrH\0¨\äw¤w\è:\Õhœ‚9#ŠŸ\æ ñÛ’j¹iYH\ç$z \Ó<\Îzb–\à\àz§4¸C\Îx\ÅCe’\éQ\Ü3Œó\\Şµ«6Ã³\îôš¬\Ò\ì2r8 w¬‹¤{\ÜR»GLõ5¬İ™M½‘•sx\ÓMó1\'9\'=*p‰ó÷\'°ÿ\0\Z¹“\"I—÷\éSÇ¢9r\í\ÆNqZó¤a\ì\Û1\äv?(S“\êjg\0“\Øfº\È|<\ÎqZ6ş¶@\ËJ=ª+\Ù30\Ì_\00QÔi\ßg¹„ıGZôt\Òm¢ÿ\0–j\nI,\â#\îøTûQûyüWSÃ€Û€÷«Oz²¦\×\ë\Ô\Z\é\æ\Ó-\äB6ƒ\êMs·ú8‡,…€\êZ#$É”\\L›\Ô\ã#\îö¬ù2}*ğ‘ø\\ôª9ü+Td\ÄC‚w\â´\0Y€]NEgE‡\ÊÖ®Ÿ‰#\Úp20½1\Ã(G\0ıŞ•4¡s\ïŸ­V–6\É\ìF*P\ä 2@\àúŠ\0{Ç„3ÁÁ©ú°G=3IÁŒ0\Ã£G`G¦x\rj\Ù8\Ç^WŸ¥n\Ø\ÊdC¹®n\É\×\í%I\áºVÅŒ‚)\ÌGğ®jˆ\Ö\Ø\ê)\ÔÁ\ĞR\×;6\nL\Ò\ÓM \nJZCL¥\â›KŠ\0?¥#¸ßµ3Q\Êv\rÇ¨\â®Ë¸›™û«Ïµf\Í\'\03\Æ:\Ô\Ò\Ì]¦l\ã=E@€It£şY§\'Şº\à¬a&On\Z‘\Æ+œ€\0ûÜ’{Ğ¿swƒµE#\ã{vŠÑ‘­Ó—•@\ì01N˜ş\ì.s\Æj,g\ç’iÒ¹\'ğ¥±I\\¥6NA=ª›œ\Ø\Í[¹Œgj\0ˆnv¹*™Á gH†\é¾h”z\åM\"c\Ï\Ç4\Û4/<…z`‘ı)a\'{©<©Áª\\#c«zU­*\ä{\Õ;ƒû\Ğ VÎ‹\à€TM\Ù\ZSWfÍ¼x#\ØT:•\Ód[Á\ì>fª\Öñ\Z=©l,L’\ß%˜\çÕ‚ijÎ†›\Ñ¢Œ‰$\É=I#­t\èV$\0`bªGˆ\Óò¦ùŒMK“e\Æ	R@{ş50\ëY\ŞpŒv÷¨N¦¹Ú€±ôÔ—±´\èqJ\ï \Î\Ó\í\Åb\Çuq!Â€¹õ\æ¦qt#\İ\ç»U$\Ù\r–$”‚Z\åÉ¬{™¥G?¿lŸz®.\îA8u|v<fF\È\Ûy)RQŠË‹Q.v¸\Ú\İÁ«1Ê¯\Ğşt¬\Ğ\ÓL¼\n’Eh\ÛH>¹ı+$Á®\Å!©m¢¬™­°9Ÿ”\äU\à\å\Ó³\"”\àU\è¤\0qM2\Zd\'\0¦².$\ê+Jñ\Æ=+œ½¸!\Î\r±½„Ü¼\äsMFLy\È\0U3sÁõ§Å—Á$óZjM‘i@$asV£…I\ÕCp|sM³I-BŒğ\ÎqšV¸\\\Ö\ë2i\Û1Y\Èn\Üq1õ\È\\b¡¸–\æ?ùn\Ù÷Á¦\à%#MÜŒŒğ;\Ô/*y¬ƒ©\\\0\íp;)WPG\ï†ô<TÙ•Ìº–¤,	#¥Sº\Ğ\äf¤3]\ä\ê)\ÇBefWS„Es¸s“Š¡\×#€A\â·5d&a\ï\ÅaI‘‘\é\ÅuE\İrVdq—<q“ŠÒ±>T\Íôn~•—\È ûÖ‹¹\ÌRñ’0qTJ,^B7Éƒ\ĞqŠ\Ü\É\ÆÓƒô©\ãq&T’Y½j0T\Ğ\ç\î5\Ã\r>\à—µWôN*KÆ§¸5,h¹Œ\Äù\äœVÌ3\ê;`šÁ \çÓŠØ°“Í³T<\ç\å&±¨ºšE2o[±5f\é³ü†6\ê¼V‡¥r5fo†–Š‘¤¥4”\0”\êCK\Å0!\Ëdß“U\ï\äò\á<óŒ©«’I\ï\Ådê³”r?\Z\Ò\n\ìM\Ùa\Û#ü\Ø\ÍK\ZŒV\ãÒˆ\"\Ê\r\Äd\ÄS\Æ\ç“h\Æ3ƒ]‘9\Øøvp=NO¶*µ\Ñg„¨ nlqRM/—¼\ã¨\'\È\0ÿ\0¨ö\æ†$BGs\Û \àÓ¤QÏµWp\Ât\Ü1\ÆAb]ÀS\ÅLº¥;“óLcL¾B	éšµq’÷\æªA#•qØ‡¹rÌ´v\ì0a\Ç\"™gq×€I©m\ãd¶2dòJl93\àUt\'©ZS›’;t\Úb€^•\ÌÄe\Ö{]]¨\Ä(½cWd¨÷/E˜@#ßšØ·EéŠ¥g\ã¾*ä„x¥s¶t¤òO¥Fó,HOµB.6d+3R¾À8\é\éBM•tµ&’\á®	gl\'e­C6¥š\r\ì¢Š\çn59\ß*¹\Çl\n¨-\în$eb$\Öñ¦–\ç<ª·¢6¥ñ‹\Ä\à@˜\0\Ôpêº¾ª.\å·ód\İ|\×\ÚxŒt\Éö¬\é4\Ç2&<)n§Å£^\ÆdT”Æ§v3Ï±\Åj”L[›µ\ë\çpo\ÇÖ¾¤\Ø\r<,ª\ß\Ä8¬Ø´K˜Fö\029®–\ÎñM\Ş\â\Ï\Ì@1“Ş¥¤\\\\Ğ‘¼W !€\î;U\È\ã)9b}=+\ì\äM#Û¤±‚rªqZ67SÅ´\Î\ã®5“VZ\Å÷4LnpAúUûY2ƒ\'†¢$y{£V Œb¤²N2EdõF«sRß¦	«¡ğeÛ¹ó8û¢¯\ïT!´V½“ƒJ\æ/\ä\ä\×Gt‚s\\Ş¥‘WÈ–\Æ`vy‚\æ´p\Ñ\Æ\0\rŸnõN\Å¼\ç­jj7‘YA\È%ñŠ\×K‘Ğ®–\ç!\æ;ˆ\äx^\çZ²± ³o“\ãœUs=\îKË²2pUM?Vµ\ÓÎŸ\Ø\Ã!™[.]qº´Iu2œš\Ñ\0ñEı\ì\ævo’¨7óš\Ê\ŞHvHS\È\Å2\Şb\Â\è\İi\æH$*T4m‚\ãB*’Y\İFX´O×85¥£c\årúknù,¿‡Jµ£\È8c\ØñL³û °‘n\Ç\ï[ \ÆqX“F\ÂBSyA\Ó\"¦\É\èW3GS×–\0-¹OF\î*\È|òZ\äa¹–2N=\rl\Ù^Œ`š‡\Z—Ğ“QLŒú\Ö\âlr{‘]\åeŒóÛX—\ÈJgÒª¡5S)r*ôd_=TdUÇ|U½\çZ³X†ll#\×9«\è$‘\ã$\rÀ‘š¡	\ê?ºx­|s/\0‘\ëB0\ÆRdËš2Jj°N#9\Î2@öª\Äa\Í&4H¾1\×=+GJ”\çojÊ·|‚¾†­\Ø\È\ÑÏŒ÷\Åg5¡QgG1\\˜nMjƒ•²2B§£Zv¯›pO®µrMu7‹%¢Š+\"ÆšJSE0\Ò\Ò\Z^(	u®s÷òù¹\0õ<Öµ\ÄÁ\ã\ïY2\Û\ä†ay5\ÑMYÜ™\ìGcM\Çğ-¾7–\êG95	v–M¿À¼T·¶¶¼p\Äg5Ğ•ŒB\âO:÷\Ê\rò©\îh¸}\îp8\'¥S·\Üd\Şs¸Ä\Õh\à€:~”0D7»ƒ\ÎWš°dg\n}W½T˜\ã$c*{U˜¾t`1òŒı)=Š\ä2c\Ïj¢y \ãµhJƒx$\ç\"©\ÉÇ®)\Å\è\'¹z\Ö?9\n–\Çƒ0£5%®8<t\ëPj.RQ\Ü\à{UÔƒNı\ä\ã¾Mu¶\é\È•\Ë\è\é™\Óu\Ö\É\É5g©\ÑEhjZ ü8«O#‚\Ã>õºp*\â\Ç\\·:¬fKj\Ç<ŸÆ©K¤, ™	>‚ºA=¹¤6\ã¸ÏµR“[	¤÷9X´ˆ\í\Ú?*¿•\æµe\Ó\Øü\Â0>§”ñ{ğª\ço¨¹\èF4\ÅyC\ì(Àt§\"!ù°\Ã9\0g4\ás³‚ñ\Ó|\Ã )?AT¤\ÉqEw²QF\İò8\ÅBm\ã\'<Õƒq4™\Â\ã\êi¾K?\ß|aE\ßR’H«±c>¤ö«Qñ‚UG \ÅK \'\ä\\ÿ\0´j\ÒX”Á\'5.I-\Ê\é ŸZ±Ø€õ!ˆ€\0\éŞ•\"<T\\\Ñ!aN\ç<Õ€05\0\ëO\É#Ö\ÆH©b±/\â\Î\ï¥m¸&³/GSUD‘\Îü\ÑLpA­˜^„\r2+Áš¡4}iö\Ù \à÷µ£3K¡q\â¶\å@ ôÀ\éR¤h\ãU²q\Ó\Ô*\ã\æıjC¡\ïO˜|£ÍªlmªzcU	l›ƒ&n*\ï›2P‘\ê9¦}¨ó;r(\æb\åFa\ÒW`ù@ ñŠm*2œŞ•ª÷\0sŞª¼\'Y‰ô£‰Áü\ÚBŒ\à}1M‡N`¹Á\âºa4™\"0£\Ü\ÓÅ«E÷†j½£Øf¯tb%›t,Mg\ß\ÄF\äö®h±’+ù3\Î)\Å\İÜ‰++¶17\ãV½G4d\\·¦sRzWC9Ğ¶øFzšÑ…Ç–¨z¦Tû\Ödë›¢¯[“\Ëc‚2(Õº	-f¬`±Z>œ÷bo&?\å¤dTQ€rU8Ç­c`w\ëSFY$\ç\ïš‹coÜ¼9©e\á÷c¶~µE#¥¶Ä°‡±šĞ³?;!¬­L¦\Ó\ÎáŠ¿˜\ï\09\Î0A\ï\\’Z´o¡£\íM#š:’?\Zubh6™O¦\Ò\r/ô†–˜ù›\Ì\É$|¼\n¯¿b1cÓ€)F,}I^D;\Ã8ô®¸¤e!ö\Ä\ÊFFsTµk\Ñ,\Æ5ûª9©\înM±\ÆŒ0:V]¼m,\ß7;I­—s\'Ø³h øœd\Ôñ³q=GJ‰–@\0\àU ôÀ¤\ÆQ|\å½ÛŠš\ÅÇœ\Ëı\å \Óf\Â\îp)–¸\èŸZ7@´d¯’û\'ª\È68\ÇF9õq\ÇP;\Õg\åõ?JQch·nT \Ç\×5[RÇ’1\Î[­Ols1N *­ø8\0ñ‡\éWÔ…3\ænô8\Ö\Û0+˜\Ñ\ç\ß&º›q\\Õ§U¡«l2hF=ê…©­ñ\Å`tÆœ\n›Ê¢!œqSâ„€€  ¨d\ï\Å])Q¼J,{\ÆNIÛŠ„\Ä}¿*\Ò0Ÿ\Ä\Ó·?Öª\í‘G\ì\Å\Ï==©ñ\Ù)<Š¿\å\Ôl \Ñv4ˆ„JjI\0¦<ñQ:r3R4Š\Ùn1\ïS\0§\ì	\É\ÅW–^ R¸\rs“R $T	\Î*\Â\'\0æ¡$Ö³o”5¦zd\Õ;”\'4Ğš0\ÜpF)‘ez±qFsŠ¯Ï½kº2\êhÛ “ƒSıœ•°<c¥iF2E\ìZÔ§\å¿­\'•ÁùzÖ——Ò(zb—3‘›öe=T~Tñn£8Aùb¯ˆ€\æ—`¢\ì,Š;pPÿ\0…A,`\äzt«ò¡\Èô^D\'¸\Ñ-u¬MF.=y®aœ\ÖM\ì9¶ƒ\ÔÂ¢\Ğ\ãob\"e\'¿Â˜ü«CR‹(XuS\ÍT]	ö®”\îF¬È†D‘“Ñ¸«Q\æ9\0şpj-Ÿ»STÕ¸cIa-sƒLCpü½1P\ÈZ9œt=\èrIVGZmÁ\ÉG\ïŒzr~lğG5+º¸Œñò®;\Õxd(ÿ\0u†3\éS$j\\\Î\Üb¤h\Õ\Ó	p\éÁ­K‡\Ù<2öõõ¬k	6H°<\Ö\İ\È&\Ôw\nwjæ¨¬Í£±¢„>w©\rAo\Ì*\àõ\êL}+šKSTôM\ïJi´†–’—B9“™Sœc*¨ÉôÚ½«fO.\Äe\Øğ*¤¤Æ„Œ\ÜzWdWS)>†mü‚[’2H^ô\è\Ã$\'\0\ï<ı)©ù‹¸\'\'€8\ÍZ%P€y\Ï-\Û¡˜ûX\Øc\ÔsRH\æ9ì¸ª\Şn&D\Ï\Ş\äó\ÅN\ì\Ï68 ŒñE‚\å+\Çi=‰&›|\ìc¶EM2|„úR[òñ\ç1š’–¥­›\Ép2*Œ¾½²GÒ´ŒxœxÛ*¥\ÔK~ñ\Èµ%¸\Ş\Ã#}’+g¯š8\ïf¡ß€¤úÕ›\Âdƒv3ƒ“\íZ¢Î‰÷\Èô5\Ô\ÛW\'¡¾f?Z\ë­ø\"¹«nu\Ñ\ØÒ„\0­_‡‘T-ù\Åh\Ä+r\ÜG©C’j©Ğ€;\Ó@<ÿ\0ú\é¸\Ï5 \\õ\éÖ¤ôı*¬+Ø‡\Ô`T\â<\Ó^-ŸSNÀš+½)y=\êb‡Î‡•\"‰©±W\ì0[3ü\ê9<¸\ÜFG5Æ¢@ùON˜¬›‹‰.$\0“\Í\Ï`W\êY¸¼W8Zƒ$¹\ä·À\Ò[¦d9\êMNƒeˆÓ€jtJ\0j•#\'šFGVD\ëZ3•ZHÈ¦®d]D5ˆùŠcŠ\é.€\äzóX³D<\ÌÖ‘2‘¡§H®€\Z×‰®^\Z\Ú`y\ÚMt¶r‡Aœt©k©Qe€”©\Ñ”\Ç\í\ÇzV*\ålRSë•)X.G\"\ç<UI“\0ñW$ªÒ	ªBfT£­Q¸B;Ö¤\È\Î?\nÌ¸\àÖ‘3‘\Î\ê1¨\ÏÈ¬l\áQŠ\èu 0x÷\ÍsR=\ë¢;SVdˆFS=ø5f\Ìó#\î§$Vy“O¿¡\ÂH®9¹d9Ä„sÁ¥”ğ1\ÈŸp™Á\á†i¯òKc¡\ç˜\Ø|½õf\"\ÒFp9^j®òƒof\ã\éV¬²’\ì\ã\Ğ2İ»\âBA\ê2+¡‰\Ökb?\Ù\ÍsXhg\Ã\rl\ØJ\r³\ê1XT]M Í›,‹T\Ó51\äTVüAz\í©Er=\Í\Ö\Ãs\×=E \éN#\Òv#ŸL¥¦1ş³Ÿ\áZ§u\É#<\Îj\éË€\n3’k:\é\Ã\Ü¤•^~µ\è%ds7vE•Bù²‚Kv\Æ1M›¸\é´dš¬\\d\Äf©\"[%G/0~ùü…h&\Ó$|õk4’ÀÀ<â­£“\09\æ3œ{Q\ĞH–\ãiAs\Æ)¶\é„\ÙÀ\éQ\Â|\È\ä>‡&­C—µ\Æ*Y¢/¼^ZE&\Ş¨^¦ò21\Îj&\é-cN~P0*¦¢¸\è@\'Ö¥nSzò\'\0\äsSFşe³©\Ï#\ë”â¡·;\ÔóZ“ho‹À¤ûWgoœƒ\\5‰\ê£Ğ¶+¸¶? ÷¬+-NŠCR#¡<Yq­_µ+™£©\ZF\Âz`T‘@5AR\ÆüMm;*µşB¨F\äj²’„÷\ïZE£9\'Ğ¸ñ„\0ñAU&—\0\ïM–\äv\0q\ëÖ¨\ÜLO~j›]¾£¤¸ôªsLH<\Ô3\\‘Fj(³1\ïŠ\É\êk°\Üòjq¾bÇ±\ÅhT¡\çœOÙ§ ô<\Ñm4õ»4ğ6Up0j#©Eù\Ø\ïPjÍŸh™3\îpi(\È\ÖFS€zV¥Ÿ2ŒŠ\æşÔ²}\Æ\àúU»{“Ğš¥£!\ê¬o_}Ÿg\îqøV4Ï³\Ô\ã6{ñT¯.\0CT\İ\ÉZhUº”c“YÏ†5\Í\Ö\\\äñP‹\èü´\\úf©-\Ùi\ã9«v$ \İ8ªhWLçŠ“Ns!vw8­\Üi\êt¶÷#¥[ó\Çb=+\r$1‘\ÏZĞ¶˜8\ëR‹-?…C&r*Bx\ëL$R`ˆß¡úUY3ƒVda\Ïz¬ıñBR˜b²\î…jL*Î¼\Ç¤L\ä`\ê\\!>\ÕË¹SŸS]6¦p\éŠ\å\Ş\åô®˜lqT\ÜB>@}*\ÚcC“òš¯\0ú\ç\ëS\Ây)\ÔµQ\×1“´€x,9p\Ê9\Ü1O@\Æ2Œr\Ê8¦C\à\Î;w dŒ\ì\Æ=\ÅX·Ä…}A\àô90-÷Xc§J#\0;ƒŠC\'º|\Ì3éŠ¿¤É’TŸcT.c;	ô?M§>\Éõ\ëY\ÔWEGFu\è\ÅÇ¥<qP\Æ?v¥I\éR#‚=û\×:Si3À \ÓA\íR1Ô´\ÚZ\0\æ%+’*¤ˆ¨t\ÜsV.d+µBiG g`f½r²¥\É\'\'\å\êj\Ëzğ=©.\\¹\Ú;š€\núV„Œó9\n8«\0ùaTÿ\0ò}*+x\É\Î8\\dû\Ó]\Û$\ÃRcD\Ö\çcºva\È\éW¬\ß÷8\î¹<V}©\ÌÀ·L`\Ô\Ñ\ÈcG ó´õ©)3¥ÒŠ\Ëe&~ú¨uO‘’8\ÎA\Òho”‘‡F\àÕ‹—>K!*sInSw0f€OB95Pu#¸9§4a\à/\Åg\ÈHl\à\Ó\Äù/c~€°\Ívö§\ä\\w®&Aœ\ês]•‹\æ\Ú#\ê£5]R5££fœd\äcñ­jËˆ\â¯\Å&^+™£©3MF*@zU8ä©„´\ËHô¦@3U¼ÁMyj™,’õ\æ¨\Ü\\c¡¦\Ü\\„\î*¬(\×OşÀ<ŸZ‰m\ák§\Ü\ßpÎ´£ˆ À\n\"c@\0\è*_­&\Ãq …#¨\ßÚ‹‘\Ç±ªû\ãò¦z‡:,š9³0qÒ’m\Îó%¢\nŞ t­÷EôE\É\âŸ3+Ø²[Z\Î\Ã9%µ\ÔñI\å\\®ta\Ğ\ÖÁ¶g\éTnm\åL»½*Ó¾\æo\Èy½Á\Åd\êÚ¯–02\Îx\n;\Ñ3\Ï\Î\"lı)X³¿™\"ü\Ç×µ=«2>\ÍuzwL\ÅTôQ\Æ*\ä61B˜òƒ?©¯\ä€1Œ~yc<\nm…‘F;7\0N\Ôş\è«ğ ˆ^\0\éNA)\à\Ô7r’%}>9LDr@4\ØğE)©¹Fœ3dÓ‹\æ²\ã˜\Æpsƒ\ĞÕ¡.q@\"Ã:şu^C\éŠµ8£`dµ—t{VŒÏŠËº|ƒW9Z±\"6\'Ò¹«n\\Ù®ƒX B\Ã=kÏ—9=²+ª;U>\"tŒùÃ3Šu¸	!oS­I\Z\ä\Ç\"ˆ\ã\àzn\ëTAa\ä\ÈN\å\àuZ7\Æ8 ñ\íIq BÃ \àTnAù\ÇCI®Àa\ëÈ¨Á>paßš•Ï™=˜qU\ã\És\íÒ€/\É(0Ÿ\ï\0*Kd\Æt\ÍUùo‘Ú®\Û\rğ\\dqQ-ŠGKdù„j²PpG¨i²O¥_®hÎˆ\ìE \ì\â›Sr‚–›N¦#ˆ¹“\Ìq\ÏAT®@\åV\å\0H û\Õ\â\íW fU$g© ’IÔ‰\Ğ\Zrg9õ« ·mƒ~Q­BH9Ï¯4ø\Ûd\'ı¦\ÍC/\æzE\0Xˆc¿z@Ió?!š#‰\ê4H1»€T•\Ğ\Ü\Ñ\åióü\Ë 8«R–y·6¸\È÷¬m6bU\Ï€E]û@“¹c\ÜR+ ·}–a\İAT¤\ÜøS¸ddUùP0ş÷9¨\á‹}²>>dùh\Ü™špPd`ô®¯H|\ÙFx®jhñ3€r	\È#µtz!ÿ\0E\Ğ\Öu65§¹¬™À\éSE\'5c#¥\Æ\rsø\å<f§f¨¡\é\éS\ïŠL˜\Èy¨&¹4\Ùãš®‘›©±ƒ±zû\ÓCƒ\Ş>y\ç“\ëZğF±\0 pE\Z,@(§£ñ\éC\É\äûT¤ŒT\0Ò—ÀúÔ±ŠOz8\ëM\Ï\Ò\åq\É\×\Zÿ\0¥0{ş\ã,}7\nnc?\Ä?:,\ÂÄ±šWMø¡\"09÷©Ll³†­&‰²+<#¸qU\äŒß¥_\ç<\ÔA\Éj¦T£Ÿ¥BGqÚ¬\ÊñÀzT;\Ğ\\Ph`9ı\è\ß\Û\'\È~\ë\ni’1šv\'T:9y©·µGõ\"\Ë\Ø\Òhi–4\Ñ!Œ…\'Æ£ò}¨?½ i5¹É¦¦\îœñJ\à“@\îA+\åk2\àõ­x\Íf\Í\ÉúUD\ÎL\çõ¯õ-ùV-†E\ÈEnkŸ\ê\Ï?ızÀ³\'\íQĞœ\×T68§ñ\Æ#ó\ßS¢A\äO9\È\ç\á\ÔysMó\Ë\'n\Ô\Ñ,Í¹q\Ê\çœ\Ób#OLp})·€y\İğFj1 \È§J`‹ğc(\ß\ÃM’;ö¦¡ù\ç­;~x\Ï%F~\Ì	\êx5n\Ù\È*3ÁZ¨Ô{æ§‹¨ö\àT\Èh\èôÁ²§\ê+AjÍ°?tz­i\Æ*\ã\æñ\ØSMõ¥\íEfX”\êCK\Å14„O\\qYw»ŸZÑ3õ=«>^d8ık\ĞG,ˆ\Ğ\ëÒ¤D\à(9°«F1å™°Q\Ó\×5d•d;2?„p(‹‰‰\Æ}1\ß{\í\íŠ~v!s× ¤Áÿ\0xTt\ê}\é\Å3‚{óõ¨­\Ï\Î\Û&¦C÷A\èÀœÔ‹D–I„,N\Z•\ärOp\ç5Ëv“Œ\ã\éQ\ä&	=\èBY1\çŸ\çPEtĞ‘ƒò·jf\Ş_J­q!Àö9¤69$o´\Ìy\ç­uZ+\æ\îk\çR;œ\n\éô	Œƒ\Ø\ÔTZ\ZRz4C\å\â¤xş\\\Ôv¤*\èN1\\N®…h¹e5\\ƒÆ®D42¢/\ÙÄƒ\éM¶@™®j\ìj8ª\è\'`~´\\c%>X4Ä¹\Ï\åN½\åA=`^\êş[ùQ\ä°\ì*¢®\Én\ÇGö”ˆ|\Ì?:©6±dH5\ËKs{p	P¹4[\Ø\ŞLx\ê	\ä¨kU·\Í\çÕ™ñ¦}¹Ÿ¹>µ^\"S€%9=ˆ­Hü9(Œ±“<zbŸºU\Ú*¥\Ë>*N\ÙÁÿ\0õTñh³‰0\Ì0zñVfğüñÂ²†]¬x4iĞ­{•\ÒV<n#•§mz¢¼§ŸQÒ³“Gº=[Û¥G-…\ÜOƒ8\î9ªº%«õ.\ßÜ˜œ„’8\â±å¹’KV\Î\åó˜˜œ\â 67\\Ÿ(­Kh¤¬·+¼­\×\Õi%“¡«/cy“ò¨õÉ¨Æ›<„\î\ì(\ĞN\é^iS¹\éRşTÀ\'?Z³s£\Ê#\ÜÒŸjÊ¸²¸Œ¦\ÇV-\ëÚš³3wfš_o\Ï<Š‘.wô®~t]şN\ã#½J’\\Dû›p\éCb.\Ö\æğrkF\Ìğp$`“Ú³lAšÕ¯[!\'³Y=\n££ˆ\Ç\ĞştÇ\0Ö•¼;-¹‘“U&¨LÑ£*\ã€Mf‘œš¿xx#Ö©òô\íZD\ÆG7¯=\ë\Ã\åI\è§5¥\â		\'>µnû	a\ØWZøN)=Mw—`“òò>•\Ì<“\ÆwUieÃ¡\ë‘\Í8òÁ¿\Ä2\à\î\n}±U\Ó ­M\Õ9\êO\Z!\'Š\0µ\Ü ÿ\0	È©#rG=)“\ÎGl“H:ŸÎ¤e\è“\Ì\Âú\n·>•RØŒ§¸\"¯D3j\íA©‘H\Û\Ó9\n}jSñ¬m!òƒÒ¶#\èA\í\\sÑ›\Ç`4vP:Ve;›N\æ˜,¥J•¯^µ—/`õ\"´¶€„ÿ\003Y\Î¹S\Ø\ZôQ\ÈÉ‘0T	\ëVn‘c³@26~˜¨c LñK,‚C\Zº¹À \ÎO~\Şô\é?º¿­\0|üsƒšy9\íLC\á#aõ50Á#•\ns\ßÖ¤\ã\æ\ÇJ’º†\r˜#<’j¼\Øz\Ô\Ù?c$t\0z\Ôw6±\ä¸ ]şA\ë\Ğ\Ò\æB[û¼\ZLo÷H˜“	\æ‹\n\â	`N\å9½ LrG¯=k^ş†­h·M\àR~V¢J\èqvg¢Y\È\nŠ\ÓNƒÒ°¬d\àsÖ¶\"z\ã’\Ôï‹¸³!\Æ}\r>\İú\n‘\Æô¨£B*JLÔˆŠŠ\é68qô4\Ûg\êyG˜˜\íI¡õ*L‰\\\å\î\Ñ\Ï\ç \àGZ\è†y_J’4WXpzUÁÙ’Ñe\n\ÜON0\×_u¢\Ûùj`Œ)Q÷«¸µkk‘$}\ç\ÖZ\êöo¥guQ\Z\á‹bºt’9\êsE¦¶2n4\ém’9€\Ê\ç’;VÁI\r˜eQÀ\ÉÀ\ëRG\"\\[Sº7\\ƒ\ëVa F\Ğb±µ™^Ù»7\ĞË²¶7NH\à´\ë\Ûimñœ”\Ï\íZ6Acy\0\0d\æ®^$of\Æ\î„SW\Ünµ¥\äSÓ´…x“	\ä\Æ)º˜!ŒºÀkb\Øj;b‹€{b®\×2u\îsšU‹_Hd\Ç\ÊT÷úP–O¼~µ­`‹kj¡F†\rm‘Ó‘G\"µú‡¶nW\èqvöM{#*®œ3\Z¯}b\Ö\ÓÆ¨2®qô®²\ÊHfq€ª\Ø>\ä\Õ9„ou2†\n\ÙÁ¤\Õ\Í=»¾›\Z“C§†\Æ_ „ú<’A–lJX\ì+²\Õ\åYk‚r@¬-nğX\Ù\É8PHQœfˆ®\äûgk#2ö\Él„a!†\rS1+‚\Ì:b‘\î\ŞñÄ¯\Â\íÀ$EŸ“\Âö÷¡´¶6„Z\ßRå…¾\Ä\0t\'¥mE÷D#¦¨Øœf¶\íŸÕ‹Õh:LÇ¥c\Ş?ZÔº}€\×?s).Ni$6\Ê7’j¬Ï²Ú­‘\Üõ5&ú{\Ö\Ñ]d\ìKZ”¼\ä{\Örp¯ZŸP—Ìºlt\\œôô®¥¢8›»&\å\È\Ø\é$”_º¼z`8÷\éL\äş&\Éz€GQÚ‘	\Èô™=}zS\ãÀ\ïv (>C\Ï8\Å$C;¿J;úS\í†ÿ\0\ÄÔŒš\Ìùr)\Ç\İ9­H¶ı–B=IúV[‘\í\ZÒ…Á\ÓöóóqQ-Š‰¥¢‚€ƒ\éš\ÚNA\Íeidc\àfµ#ûµ\É=[7ˆ^Ô‚”\Ò\Z‚‚\Å34¹ \æ\äó½j›Ÿ\Ş\è*\Ë\ÊJ\Ğù\ÕB~­z(\äd\ÑIÈ¤w\É\Ğ\ÔqŸŸúT¡\È\È\Î3L±Á#µ4søT\Ø }j2\0\íùP‚„?¥¹w\æ)\é\ÊwTIÁ\Çbpi¸\î*CM”“dğj7r‘¯ªœ}hx\Ù@\ÉŠ\0­¿|’SQ¦9\É8œ™>¼\ÔH\ä9õDd”¨£”\Ç a\ÔjBH88¨_¯½0¹\İi7^d1¸<]¼™\Åp>½Áò‰\éÈ®\Ê\Î`@®Z‘³;iJ\è\ÜC)vóU\âñVC\æ±5z<TjÕ¹¤R \î2:µ!Nr:i\×	\Î}(C‘\ìhA\"£óúŠÇ¼µI£h\ß%¶q[¸\â³\î£;½Z\Ö,I\ëc˜\Ôn5{d%Ô¿eUÀ\Ø\ÇÖ·´\Zµ–—7ó\Ë*ªÿ\0\Şú\Ô2\"j7·RWûªr]ô¢¨\×\Ó<Pö³\Ï&¡¹£”†]£\î{}*\å\ï\íÍ¡û¼²\É\ĞTUFq—tOBsŠ–\Ç\Ãö\ÓBTHJB°=hI™8\Å?yXß³ñf4î¼Š)0#¸5lë–„m$‡¸\é¼*^mª\èWÔŒT^–ùZ&\Ï`qT/g\Ô\î­u»;«X	\ãmÀ\ç8¥šş0…‹¨\êN+Ï“\ÂWDB½ğ3Q\\øbğ\'2«\ã \ÓW%Ó‡s¤>0\Ó#3BnV2­\Ë7F÷¬x\ê\Ú\ßoöwúL€äŠ+9ü-+Ç¾i\Ù<\â¨G¢¬d‡Á\\ñô5m\ËT\Óøu,\Í\ã««¨¤X€Œœ\Ô÷O6£:\Ërt£¥U\Æ8\\£Š³$À\0j†ú#XRKY@B8©b\Ë\Ê\0\è:\Õ@\ì\äœ\æ´-“`\Ô49\Î\î\ÆÍ€\Éğ­|ycŠ\Ë\ÒFü“\ØÖ¤²\éPI™©\\`y\è+Ü¹«Z•\Æù\nû\Õ1\ĞÕ¥¡-\Üd€kŸ\Ö.Dp9\ÏjØº—\0J\ã5Û¿1\Ä@÷É­©££²±’Iw$÷9¥zš:\ZU \Ö\Ç9!\ïG^(\éœ\Ğ?úôT\èG¥Xˆaú\n>øıqVŠ\Ğr{T±¡	==¹÷©m²˜ö\ne\È\'Ö¬B	œZCC®NH>ø©`<\È\Õz`\æ¨^ ¯ú\Õ\İ0\áòzQ=Š\æİ˜1\Â\Äv&´!“÷##’;\Õ8N\Ë_v\äş5u?Õ\í\\’fñ \rœQš’€\Ò\ÓI¥\Í\0pn#,¼0õ\ïTI\ì:\æ­É“ÇŠ¯\'<v\Íz\'!r„SV\ÂŠ\Şø5Q\Ç#\Ó5\Ë\Ì?/q‘C\ÆpON2*R{V•›«\ÆÑ²å“Ÿ¨ÿ\0\ëUƒG¸c\îŸÎ\ÆF{~\"¡“‡>¹§’8#8?¥6NGxS!r@\Ï\0ñN¶rq>µILûÓ£\ëœóÚ\\k‚HóP9\Ä\Äö&¯º	9\ÆªS \Øppi j\Ã\ÜÊœq\Æ*¹<‘\éR\Ç\Æ9\È5ˆA\'\Ô\ÓD±öÓµ¼\ÂE\ìk¶\Òï„±«\Ã\n\á\0\Íjh÷\Ío0\ÈO\Õ#tkNvv=\Ú|â¯¤•\Î\Ø\İn¶!“ ¹\ë\\Xì‹¹~9©\â“¨SE!9\ã¥C-3QÀ’?­W)ò·LñS\ÂAQ4c¤†\È\é’D%Niœ‘\ÜSÁÁ«Ø“\ê\ÎµXNµ½,+ >•Ÿ5™\ç­;\îkc\"N1W!ó!¸vB}8\ÍUD18ô­»9 xÀp>¾•V\ìSi­U\Êo{z„\ê\Äv#9©¿¶$xÈ’ßœu¯=”ŒH9\îj¤¶ª\Ú\ãù\Ó\Õ¸S—Bªj·#şY®LšI5+§ùW<p*Cn¡İ3A@K\äõ9¢\î\Ú4©§{\Î\É,Äù5ƒ‚:Õ©%L¿·³\î.@R-^\æ\Î\ÉY\æ|g\ëU†d|ñN!¥?=#\Æ\æ™\ÏRV&¶ŒdqÀ«`ãŠŠ$\ØIŒ¸´™‚}Mı(m€Z[ë‚¨y\íIlDV\Ê=«+U¹\à€k;]—{#>iZY\Éü)!\ÔQdş5\í\ÈD<ö­bº7Ô¡ªŞ¬Q6Oj\ã&”\Í3;w5X½7m\å™]VG,\åv->:g¥Hƒ4\Ézø\Ğ:¶}8§£¢œù›@\éÖ‘DÖ°‡#ŸzuÀóß¥\\¶‰R\Är\Ü\æ¨\Ü\îO¾&cr¦­`#†÷ª€~ùlÕ©2^ù d!”(=¹«\Úw\Ş\æ³\Ó%	ô­Hb1Z‚:k)½‰­œ*‚®¤\Ãôª(	\ØsŠp$q\\\ÏSd]óE7\ÍL\Èi¦SI ¹{\Ì\ï0z\Öy”\Ñ\ç\Zvœ›’ùª\íœÖŒ°ğ{*ñU\Ü\ã§»NfU~@\ëúV¥¨e\ØÀ\ïTDzµ«cxT9\Æi¶	!h¦Œû\à\ÒL‹4dƒó/zS\æA–Pr¸ªÒ—…\Õÿ\0¼2G­!•£$f6­!\ïŒ\äUÙ£[„ƒ\ç^x\î*›‘\æ`ği¢X\ØÊ¾A\à‘Ú“\r\ãÔŸrS†œû#·Z`O€\ã=~t\\[`9S×•D8)œr§Ò­\Å.ü«u\0úÔ½µ\Ğ\Î\Ú\Ãq\Ó*}i³g`<{ƒZD+Œ)<qŒTO\0w/AƒM14fœv\ã\Ø\Ó\íÁy€´ëˆŒx8\â™	\Ù =³U\ĞKs©\Óo\Z\"ºÿ\0:\é¬\î\à\äb¹ñ‡_¼£8õ­]:ó \ÎB\rsM_TuA\ÛFuˆI¥\Éª\Û\\	¯5;“\×Ò°h\İ3V\ÊLŒgš½€\éX–R\á\ÅlFù¶+r¼±\à\äSG\ëVe\ç_fh¸€8\Î\r#€z\Ò\ÎH¤óT€¯,!şµUÑ¢&¯¾;\ÔO=\rZe)´V7€u\àw\æ {\çô©\Ş\×9\äTbocUqó®\Äoz\Ø<ğz\Óğ¸=3Sı\\~t\ä\Ó\ÔuùÒ¸{E\Ø\Îóûg4Ÿg.~lÖ·\Ø\Õü)’ u\Ø\Î1ˆ\Æ\0¤>sŞ­<t‰;\Ø\Åİ½DŠt)¾q\íJ\àKoÁ,jn;\åœ$`Â°/&2IŒ÷«w—8²|Ì¹bi\Å&M$¡­szÆ¥´S–<U\İJøE$ñŠ\ä\î&i\ä.}x­\á¬\æ©.ˆŒ’I\'©¢Š+C!Ñƒš²@\0QI\n3Šò\àRcB\Ş\0\î§%º	’qÚ¤Š1™=B\äSE\'4\ĞRØ\â<\nÍòO\åV®sÑ£š¨\ç\ä-IÀ€H\Î~•3¿A\ëP/\ßùœ\ĞÀ»d†R©ØMm¾‘Æ½­e\é(H\İ\é\ÍjÂ„\å\ÏV8„÷5‰¥ŒgÖ”\Æ(C„J\×>·6!x\é]JM0‘T“\Ñ¥7oÖ\Î)»…;1]…¨ğ£œz\Öm\ÈCƒ…«\ï©ya9+€=\ê-6\Û\í³\íp6(\ÜI®»˜X -\Ø`Ÿ\â==+@¿“T\\œğE\\š\ÍC½IÂ\ëôªSH\Ñ\ácù\ÓJg]\ìGv1\ëP9‡\\ò¸\"–\âTöy w5I$#{t$\æ‹b\ÖVG\Ğ\ã¯Z[è•ˆtlg\ëL”\0;ñNó·Ãµ†y\àúST‘€}84ó“=\Ç›J·^ÆŸ\0)\ïòš\0ˆ\îG×j\Ì2\ï\èpıÇ­Fb\ß~µö\ê=;\Ò\Ü65REr3 ñŠO0\ÆJ°ùO=\ê„w\ÜyşõYyI@qx=hµ‡{š\ÕdŒ•\é\è{VQ¢$\ß úÖ¼3‘œt=\é²\Ç£\ĞúzRN\Ú0µõE»ö#§’·H¿tõöªº`hóƒ‘È­¡’<Ec\'fotKazx\â¶\ã”Hƒ\é\\–\Z\Îm­¤ğkf\Êóô©jú£D\í£5b“Ë”\nÛ·—zk,nE^±¹\ìMf\Ñi›§;x¨±\ÔQ \éOs¸t©,ˆ¡JiN8>3ŠhhLv+ºgü)6“ëš·´zQ\åg‚©14g¼g<sM\Ú\Ãó­o\éŞ˜mú\Õ]Š\Å2\ZF}jÙŠ¦\Å+\ÅGCŠ…\ã«n1Q¾9¥qr”:M›\0\'½M&\r2b\0\ĞS¸X¯)\Çq\Zg¶)\ä“To\î&\Ü\àµQW3n\Åk«‚\ìFj„\×\"4<ãŠi¾bsXÚ•\éÁŒOZ\Ş19\å\"­ıÑ¸”Œü¢ªQEk±ƒw\nt`–\È&¬\ÛFö\éCIŒ!\Çğ\ÒÁË®z“Cò\0d\ä\Ñ`{\nE‚tW<2š…	w\ìŒ\Ğd\ß?˜:c l\ß\ï\Å\0X¼s•\Õ\\œ\ã\ĞqK+—@OZŒ“Ò€¸ô\àjq\å\é€ÿ\0*|C|ƒ\Ü\â“N‹ƒ\ê9­\0b©\ÛüˆµO\æ\ÒT\\µ`\ê%¡t?\Ó&*§i3\ZµA\"]f\Ë2ŠŒ\Ü\n¬I4•¢¤‘£\'3f“Í¨ipiû4/h\ÌİŒ~g\ã½liƒN\íªG\'k\å28\ãÚ®}¥‚qÀô®c¥š‚Ey\ç;\Øm\àgh¬[\ë¥ò\'œ(=\é\ïqö{v\\ü\Ï÷˜\ßızÉš\à\\H©\ÑŸ¥R%J\ç’I\äš$ \ìÇ§5¹.}:\nPr„zŠb,I\È#€\ã>Á¨PğW¿Qš~ğH\ç†\Ğ¡÷€\Şf\ä©\èÜj‡zò?Z˜|ã´i‰€=\Æq\ëT\î#h¦ €x#Š½.\ã¼\İ\ÆTŸ¥:\âql%\Í!³/ƒ\ÇZtr\ìùNpi	À#‚\éQ\äœS;¸\'\å?NØ¥K“À9\ã½B~\àÁ\æ˜I#=\éX.nXL$uÁùºfºG\Çô®?Nù\ÊA\Ç<\×af\ê@\éù\Ö5™½\'tI-º\ÍVC\éY\È\Ïk&\Ç\à\Ö\Ğ”Ë‹U¸M¤t\è}+4\ìj\ÕÄ¶¹\Èğjh\ç1Kx5C\ÙÉ²AÁ\è}jôR+¦3O@W:k+ \è9\íZH\áÓ­r÷M€zz\Öõ\Ğ|sYµcD\îiƒO\0Ulô5b\'Š‹˜£­H™ö ¦9\êH\ã<\ÅZ@\Ú°÷¦<mÁ«%1şz\ÓŸÎ®\ÄÜ¬\éòZ¬õxAªrjZ-2¬‡œT2\n´\êMTg>\Õey;b«\Ë&O\áV¥\ág\Ë j\Ò3“°\É$}9®zö\çÌóÀ\àU\ÍJğ\"“X2Íœ\ÖğV\Ôåœ¯ “LNqXs1i˜ûÖ£œ\Ö\\\ß\ë›\ë[#¢Šri>4$U\ÈS\êN*\Æ*t}ˆy\çRcB\ÌAp¢Œ}j,\íB\Ç\Ó€œ\'½!;‡^	\Í$@D1ö\İÈ¨H ‘\ïS\ïÿ\0FE=TñM>¾´\0\Åù\Î=ª<ƒR	¦gŠ\0rTÖ£}ÊŒ\ã&¡ô§E»;ƒ`ö¦#ª Prs†šğ¸÷¬Xui­\ÎdzÖµ¶§À \Z\Ú-´ú9t¥«.Šã·¶*BœõjÌ–šŠ\\P0j@&\äx§\àÓ¶S°=i\Ø.`ñiP¶KÉœõ!c\Ücœ\ÔRÌ©\ÆztÃ¹\Ş2\âV|Œ\äõ8\íTI\Øx\åˆ\äÔ®\æLóQTŒ\Ø\ÓH\ÎCÁ¥4¾X\ë\ëÒ¨ Œ\îõ÷§ú=E9\è\È?yG\çM|qH¡\ÅÁE<e:to\È=9¨ş\\•ö\â–#ó`ı\r\0k\Å {)bo\á`\ëS\Ùl{i#n2x5J\Ûòœ|\Ã4\ëipQsÀm§Ú\ÊwVşL„f©‚2I\èMk\êHOÍA\Ú}\ë!Áô! ŸÊ˜9\È=\êHP?\Zo\Ë\ÏlSö¹Aõ®²\ÆC°ø\×%ƒ\Øõ®“N\ìu½k*ˆÖ›¶‡C8\Ç~\Õc`\àû\Õ[b®\ZĞ`Š\ægR*Mj“! ƒ\ĞúV<±Ka&Lg¡®\ã\Ùô5°¬¨UÀ úĞ£*)–T\0\ÜU«[Æ·+;\ZÏ¹Ó¥³rğe“9Ç¥\\,\Ãkü­\é\Óz2v;[Õ•0H«i.\Îs\\u½\ãÚ¿\'rúÕ·m~² !\ãÖ¥®Å§\Üè¡¸WjW˜Ea\Çr \ç<\Z›\í*z6i&\ÑN\Ì\Ò{‚q\Ï•»š£ç”…\Î3ù\Õ]ŠÈºf\'ñ¦şµWó†zşU\ÌFNišOÊ«HT\Í5\î\êj\Å\Êúô¡+ƒc.¦ùqšÆ½½X$\ãÒ‹ıESw#=…s·—põ¬bs\Î}Û›–šBÄMW\ç<\Ğ5 CZ\\\Ê\ÄX\êk*S™\Ó5±(\ÂaX¤’\Äúš¸™\ÌJ’1\ÍGR!À\ÍQ\à\ã®s\Æy\êj sƒN$€[ò¤1®\ß\Â:´\nˆô§!4\År\Ğ?»¹©1òŒ\Ô` Ô™\Ì wiGL\Ø©0Fi¯\ë@\r#·­=1L¤OÒ˜‹\éÏ¶bFz\Z{\é³$~| \í\Ï\ïU@#¥i\ØkgCË¹Ú©2Z ·\Ôdˆ\í˜zšÑ\éeôª÷0\Åzw[\ã\è*‰Š[g\î1\ëMI¡5sc>”ğk>\Úğ>\È\İV²G5¬e}Ìœ{A§Tù©rj\È1&v\èÀƒÚ©‘Ô¦¦‘\Êq’G½B\ï\\)¬Œ\İ\é”óŒÑVI?\Zp)@\ëúR8\Æ\0üM\0\0A\é|„f”}Îœö§Œ8 \à\ÒÀ\ç¿j\'\'­;c#€G¶}iû0\äuÈ 	‘\ÊBŒ*sL/‰:7\"Ã½B\\\äzP‡œ&¶\ç9\èMgN˜~jX€+“ƒÈ¢@9\ê;ú\Ò\Ø{‹k\ã=1QH73:S\Úşµ¿$\Ì­0±|°·4\éHLúu¬>8­m5ğJğ­D\Õ\ÑTôgSjxt5«=kN“€§§O¥lEÚ¹%¹\Ù\\\0\Ú\İ*\'a\ã¥M?…<¢¿Š’\Êe\ê*…æ”“|É…~¹¯,l\â¡Áôâ‹Š\×9·Š\âØ•uÜ¾½i\"˜¡-{©®†H\Õ\Æ¨\\é‘¾J\r­\íV™-Å©°\áø«‘\ê*@\çõ¬y-g‡#n\åõ<\Ôrve>\ÕZ1]£¥\ã\Í(¾¿s&\á\Ôp\Çñ¨\Íì¾´\ÒfuBøzş´~;°\ÅrFúoZc\ÜM\'W4ùP¹Î\çV‰8\Ü?X÷š»>B=k9Áü}MFERI\ÛbK+JI&£\Å;\ÔñÛ“‚iÜ‹\Ç5)\0U„ˆ\nd‚‹‰«n!o¥a\Ö\Í\é\Ä.=«\Zµ\ÆS\Ü^”ñ\Î?*eY‰—½¸½\ê™g\Üñ\éQ\Èù\Å:B_ü©€r(H\àf•1‘K\'ABõŸ$m©\ÈrqŸ¥3ûb\äı8¤1NFy €A\'­=“\Î;S{\â€#8\è_$Œõ¤t¦\ÇòI\ÏJd–²9\ß(;	\Å\'~;Š3À\Õ!3¤\Ñ\ìV\É9\Í]¾Ó¢˜—ñ¬­&ü\0#c\Ïj\è\ÕÓ“Á\Æ^Zµ´ÄŒ\à\rOgy¿	\'^•¿{gÑ‘€=ë˜º¶kyQA¦„k\Ï+KóúU;\Âß» 5©ùU©\ârñB\İÌª0J®ÿ\0xQEs›~Ô‰ıh¢˜‡´†Š(Qõ§\Ãş¸}(¢€ÿ\0|Òõƒ\éE\r\'ú\ÓUj( LzwúS‡Uú\ÑE&4Mmş³şQ\Íş±¾´QH¤\ëøVş°}(¢”¶*%Sõ­¸~\åW,·;#±z/¹R\í\éE™ ½A¨]@qE€„i¤J(ª\"u\è*…Â®>\èü¨¢©Ì«…\è:\ÕW(¢­\Ä\Ú=)˜\æŠ*‘,GT/ED±b?\áW#Q@‰@•V\ëEDL\Ë\Ô?ÕšÉ¢Š\Ş;ó\ÜYş;bŠ)’ˆ[¯\áH:\Z( ?DúP;QE!“z\Ò\Ç÷¿\Z( d\Ëş°ı)v£Š( B?\İ÷¢ŠhL•z¯ÒŸ/z(ªBC{\×]§|Ğ¦\îx¢Šb-ºŒt\íX\ZºŒ(¢pñ7µ\ÑÇ-xj(ª@ÿ\Ù','2025-02-27 04:34:21','Female'),('4de3277f-e028-11ef-a1d1-005056c00001','4de0b2e1-e028-11ef-a1d1-005056c00001','Gebremeskel','Haile','doctor','medical','jelo@gmail.com','0902366969','Full-time','2006-11-11',0,6000.00,'Day','650e8400-e29b-41d4-a716-446655440002','Addis Ababa','0900130085',NULL,'2025-03-02 21:29:38','male'),('650e8400-e29b-41d4-a716-446655440000','550e8400-e29b-41d4-a716-446655440002','Semeriya','Legesse','Nurse','Emergency','john.doe@example.com','555-1234','Full-time','2020-03-15',1,55000.00,'Day',NULL,'123 Main St, Springfield, USA','{\"name\": \"Jane Doe\", \"relation\": \"Spouse\", \"phone\": \"555-5678\"}',_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0C\0		\n\n	\r\r\r \"\" $(4,$&1\'-=-157:::#+?D?8C49:7ÿ\Û\0C\n\n\n\r\r\Z\Z7%%77777777777777777777777777777777777777777777777777ÿ\Â\0ö\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ú\0\0\0\0i×±4\"±r €rÔ°\ÖvŠ\0V78L\É\Õ\Ä\×\n€m¼\ÛHôğ]„0\Ä\Õk”•Võ:YQI–\àn¦f‘‘\Íô~{==]+Uô\Ï@\ÔÖ;K76=341\"!%9\Ç\ÖÇ¢D‡Tq1Q\ê¹}cv{.\ÈTa\"7Bc9A\èk%À‘Îˆ0\Z(ˆ[¥a\Ò³ƒ†\0°@-Õµs\ïS£5N®\Ël‹Ô­\é“\Ò\×y\ÏI\ç2\ÓÒ¨\ã\\ì¾µ–™›¥8JD·Šh\Ê\ÜÃ ‚Dø¸ô‡\ç\É\ç\ì\î‚†«Å²jŒhHfÄµ‘¦\É&ª-R( !3e~i\ê:«\è]Ó”\Ä0\Ä\İKTŠÚ”²\ëZ¨\Ë\Ó\Ğ–i‚`yÿ\0C\çò\Óx\ÓcL\æ\åÔ7J„4ñtTJ¤\ì=œj Hv™™\Z_H\ÂËŒ:5{+`A@=ğÁ\î7ÀeHh\r95§˜°AV-\ÈS‹œ*l´hö\ä¶\æGG	ª¶©K•­d\ÒĞ \ZKjCB	zEs¤ƒ-5\íÑ¿y£G/R“)]¥ˆ€„ !d)\Æ6\Æ;\Ä:\ÉAEM®O(\İk\r\ê½õ@%“Ao¨_Š<¸…˜ Àµ\Ôø.\ÂÀ9k–1ª${sñ¼—´?L÷!\æô\äĞ³Áh\ÖµG;K4zµ\ì\×\r5\Zf¦-Ô•ƒ½…–·õ2vn3µ±õ\ê[N\å8ªı†¸F¾3`µ™‹›}\İ//\Òy\ïA\Ï\Ñsf•O™\ë*š(@¤D!‰†Y	\ä&X¦J\ì¬\ŞX˜¥C,ZN“¯\Ë(¶\á‰5\ÍT„\ÑnZ¦ml&\Äö+Ø«Rµš\ÚB\ìW³S_w-_½\çı\r\Æ>\Î&\İK+\ØTU>\è‚:E³cµŒ\Ä\ÏN³0Qsc»¥³S\ÇG\'W³\Êò¤¥EF¹ÙŠ\Ğ™BY§œ½ša¢¥½>Z\"±¶\Ù7g§L–z€»ójM¥iqš9:c~+Z¼\ä†CMù\Zrö*Ú«R6kØ©F.\æ6Z¢ó~–\çwz¥©z!\Ñ\è\é£€1±õò^xµS\Õ\á\äü\ç3±Ú¸¹Œ\Öe•µ*¼P3šT\Ê\ÃAµ˜¨¢)oR¹4\ç%±³g53\Ä9h¹\Ï0Ù¤Q\ÌÜ¬\"z¹\Z\ápTUu3gªmq1\ém@\ã\ìe\åt½?•õT`ú?\èjMOL™\ã=5\Ó!\ÒNF¦[\Ñ:\ÏDõ&pr2@»\rĞ¶Ö¥®yZ\É\\xÁx JQ\Ã,òr©¾(<öcE²\å£%q§.S\Zy¦Z•®6öy>z\íißš,(i[\ÔÄ²/P\Ìû÷¡G*\Èõ~K\ÖQ‡\è|÷¡¨b\Úòúz*;¹‘\Ó^¾[)Lª;\Ètğ±\å¨Ã \è[¯R\r‰e§S™«¡O‚À$DÁ1\Î\åKf­\n\íö{f¯¾­…n(%D`\ÔøŠB\'¸8J\0*\ÚB<ı-<­ù­E\Ã	Ö—£ò\Û\î-U²‰~{\Öù\\\Ì_Cƒ¿PB]/&{¢†bBc¹Ÿ¥š¢\'U&¦T—#\Ïq–[©/K—\ÉBs\ÕÍ£\á†9@HWp_¶nÕ´¾4¾Vó¯M[!1ƒª)\Î\Éfi·\áMba4´:º2±õòw\æ3[®#Â½v3Ô‚l)ó¿\Èz\à\Ë\Ş\Âİ¸\é—“Q\ÑÁ2<‰Î¿D3¦TMŠ”ôò0\'U8\íANU+\rN¨m=r°¨$\ä¹7Ù«§7R\×15¹ameú,¶¹ª²S-s\ËB n\×Y	µ]KtE™ŸqµmU³R¡%†„	µ£³\åw¥\âú\ï#\ë\\\æ\î\án\\s\Ùya\Ü\È\Zw)†i\ê‚\Â\Òû¸\0y¶£V\Í}Q:© f\"‘t\"]\0·sLoeÑ\ÚC5F-5§m&\Ñuñµs‘Šğ·yö–¼\ç~\Í\ç«x\âZihV<«”º9k°WR\ê\î¬\Í#S…)ô\Ó}g“õN3÷0ö\î%©j2D£;\é‰„\r;•,¢tK²†\Ò_/šÄ‹–É™\áwu«\Ö$|	´›µÖ‘¥7©j³ò\éjÊ¨…kÁt]\\cSEn|±i\Òz\î‹6õ¡M²–º\Ö*>\ÆoO\',¢%Vr\ÅK˜0NÇ¨ó•\ÍMœm›\Î^\Ê1ø\Ã;\èAD@uKôƒ$†tKbÎtsY\Æc\ÑT.\ÔhmVx¢f­n™\Ôİ©\n{y\éz\Å;ô>‰\Ó®Š­Tgj)6´W5‚ÀKLK]\'\Ó\'¾½\Íùü\İ?K„æµº÷*\"Á·ˆ±\èp7\\£cbó\ëU-#/Š\ÖwDL\ĞVAt}k~[Šm$\Öu*\î\æ±Ø¾Ç –R\Ğ]©\"·\\ \"\ÂôÖ™\é\Ğ\Ë%úù:²\İV5xÃ‡\Zu\íª[®ˆ\ê,Ğ\Ë,Â®t2d\ZÍ©$P¸šŠgN\åN^~\r2‡\Şp\Ó:D\Óf\Ş6º•k\åjir\ÄgŞ£k:«\Z\ë\İ^{\nA¡ó\êö\êĞ’‰©_G5Šô7-[V\å@SU`;˜#+\Ôn\ç\ŞyZ\Ù\ï\"·M¦\Zô¬ŒkA¦\Úv\î\ä¹i\è\Ï\Ï\è44(Aiôlª¸\ê­ \0^@˜1mNb¬\æT \Ôİ¹\È\ÖNd\0“si6j\å\èZY\Ú\ZA]§m\Öz¤-e-½\ÑÉ\Ó^}4P‚À*U\Ó\ÍbF\Ñ\åx\Õ=<«ò\Å\ê\È^PıT³­\Êózş3I\0]/@H³–\Èl‰wm\ç[z\İY<œ\Ìÿ\0CEE[u\í\ÍXbN[W(T\ä^{\ê\n·fp³\\¬˜ƒN€€†,‘f\Åv§:¹\Zbn•·›`\Ğ+\ãfJ·¹U®\Õ\Î\Ò780\á‹lE‚\Ò{º•®\åØ»¤&FBc¤;¦ƒ)\æµQ\Ñ.tv<÷¥\Ïu\Ë\Ë=B\ĞYˆM	U……B(\Zy3@¢¡>j\âº9½]Q\Ó1$Ø–ğ%\ÂZ%9 ûy—‚\Í\ì\Ë2o7>õMªö\äÜÃ²È²\ÏGıJY\Ù^\Æ	t\Ñ0\Øô\ÅJºz¥…Ë¹H\Ê&`ƒ»¡‡¡Ÿ¢¦™eÈ²xq\é|ÖŒ\é\èMe–\æ\Úö¥½)¥eTLRSI\éBÜ¶„U\Ó.§\\Tm×³^\Â¶pJ[ÁDÊ·i\ÙÙ®\äkX\Ç\Õ¨—)!LYKm9£6)…i·^]w&\ésy‡GT\Ù >†pJC€†a™t/\æ\ê’\Â]\"\0f®¿”\Ò\Ë_As\Ïözú*Ø„PS\Òk_Ï¥^»ªé‡4ªUQ«N£\Ôö\\\àY#¹‹b,\ĞÂfŒò\Û\ÑË´\"C\éË²(‚t:±š6»º_Ÿª\äz\"¡\\=sjFxú\nF@º%1]•sthj”¢‘€0(‰\èg]Š»\Ü\Ìõ\ç-é™‰„÷\0E+U.3\Ü\Ò\Û\Ï:ÁjQXN\ZºP\Ö\Ş\äØ‡ D\å´nSC¯º\ç­.ü•\ÔÑŠ°	¹< \äCE†«´R-W\î\í3´B\\]3\İÁ%\Â×šzÍ ClZ\Ì\"\Õ8\Åw\ÍhX©g-ZÕš¦’\ÒUB­\Å\ä¬\î	EqÌ¬\áhTª³«Xú¶©\ÇI\0%\Èz,!‹s:ø\Ú7>¢‰AÁ\Ú9kN¾rª¬b«%¢Ñµ\çÓ£I\Ò[\Ä\æ‡i’«o“§¤pÚ±™1¼DL˜ªel¬Ë°\Â|h«H8»d¨T9zTo6>³ªf°×¨)h *4ª§b½¡[DÊ«Q\ĞR\ÅV¬=Mê‰³Y´½\Ô×³)ùq}\Ânf\n\n1¨h\çª\"j—k›[_;— j\Ïm1-0B#¹1r8Sˆz\\lR\Ô\ÏU×¼™°Ó¨±XL\îPµ] \î\áG5YvøvbE4Ø­u !¼”`©5¹`(©¬œ‘3\Ô\ê\ào\Ê*–*K.“cI“€\Ç\Ì\Ô\ÊW&¦\Ó:Õ¹9\é%1hA€†@.g€\\–¦i¶¥Jp—Ò¦¬©2\İ-Eµ˜JÜ´\Öùjk#Â‚\Ã8‹)`V@\Ñ ciœTñ¹) 6jz¿\íŠ\Z!ñ¯‚\ÛiWz³C/\Ñy\å@\å¸y½İ¦y“ej”Y`‰ˆƒbjD˜’v½\Ô\éÉ‹&NV,\æ,‹‘\Ü$3b-M°J ¶Â€\Î8a++&!¡‰Š’0!D“\í|O­Jö~†~t1\"\İ\Ğ)Ü®54M<¾\Ó\ëœ\Z\Ö*\ÒS	²&\"S«\Ú\Z\Ô\ä\Ïrl¿F\êuFxK\éŠ]\00PˆZmz\í*Yu„V_Vh»MJ…£Z\İ\\O5YN\êt\r$BLg¤ó[©zıL\Ì\écÀ‡ª\Í4\æ\"Z\Ô\ÕTyHfs»Lók\Ír¬+œr*÷+Z\Z\Óa\0nS“Uú¬Mr`Òºy¨‰ˆ‘ñ\\—§}Q TXR\ã%&6i\İEª\Ã^–6\àV«z›Rk6ˆ†@Š$E0L=L›¡\îòvò1ªB\ÑEš\Íb(\Ã@+M`\Å.\î\Ò1øI»\03Ï«h:½”J\rUŠO¬‹õ\ìUhza¨!ˆ0A¨–\ë\ÃUP®¥%\Ï*a•\ïĞ¹-‰z‡F\íµ+\Õ&H\æ$€\ÄSô}*……\åT%Š“­Sh-M[)×½\ÉK\İ>¸Â’†OqAˆU»Fğ\É\Ô9lNTÅ¢õG%œ$\"\ã\é\Z\ÄÀ!«½,ó‘¼‘i\Íg¥\ÃX˜5Z\ÕkiØ¯i	\æ\Çq:‘]ƒILR2\ÊbDLY³\ŞòU[. €¹F\İd\êT¹›L\Åf\Ê\İ\İq‚rL‚\â[@*]£u6¡É¤e\é\á±d7\ĞB…‰@£B£•$\n+˜>\0b\Õ{U­\"\Â\Ü\n² —\ŞÍ¼5u)1 9‰˜‘¬\Ù\ì­S¹‹ª§c›\"\Å\Ì\Şóö\ä†F\î¹\ÃOsR}Áe]ÁJ\çrnOu#.\äGwƒ¸R\Î\æ\Æ;’Yw\r±Ü…\Çs\"{‚\Äw\'\îi6û‘h;•b\Çq\'g¹“\İ\Ì\"\îGpw\nO¹»C»Y]\Òã»˜\Û}\Õ4ü\×sp\Î\åUûº£ÿ\Ä\0,\0\0\0\0\0!123 \"A40B#C$Dÿ\Ú\0\0¹gË—\Ê\ä\Êu5ÁI8\Ú\Í\årâ›‰\ë\Ès¹|ğ¾z\âD\Êı0}j˜0\\·z¾7\æÁø)\Å.²\áõ\Í\äËŸR\ç/ò~/\Â\È\Ô\Ù\Ê\îùÜ¸\ä\\Œ\Ü%r§\É\\¾w.\\¹¨\Ôaÿ\0G¾<H™Y|0eS\â\Æu§\ÓW\ïW\Å?>\Åù?’\ãü¾N›\ç/ócñwôõ/ı¡;>Õò¹r\åı˜_\Ø÷Ç‰*u\ÂsT\Ãøñ~:]0½ñ\Ôğ\Ôó\à|_“ğP\é.WÏµ£•.\Ç\ßù0#•Ñ©\Z\Ñ\ê#\ÔG¨z†³[\ÙJ¦¸·©6\\¿¿ÿ\0\ï\ï‡Y*uÁ÷¬a¼xŸö1ü5|\Ø\äÿ\0[\r\ã—«\ç;\Ö9*¿ú\\m\İ?øù\èDr¹|®\\¹|\á-\ÔTö\\K\Ë\åEÿ\0\×\ßO¬‰“\ã\äªaúWğ\áüT¿oO\Ç[\ÍøşŸ‘ı\\/\\G¬¹>\Ë!\åÂ©¼\ÆD±†\à…\ï¦G§3Ñ¨gñ¤Ÿ\Æ?Ğ\è\Ó=*f˜’CØ¹u/\"\ã\İK«&L\Ãyª˜nµ¼8_?{Ä¼Uü¿\ãú¸?\âgÍ³¾\\eS¶K*m³\Ü\Ü\ß-H\×Lõiµ#ùÇˆ‰ü“ùM~×¶p\æ=}Ôº²d\Êj†Ÿ‡	\áÿ\0÷\âzÿ\0\å‰\ïøóú¸/\âjr_\'•ò©´†G*¯\åLX‰¹*µe:¸D)k‘v–h‘\é\Èô¤zLôOHô‘\é£B4¢\Ë*^1ûip\É\n^j†—‹\ã—\ï\â:¯+·\ãù\Æ~¶\Äø§Ö§l—¶§e’\Ë±\éHT¥wI\ë~¤—¥Ó‰¢&”m•\ÍH\×\\OR#¨‘\ê!N\æ¡\Èu\æî›¼]\Õ\ÇY­	û)p\É)ùªq…\çÿ\0<JŸ½ˆ\â>,Q€\ï‰ğ`<_Tº\Õ\í\íyT\ì1e@õQ\Ø\ã!É¢UZvõ&|\ÍRF¶Í‹¡\Î\'\Êú$Ši^\Ã\Ò(´ZE¬p•yR5HU&Šx©¥O	¬mJ¼Gˆ\ê)š§n\ëÇ„\â¿\îWâŸ\Æ½o\ãüTº\Õ\î?u^\ë(å†µğ\éú´Ñ¤ü\Óù%»=6\Æ\È\î4-4DpG\ÉE\Í\î}ú‹\ä®%òô\Åñ%Q\ß\Ôbz„Bl…U#ÿ\0Jœaû®˜Sû5ø£\ã\ÅõÀù*xÿ\0Ğ£\Å~şú\İ\ÖQ\ä\Ãö\Ã?úBVÑŒi\ÒH¹¨l\ÔÑ­š¤…RM»–²z­O\'+&¬›¸…Br#‡±¥\Z¢4K—¸\Ö\ê\âw_Qbdú\áü‘\ë…\ï‹óV(t\ÆtÁye\×ñüJııÈ¯\İe~¨v£\ZD]8“­J\ÕkSdôL…‹¡\Üwj;½­\'¾¦\ÈKRnÄ˜ø’z\ZN¡NŒ`¬X±¤±aÀ”	¦ˆI_alXŒŠUv¡\å.3½^0ı1}0~G\Ç\ãò¢b;d‡Ÿ\Ö#²\Ê<”{\rNÜzM{\ê5š\Ív=CQ¬½\È	\ã\Ód\äP¥\ê5°½¶,h\n´IGK§R\Å\Îˆ³şq(yñ\ÅN0¼c:\á<ŒÀö(˜}\Ì\Är†G’—mg¨ÇºBL\Ò\ÏNLô\Ù\éšm/N#‚4ØŠFÈµ\İG¥B:\å£ï°‘¤”J\ÔnN:Jr¶Q•²Œ­,=Mq¥û\î“\ëƒ1¼a<†\ÈR1\å¶X\Ë(òS\íé˜ÕŠ=\Ğ\åv\é¡6Y›±uk‹•s{\Ë\r1KØ„%“$Šô\î5¥\Æ[L‹\Úÿ\0\ZU4º/U|Š]0|\ãŒ/s\æE#ı\Ë%\ÉX“´…\Ú:ZJÆ”% LvµY]®\ÄlŠTõL^Åš³d\Ñ^-š7ŒµY\Å\Ù\ág¦®;ÀüXN\Ø\îp½Œ?\ì\"—8Ÿ\è\ÄvY.D+\âK„\Å-ıBu{‹exù±‘_7²L•\â¨F\Ğ½\ë\Ú\Ê\ë\ãQ| î¥º[«üSº_Wÿ\0É\ç\rØ£ûH¥\ÛÇ¿!‹œ¬\â¢Şª¹Á\îŠnÄ¤Z\é¦nÔ™o—V˜şSH°²Y¯\èeEu^$6b A”\ÙË\í‡\å¿p¥\ßÇ¿Gv\Èò¹Ÿ7Û¶Å‘ñG¨z§¨zŒ\Ö\Íl\ÔÏ»Ø•ŠJ\Í\ÎÇ®\È\Î\âdsB÷²F%\ß\éò¶|K\î„õR\Ãy±½¨r¸§û\Å>ø¾üNO…\ÏúœF³U\Ù-i/Wˆ\ÜD\Ïôô”\ãqSD©#Mˆ‘W \Å\îdŒG\æ<1ö|ıP™a¼\Ø\Şôyı\âLG_~\'\'—ú{šM­\'\Íş7ºİ–H\Ói¶NHùR•¢®$Ù¡Ÿ8›5¼†jh…r2‹4\æò™Uü¦@h‘!o\Ì¯<oj\\Ã¯ÿ\0¼‡“\×ß‰/qe%º“F©\Z›r\æ-[Y–V\×G6@Š±\ÎU ©F–\"q*8²/\ç‰\r•†\Ó4¶G\\JU˜¥q\çP©\Ík²”·\Ôø*º*bù‡j}%ûÈ’¿O~\'¯\Û\á\éò\È)^~Yv‚Zv9YFZ(<\ßøPJ:,Tÿ\0¬cJª4ú%*w«N’´\ìj¹ª$gc¸¥q\åP“Ù³k\Ü]j”Å´\ï¦ZıJQ\íK\ÇS÷¼•ú?~\'ª\ÉŸ»\"\Å]¥>\Ğ\Z¸ş2\Ø\Øs¾vg\Ö:›–’>F\ã»(SÒ©\ÆÊ¤Š«\ãb2HX‘§F³8o*¨œl\ÜwŸh¿…¾2\Şp&OŒ4ö]\èø\êş\ìx^J\İ¿\ÕC\ìùõ)­2£Rr±±¨\Ô\\\Ô&\ÍL¼–T¡¦*&ƒ\Ó\Z(\Ãzp#±¥\Ú*ùi\ÊT\Ä\ãZ)_6‰ñW¶¯•V)½E²\ç1§´¿\İÛ\î¯O~#®_S\äÜ»7$B\å\îYeõ÷*f\è\\á£ª¤E”ˆ\ÇS‚Ñ¸\ÑVRƒ‹[’‘\ZRŠ\ÓVœ\ã»É’+v|É¡l\Û)÷¾\Ì]W(\Ãø±?³z¾¿Q\å<·vKˆ,“ÿ\0(ŠÚµ£½\îŒ*ø\ÄYT)qK´¸YJÖ«\Ó#ª$&riL\Ë÷“\ËdŠ¿\Ã\â9GŒ;ÿ\0–+\Í¯´ú?v—¦½´)d²\Ü}a\Ê\ÔnÛˆˆ;,V\Ä,Y\"1e9oIeö{9H\×|´š\Ó4û$V\ëRò~›d¨Ttö_L_´¬°\Ş,gxu|Ï«,\íì—©8Ô…\à<¥’\ÒZ$”lúÃµ\Î[\Äe¥Ô›œˆ«º]™9(\È\×e\\Tî¤ª11re³»Õˆ{F•Ö¨SO½t•Dˆ¬¬G¿¬/\Ì:Ë™õ\ÊR¡l’!I³şºjR©>~‡\ÆZ\Ú?\ÌyR\É]·h:­;=#œ:—–q‰µ*zŠwŠ–H‹/›Uw#ò%Gı\ÕŞ¤V\Û\íqmÙ„ñcŠ|H—ò8¶ª-Ó¦£N¦‰Q«­BZ”•\ÕejŒ{OcR5\Z\ÍLõ$k‘ªF©\î\İ7(Ó’!\éõ|JvHŠ¹b‘b\Äö„G\Ù&7“È­5*?ƒØŒu	YF\"ˆ\Æ\"\\\àúcºS\ë#\ém7?¿,54($¡\Ä;\Öcù\Å&­e”U\Í;¥¼9DüVÜ¢ş1â¢»\İ™\n·Pš#$òª-šw$óúœ~U6\'¼¬‹n\É;D|¬°qş\Z]d}>cU\Åz’f¦z±?‘*±q´·m-µ‰‹±O²\ïr¡øú\åAü¢I~š©\ÍR!V\Ä+Ü¨\î\ä$&&\\¸\Éet\Å©W©¤§ñ\\E¬\ïb=–\Ã\ç\n\Ìw‚Yğº¸\êO–\ŞP†¡\Â\ÄUŠl\ßRT\ä(N#”½7\ÉsqF\äaa$iŠRŒ“)»Tˆ\ÆE‘dY{š :,œeJJ[ÀB\ÊLyGh\ÍüjT3|Ÿ-’¹\â_R—\Ëc?Z‡Iñ	¶\Ò\'J\ä¢\â\ÊMÙ·”­l¾ŸSøô\ÏJ¥Lô)•3LK\"Æ‘E\ÉÕ©®M\åNZ£õcHµ¹šFU£O\Íd‹’ce|F™\á¥\ë¼n#Z?\èû©\ÌÈ²\å¬3\n÷\Å\Æôpş9ñOº\Ó&¬‹Œd­ Q”\ã\ÔgñfÆ´\ÈC\ãÙ¾[\"´ö“\Ï\r!qb\ÂDEœ‹XY¶6b*úp{˜7£	QüJ|Ä¾\äù–ñ¾\Ğ\â\â0\Ï\ç[zXn’\â\Ş\Ò×´S8\éšø\êe:\î$\'Ne]ª\åşK2\Ï+F\ÆÅ–XŠ\ÖR~\Ê.\Õ!Â‰b(BÍŠù¶6JEyz“Óµ\ZÒ¹rŸ÷\Ëú} Ï¤\È;KÔ½</IqómjIï±©)Ö\ã\Ï\ëüûn_-‰2_9I\î%’æŒ®²YEfòlr%\"¬È¢¬…\\<–_k±oŒQOxğ\'f´\Îi;^\ê=ª¥x\Ôô\ÅRjNrŒ®\Ü}MT\Ù^µ½AŸ\ç=³\Ø\Ø\Ä\ÊĞŸÆ€£•²\ÂÕ±	dˆ¡”‰Lr‡!²S\ÊRBWq[Ë•\Ê\í\ÂKô³E>Hü£\Ì;Œ£¼JqL¬·ô\ÚTik5R¢çˆ‹,Ë£Nõw˜Ä¾%‹\ZQbÅ²f)üñ\å‘Wtq\"¢\"\ê$J¹*¨uMm\çQ\å’ù;e.\"ùTD~B-¼K(ügZ¡Jö§W\ãµY4\åRS#U¢\êN1\ÔZõ‰\È|\å‹ö\\¿³ä©¼¸\Êû>rE7·«#Õ™ªLF“I¤°\ÑSš’Û„G\ËzŠœ5¼{\ÒÙ¾½a™%ò¶ö„«gJ^I+zŸ\Zü\ç\èM#RG*®\Ó\Êÿ\0f\Æ\Æ\ÙlbVó\ìòlY}”óBBE‹d\É\ìI]ÂI]ıµr²´¡\İ/‹#¸¹C³\à„=j8:-\Ç\Óry¤\äF6_\ê¤S\äü‡\××¶Å²u i©§\Ãº˜²Bö666r\\©P¢·\\•;R\ŞC\íMZ†ö|¢9M\åøş¸š?<,ıJn›ƒŒ[~œo(\é#\Û\íA³\àŠ\ïUL¸B\ã\İ(¥+ŸCö!”\Ä!69YJªf«\åVZb\ÙG˜ó>\Õ9£\İp÷©\Ö	|e\ÆH¸\Ç\Ï\ã\ßıjGP©\Ê$mZŠˆp*´GŸ„IM¼ªv³\ï%ñÊ•£®\"S5	Üób#”H;“¯’®\ÙvÄ™q\Ê\ÄŞ¦÷)²+\åW™¥ò{F$¸İ´\'»\ìa«ÿ\0\áQN,sŠM&\Ú4\Z©\Ä\Å$¦}Ë¨³½•lM\Æó2{Ÿy!\Ù/•Wğ‹,˜‡2S°\Øöˆ™\r\É\î=ŠJÊ£ø-\Æ}±óò\ã:n\Ò)m*\Ë\à›m\Ì[ùÜ‹ùK‚M\éU«:Ø¹—9KŒ¾¢‹\r\Ê\ä¸qH‰½	½„r-\n;¦}\Ò\íQ\ïÂ¹–PVQ/¾H\Ã\Ë]\n}§Ñ¬\ìX¶Xµò#\Ú|2NJ«U\Ôy?c\ä‡,}¾ ®’\Z\Z³C%;\Zœœ>“mÇŒ’\ÏöcØ¢¬K\å$şOˆ«\æ5\\“¿±•\èÃ´½\Ö4˜\Õf.\Ò,Sv¥^z\å“¹tH—Zs±5bHu#Sr,ˆ»º®\Òb•#ˆ¢Š\\\Èbø\Â;Õ’%¹Jù/o\ãeòz¹ÜŒ\àk¬\Ôcyg\Ã*J\Ô~³]²y­\ã1qôú­š›‰üŠƒ›–WÊŸÄ©\Ë\â+d·Ø»e‰H£\Ë#[\Êb>¡¼¦Ï¿v\Û»\Ö\ã$&+–4ø\Ùc*»‘Å”…Àó¦I	möòk\ÙbnóG\Ò-q$‡P”„®/Œ_[–\Ù;\Ê÷w·µ:\Õz¼esXª³\×x«	R>òP’*G\ã·\Ø\Èp4DdH\Ê\éGis.¾øò¹ˆ\ì‰\Î\âW4#\å{»\é\"E\ï-ª>\Ïú\"RwUx~úù}*¢Ù(ò1ÿ\01\â#\İ=\×ô-Å¸Ú‰ò£b\ç•\Ü\"I‘Ü–ù5¥\Õÿ\0\Ó+Ñ«\Õû\ëõ	\Óq%»’)±\ä»\\±\ìpqòö÷\ŞÆ¢%\ì(m±bR±\ËQİŸtû.ñ\ëT•´_kûVHG\ã\åx\Õ\âY\É{+c\ÉòöYp\Ö\éŸ\ë/±|§>\Õ:D¨}{^T‘´M\ÙU©¿\"V#ñŠ{Ë²*ù#\Ì\Õ\×0ú¾\ëŞÆ¿ú\ÖDó’¼3\æ”4²”Q.¶\ÊHƒş†}”ö9•QqWŸzÛµ$š\"®T{D~R”·/—±Y˜Š}ş¿§+bkô©\ÆT\İ\ã%¾S\ä|©\Ç\É\nfÌ”l\'u5º\áŸd¶(\ïV_/ª½Ö»K\Ñ;:q*\ÎÊ§\Ê?\Z\\«\â¯T÷/yv\Éf½˜w¦«Wel¬S\ÚU\"X±<S\å\î\ìX³B•\Í:[\Ş+†2š¸şS‡\Æ/y\í\î‡\Â-¶\é\Æ\îoB‡\Êu|ŸI9%\ÌóW¢æ„¾U9©\äúö¬\á\Ì_\Ç·Q¹¡–9‹C±S6T\í\ì”E\"[\á\åh\ÓØ›»}\Ç\ïnùC\ã\Z²(-\ç\ä!\Û)‡Ä·„{A\Ø\åVòf½È ï‡­b\å\ÍE9²i\ßIU%\ç\ÛR6f“sS¤=ˆpÇ’\Év}¢œu9½+\î‘[±\ÄF2—\'ù\\”\áQ_Ø¯b0NøJ¥óNÎ§\åN2úŸk\ZK4jf¤\ÉDd8ck¼ÿ\0¦‰Qİ¾!³«¸‰c(òùú¾\æ\Úuv|ûK4~9ÿ\0òVö\ÃxËš½G\Â\ëS›779\Z°\Èucq\í>r^î´˜ò½\ãO³\äc(’\ìöRäƒ´«\î—?Ğ\Æ~µm7iUEN·º\ÏÛ¸\Ø\Ê|•œvoŸ|\Ûw>òDxÉŒ¢K‹l\Şq•\â/\èG\â¿^¿³A qMT‚Ó”IòóB&2Ÿb\Ï\íä½²\æŸ\Î<£\ìc\æW\ãÿ\02\ì\"Ÿ\"\Ï\ï\ë4~\'\Ã[Úˆõ«\×(ñSŸÿ\Ä\0#\0\0\0\0\0\0\0\0\0\0 01!@A2Pÿ\Ú\0?\ÙJô±½/]ŒES8œN\"ø}/~Ì¿}6Yg\"\Æ\'\Ğğ\Ç\èü\Â¾‡Š\Åµ—«\Ã?\Ì!û\Â\Ù÷ŞŒü?0‡\ïG‡\ÛÅœiù”?xZ1\æ2¡ù/K\Ö1(¢‡\Çd?x[=kh­*\ÉFµCºY{%{V$‡¢%…³\ËÅ–^Q\È[\Ï-Å³\Ú\Ë\Ê(X³‘xdõ\ÅÜ„Š‘\Ï|õ\ÅÜˆ¢Š\Ã\Ì_8dµ\Å\İò,\Äx\â%Y–²º(hZxı\áˆY¼\È\ád£ZHb\è\ä7e–C\Ä\åòNHe	\æ³,OI·\ÃıO:#\ìb\Å´\rŞ’\Ï\"ö¦QÄ¡JHm¿e\á3\Ø\Æ,\ÊDüŠ#w«\Zl7l”¬’½Ø\"NvÁ\Ó\Ö\Ç\"R\éxl¡¡{%»\Ò9²\Éu²\ÅE®:¶>†^+üMa½ù¢[\éxB“GòZù/k\İ,¾—„^÷ª\Ìp\æ‡+\Ùi}/U¥õ¾•ôk½b»\ïWõZú¯\ë.\ä?ô,Bûñ\Ïÿ\Ä\0 \0\0\0\0\0\0\0\0\0\0 01A@!ÿ\Ú\0?\Ñ8l\ßW\Øú¾C°\ÔFmZµh\äá¨¦¦ú¾\Ç\Ô<‡a°Š\îo°\Ô=_c\êC°\Ô ş\ÃPõ}‚‡\ì6=¼Ä¦\ÃW\Õö\no\ì6=œ‚\ä¹b—\Õö\no\ì6J{9&ÿ\0\í\Å*U’f\Ğ(#û.M‡a²fÕ«ÀN(È‹@\åÉ°p\Ù3ZóV­ÁMƒ†û‘4ªJ\â«mœ›t©WE*–\à¦ÁÀ\Å\Ë¤«ED\Ú(!‚›\ÜRj\å\Æ.Œ„2\Ø8GäŒŒ¶ ©’¼6a(ô5hÀ†\ÉMöH—z‚3[°UM\ã˜\\\×5\ÍZ\n¦\×%x3üË‘?Â«¨ !û5´˜xƒ\Ò\ÓEYG¥²\ášTš:Â´\ÛE7mÃš¸®2\í.06\Ü;-ê¨º\\¢µVƒ2Q\"\n-µ\ÃE5¶€­oXƒ\Ğe·@j\r®ª“\Ğ:k¬`ôWuõ\ß\é=\ã°h÷\Ädlt;L\Ìé­3°gÿ\Ä\04\0\0\0\0\0\0! 01q2AQa\"@r‘b‚¡#PRñB±\áÿ\Ú\0\0?Ê¾§µâ´¯fE/$2‹òˆ¥\é~YW“\Â÷•\Ê\äT÷#İ—dR{ˆG¨¿·ö”—Ñ‹]s=¯2È¥¡=o\È[\ËÄ—\å—q\ÏÌ¢IVó\Ô\×†˜;”Êƒ|\Ç(¥	\ë\î-\å\àg‘d\ŞN˜b¤\Ùu*Š\á\Ó\çE(OZhc\Şf\æ\ä\ç£8Y¤µG\Äj\Îf†™p\ï‘\êÉŒˆ[g93CCCIñh\ãG©\Ì\ág	ÂG‘f\Å$E°\ÆB21m–\æ\ä\Í•j‹˜\ãş®‹C‰ş\Íqhhi=Mpi8v\ËRŠ\Ú1\ìB21M\å¹9·\î¥\ÊE\ê\Æ\Ö\ç3C„\Ñ§©®WiC\ÎÆ’¾B”R{ş#<\î2=…7–ö“–’¹cAw.\åy\é?”F¶5—RÒ¼©\î8™©\Æÿ\0eË•©ª55’“”[\Ã<yG¶–ö”U>SMkS„¼\"¾’©s´´\ZGYX­N)Ø¼şR¹|6(\Å\'(÷=,1mŸ\âOW\Òv¡\Â?‰¡¬¬Wœ\Ú*\Ùi\ß\"\ŞN\Åyœ£=,{\É\ç3\ãC‘ÈµÄ¹dV^\ÙVv–§ı\Òş=K,®¥R•a\Ò^Ø´\ä9Fz;Íˆc\ŞO;Á©©®e\Û+*”*øKeZTj\Çi{”¯¬¢=/\ÈRˆR‹ò“úz\ZOR‘3ˆ¶¥DQfö;Jó\î2\ÈC#!””ŸÕªt)J\ËC¶G»›úŠÊ¢h¯T/È„‹r2zŸ”˜³õğ<\Z—¥ş9\nDy!##!—©¼˜³µ)\rğ|Š&Q\Z\n¨¬8~(¿3§Y\ÛTT„ŒŒ†^¦òb\ËSù!:X\Òw,E^r¹TğØ…}f¥<¢½I1gü£\\Ï§¹ı5Šœ\Ñ·—©œ²C\\Á¯×¬¡\è_¦=‡°·\Ù\ÈrĞ²§I]ş‹?\Ùy{¹`Hø\Ùl½Ê¬Z\ä¬*Iõ<\"\Ù\ïğ7?w8p){ŠTN#\åH‘ıOO\Î;dVTš“B<qÛ\æ\ê=\å¡t>\ÓkşL¶\î+	GD\Ñğ‰iAV½\ËN\Ø-\Í\ä…8v\"\ÜB\ÚK5\à‹yk;x4^JV4•0T¹£ıgº~Ç¶?Ü«\É\"	Ğ‹qm%š\ËH\âR\Ğ\Ğ\Ğ\Ñ\Z`\ÖIa®\n¢\Å\È\È\\‚«şŠEª\È\Şky&XˆG§%ô\Ë\á¬2º6\ÃW‘t\ç\Â\İ\ïW®¥txY\Ü\Öhó4\Æ#Ò’}ä§ æ©¯2\ìÔ¯_«Y\ß^˜|\ÍòC\Ç\îÂ¥­±\\\Öp\ì|‹\ê3R”©_lÜ”Ô½-ä‡COŠlip¿\Ù\ÃşNï‚³±X§\å“g¶:\Âû\æ:\é\ÊW)\n)A\Òu\Ö\Òô¿),vLö¨HŸ·\ÛÁd\Í%D¥\ÈX\îŠ%›g:ÉŠJKiz–kb—…¸ŠûGj\"¥÷š—\n8Q¢¦¦¦¥™\înW\×o¤¯:Mm(,>\n§w©sBˆ¤¢\ŞW\'¤-™lV/+N™T\ë$j\ÑjP\ØXPÅ¾\ZF«ö^$jk&æ°¼qÜšÁ\ÜÒ§—\Ë2\íú\Íÿ\0‚¯\'±\çz-+š€x¹¶\rNf¬\ÔÕœ\Êûo$ñju8Qhš+Vú‹¾MOô¸º•%\Ë1ö©\È\âh³œS¾.fŸ\ä\Ğ\àG8¢—)6ôGi§;KL;cK’Ô¿\æ8 JdˆG\ÔBšÀÅ¶H\æhˆ\ÑdhR\ÃXµ5Á¬¿ı•?x=¿B¼ùJ&“«EeR=Å‚“\İlO”N¥}Æµ:%TZ\"+\ã\Ö\\°h[\nÊ¾>ç·“šÜ§F9Dp!\ÃW°§rÎƒ£(vGº–yZ\à\ÒmòXk\ÊÕ”\Ó(o¸\Ï$LC\ŞLò*Ve¦‹]•-\ÜZ\×\Ê_-½¶Ÿ™ëº\Ä\çiû^u\Ë*—“\é²\ä{Ÿ±øö›(¸ü\Ê?\Ù{®§º²­W¡G¯c\ãw>v(”^²H¢\ä±\Ò,Z–\ÃyT¦Pú)Tş\á`¨Ÿq\äz\Ü{ı;õ„\ìUK\ä\åò?Ó†\İOœ^\æRRE–f¦²s¡L–¥\ŞCôZ›\à‹ôl1~Å\ê?N.\áıHWş\Èş8i[\'\Ó/Ys9ıM\å¿\ìö/\"’\ìˆ}()))»\È\Ïr\àzŠvE\"jK\å\n5±y¼\"\Â)ôjt,X¼¼Êƒ!ò\Æ\æğR[2¨i\êµG·“\á•*\êR¢—c®k¿Ò½%b§|p¢.Š\Âš•%beı_O‰jº•HV*XGW›Õ»}O„>Y­g~E\\\Ğ\å\à\Ù{Î’\ì\å\Şpo(r\àzššË‘©©©i¼5zƒO¤\ÎH½\Ê\"ˆ¶\r>óR¯Rš²…ù\Í99S–u^‡ñÍ¦M9ÿ\0ğ¶\ÉÏ°§µ¥RüğÀû1Î±Ó§\Öo˜\ê=±97?l¼J´‹hS¦º1ä©²¢m¹}\nÃ‚\Ç\ÉşŠ@¨(Q\\\Ëğw*\Æú%\ÙXâ‡¶+–Gı,VŸ‰CÑ³¡\Ä]\à©\äep\ÑUe%\à[J\Ù÷¶N¢xkŸZ\å9\"Œ\ÜX8¿ÁlÁD>\Ù¾ø´48K¦%¾/v.‚ú¤”¡\îW.\Õg\Ó2²\ï†\Å\çAö©Ô¨¢]ùPv¶j÷5˜”«Ø ²¬V/ó+–\Êw(m(úG“\ÆC]òµú+½†òi+—*QJ¥y¼	ÿ\0\ÈòDT\Ê\Ó?\İ%´–\Ù)V\æJ²\Ó\í5*”\á\ìxŸŒp\ÉN™4•\å\\iu•2«s±auz\á…Ê²¦òó‘\å\ncY(\Î\Æ\Ø\êÅ‘\î\æU”)\'\Ø\ï*tÀœ¨\È_Ix<ä§ƒ–\r2©lTY\ÙE\'*ôÀr \Ç\r2.k;¬Š\É÷É¤\ŞGÏº*²\à\Û>\Ì\Ó)	d¶m*‰Ê˜¢Ü¬©.óóf\ë‚\ÙÊ§<\Ç\àu\è&y\Êóş\Èğ¼1	‘`¡\ç*/\Ë¦²\ì\ÌğE‡\ÎT[\ä<?ÿ\Ä\0(\0\0\0\0\0\0!1AQaq‘¡ ±Á\Ñğ\áñ0ÿ\Ú\0\0?!©:˜doğ\Ä\Zmea”\ÍLJ¤\ÈlXôH~-,|Idğ?\É\è´J\Ç\Ü\'ë˜¿e—Á‰\Çò\Óıò¾!\èez_¤n$\rµl\ró\r\Ê;\ì!\Ó\\6\Ê\'‘J;	Ğ’uX0¢¸ÜºAQ3£\Èl3Ù	ñE š&c`S\è¾\ÆøJõ7\ïJû\0\ç7€ô\ÒÏ¡\Í¸¶%$™x’+<@“•n&‘2aÀbz$’Y$\èôZtğL\ËcÁ±‰e\éI$ò~MiW6¹÷‘…ŸHª»~ôltsá¡‹Æ‡\è2Tˆ¤7ÆŒ\ŞFXsG!&\İô{nI*\ì|\r3\ç\Ñ|h7\á¨“)™w\\—¬¢\ZbI\ÖI\"\Õ=^—bd0z%\Z§\ÄU0ı\Æ0\åúOh\ã3“biÖO\ÉÜ¹l¤”[‰”\Óq‘\Ğ\Ùdö©?ˆ61°±¹hÀÄ¸\r’Nˆ!»V‰>ù1‰ ¢Ø£ø\Ñõ‡ŸTö`¼£!õFŸ*|KCö„\ì¶\"²%o\"tDNxn\àº\"…±)ºK8/Mş¢P˜®‘n‚\ŞO.\íñ¢s\Ë\Ùıl\"P°EJ\Ñ6‡©$’I#|ÁŒch¡‹?@”}R\Ï\àq¢9_Áü:Á´»|-,[É„%CJ\ZLrÒ¾\ç%š³\Ø\ì‚\ãô\'†ø%ò\'ÿ\0B8£\Ğn2ˆi\Ï\È5g\æ\Z‹\æ?C\ØM\èÙƒM¾\ã\Úù‡d’I%\éD}¿¢zÕŒbÊ ´c\àË·ÁWz\è\Ğ}±\Ï\ĞLc2­J\Ä&\ÆeBÁ‘‡†Ÿ =ƒf\Z&\ã=\çDÛ»m\È=\ß:z,²—q>òq\àù;\Ñ.Oc<£Ÿop!GFWBS\Üú!=\ÏÛ¡hL•üúO\ÚS\Í© dö9_À7\Âd\Ó[5€\Øù(N¹\ä\ÏÀy(tşŸ±dr©®\áFÇ‹\é±\Ü;\ß\'CF„\Û\àWD9\ä|s‰\è&½ô’“¥)	o¢	ı\r\æƒdc\éM¸›„ò)¢lD¼	\â\Ì\é—WyO&‡\ïõ0\ÈúE\ØfÁÁ$\Ïğ#ö~C¡ZHLC\ÚÅ cW¡\Â\"šX\Ê<‘\Ì\Óh’–7U(.^¤L6ÿ\0dF©\ì˜f}‹¤‹Œn—Áfk\rîŠÁ\é×–\Ìi9b¢†¤\ÊG49G?dU!?Ÿ²|7Éœ”gW\Ù@\ĞÍ™iÏ©‘)ƒd†L¯“JúANóõ‹iQ%]\Ì\Èı\ÚÆ¤µÁ4nd.6”\r0†7C\ÑE	`[V@À4\n¢FˆlA’\Z6˜…w¨\\1¡	\ÆÁq?‘%‰4‘C‘9dV	9/\İ$\Çş‰[±]„\ß/±L¬V\Ô=%\Ö\Ê;}\n²A1——\æ˜\í–4<9\ìK\'òs§\'\î\×\Ù\Ì\ĞQı3\'‚Ş¦?#›ùCıÙ±—ÈŠGfV¬lD01ÖF\Èú$µ\Ä\nB\r±\Æ\Ú&’È—\Ùdn4)3¸Û»\"i’Ebl\Î\0Då–„<‘K\ï±p¬¸j<@\êº2(V®.bV¬`T–•°\Ê7\í,\Éeòä™³{–§\Ş2}•wlJõ£û¡tô\Ìn\Úa\äQ†\É&KÑˆ´WDúh¯€Œ¦U[—\É›¡%`´Mº2\ä÷ \ÌlT\×\"UYYµ’’dõ_D\ä\Û\Æß”.–g\ã\àl\ì\\²kö7­a\rø»RF:–V+dFÿ\0“1}9\È\Ò#\\\ßù¾\â3-ˆ¦vx\Êc™ƒ‚\á~M7\Ô2ó›^Z\é	\ZXôJ;‹	­>‚\ÄEñIX-´»vZ¼Š!²\Æ6`\Ù%=”\Â$„\Ì#—\r¯¦A;_‘[H\ê\ïÀ\Üv(\È\\ö*T’µF ‹¥\rkC­‡º¬„¤?$\Z\ç‘-\å{\Òö\Å\Å7ö1~J>‘ŸÈ¿&Ÿ\àûc3\ÆU.(–&“Á,\Ù\ÚM[\Z\Ãü\ÛĞ·\ïBw°k@\Ñ`´öp“7qFõI\n\Û\àÏŸ}û^f)cKBbÑ‰	\n„¬z82†3_½·IMS%p\à¤\ër\"5hC>Cüfo\n}s/#÷¹U-œ×\Æ’2¡ø\àj’fğ)·,O,BA\ê4)‘‹Qc¬Dœ\ä[¢\\¨C‰\ßHxjğ3Àn#i-È«\Ã08.\ßÔ…¥hZ$\'\";\Zt“\Ì!\'\í°° I\\¬£+$\Â“\ÂKDO\Û]UhfG\à\È\ÒRg\Ã*£\Ühõs#¬\çL”[‘\á-ú)„ñ#4»vJr\Ô{+b4b\Ê\Ñ8@œ \ÜI³ƒ~\Õlb‰\n„!\Zg¥É­.H´WŸ!\åHY[#s«»Le<t}*[À}\í+\Z(|ø*F…v$3‘™\n\Ô\Øn“\ÍA‘°ªù–P\Ğ\Û]\àq²\Ñ³à´‹Ø¨&\È)«ğ%\ån\Ú\ÛQv\ÑtÁB Ha2F\èÈ¥¡iˆUqdgÚŒ\r<C¦\'ØB‰Ó ] °ŒşD\r¦,9;!¾afù\nØ™\à@ºÙªP<İ½xbBù23«“L,•&È›\\‹y\n\Ü\îõ‰.$A€‘-w\Ñ @4‰q\"øoKL¸f\Ó}2;z»×¿®}£)-@yµhe I<\n \Ü\Ì\Ôô\Ù\r·û%4ka\î#˜\íb\àb‚©&9CjÉ‡¦IBÄŒ\Ï`dÂ„s‡$X\Ó6•)¡dÁ\êAö(3±|ğQ»±\Æo[\Ø\ÜWÈµËú\ÂüZV|\Æ#qş3h\Ø}„:c³\Ë-“(­[&IØ¢F\ÈË•b‰Jğ\Ú\ÈTd¡\ÜŸ\Æ*\à\Ü\Ã2±˜Ó¦ {D5‘\ÈĞˆ\Ñ\èÀ¸KY‚mœF]Á»³°\Ö|°ºúE°~£“qş\n\È\ì\\\Ãp\Ä|Ø­¢m\nO‘ğY)2£\ÙId#p\Ïd‰‡t!¢J]‹#Ñ¡¸PÖ¢Ê¸\'v-¹‰ÀK\ÖF\Äa&–cw/’:jW‘j†´@ô61?±.H\ã›‚\ÃWF_\ê\Êör2.Ğ´´¦:\í+\Z;ğ“r0™‚H\Â$³K²!Ç˜9a‘…ˆ\ÆQ%À\Ö\Ë0µ”Lû\Ë\'m1ğ¼Áv\Î)%hryBÀ\ËS8¤nL†•c`:U†\Ì£~¡‹cğ‡§$\Â^\nµ\Ô\r2da÷nQ˜™X\Ã,š\'\ê•,„ı\Ã\Èÿ\0%«ù\r…¿`\îPş„Œ$½\r°Ã‰F\ÈD\à¥»^vU\Ë\"7.¬k1\ä\Å8¬a¸Îú{	\à±\à`Ô‡B(­rX¹\'\Â7ò¼¦G²b\æ`£”\í\n\\Ş–<\"evf^‚ä›Š0n4p^\Æú˜{<Š\ìSCEúº^ÿ\0ˆLÁ¡¸X9p7°r˜lWbE±u¢}ª&\Ò\äiHl’é˜¼\"ÄªˆK!ğ\Î\à\Òh\Ä2\à\éT¶PKŒ\Û2™y;()z¯\è­^€Ë•\Ï\r\â“p\İ\ßnD¡ªK%†„¼\à‘_hk—|È˜5\í\r\ÄIW:Y\ë\Ê\r³³-\ÙYyß¾2¥Á \ÈeªG!®’€òL&G‰)±¥jDÁ2\Å\ËB%\ÑU%ğS±\Ú6	8Ä¶\Å-÷ Õ”‰gôMàªg\"SaC,—ƒƒ»sq\Ém\É\ì\á/„aS\ãv„4EQ@’\ÅY¯¢[=•&²I—L\"\É\êIB\å£\ĞY9i\èjşS0i\æ\Z¿Á\è\ÈG“„:VDJw;\è|¤)a}\r¸µ\àP\Ê+“’\Îˆ¬}	(D\n¨Q?¡\ÍF\Ó\å“Å„Ö„8\àZ¤R¢Å¤¿gˆ\ê\Ï\ÕĞ€¤Šä”‰v	\nö!9ü6…r†Jş‰™qh{¥Q+¡g\È*ğ÷”bÀfl±¢\Í1ŸgI–©’=8‰³\Z6<\"`˜d°RbK°[bV\Õ\rb†o,BN\ì/0w\'\æ\Ğ\Ä\Ğ\Æ\ÖT†N£)%-\Ê,“\Ê†Š\r\nhi&\Ã÷~\å\äI‡\â\",…„E\ÚŸb\"S\Øû\n£8b>ùpK\Ñ\êÈ¦Tğ\ÆÈ¯0bRŒ<‚ó¸³,}ŒFj„û¢/\íQC‘F`b5y\è6e\ÓCüzMCtI‚A™Z;<¨¢Æ©u®CÀ$8/\"Íp#W\ĞôY…\ÂM#Cöü4@º,…qxú\Æt+Œô3a)¡•¥ \Z†›\é…ö7W$¡Dò\r-µ‘M‘M’‡’³=(6>°\âM™,J£aM´\è‡?\\¦™µ¢\ÆbL³0\Z%eU\á\å\n\rWÒ©¶\ìmv`\\·%ŸQc\ÎK’\Ş~tr#\ì\ÂB*x—\Í\Ö\Ä*±Š\È\è„Zñ\Ùx*9\å°\×\à¤\Ö\ìIÀ\áX”S‰ô:Q½\å™\0I\×(d-5›<_%Áüª7&f†«$RD\äa;‹\'y/\Â\ÃzOd‚Pj‰r4”™ˆ.r±b™ğû%~H‡ø)!%¨·É§šò$¿>BÔ‰#gñ\"\Ï&°HTBŒ Cğ2ªĞ˜\r\á\àih\Ñ\Ø\çÿ\01:]WGrø\Ñ>hÛ¼\Ê|‰F»\è¶i¯‚/&BBCH$³3LºD\ì”\àj\Ğø•1\äé¥¥µÁÅ’ÿ\0\nl¾\ß\Ö­Æ›p„‰\Ä\äGô­²\Ë^‰(l\åùÕ‰o±”\Ï\áF\İ”\Û1‰›Bv\íB\Îf\ág0ò7¦$‰œŒ!v\Äj\ÄR$–\Èk‘¸vJbBH_\Ëğ\Ó[á’œò,%ˆ§›\Él\\\\1§O.\Òœ±X›U¤\Z‘vc\Ø‡1‘ƒr\Æ\ÊU\Ş\â\âO24}Ã±\"©WŠ~JEù\Çx*\\¨˜ \Ú÷`vü\n K8S‰üE°ƒÀ§ ”\í%û_pùo“\ÊA¶\Ä&!¡\æT²‹\n\Ñ\ZQ\ÃTı™G£\Ã0l\",ó\å#\Ñ`©\Èürâœ§+ı£1\æ…\Ó\ä\"»!]\Ç5yZÒ®‡­I—M®F\í\å \ÉLp –Yı“\å\å”Sş¡nX\í\æ7K¦d*b\í\"_~±‡ÆƒUô9ŠºH®\äD¬/b7^Ë„‹\ÉJ{\ÒğbÖ›9!\Ò\î™H’\äM³|ÿ\0]\0¦\Èş”\'İ²FgÙ–>)`.\åb¹#\r3K\Èn\Ú}}C!^\é–eŒ?\0\Ãb+ø\Z\Ë4‰\îq\ä\ÒÛ¶Ù…6òÆ¶Uğ:-Õ„¿\àzCØ²tNİ· YLi›,‹ø\nğ\"¨œJ&6e}\r½\èb\Ì*yeòDôg#,#‡±!v}‰{‚Š0\îÄ¯\è \Ç\Æ-¿€|\çşCÿ\0k‘™x-op¥ Ia3À‘#TF\n‹C\ÔP\îKò-p\æ\ìWHŒ\r¤\åx&\Òù3vU\Éy¼ xö\Ì{/\ÌA[ªŠ-]\ïÀ•Ê¾K\ë5Ë…1ú­,…¹\àÀ¹Š;1\0ù<Aü9‰\î4\í7Å¡˜X’±\Ë\Z&ZØ‹x)r_%-\ç\Ñ?ú\'ƒ\Ñ\ìü¸#ƒ4·è¸™\ìJú1¦oat®\Ç\"t,ŒbP¢Ğ™:¤\àv\ÒòGb%Zt6L\ïˆqÁ\0ÿ\0bû§eoŸ&\ç‰\ÑH–FN\Ë$˜\Ó2)A¿À ±zÜ•xdq>ñn{2Tğ9\éú\r\ãø#eŸX\nV=\í§g\Ùğ!ı \Ü\"\×6.F\Ê[>E50\ç\Ì$\Ù\ä´$™4\Ğ*\ÑB	\n©\èÁ`\Üc!\ÊT”8\ÈJ\Ñ n	½\Ì\ZT„Ï†*˜Z\Şy´\Ã3ôL¼eÔ›Tå”ÍŠ.\é©\ÌMŒ!\İ\É\ãB<h`’QO+&-š~6Ú’bt‹E¦<²0ÿ\0m\\õy2\äP˜\á.\Æo(nNr#ú(œ¤>H†>‡FpT5Zv±a9«ÀÇ„&–\ãqlXNĞ·\ÇWò5ò(”·y’\\|?BO¾I\êL%\è‚F€-İ†öÄ„(\àI%o\Ê\"NO=ˆW\ÊD\î\Ù=™ôH\Ëd\È:\rÀÎ‘‘\Z’	\Ò&Fx¬\ã\ÑcØ•\Ëø\\|“¹#	³	R7x?FNbv‡¶:3\Z±\Â\Ã\Öb0…£Ù®R>j†\å\ØC\â65¥ä•§wo£#±åƒ\ÂTŠ\Ã\ä\\\'˜}°\'¬şƒRü„–	Ÿ\r°\Ö\r\î#ˆ£¥É¶T\Ãq¤ğ„ct„0øt¢.X¶†Sa\Ä\ĞH¤‚\Í\à‘CMŞ ³\Í\Ä\á\rO<’+aE::À»/\ç«bmšDËHMôJ\án\ÎC·[u±|¢’S3² È­Ö”Á-\È\èj›K;¥\n\äO¯\àŞ˜\Ú\Èy¬¤\Ù@¥¤rY(‚¼\n\Ü:\ËgÈ±¥8ÿ\0\ÊOn\Ò\ë˜!(iO¡\à2D\ãüˆ›\Æm\Ñ%&|\å\nx¯Hæ–¸Ã´9\Çô†%w\ÙÀ„‹ÀHSd÷\Ñ\àr%™|´\è{|Ÿ\ì”™/ ˆPØ¨½\\›V4\ÈbI	++\ào\á\è“h“tp28*?\"!b¥\n…L\Æ>ˆO\ê«!1œ²·²bJLQ£&¡\\\"¬»o÷¢wd\Í\ÆÇª\Ë{‰\É{`P6‡	\ì\È\ì\ÍO±³”*DA«o”n-÷\Òôw±\ĞP\Ô_’›„\à6\Ò \Ä2i™<“vGh­\ßÁ\à\Ï/¢?ğ[/²8E¥Àƒ~\Ç\\‰Y}\Ål\ÈX^F\n$ ‡$UH\ÉJ¯Ÿ\Ú\"WûH€b„ğİ‘ûAB\Ö[‘š„D³R›o\ËRLv[µ§\0–Ó±‹o¢É’\éÒ¢>Q$×¡(Ã•ÉºlXá“¨a\é%$\Ì{5´˜h¦8ln“`÷º°´“¤OD™\Ñ\à\È{\"f†F\Ò]›ÁxF\âÁ\"V:CJZ\"JiB ¥û#[|œÁ/\0¨\Ö;²9\\ ‘\äY>$uÍ—•o\"\É\r\çì‰“]‘\ì‘İ¥\ä¥v¢hB?¶CN y¿f½¸?¬7Hie¾D­¼4!]`-Ò¹¿‚:\Ô\à`\Ìİ2M\ÄnlöÆ±¸EÁÁ¤²\ËòV\ì[\Â\'k0c¡‡\ÛÒ†\Í\Ì8\Z\æ\Z‰\"†\àD\Å\ÈA&¢]‰\Æğ\ÖÚ–\Ç3ö<3\èHI\\\äª{\ĞG\äKš\Øş€ÿ\0z\"4\ÚMµ\Û\"Ç°•¶ü\rÅ¹h\\$J_ÀkR\ä\åO’6–RşxtœA\í\Ï\ÉJ\Íòj\ŞÅ»aX\áıFwl6\Ås¢¬	°\\ñ¦-=2zo«®PLp \ßa­lö5øÎ–¡\Ä!*(]\Ä\î„MË—¢´\Ğ\ÕRMˆ]À×ƒ¶–\"\å\Ã&D‹ñ!¥\ÖZƒ)?\èg\Ú?2\ÂJ÷’mô‹¹\\9 ½\ÛbS5x:\ÜØ„vL¼¤\Äì—ˆü>D4ƒ¦^	\ì|³´_&%cz\Ä>qŞŠ\Ğ\ÓYc´\Ân\ÇI\Ş[±:AM>†\Z©cX\Z7<\é\Â:·	#\ä\ËQù\r1ğ),¿Éº^\ä\í\İ~\Ê	¬\Ø\Ó/\Âv#.\ÆGÄ¡¥±yQ„÷¢)ˆ¿¡i{+/P!\å°øZŒF\\‰\Øÿ\0É²ø\Ñ\ê¶r\')>K!·Q±\çY{	\ë3q¼C´Ë¡ÂK\Ê\ÓvF•&\á&\î![Á[#„!mO#-)÷¸®\Ñ\Ä_0$\Ë\Ğ\íK\ä¬Fù~Ä‘Ô¸„D’\rĞ™d£R•=\Ú.\èvÅ‘n4D\ŞF´\å!÷sa•˜›“À0†Y¨“·b¹™òAfD‚”\àôHò<ˆ!-ˆR^¡›Á‰­\Ì*F\Ö&\Õ­°™Œ,	)‘/})Àj\r\ã(\Ñ\Ûô8\Z\ÆËœÂIœ.‡\ïÀ\Ó\åÿ\0FX2¦ü	\â`W”[Ä“E…’x\àä¼‡xz	m\ĞRº?ü”’şKnI‘pÿ\0ùƒjFú$–Y\"\\™8Ùˆ\ÃÀM\r9PbK&c¸\Ä\ZQ\à|+Ñ‹0\Ì^Ete	¥¬d¾%WbŒ\Ë\è\ß\Ét)1õf`!¸™² B_d]°ÿ\0ff¾…\İ\Òú%¡Ÿ¡	EÑ‡“ø–›\Ù\'¬MûdÏš£‰G7\ì‚m\Ñ\à\n$S‰\ä\å\àÀ¾„\ÅNˆ¹\Ò?F\É\ìŠ\İ\nª\Ë\èn\Ëğt#vvÑ±€\ÌòŸFC62$@n¡i–•’\ädJB\Ø\Ê-“!\Ñ6N\è\Í\Í\ÑX}.~Y$’„Å‘(\ê‰.ü†Á\É#Aÿ\0eiJ\ì”mß£&“\è¦H­¾Œ’û\ç„M¹¸ó	\Ì,&J#€—‘|Ø¾$³\ÙJVXDE8¢i‹øf~M…‘2Cõ‘\\\áh0°\Ã/PN|\Ş$ú,T£\r-RkF‡ü®²HÏ¸DPZIá‹½d\ÄŸñ•Ä‡M¹§µY´3\å\\¬ô…\áH—!!i|¬¢K¡î›‹¢YUØ¸ù<÷\èN›{\Úò/\àYö`§„PX\ÑH`\ĞdŠ\"u°C`¹}°2hB3\á#yQòg	 DteEÁGa,ÍµH»0$$r}d[\ÓY\èô$Ûº%mI`\ß(¼`wjD­F8{\r\å\èSòKBS—/\ÉIHf\Ün0\ÚH\'1’\é›:°\Ù5\ÙwŒÊ”\Çs6/\å{?\áµpôB(Î™4ò\Ñ\â¤O:,dHj,n\Òz˜¥´“‡:\ÉlÈ‘\ß%şa${·\"È”[ô20Aµ,˜\ÚË“\İ…«vÆ¯t„\Ù\Û$\ë­a\ÑR\é)xD’Åƒ+Œ?\r!K2F\ÈşD¼²pƒ_rmğÅŸbÇ¡gØ¬L_€¡Ÿ\á#\Ò\Ğ!\î±!s£N3&\ËFĞ‚òC2\ĞC\Ô5^ù#ğ¡	\Îü¨$°—\Ë3!p\ÆÍ\İ\Õp)~…ª\\ŠŠW\É^¬‘û²*	vtÇ˜ZnM9N e\Ø$A\ì#ù$ó°XûBş\Åı=i‘À\êIj™¹\ê\Çp£I’!-+­i¶“XQ	\Ôxr,¤8%AòDµ\àZ©	4Za—pE·|\r6k;	J\Ø&qS\å‚\ã,¯Ñe*¶\ßû_±£ˆ²ÁxqnP¤!±dØºf\Ï\Â}‹ø\"¦W\ÉÖ«ïº’\Ê@ŞzYrMˆ¥#™\È*Éˆ\ÜmM„Ó´\n¤\Ë}²‰8ı\çJHzù01\ÊK,H!—’jO‘+iU\É,ñ¹8¢g\Z¾Š?ˆ+\×\ìÁ¸É¿afÿ\0BÃœ¨\Ù\äÁeyf\Ãş÷EÎ•°¨¸t$³Z\å”E¡˜4\Ì,@¶\ÇqWd‡P\Ğ\çø\"V·\Ô>Sù\0c›?rÄ¡WfZ²\'‰Z\íÁ÷–5µ\nD³\ålb\áp¶1³¤ğ\æ™½„•\î	\Ü\Êh\Ìß‘¡K\Ú\ï‘ |\î$7†\Ï\Â*\älöm\éû6OBÀ„HøQ3@F‰ø\Üaa\èÁ“F_#]¡«Éš\Â\ÊÚ¬‹v1hÈ”>\r”	p\Îz\Ø\Õ@ıKğC	`\È\Æ9	¸˜\ã’H›±\ç…(›KvF¼PFqCÊQ3Ğ–@‰*\ŞIdf›[\İFwoCp²¼±cĞ³\íıòd¿ÛŠ„4+\á¦M\ÈZ`JòWq\àj\Ì\rf‡¡!¼…<”A-¬D©\çb0gbeÈŠM\ä€šaR\ç\nXò\Ù\È\ÍÈ‘,stGºüÄP‘H\í’±W@v\Û\æÇƒ4×²Ñ‹HM¼˜\é¯\èÀø%Hš·R\ìş}1dlö\Ãş˜‘\î„ö\Ñ\İ\ÈI44İP\Ä\às‡¡(›$lv…–½\Ép Y†@«´3&\Éğ°…¾\æ%<ôŒ\èØ‘\'Š“dO&-xFdÆ´…‰ò¨YX‹s¥ˆ¡p\ã\èªvw±O±nE\na\'\Ú=ù(\ÔòÅ»­ˆE‰X‡Ø‘\ËM\r\ÈW¥ŸÀ{|ˆ3!t¼ˆjK\Ün²\r^\Í²%Z1™b\Ö\ÊP‰Õµ°o£`¿ğg\Ã\í’Û°“!¾µ(\n†v®([öO±LzÏ¡;\Ø_Ñ³Ğ±¤ä›©½-†HÆ¬Hm‚R³ôhÇ–\"I7$F\ä>\Ï\èyvbÑ˜•ª\Ô~‘\èš1\é¹J_\"	¿z&ş²3°±>%–·Y·Å““[Ÿ{\ã‘\0­\r¯\ĞĞ°¯<\Ò7ö!:ø?\ßz-/,»›4hCE&\áŸBQ\Ä,\Ú#[\Ğ\èÁ‘„€e7‘‰jò1‹¿\Èb(V\Zş2öS˜İ‘¨²Ÿ¨1|AoÉ‚\äLw=)CP\å`lö,z?\à³\ìÚ¸6oÎ‹KOø`Áy bB–U	S“•³?f\ìØ¢%ñ\Òô\ÏF\ÈÅ£?\ÆÍŒ\ÃF=2y2>™ü°ıj`ü!\çğ_õ\Òfò34aÿ\0n,³³Ø±\è{øF\Ï\"ı\í,\Ùy7\ç\è\Øl<é¾«\ê,\ÛCƒÿ\Ú\0\0\0\0\0\0ø\á€ºš\Î\Ó~\ï\ZŸĞ†ÓŠ¾ß\ÇÆƒ\Âğ¯\ç\è$IOb¤…ùHXl\nE»\Ü\åk~òñ›\Öô„\\\ŞM¯Ú‹‰$\â§n¢\Ü}¿t\Ş\é(„¡\r&Šˆó[–²ƒ\ê\Ó~\Ó{\ÌşRÀ/R\İ\ï‚z\0Ÿ\Ïİ¯ÖŒ„¦.²N\ë”$X¸AúV÷5%F‰—ŠÀ\Â1ZH%<:ã‡¶Ë˜;\0\ÊÎ»0¦,Rô}Á‡7§\Ì…dI¹ğ¼\"(¸S\ç-]·‚İŠ\n¥\0­À¬P¸\Ö\Â\åŠQ\ÍNû\ì7\Ì/7\çNƒŠ˜\"~[u¡)ú\0<(\à”ü\n?O:Û\ì\ÂiJç±®úÉƒ©L`|¢\ë3˜•l#\Í\äO=óHU3œ¾(¤’\î§S5\Êü)%,°/¦«ül5–\áCşe˜6+½\ïzf²p\"7”±]¥t©’o/ ‘GG6²õ\r\0\àO´/@Ï¡0m%\çi	5B\Ï\Ó`‚\í\Ï!`z™†L-ug\ï¤Jd”S\Öo?˜ÖœAğùñO¯	\Ûå¬\åÈ²k4sWe\á\ä]ñ]Ü©Àw®\í¯\ë\Ş\\\n\ZT°w\Óxò\Ê\È\ÙÀ\Æô¥ø!Y\Æ\âÕ”JR*‚\Öû\Åw«´\Óşv4‡\Ô/ÿ\0”\×+r—\åş6ù\Ôh´\\ùókõûB]\ÂV@S^\í´$¿Zsv\r›j.i&\ìX@¯Ó\ÉË¯tn|î¦¤u¯‘£„ñb.¹`ƒó\àS˜¿}‹\á)#pIR…‘Á­ÂŒV\êxñ±\åq	Aeh\ÅM}ÄL!õ¹±¹JC\ïp[]\íN»\çpü‚~ğ“\İ_<|\Ê<\Zú\ÔOˆ¬s…,><F·Á\î\å\0àµ¼\ì\ËZ1Ì“¢g \Ğ\ìŠ3ù¯L\Î\Ïq\é‚BÚ\Û\á\"2\Ï\Ï$gñp\Í˜\îğ\ß]‡\Ë\Ì\r¹ı\Ä\Ï\Ój\Ãú\å\Ğ2\í5ü†\Ô\Ì,+cL\ß#±ŸUJH¨ş>\Ê50³o\É-ºšo\âznŸ4ğ\Ê=Ç°x0şøƒ?ƒ‰À~\'a‡\çƒwø €?ÿ\Ä\0\0\0\0\0\0\0\0\01! Aa0Qÿ\Ú\0?ùŞ½ˆ[Ÿ`<>]`_\ìr{ƒ$É‡\Ö\×ò…mm8İ¹ø\ŞFS\Äv9\É2\à[--d\ÚI½870\ê\ß\Ç\Ë\Ü`ı‹V¢g-¥×™5h´^\çş8Œn09n&p-²n÷\ZµjÕ«V®[\Ãr\Å\Ä\Ï\Ôw9\îZÂœ	şNÿ\0s¿¯m–ö\Ä\é\Û\Ü\Ï\Æ;œ÷-\ÆF%ü\ÚZ\Õ\Ëv\æC|‚\êLLÄ‘o\Ëñ‰\â{–¢g\0/q¬5j\æ\×\ìC…/²§Ra;‡v]}Œ-0>lDE¹7i¼†­Iäš»º\'¿G\à \ÖF\á„\Ëqòò\êqÿ\0+»³\ìp\Õ\ìß–ğ\ÛPÆ˜Ÿ¶Ô³¬\Ô‚[pİƒOøb\Ó&·ƒ2¤n=\Â\È1n~N&-{»±˜\Â[òÕ«Pö\Öa\êşGZ$·¨\È5—‡ƒ—c1«S\È\å¬\È4K½zö\Ö\ä·\ä\Ã\É·w#Ï£òfò­D<µoòÜ \Ê^Zr\×\äøN\Ì¥\älö\×\Ù.r\àf	ƒ\é\"öòË¨öñ“¶–µ2µ3Ar\Ü\\\ÜDc\Ü$\à˜‹\Í\Ü§¢,{\Ñr·X¹»¶¢O.EÙ•\"dµı½eCt†–®\Ş6\ä°’uƒ\Ì<|»>L\Úú[³\Ùk±\í\Ët~“dtC\Ó\0I\ÛZ\"f_–\ëú[‚Ô·Œ.ÁCe¯f|İ«\Û\ËS\Ğ\Ü\ÅòÁ¼/$·–\ÛÛ‰Gö\ä|¶\íB!ı]^¦\ßÀ,\ïörıÀg\Êôá¢‹°Öˆ]°‚A»¦®¯<½vgÈ¼²\ÆÃ¸vLvc6¥2üğ´B!·~_–\Ü:J¸0\Ã\Ş-\à\Ç\à\Çp¶ü–:<œœZ	w\åÉ—„I#G!ó³¶N\Î57\äÿ\0€Ã©njğÉ…–ş?r«Œ=·¼±g$rİ¼?/c\àyƒ\'aŒ™fñ\Ëó\'.V£‘\ì÷/¸\"~DK’e?,s\à\äO~H–Vş	Ë¸˜u\'\Ë\ÊŞ¢{ò`\ìÁğ[ø\'˜~\Ë{½Á“ß’\ÜOÁ\æ\\\Éğ\à\äcIn\ê{ğä˜˜eÁÜœ¸9‡.®¯ÿ\Ä\0\0\0\0\0\0\0\0\0\01! A0Qaqÿ\Ú\0?ùKE¨5v\Ô<ø\Éq€\êy~¢\Ëw“«vğ\Ò\Ó\0%¯\æB\ïF<œ\à·q´\á¨-A„µy~ü\Â<œ#\àö\ïºşG–£OÀ<¼8‚]Fcv\å·nİ¼n\Ù>Â•!~\Í\ÔO\Ä\İ\à9ğn\ã­Æ[µiµ\çAhƒhÃ²Õ¢ò\ì\Ãñî‘—\ä\İ\Ä]Zz][˜\ÛY<¹mö\í\ÂÃ¾t_¦:.\çÁºˆn­–ü\ÈM\Ä\Ãmø|†µx!·o\Ó‰x\Ç>-\ÔE\ÔG\'\àat\Ü\ãXb\íjm†G\çÁÀDö=Á“vñ9^[jtÆ­Zµ½\áB\á|[¸‰m‘n‘Ÿ%m²»¼ƒxºK‘\Ïeú‹u0R\'\Æ\×ö&üµ3i¯/ók\Ø\Ù$¨û™.£\â\Ü0N\í®$ö;vÜ¶\Æ@m½+‘©tË¿e¦\ç¨ø7Q.­\îÕ­ODã®§§XoP¹-\Ì\Ç\Ì\în¢\âp\İDdº·\í«W3´¶cY{1öH[šr\İGn\'\'b-Úµ\"Ú´\È\ÜCw0Weü\ï\È;q1¡†òe6œ#\Æñ´‘\Îğ`\Ëh1¹\Äv\ât¼„ˆ1†\0Z\ßój\Éc\ÄøÛ#X:Ë¼“óòƒxaöa&\éİ°ˆ·ñ\ì6\Úa§[˜-–¤ \×~u~Ã¶x\Í;$¬\ê#\ÛY\Şa“x[p,CSo$¸<g–„°òı-İÑ¦5ò\\|Kfh¼ú5‚bOeò/ö\à$À›Ì–\Úø\ãD=-ü9&2&¯–·‹V¡q1\ÛAñ\Î@¼Ã£\ãv\í\ä_{y|-Dv\Ô4È \ãpL§\ÛXe·€µ\ì/\Ì5jÕ©\ìw	\é\0k\áŒ?©X!–g&\ØøLooØŒ\êI0Zİ¦[q8}ÀCY#‘-“­\Ë\í»B$‰œ™e\Üa\ÛV°ñ\Ä\äp\Û\ç±$\à\îY\È|‘ñÄº·n\Ü2û’Û#³1\r\å™òw)ğò\î\Ôö\"c˜\Ö\ÌÁğf\ëkS“¿?“Õ¶Hn\æ|u8y\Ç\Ñğ˜\İûô}\Æ\åvyø\êbc\áöÕ¨ş\"\ëmk]˜|ùŸ†;ğü—X\"\æyÿ\Ä\0\'\0\0\0\0\0\0!1AQaq‘¡±Á\Ñğ\áñ ÿ\Ú\0\0?E-Á(¦YVS\ËüW\Ã\éF\à‘+7D]C¡[Š!#ªqs¸2£\r0¤º¥ú\ZO1n1rmXP³2jP=Á‰$H\"K8\Ô\Ã3\n—ø °\à‰gÁ\è˜òùŸ\'ú\Ì;g\å{\Ørô´Áöaùzr£ªW)%Y{”á˜–\0ˆs0\ÔpN˜j©S\Z½‹yq\Ôy²\ßÄ¶%…§\Ä:\ÖL‘2g†7\ÄW¶¥¢bH†3|\ÅCj’ù˜\ä¨8„*\rp\Ük\Ì|¿‡	Nˆ,Šk\é]\Ù*$H‘\"DŸF›!±•+\ã›\é\Ó\ï>;ö–yÁ$¾\\\ç\Ù³\æC\è²\Äğ~\"Ÿ¹{!•“\æ\"a?%\Å_JÔ¬š—7ö…ª‚ İ¬€›Ç¨!±„mb\ëˆÃR\İ\İûŠ^%\åûtoQX™\ê^3¿\Ü.™o1šb_\Ì^\çcˆ‰\Üs_ÂŸ$H‘??Œ`\Ã\r\Í\ÙxrúŸz}á¾³¿„>]ÄŒ0W´]\àHr@¯\ÔüL\Ü\Ì\Ãú‘\r2Jdm\êb Kr0 ‚‡q…\Ó\0\Ói¶P Åˆ.ıe¥\Ïs‘\né›œ\Z¶?”Ÿ7)\Ùõ…0.\à·õ\" {|G\Éô–pÓ„¾X¼¯ğ\î->%DÈ†¢ŸR?s\àBZi®\âÜ²3he‰Q\Ê1bñ#™PJ‰LÆ\ÔÁP\Ü\Õ:r+©j\Ñù†\Ìø|„şst úL5\çı¥Áü,ş	ºg\è˜{XVVPu;–!şƒP±U¸‡\ÚŒJ\Z)…\çTEN¿\ä¨\èh®9¨¶_;Š6%\ÍFü²\ÔI\Ûø=\Ø\ÍcGq·?À¯ƒ,¶qº SK¿\áe–0T^à´‘\Øf6c5¼\r¥D‰\áP{ƒ\n}K\0=¿\Ì\×Eb—\r·\×\êy•&\rÍ¾\Ä$¯ª\Ï\Ì4ü¨˜ŸR\Ç\×\æŸ\èÚ™9\Òå£–7\æ9M£ubU=\Ê\Ú\Ì\0~¢‰n‹l…¬¤±6r\ê ¥¸‚ªR¦j¤œ=2œk|\Ä\Ç\ÚDå¯¶ Â”>\Ê?G@gÁP/ÈŠ–ıP\ä}ùzµ\Ğe;–\æµ\r1:¸ÑŠ–ş\å\Ìf‡½7\Şdü\"LDƒø–Rœ0\Ø\ÌO¨**‘\Úş!PóüÁsüÄ³\×=``dùı ´ê£¯h—ñ\rüo\Ş]şLMó9¹l:\ÜÁQÀ\Û\æ\rs2M_I-®8B-¶7ˆ–ù€šò\"ù‹¸E)š¹Iƒ\âkMP\ß\Èù–qf(~²\Ó*Y^\Âi·\Æo«D3BÁ˜õ\rı™…W’Y\Ê{†i\â4*\ãii\ïh;YÂ¥½KQ¥‡Ü–\0[?‰g—^£\Ã4yƒ\Õş/\ÍYü˜\Z_\î%˜\Ç\ÚğSüˆi¼¦‡‰Ÿ ı\ç\Ò\Ñ\å2ƒE\æ6F\Î&Æ²\ÄúLWwUÀ¦\r9—¥30u§A,ª~c€¦dºˆ\Ñ÷l)Uİ“\Zî£’\ÌL`3F\×kl¯É‹~c_ø˜õ3p0x\Z_I€?!\0pù˜3HeóHg\è!\Ë\ìk\Ï\æómÂ‡\Ñ\0c\é@S¨–Ù–~“ ¢œ\n\Öö):¯ù«r3 *’h;‰3&´2S^‡ø\\3+hÄœ†\nswğ\æ\î\ÌX«\ê`‰s™R½L¯„pUœ†R¦ú,˜\'%J½·\æ §\ÄH	Í ü„Q\rúa,K6\Êø†^>—tù›\Üù\Ö`¾&¡ñEğÁ.Ÿh!\0-úğ\\\Úx‰µhù!eWn˜KÕ‘Xª\Z¦Rl@ùBj]t¸M€2¦¿mW¨\Ëm„°\Õ*-\ÕH³\İJ@-²\à­\"Z¼1móˆ¾5	ƒ¸11[ş ?dKw„r«¬¿3Õƒ\ï\r”ÿ\0©\Ô\ÇÀL¹V{²\Ïğ\ßñ3ù¦—ñVkŒnln-™b\î2XEmCU\ãq\Ì\0I§\Ê\åÂ¨yy&\ä¼S\0\n\Çs…ø„\ÖM\\ r\ÔzB\Z1uQ\Ç\ã7\Äk\Ô* e6\ámVq u¸\Z¸„óZAqD>n°ş¥ñ8	t\ZhKy#‡\È+gumF®.¢µyƒ\Ğf\Ï\İU²„²\Æp^–#p@V!›\Úm\ÕK5\Ş_v\à\éF\æÖ¦¤¨hô\æJ´@ú\Ço•‡\ì·‘IYm‘U\Ës#\ãüD	\Íş&Oü\Üi\Ös)\áû\Ã~g3|¯\Ä9<\"\Å?\ÖÏ«>ó\ì&\Ïhl.ªµ\Ü€W\ßø\Ö\â\Ú\Â9	†À²ˆ¸a¬U7	rü‘\àa”T§¼Ê‡)GR\Ø-\æˆHV±Ğr\é\ĞÎ˜\"Š®\Ü\"j8‰³0\Ë\Üdh\"4¸Wº¡q\Ì[”z±3yµ…¥^\ê.R>f3Ã²^\ÂYµ\Ô\ËÖ¸@*Sn\à2®S\Ì\ÊQ\ç¸tò\Ô\ì6\Şx\åN±ê¡²–«\Ã_˜ä‚€C\Ö%0\à·Û£/À¬®\×\Ä\r/”–\Ø\æ(8^‚V”ûö^\Ş.\×\Ö€%yF\Æñš_Ÿ3\r‡†c\ç\'»‡\Ş9‚yÁ—£(ö‚‡Š`¼[sE\áA2u(,vnS°~bY:D\Éx€¾+\Ì6~“os&\İTñ(dõ~\à»za÷1\ÈR\Ì\Ê%e¹K”L{„³9eY\Úø„@r\à‚…njT¿¨è¨“xa†÷.•Å’¾PŒ\à\ÜbS¶\à¹\ĞdX |\â4ˆ<w/Á]St%úÀA·h¼7•d\0š	[C(x•\ãc”¸\Æ\ÇB\0´J}}—sE.‚’¡±J™¯R\ÕSb/\Ò+a\æ\Ù\ê2\è‹ÑtO»²\0\ËQ²ß‰Ç¦P\Õx1\Ñÿ\0˜¹c\Ø\Ëx\"Y~\Ù“\ÂA’p?2!ú•\í?~ı\ã§\Ô\Ô\î+h±	b†\â.ùø•Gq\Ò.e\"3\n+\Ö3d\ÆC|õVx”\Zÿ\0\\K\ÎI÷ŠP!Ë˜¼  \ê¥ 6\ß\â:\Øynbª¸©C›‹^V1\ÄiB\Æ)¶YytDqZiRq\Ğ\ÅøK\0û\Ó@›³*W>	ˆi¶š™|!\êTx¨\í\æ\âàµˆ8%¬\Ã\ÛÔ¦f\åeeKÔªª)Áü\ÍK}cp\Ë\Æ\Ç\æ*\Ö9DF”t+ÿ\0!Ÿpü\ÊÊ§ƒP\ãªõ\Ğş\à–\Ş=D9oMñˆ­®¼,\Çıµ,Ió!¯6}¦~\Ä\n\ÖQH\á&¿h\ë\ÖNW\ÄT\å\ê\Z®\Ì!Á9ÀA°%\Å`›\â7p‰v™\ÒmüÀ§A·,T.N=A\îcª]~\ĞT=R\Z•£¹‡4D\Î#µ—¢\áSÈ«\Â\Æ\Ïx†Vd¸\Ã&”\İJ¡Àå†½F|5Ô›\í-3»V®Q5«V\Ôl[¯Bb\àt%¬”³›Œ\ÈnG.¡T@`,\êU$¼IIfê ½\×Qú/9”dûŒk\"K%„\ÅN\0\"*\ê\0R³‹\äğ\Ç}+\Ë~\åD“gú–#_=~ª4rÆŸ”Àv\×F¿Q•[¸8wOó\Z§·\æ:ò‡ğ\Í¨zšÑŠw\à\Â\ës\ÎS&³Î€¢e_,8o¸•-4‰£\Íb (­7ˆ\Ğ\n?ìŠ¢lŠ•lù>\î]Z_D¬³qf ‹q	³&w	R¨€¬\ä.^¾ ›`\ßŒ’\âlpY®b«\æb¬]Šd%O«\Üx•r„\Ûs—£¸[UÏ˜®»•Q3„æ£ˆ5Rˆ;[,­\Ü\Â\Ö6f\Z5\Ñ\Ô<\É÷”±vB¬j–3–»J\â7|Nû˜o	‡™GŸø \É{ı ß¡ş`úŸ”«\ÖMGˆü™£¸3°•ü¨«\ÄU ÙŠŠF\Ñ\Õ\ÆTpøjó†€²Y€»ıE65™¬ÿ\0$¨\'Œ@ˆ%By\Õó\n2¥2; a(òÒŸ‡-\ä\ÅN\nûÌ®ª\Æ\×l°\à¨gB@?I‹\Ê\á‘º¶0±N&TVCRôV\Üzœ<ıÕ‚^a,²¬aP|ˆñ(­•€?hB¥z>\ÑÀ½DK\ì\ân‹ Z\íşú\Ä%°i;:ş¢µ¹¿ñ,O¦•@p\×~%÷Ø‚µÿ\01Ÿ”§¦/‚$õ6Mg\Ä\Ú\ÇğY2 ‚%ø‚XÆ˜ó.|“3|Fl\Üwe{†\æ\Z\Øøš\Ú#\Õ)K\0jY\æ\Îm™R%Z\\üÀ\ÒıE\ìß‚¦f,·˜]ƒ\ë5×»˜ ¯\Õ\Â8UùŒ<\ÜF±3E˜\ÃPLQ€Şµšªñ0 Ö¥Œk†Ó˜r\ÄqXƒ“\Ä\\W\Ì\Ê_Ç»\ë`=ªud5!H\îYZ|y—9\ï\æ9}He¢&ÈŠ¬õ‚b÷ùrF/\ÉûÌùˆñ{A]yüL\'¨¬=L·ğ}¹q¸ü$ºvG¨–\Ñ\r\âeÏˆ\Z\ÜVgH\\•l!T\ã¸n\ê5v½ŒŞ½bõ/M\á1QòM4Å´1ÁŸˆ…\ÆV	g3*œ˜\ÆRnµS1d”/©R]©\æ\"”\\¹AºyÀÁ\Ù\î4G@\Ê%F·®	Y\ÔË‚\0K\Üğ™f0Ãœ\æ\ÉÓ©A\Ô\n)\Ì]U¤³\Ò)‡\Şp\ÍA¦\\f]Ç¼\ÖvfÚ³a¼B<B€tõ^~b\ÔzFX•v\'M“6Œ\É>lıGO\Óû‹\'‚a\â\Z\"ñI¥š.Å¹Y—MÀ5\á‡tß¨\Õû%\n\ë3±hš)A\"\ĞUZn=ğÀ¸gºe\æ\å\Õ\Âgø¬] 5Œ\\Ta®ˆº·`õk\ÖrÊ˜*\ã¨zVf˜	ƒ»vl\ÔT\ä.ú€lû\ã=a’\Ùb\è˜Îª‚8\ê%-2‚‰\ÅŒ®q\ÛH·[\Ûş*¬jbjª¥>’óšQì”\ì]Ç²‹ÁW\Ö!\0\ãûÿ\0ˆ\Ûß¸ck†„X\Ü\Ğ~#£7C\rÿ\0¶¢¯hûÌ­\è”‘û\Í\è<AõŸ\à\Ò,.`×˜)—I\Ö?¡uV\Ì™Ë˜=i¢©ˆo\r\í{‚\Ğ¬\Z!\ÄMu‘+[“\âV‘\á¬£\Ôò\'¨’\ÄN\á0‹•MGvCOQ¬W\Ş+	gQªª\Ó\à\ÑÍœÂ’R´	Ò¼T\Í>MÍ›Ñ \â\\\Ó\á˜«\î\\-\Ù*‹†\à	\æPW¨f³£˜\Å&§9&õ\rM%iP\ß\"2\0\ØÎ–û\Ëw\è>•³d.¦Ps·˜…|à¯™˜Cã¸ª¾L\İrW~f~´«\Ğ`}‘W–,v‹0–Ç´ª]±\ã‰Á$t\×BY~_\É*œ6®3•°Z\ÊE¿\Z(\Ğ@\'¨\ä\Ë]Gp8,\á•O)ÀR˜*w7TP´)LL°\Ò8º¦Z„\0¯—u›C–¾\ä\É5øœ‚\â\n^<\ÂA(®s&V\êV675œ¸º…\Üè™ŒUO80\Ü\â\æ\Ì .ª\Ãû‰Q›R´¿ RSX6$\Ø@l‚/Àd\ã©b¥”x¸\é†\è¨Ï”Kùıi‚\ì±XõT\åCiÿ\0\Â\àÁ¦GƒI\Â3wlt	bQ^ad1V¦ÁlNa-T4\Ã%l˜\Èf\ægu³¤q\ÚoL°\"\ÛAÜ»™Ïƒ\æ5Jx\å.(‰/œC˜¥\ß\Ò</Q“C\ì\å‰m¼pGoÀ¼Ş ‚\Ç\n\í)ù\İ+\è—\ç\é(\ÈD«\Ü\ÅnV\àP\Ş!\rH\î—e¯\ï~b+	L\Z\â3‰”	z”5Éª„©Šµ‹‰4T’\Ë\Ï\'1\İ\ŞWŒ±~ñ£S‹¨\"ŠÀ¯\"F\ë€\İ\Ç\íc\ê¦i\ã¤¿ˆqõ1(1÷¦Ÿ\Ëj-\Ù\Ù,P\ê­/2\È\0®eV\äg¬Ì’2\Åú¸/ÎŒK\Ûy%óõI\ÌiY‚Œ\îXm\ÃK5nN.*7?,6³ó\İ\ä…M~\âd«…°J¶»‚¨„õ\Õ&Q³T\Æh­\"\0\Ò,•\ÌÀfm‘uƒ–B†ö\á•xJ\ÔrñZ1‹\Ö%\ÌÌ¶ñj:\Z~°”v~\à·[[!4\êD\ÜKõ!¿RÃ–¦8\áq+gVS\é(Å¢{ÿ\0“)){ğ‘_ µ‰q\å\Òú`8\î\r¸¸\ëşEgC\Åc¦f¼f4p\â\Í\á>g/T\Ã\Òÿ\0ò†\ãü.q2Ÿ¢U±\Éø%ó}y@\âÓX*ƒ\ÂV.¯‘\î\Óë¹Œ›>c[\È)@;¨£Š«ûœáŸ˜\ãh\' «…\Ã\Ì\Ã;†\ÊX\à+Ü¦¶Ü°¡J<»‡N\à\ßDÓŠ¬GöÊ¢ßƒ/öƒg’5)\ß(AŸRˆ†¹€P|K›C!e\Ò?ˆ0y7\êR!øl~‘•Q9\"€æ’³,ú6=Í£\Ìó\n\Ùp»\0}`\ç <-¸² 6\n}’\ëh\âô˜„B¨÷ˆŠ†ó”QQöˆº\Ğ\"Ö±øŠ9I³“\Ä]º–»\Ó1‘\\\n«\å\Åô¢\Ñ\æ~IQ¢?Á*Ø•hw\r¸\ËNeEL\æYr#\ë8†\Öb²mÔ©””,,µ–²\Zä‰¢f]\ÅA\Î9&v\ÕBª\ãÚ±˜\Ğp€¼Kõô!iø!3³£¼F*\Ë9)\Ó3,=\Å\Zq–D\Ö\å\"/2€¥L\r\Ç(Z\ã›(¥][?IAI\ä•P\Ñ\É=0\Z¯dÃ¶¿«,2}¡\Z+iş\nG-\×¯34¢·eß»\ÔÜ\ìunŒW\ì\åójUS\ÍJ bõ±\Ì®\ßd¦F›/³O\âV\ëºUcÿ\0‘]˜¿\Ú`\ÎN—”L½Sû™{%yfTJ‡¹† ÷È¢–(G\ÎÙš«Tbª\Ê\Ûx\Ë\æ^¿½³ğ33²1(ƒÁ`O\Ì?\'´d“\æu}-z581m„ü\'µ}`‰\Ñ]·‰½€ù<\ÍWpš\É\Û\âby–\áU\Ò5\ZÃ™’h–*0\Ö<L”+´r1E·5(Caj\Õy¨\Í7)¢ü\Ä\Ê\Ór½ˆ\è³S\ç\Ìu(QbR·\ã¸e­P\æVô\é‹ø„—ZT$kk\î°UK\ZYŒbùÀ>Ğ—J|“D ptŸñ”6dø\Ü8¨2õC\à”JYóO£eÎ§1\Ä¯şöm.\Êuy\î5\Ä\ÕbVÁ\ÅbÎ²?¨©\äM\ç}EQ±\ê â¦½J0\ç)+f9©<¨r\î5aw²Pc6f\0CKº\êÀ\×!<ñˆ(—\Ø\êc\Ö\ï`‡Y¨,,#Lcƒh\î*L±pkˆ[O1\ìñ*)¥F8r¨J—\ä©k®§\'\Ô\Ì\ä€Áu°tù–ğ±÷÷øq\âf—7Š¨\'*\Ì=¾@Ye²À\rR-”\ÑcşĞ‚\Ö_1nMP}¥\Òû\Ëhf\îQ`¤_³\ÍG\\\Ê\\eU]D\ŞE]»&^¹öHq\Íş\áA¬Å”E\Åq…O”-\ì\Æ\ä\æÓ…–•7\â\0f\àqZŒ™¸\áI\ÑK0Ó¨Füj0\0\Ş1\ÄieA\Ã\Ëõ”¥µR^\Â.X¢!€(¸r–$5î¯‚kvK\Ê\×ñf-\æ\ê!\Ä\âm\ç\Ô\Í\Z\Ü\Ä)dQ\Ù\n¥\î3¯1ğÁXy”ŠHrK\\…ú–®ª¡en\ÄorñmB\rş\à\éŒ‰Qi²*Œ–\"Õ®&C†O£,0Aq\ç˜\rf\î=ú±ˆ:\"ò¥…±ó6-@€9\êH©<eBu0f†dRxµ	DÉ À\È\ãqbF\î\åŒ*»ş¨©Áo™vpÜ©B>xŒœ¥\×wk‰*i\n¤š‰-p\Ä¥J#=\×Ô¨\Z\Ë m·\â\×¥ [T»\Ä|7m„\Ü\nº\Ë/úK‚µó¸6â“’j±h\Ê!_d­÷µ=K \æj±]ÀG-L•0\Úh#Cw>o\Ò&Œ\Êÿ\0±0±\àF\Şw\ÌY‰j\Ú_8e¡.\Òal_L\Í(¨µ\İDaŒ™T\Õ\İ™[1\íH]MŸ«\ÍH—Ä°\n\"Q˜\\g2\é\Û\ÍJ±öó/Z¶s.\Ã3ñ\n#j\Ò\êøP\æ\r\ïü#q³w\Ö[6U}aQ0\ÔT‡™ET¨®\ÇLLÔ RL9ó5)‡Qê´²ËŒõ\î\Ä\âZ‘™@º3&ş%\0°‚aw»‚w\ì/q]ë¬\á¤Zù\"8G\"A(5¶£:‰….d7\ÜqmòD‘£Š„K-\î\"\Ü\ÛÌ¯d¨\ÄR\0	\ìVf	´¨ùuM•R]<Ÿ²\0šW˜J˜_h”¥m^a°»72§³Ì±¶\Ç\\\ËYH\Û\ì‚³\ÂXJ\ÄÇ¬\'\ØE“\Â$c‚\âJ°	±\Ú2ZÁœ\ê+\ÌFn‡D\\P7 \Êqrq¾\Ş\ryˆ¶\ëPk¸\Şc¿Pˆ\Ö÷Œ\Ã¥!\r¯\â;² ¸bQ\à¾\Æ	EüŒTÀ\äµE~\ÍÒ‹Z¬¶Yªr•l>ÄµVvš\Ø:3\É\ê(–\\±/^b^™c\Ô[¼W\ÆkZ•D0R\0mQÉœ\å\Ø\\\Ì\ZY2x\Æe†®eÚºess[fw’UjÂ€¾\Ö¢¬Ì¡¢½\Ü\r­óR¢ÁG¡¸‚\â£r\Ü\Î)G+úıD²Í¯\Ä\İP®(\Ïİ‚†\Ö\Ù|B°c\\\ZVÕ½K(ó0\åEgª›§OÌ w	=K¹‚´ğ\Ë	Š®\×ò@„\ëb—\ê‡`‚$¡\Ô@&Ä²2CÔ¶ÀL–ø˜4{X>Š\å-R\æ\Ê½\0=w/¡«ı\Â¾.l\ê8\Èb­n8õ\Ù\\Ñ¯*^Ù­\r‹Í²ôqƒ\ë@\Ö#t[ˆR™/p©§©P+y•\İL¨TVö1-D\Õ\íå’LV…\Ç~\æo\ÜP \äF™¶P\Ä8ºûE¿!U¦6¯R¢\Å\Í×¼OJ\0\ÆeÁdR¬ U‚Í¨3(#\')¹Ve2o¹sh*ø €F\Õ\Ó	wÿ\0L_J[/39½M$[¨\ÔXAd¡\Ôw·šbd[\È\'\ÄpC½\Ò\Ûb)”…¹÷Š«\Ô\çsq¦È \ã1\Şò\à\"!\â#İ±q¨µ®zWğù«f‰„º6u-\'‡*%K¦oƒ3ÿ\0©ÿ\0\" ]Q†k^\Ùu«W\â\àd‡EJHh\0\äˆg\Èx¤n\ãò0ñ7\Ä&MA·Œı˜˜\Èıf<2\Ç,ÀlÚ‘\àg+/OkYZ#\Ö,a,½ª3Q\Ë\Øõ÷™–*ñ-\ÃÜ®B\ÎÏ¿\Ä)[«\r@]\ršñzù\×Ä´ˆ¨=µq“LbøªÎ\Ó\'\\ºƒ¤4ø\è~ñ[x&¯pl°…\Â[aC@m`\å1r\Ù\îò˜«\Ş-1ˆ¸l¡\"ğ\Ö V\ÆBC’\ÃF‡ó\í/˜Û\ÌBô…±\Ékù_\Ü\"$7xuL^-G2\ä9†ª÷3IFñ†‹ó7a\à\î4kI®¥„òL\ã¨U{ Ş¦@&u–qmòiš$x¨o\Ä*R|5Y†\"4´~¤BTJH%\'19ˆÅ®]b¢.&;NVd™|Tˆ\Ë/¹ı\Â[y-\ç\Ò\äwô1Z¾‹qÀóÿ\0fz°¸¿ ¬e\nšÿ\0nbEK‚ˆ¼ó¾fÿ\0}-Ã¡FòEuı¡\Ë\Ç\äıhÜ‰P\åµÜ¸‚œdxfÚrğ•W0?\çQ;wm<ñÁ–\å–c|Fùü§3*šC®C \È\Ë\í0#U-š\à€\Í\Ç\Ô*8:¨ÿ\0¶s|’\ÍuöMJ<ù8\áP~\Òø€Àü@BñX`úeMLƒ\æg9‘\éÌ¦R%m¾¬:	÷–¨Æ¥õ_kˆ^\î\à\Í\Ì,\Æ	ë˜ƒHõ˜¡	ˆ5w.%Œ+\Ş7~%²‡–\0h€ƒ\ÅÚ°õ\Û\ê%\ì]şe\Ş\njs|\Åp¬˜û·…\èıÌ\n=¥–3WWpYp8<B0¼\î{€F‡—Qp#¯\Ç\ŞRŸ£‡,‡e\î;O\'ñüC© +2\à\Ú\É\0šø´\ÌH?¢\å[\r»*77Âˆ»ó\ÆøS\íb…q,Z	™l\ÂÈº—5\æšù‡¦\Ğ\åd¼µ³w%ñºØŸ\Â=büÿ\0p\Ô?\ÄcÒ¨£\0D\'e<“ñ0B}\'ó>óU˜•\á&J£ww\êw—¾c{°k\ë¶?˜AH@\ÄøE	G¹še”(C]H\äT{•\ç\Ìhb>\ÙQ-À\ÊB¸\Ü5£Šr\ë\â4m_õN¸€.X\Åwm&²N4)\çı\Ät\ÅÒ­\Ór-•µW÷†^@\ê«şÇ“m\Ü\Z!¤İ’º\ÌÁ²\Ô@Y·xUpk9U\î*µÁ¾{–z\"ppı` ñN\nÿ\0sN\èwM‘\Ú\íıP\\ş|9ÄµT>ò¬b†H¾^‰m\Ø\àC-‹B6S\ã‰‹\æo\ÈS\Ö2(šR_™[ğˆ?\0ˆ‘¹Ã·\Ş\"nu/…H\'%\îğw?HÇ£¥ğ¿Ô·µÿ\0\Ã\å!äŠŠ¬ºó-\Õ4×•Á\ê=G¡o˜\ÈÎš~\åúñ\n\'R¶0!©g\" ©J\Ä*³\"Œ\Ì\Èg˜Ñ»–&k\Ô\Ç3\Ï-µh†Àûø›ü²\æ¨\ÃP‰É»\Ï\Ú Š°]?HZ‚\Ü`ö\ËFöY¹h¬û¿slUô\áH£A\ã·5Wtš~s\rq	\æPT(\ë;\r­e ˜Ã¼{û@°\nY^ óLtÜ£\ÆÅ»\ê+ô!·\r?¹Dµ\È!‹]\Ä„9xF,ø@*2ğD‹\Î0CŠs\n\Õÿ\0…WhólV\å`4\ÓL¥*® 7w4b\Æ@\î\à9i\à`†)ùNAx\Ë\å}bt\Ïq¥›P3…\î\ì¡>\Çh\ÍÛ¥\Ä6\Ül\ãø›µĞ­(‰2ú:ŒJ¸ cjƒ\ë\âg˜[\ÌC¡oJ0C\Z”Œ\âñ·@-‰´Š^eJ\n.ƒ\Ì@¶\ÉM˜İ…\ß\àŠ\ÆaYl–L±j\İ	ÿ\0 l¥\á\rJ\ï?¨¸=Œ:UŸ²\Ã(Ã“$™,\Ç\ÌaQÉ‰J\Ë\"ô%‘[˜\à:\Ì\r£p¬q=\ínñ~\â\\/r«üOª°ˆš\êX\\¹AT\ê)•CY¼˜\î7‰Hh>y.\ê^\Æ\Ãd¶ó/5+š›ó\Z6\Ô\ã?R	\îX\ì¿))3g\Æf8}(C¯\ì™\ï\ä³…®\ÙJÓ”yß·\à„ gG‚\"\Îå¹Š\ãeô‰\ë„!°B»»x•Ë¸4…lÄ´J\ÔJ˜p\Ä@·p%®Ú±D\n\Ö\ê—\İR\×\Û,°ôW•ˆ–¤[×ˆÅ‹U¯¥®5ód\İq\î2JÆ Á\Ì}ô¨d¼LFKôˆ\'f‚òª?sÁu·ıqg$‡š$LûF“E£«\áñ’&™`ë¯¼\\M˜\ÃcT_\Ü\'¦4\ä~¿¨µ¡;}7:aú\íz2\Ê\á†\ê(.¶ù€(¯\\¹2J–,PdL\Ñg°j\àmŠFea9s¢À¾\îTsôş\Ğù|0o„¡\çş\"\îGû\ÜlƒCR”_\ÖX#ir³Rs¨÷©@\Ó üw0+7\Ë\í9\è\î&t0‹\\°ì²‰@V!·98+C\í€áŒ´ı\ØboQT¼·˜\ä/QB\Ô\í«~ªdè‰½½JmLı\ß\Ö%¡j­­x‘S>b7K/¥ƒ¼ı\æ…üD‚£\á?¨JÚ„\ÉË¯\Ü\Æv£•µJm\Úû\Ãa‘m\ÍSRš-UN\Ùkô£z½KpP<\Â)˜¿U?\Ù\\Œ z™h«?0\Êp,A(°\ÛÁ€³E\êõCL\×G\Ö\0š\ëş\æ\í\Ê\Ì\ä»Äµ­7Iz@§Q!Œ\ì\Ü@|\é26ß˜\å\ÄC–Ş‹aA+=\\.\ßÍ–ºo>\ÆĞ¥\n<\Ìqt\å\êQ\r¾3\n\ÇQ¿¬¾¹.\"B¹fG$ó\êS	u\nœ¬WıÀ\àøbA›…pˆl…3\Ú\Ñ,b^†t}±·\â\æX[sSšß¹vñ³KOX\"\ÒÄ¬­¾ M	@e}ù–\Ëv\\¿H\ÛÖ‚ñ\Û\Ó¸6\àO­q\'\0`¢„p\È\î\Ûı‰\Ñ/wşa-S±Y ¼]\r\Î8)û\ÜÀ“=w,-\èİ¿HRU\\EªRŸŒF\ŞQV\ÔF–‚»ûq¹\Êe\àx+‹w¯?¨m…s\æ¬¢(˜>#Í³Z‡\Äi ¢±\r\ãDºü+—¢\ÆG„\nXı\ÏN›Œ\ŞSq\İ\Ó$Q‘\ì\Şå‚’‚µ\æŒüa\\‡«a\ä‚\\ª2\î\Â0Óƒ\Z7\Ş\0\Ü+^\Ãw\â\ZŠ†V\Ö×™Q+.q.Â£H\æDZ-\Ú\ÇC¥—\à|\ÂÀ\ãL}!´O‹\Äÿ\0Ò€­J\î˜a¨ğC-~p\ÅXm1:“%ñ,úºÿ\0!‚‡\à{\æ\â-B\Øx:ù¯™\×C«À|T€\Ğ\İüW\Ä\ØX\Ô\ài\'ÁhõNbÀ\Ú-^ô} a³µÿ\0‘×¡O\Î¯º6o,+jT\Zc»¿\Ô=Fı_ù€j\nAõ\Ó3ªk·½\Ë]SG“”~\âgX˜˜·\Z“§ó…ºoP\Øk4\Zf\âyG\İ@€\í£ˆ\åYµn;.Õ·pğ¤.d5§Ë­y™c_LŒºE,5\êuÔ°õ¡],s/B¾60O)óıG‚\ßö0 A7™ƒA®±8¹.WWÄ¢\\ù‡—\ÄTpu0EŠ\0`²`\ÍQ[ 9e­³¡q&C…õ¸\\“š\Õ\î¥\ç™UªhX]x” \Æh¬ş‚âª¬\Ùş‚\å)×ƒ.=\ËH\á6ÿ\0\Ó2¢öÜ¶ÀiW•‡cn¤\Ñö™{`S\Ñÿ\0!\r-ò\ÑÍ’^À\ë[Q\Õ\Ä[ª@8\İşg<\ã\Ãp\r\Ä=«–(†\êÓŸ™FŠ\Zcl½¯…p&\á\æ\ËTÑ«Æ­—†<ª´9;+¯ı€‚\ÌT,bÖ¢—ª?3\ÏÅ˜\\9\â\ZYœ•‚¯;”öUbpPĞ \ß,\Ğô\Íó7J:‡Aô–¼Á£\ç\éıhwQ•{\ß\æ$$ »U¯\Ï\×Yw^±\é\Ü\Â\Ï\Z…u\Ì\Ê{&l¼x\"S)‰¼§3€mñ3€{] *+ÁhE\Ü…¤¬Ğ­^2\ßk¹n™Ì„TV¨)ª\ëı\êhcNo3„¢\è·S5Ø¥}\rş	Vš\İg3R©¬\Ü\Ø[ş\áU€¨\êÛ¯\Ô\äR°¿l¿HCYP\İ1’‹³W9\ÌhU\nX\î_·…\ËW	,\Æ~QBDi_¡\\·~˜\Z¡,/W/ò\è=‰€y\æ¦\Ì\ç\áYo\ß\Ìuv\Ã\ço\'\Ş_­Ey’ùøC9\\Md\ïse\Í0Q§¥‚xÔ €H¦€ÀG¡¨EF˜\äuD¬…pq\Ô?Ø\r|\Ô/\Ûñp4ZöÁ\äúÀ\à¼1²…²€5\\\Ô\å\Z\Ôq;\Şõ	XYv8&ö†Êºš)WŠ\\b[”Œ\Ù\Ø>’¼ }Gul\Öô\Ñ-X\Ï\ÄÔ»E\ËP6ƒ?p\Ä«,\Ú,g•c_‹ğXÀ\r\\o€\ÔR\æsñ	m·F»j\àHv¬\Ş\×\é-¡@\í\ï\è \ÓY\í ı]D\'\ï9„GşOó5Z!E\Î4˜!\à”<?ù1\æmkŒ\Ägi\î®YuÁo¹E¨8E5Z—j\ŞH”4l\ä¢E±ô¾¬—‚sı\Ó;\Ú#l\Ô{96B­[a\Z­ºˆ·œ\îK\r>\"[bÔ°1L Hµ\Ä\èAr·\â¬n > ¦I_{XF\ßD\Ï<º\Ã\Ú5WÀ\ß=\ËVNML7Œ\Ôó\00J‚ô\ÔD¸\Í\ÃJü\Ît·µd`¸÷ r¬Ô¾µğ¯«–†M\äş#\ÑKnóR¨ÁŒ\â\â\'\r”ıûfYW3´‚ßµ\"#aT\r\á\à^\ë t N±\0­XQp„R…#®?\ìF£0ƒ_*E\Ş\ÇwlšG\Ü6òÁ÷x ²´C·2i\Ôh¨òrË‰Ágs÷{p£ğ\êV³7l*{™—Ó§¹Mu¿§œt2]ÂŠv±\ÑûO´´Á|\Æ\Õª ò´m©R\Ùy\Z€²\å¸\ë\æ7%ŸB!\Ç\Ú$>’ü…¸úb\\1\à¢“ÁU\Í\î¦÷l©@\íB0‹\âˆ4\Ï)\Î\Èiº\âR›z%ù•…„4L\Äpb3\Â2¢\Û’¡ñ²|ú‰@tpuó\ÜÖ”.¢´lhñ\æ)n¦ı»˜ùykş²\Å\Öóˆ940{e–\\6b¯1`	d¿<\Â\ä§«ÿ\0².ªt[ıJ¨ea[\"f¥x6~£3E\ç-ş\à^Ò—fÁÊ‹\ÑÄµ…]³œı¾’•¨=wö…;_ªjQC^-ı1\Ê3\î¡x¶X:FQ|/\ë/†SŸ0Ú­1,\Ñ\æ\"1uÌ•…U\Ëk\"\ÊdBöTA±Æ¥\ÑPS d`ˆ•yœ…Ype\íU\Ü\Ã.¢R\Ô\Äp\ë¶\åòÊ¾bE¨\Ô\Í\ì¡\Ìeu\æ\Z\ÔMEª\àx\êTV=Ê–^h¹j§\"†\â¼GVS,A\ÄQÌ´\nº\Ä:\ÍVzA\ÅQ@\ìø\æ_Ó’\ã\ë\ÜF\è\Ê?ØŒ«ÀT³#.j2\Û{WD[\n®\È®x€ƒÈ·u“\ì\Åwk²X…a4m4]\êR—O-¦\Ü…±­­o÷_S¨-Cğ~e¸‰Ş¥\n¨¼\×ı‰bÕ™oy#\â\à6ê¡©è¿÷r\ß1\Ø=\Ó2A\Õø\Ä«\Ö+óÚ±\Îe@Ú“\Ø\Ä8Ş®<\ÆB\Ä\âU+x€®\Ó´\Úÿ\0¬÷ûM\ì\Ù\ÌŞŒ\nñ\0\0÷ˆƒ\ÈCV¢CUµ\è™cq\ç\Ë3Ì­.¢£3`\Ş4s3iª—Ó™²\ï\Íx¸\Ô\Ú`¹U}F–±ŠØ¹\ÜfŒË•K…\Î6\à\è\Ü\ÚA¯/¨@2«·ˆ\Ï{Vó÷‡\É4=2ñ˜\0¬Q“\Ë\nX\Ã`—97¸r<\Ü0¦Š·TS\Ä[\É)ò/ƒPÀl*®1G\î ò`\Çx+\éù–£`©\×q\nY\Â\é+\Õ9ÖŒGÒ€Û…Ÿ2²K£ş\éH\"­zõ\â¤\nÃ›«}`öÊ·\ì¹B\ä>ùş\âFŒuE\"\Â[\ëœ%ÿ\0sTp\Ş`\Z5g\Õzú\ÏD-¤–›%»—^vGA¸³\\cQ\Î)¤¡ö\\\Ês\Ô\ê-\Ôoº\Ã`Ì¨²k\Ì>xŒv\Ë57¨Er@–\ßÁ	nó*\ä8‰]lµ,rw—9€@nA\âf¢ƒ—\ãJTz÷\0m|\ê -G\ÏUŒ\n >¥¤¡_%DŠ\Ìó‚Ûµk£\é,°.D!©¼öüÁÙ¦\İ8Xˆ 1¼—÷ŒqrsFX9Qx\æ[dlõ¨JWˆ¾C3P\äYa|òJ—ú_ù\n–ps{>\Ğ\İTy\ÄH¡EŒ/\Ô0/Œ}û…8}ÿ\0\ìD¬\ç,m\Ø$\Ì6½\ì4ˆ\r\ÚşbX3?+2\ËÈšOóS\Û\é\Îø\Üj4G*[\éWQ<}Ayv¥N°ù©¬³Å±\nóENL‘\ÈBV’¢Ø•pw}Ä·!\r[ˆb\0{«\rnĞ¨\ï	Ü¤>G¹š­\ÅMnc™¹uî‹‹{%²Á•w\\GV\Åm¸\0ö\ï¹•jÒ‚<K\Ñö1Q°\Ø}(\Ğ&·‹üÅ¡²8\Úö\ÌQ*Uóˆ\"£à †­\æ\ßO\ÌEZ\Ë\Ûj¯ÿ\0e\Ó\íŸ2À@\Å\ãe”°¼\ço\êQÈ²µË‚)\ã„?ö1(•lön\r‚ŠO4\ï\ïµJ\İÑ¨Y[\Ï\àJ…Â’k‡\É=[\ã:¿\Ôòbÿ\0ß˜©•õ@Kò\0²!\Èı`u} ûQ¸Ç¢(\ÛP£9ù‚ƒoDP°TÌ¡C…¸Š[z‰`óüL˜—ó6 ›ˆQş:\È\æ%8•\r“#\â+ˆL™Ku‹¯ˆ\î™L½§	A¢}b\Ña©ş÷1*\Ş\ÇT\r»U‘ŒŒz \Ã%½A·ˆ5}\Åb°@;ÿ\0\ÊÌ€\Û[ùe$VYu\Âıb5,\ÛFU)“&I²—%‚\Äcbs›óy÷·«\å§ÙŠ¨¥Ò®X¾Xœ@¶\"§¹Z­y~\Ë;A^qr\Ìv\ê\Ì}Ï¼¥®\è\Ø?¬ıcÁ/¬\ÌD.RT¯©õƒ1¬\Ş*2­\Åş,\Ï<Ÿ±bÿ\0‚“@œ\åù¯\Ü\Ï&°?\êY^q\ÜË»O\Ö\"ÁÆ¦¿qƒùÁZRŠñ@÷,™š©ÁƒpKy\â¥\å	z,ú„	w/“q¶d†Ê¨-\\*9TÄ¹\à\ÇP\ãğ—+(‹A^\áÒ–•q:¯]²¬\æc´W\Ö`2m²v|Qky0\ìD<*!E?¿pQ\çh8²Ÿg\áV–Ü•ø rÜ£:€¢\åAkÄ§®7J¾\Ñ-¾0@v\ËoC(´\à–ø{„AŒ\Ç,	\Ê6\ëxı\Å`”	+KP\Z)Â‡÷%:gô\Ü\î\È\Æññˆ…y¸œİ´\×\î	^ƒV•`¾ñ\nA\\\Ìç¼¿†7±k\ï*µ\Å\â*),w3\ÆUSO‡ø(\Ø\Ï\Â1‹\r\æOTj\r>Ÿ\Ägv²cd\Ä\à–\Æ®P\Ş D\Ì8¸øÜ­ybV>&ü\á…\ËwkgR\Ø\Ïp#¡Xf$*ò@¶y!Šûr\Ê\Ş\îr…¼ji¹ù#‹\r5\ÔY†Ÿù^c„\Ó\Ù\0¸\ÉSf—?Hz\ÆôBû\ËEF¦—H2‚—\âıC@P\Ú\İ\ÌSˆl\ÉF¹GD\ÕO¨¹KoZ¸€S\Èx–\Şp\é\Ï\â0	IswEõ…‡\"\n&¹ƒ•8O¡4\Ü\×dµó›¿FQB\á_r,:£ñ5Sş\Ã{\ÔBù\İ\Ë%¶~³\ßğ:–/¸Ñ¸\â‹$’\İ\Ê\nyc¹¬S³^fGl:±™Z\Û8j`Aƒ\ÌGe\æX]ÀZXP»\å/Z\ÆKòs(2[G\ã®óF	´u,¾ô®\â+k«_\î¥#\âj¾\"\è\"è”µH\Ç(’\nyw=¤«¢*ª‹ic\àˆd<¹J\éë´®\\1¬º\è–\æ\ÛÂƒŠ•¥°~\Ò\Ç…«Šı°¢\à`Öğ¿öWu˜TŸ]Á1{\ïı\æ6„]å¨¤©U+¡ ¯/Pj\Ï\r¤Ç“\ÚúQÂ¨ıj\0VZ¢ş‰ú—ll±c}\Ä\È\ã£\ä–Xw1JšA)e\Â8\ê,IŠ¦<¨r\í{•İ‹n6\ì¡³ŒDº–\Ú`ar ¼O,¥º—¨°\Ü`¢\\¾79’\â¦÷C\î\Ì\0­Nƒ,²Ùµüq\ã-*®\é?·^e·¸–¡Ÿü\ìL—‹Wpi(·j(\Ò\ïr­‹iU¬.™¬nOs(U\ã\í\0…Q»¶P/)‚*\Ée›­Aˆ¡\Ûgı@r\n-¸QR\Ô\Ú(*öc\Õ(&\âQ…5‰B‚-Mø¿˜\äxvªŒ\Ãb\â\Ğ5q\àx\Ó\æŠŠ\rsˆ\ZğòV\Ú>8ş\äX/t~Œ(–\Æ\Ûm\áŸ\Ïıƒt\ØP~´Ve\Ø@¶\é˜ş\r\Ì¸‰6\Ê\ë8‚—¾\"ö•#q2(Ã¶§©uKŒ\Ú3\Ü \Í6¦\í•q‰^Í„[Î °\İYgd3œÁ4œÁVe†¨R­ù…wµõgŸ½ÿ\0\í{\\x\"E\ØøEf—ó\ëû*\Ç\Ó¥¾\ã•\åÿ\0\"¹ö\Ä\Zˆ¬@\Z\r0K­®d8~°\è^H÷\r8 ²¶w\"›.ª\n\0_`hf&1UMq§j\ê\ìc\ÕõŸ\è–®O\Ş\0 \ß\Ê~£)s4\Â|Œ£~.—A\âş•ñ5´=šT‚¶Y€¾s-\íP×ª…£@Ò¯*€Ö³@øb-¯+÷\"\ÃOõ9÷‰a¤§i.3c—˜BpC\Üc˜\"\ì‰4ƒ\ä!UĞ˜Ü¨º^f\ì\r°\Ñ\Éj§¸²ˆ\Z¸Heµ\Î@±sˆEÛœ\\².ùŠ¥\ìôJ€\Ô$­4J(E%C³‚™:ÿ\0\\r»Cı\ÌX¹mû…\æ<³‰£›<{”\Ã_3¨R\çŸùPk+°÷¬y—2»*úA[¼ıe®±ú‰QW\Ñ\Ø‰J—(fX®HY€šh\ßaŸ\Ü\ÈwrøÄ²\ĞP~ñÁ€2\r\Ä\Z ûo\å¹W³Uú\\!3ópZ–L\n †r\îƒ\ÛHûL½ß…G`z?	\Õğ\æUsµ\íñ·ş\ÆE„˜\à3.\è`Ã†]D 8crDS¨Ï¶†\îx°(Üº†x¹‡1Eª\Ü\Zu˜\Ñ\ÏeqÓ°CŠô;aã¨Šñƒ\â4J!ª”ouò\Ã VƒÁ1‚‹\Ï\Öeµ\Ğ_\Ä,?\İKº÷1Y‚Ú¨1óã¸©£’¼f)EË¦K³\å˜3\É\Ù\Ó\Ô|¿\ê‚aÁ/\Æ\åWº\'&·jc\ÓQD\ï˜øiŠEe_X„D°À}T¶š^sQñ\\©\ê\ëú˜Œ\İw˜¥Z÷7K‹ôşf47‘ÿ\0\Ù@²©x~eC¸{4n;\í\Ê¦\âÀôhA\àOó\ë\çòb‚c\Ä\Ë]§„€S~\ĞR\ëû1\Ü\r°\Ô\ÍaV›\Üq\Êk˜\Ş\"¹u\Ë*ˆ¥rÅ§Ì¯1c†•”´©ST¨*²Lm»52B¼!•X\â\Ùa.øóE[4có!kñ!\rÁ£\ëœ\ê;¶³ø‚¾Ÿ©º£¶¡\Ë\â\Zú2½J™¢\à9uÄ»3ƒ˜;‚\0\Â/~_˜@´\0ªñY›\ÔU‡\ÖP\Ûe{—O—\İ\äO \nô!`Vz¨ø¬X:\ËıF;³#º\Ôx\"\Ñ[ô\Âí”¾H-W‘/¾`\Ì\Ó\éÿ\0au“™ô–\à0\Æÿ\0\æ&¢ºA\Ã\éªJÿ\0)z¾\Ì\Z3_ö>\ÕWwQ^]\Í#iûD\re7Á	j$F‘Œ([U3*¯¶\r2˜\Å\'„ª]}beˆ”W;š¯”0T°²tGœg˜&¾bSp<·²„É¼K¹™\'Zñ§Œ_¸H\ì¶\Øñ˜#…X®#Le\ç\Û8¾w÷Œ”ù©šıF˜÷üRv™”k\ÄÄ–d®¡\0f‰\à¶šU\à¦\"Á•Gz`1\î\ËıM€\Î’*J¶ª\ë§q\ÚûIù\"¶u\Ì\Ç	GÔƒB*\éùšm­«\áhÈ·\èÀ)Jx˜\Õy°‹\ä37ƒD\ß\Öiô3Ğú_¼\ä8WñO&ş–{ÿ\0‘%5¯\ê\\QœA¾ºû™«Qµ1\æ[\\ ¹\â\×1$\ßH«¥‰R«¸i\ÄM4LÙ„\ÂVeŒZ+u† M•zŸ•ˆ€ZºŒQòK\r*û‹šY.\á\ÒYy#\Z\Ç\à˜¡\Ñú”\0\ç\é\Ğ*ªG¥5Ã¯û2¯OÚ¥xô\\K[ó4‹\ry€P¸1Ô±v²‰ZQ\å\æ@RŸ¥E¬öúX!oIZ4\íºˆp\Óı\æ\æO\Ã\í_¶±¹@„g\ãû—#÷?0²™\Ì:¦Xi¦‚¼THK\Â\Ó4%^óˆŠƒ\İb\Z…	ZD¿\İ3µ”¸ö+§¿¸”Ã£òIŠ\Å\ØWŒÉ›Á55Y†#‡÷—r(\Ä‡2¬¦#’¡oš‰-\ßql.»˜\ÊFMC!\Ä*\Å\Ñx[©€>¸	¯\"‡R\Å\'”EE<Å€\ãÃP÷¸\ä=[õ‰\Èi£\Ë3 \İ\Ó9}bó\æ\æ*­®~ ğM¾Xù®\é=ÃrGl\"\Ñ\åÿ\0\ÉsÂ®œGoª>Ğ½‚‹·\â#{@§±Ô¬Zhş>ñ$\í_T\î\r¼\ë]}l‘	\'²7W£ÆŸ»*$´\ä\Äl§s)\×nñ8{T\r”ŒnèŠƒ²\á§\İ;\×q’€ğ[\ï¬—ö€\Í]\ë2ø™*a\İ\ë	\ÂT©`ÇŸ\à\Ø1\Í\ÙQQ\Ã13¾\à\Ñ[OĞ_\ÒûnU	f7™\Şx\îR\ÖeeG\Ö]»\ÛU˜*§9\ÄÌƒ³SMŒc´ğÅœº\íg©fx\ß\ŞU4v\Ê\Æøƒ\îfŸ5e#nı@XxOQ%X´Ç²\"\Û\ÆQ\ÃÅ¿X\èÕµùM\Õop¦\Îß¼µUñ+™ŠÄ´ #ıñ3 (/H\\2\È[\á¹wjL{‚,\îf(ä¨½]\çPF\ÅX~&7Be§\ßMGœª\Íş0\Ê<+\ï,¶ÿ\0\Ù&\0\èº/\Ñ\ß%’¡È¿aXÄ¥·k,\ØğCp\0\È\è™[bV\Û\Ã(¶E²9–\Z1’*‘|q4ùœı\Ç_Á©>Ñ›\'İ“g\Üü³O“ó>?3\Ü?Ï¤û\Çõ6øş§\ã?3ûgôšü\Ã_¹÷O\Äüy¾ÿ\0˜\éô\Ï\Õü˜\Ñ\îp÷?$û»ı`Ÿù?\á>øüÏ°…m\r¤‘ù†Ÿñ‰ş~\Ï\ãm\í?\Ï\á4öa=\ÎXF¿Á÷/\âšO\ÊÏ°Oÿ\Ù','2025-02-27 01:42:42',NULL),('650e8400-e29b-41d4-a716-446655440001','550e8400-e29b-41d4-a716-446655440000','Edini','Amare','Doctor','Medical','sarah.johnson@example.com','0900120082','Part-time','2018-06-01',1,120000.00,'Day',NULL,'Addis Ababa','0913313103',_binary 'ÿ\Øÿ\à\0JFIF\0\0`\0`\0\0ÿ\Û\0C\0\n	\n		\n$ &%# #\"(-90(*6+\"#2D26;=@@@&0FKE>J9?@=ÿ\Û\0C\r=)#)==================================================ÿÀ\0\0\0\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rğbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0ò\ê(¢‘B\ÑE\0¢ŠAK@\n;\ÑH;\Ò\ĞŠ(PEPN¦\Ò\â€–“P\Ğ))E0\nQIJ(hP(h¢ŠQI@¢ŠJ\0uQ@EPEPŠ).({\ÑIŞ–€ŠJZ\0)\Ô\Úu0\n(¤ S‡Jm8t E€Š( B\æ“<RQL\0sO\ÂÁzS“Ò€%\Í¦`Ñƒ@\İ\Í(zğ)ÁE\Ò\ÜÒ‚\r8 ¤\àQpœv§”‹ƒšSõ\0c\Í\0\ÓAÁ\ç¥;\"€4\áL¥§f™šPi€ü\ÓóQ\æÚ€šBi)	 @M†“4\0¤\ÓI \ÓI RRfŒ\Ğ©)( ¢’Š\0ZZm\0\êJJ(ÀÑšni3@\Í¦fŒ\ĞóIšni3@\Í¦fŒ\ĞóIšni3@\Í!<\ÓsIhù¤&›šBhü\ÒM\Í!4\0ü\ĞOh\Í\0?4f™š3@\ÇfŒ\Ôy¥\Í\0;4™¦fŒ\Ò\âi	¦“HM\0<)	¦ƒ\Å!4\0\ì\ÒM\Í!4€vi	¦æš\0viS	¦– cóIšf\êij@<µ&i…©»¨\ä\ÒL-M-\Í\0<ši4\Ò\Ô\Ü\Ò%Q@EPŠ)-\0(\ïE \ïK@\n(¤´\0QE\0S©´¸ ¥¦â–€IJ)€R\ÒQ@@\ëIJ:\Ğ\ÑEZ(¤ QE%\0:Š( Š( P( ´\ÑKŠ\0Z(\Ç4P\Ğ)(p¥¤´\ÄRR\Ğ\Ğ:RRŠ\0Z\Å%\ÇZ\0prM\çQ³À¥\0\ì\í\ÓI-Ò\ÇÚ¦PjŸŞ§«Ú† u5¹‰zœ\Ğª	\ïO\Æ*ŒšŠ»Ušù\ØğhTÊ«\ÔóQµ\ÎxQYffcÉ¤ó™z\ZC±¥ºW\ä)\Â9V¬£s\'÷±G\Ú\ä\Äi\\,l-»Ÿ\â¾Cõ‹ö\éWî±©ST•}\éŠÆ¯”Ô»U\Ö_ø×Šx\Õ\Ôö¦.\ÔğO¥R]Y	*\êô‹`RŠ®/!#­ò<u V,´µX^G\ëR,\ê\İ\é h˜PNy¦’ )ˆSIHM&h\04‡¥¦“@E%&x RRfŒ\Ğ\ÑIš3@E74¹ ¢“4f€õ¤¤\'š3@E&h\Í\0)\éIHM€ZL\ÒRf€š\\\Ó3Fhù¤=i¹¤-\Í0HO4\İÔ…¹¤³HM74…¨ù *=\Ô f—4\ÌÑšCM!4\ÒiP³HO½74…¨ù¤&›)	 fšn\êBÔ†8ši>ô\ÒiP‹{\ÓKZi4„\Ğ1Û½\é	¦M-@\Í!4\Í\Ô\İ\Ô\0òi3L-F\ê\0Ri	\æšM!4\0¤\ÒfšM\0\Ò\Ö)1KE\n(¢€K@¢€Ş–ŞŠ\0)hPEP §Siq@Å¢ŒRb€”SiE\0-”¢€\nQE­\0-Q@…¤¥¢€Ñš( b\äÑ“IE\08\Z(( Œ\ÑE\0(4¹4\ÑKL–(\'4¹¦÷¥ ¢’–€&—&›KHÉ¥)´\áÒ˜@¢¶)œ½7$š•9 oZM¥›Úœ\Ì;\Õinv‚ªy e¦‘b_˜Š©.¡\ÔGT\årÜ³\Z‹q<(\â€\'’\å˜|Æ .OCF1Ö¹\éH&“š6špC@\r\ËR€OZ\\\ãƒC5\0(¸<R\à¸¨·FsÖ€$b¼c\Ò\ÃÚ›³CÒ”D;š\07\éI¸{S\ÄkJ#ö Ë¯¥\"¿¥L\"9û™¥ ùgúP\Äw©’\í?ˆT{7uJMŠ\İE+¡\ÛI\ßr;u\à£f°š,}\ÒEK\r\Ì\Ğ‚H\ÓFøx\"—8\ã½R·\ÕD€,ƒš¸2\rU\Å`É¤­y¤\éLVšm\Òf‹€´”™£<Qp\n)3Fh\0\Í¦\Ò\Ğ\æŒ\ÓihsFi¹\æ“4\0\âNhÉ¦“\Í&hù£u0)3@\â“4\Âx¤\İ@\Í¦n£u\0?4™¦\î¤\Í\0?4„óM\Í4hù¤\'šni	 æšni	¤³A<SwRâ\Í©™¤\Í\0?u&i›¨\İ@\Üi3L\İF\êCšBi»©¤\ĞóHM74„\Ğ‰¦“IšBi€“HM!4„\Òci	¤\Í!4\0SM¤&š\04›!4™ C³M=h\Í&y B\ÑÒ“4f—(¥\Å¤11F)Ø£\0”R\âŒP\0;\Ò\â€( Š.(”R\âŒPS±IŠub–Š\0LR\âŠ\0£¥´\0™¥h P\ÑE…¢Š(	E-À(¢–€Ñš)(z\Ò\Ò”´\0\nZAK@€u§S{\Ò\Ğ\ÑIK@.i( b”~”‚‚p9\é@\ì\â£f\ËR4 œ\nX\×\æ ¨QŞ•¤\0S\ÕZ©5\È#\nh\Ó\Ï\ØUR\ÄóiacHNN(\Ü¼ÑŸCM\Å dz\Òq\ØÑ´Rm\0şñf”1ô¨¼£\ëF\Ö^ô1M\ÜçšŒ®\Ó\Í\";\æ¥­\0G\Å.Õ¥tÁ\â¡ ƒ@®qK‘P\ä\Ò\ä\Ğ …æ²\â«òx¥\nh\ÒÜ•9©E\á?À\rQÁ¡\Êõ8˜¾ÕŸùf(Ybn0j²Î§FMZHc\ÌD/­@R#\Ô\àTM\0şÁ\éW–\Ú\Ş/Y›û‚‰#‘×ˆö/`zŠb†İ‡\îş5f	0\Ã\rò\Ó\ã\0ı\áæ£”D¹\Ã`\Ñq\Z!ƒŠv\Ö=«.+,ğsSÿ\0hFU\Ä\ËD\ãb M@¹ÁJ‘œ0\Êò}(¸¬?Ò›Ï§µ]®\'\r(‘R\Æ\î\ßyH\\,?>ô›©HÓŠb\nZnh\ÍawQº›š3@X]\ÜÑ»Ú˜O4™ \ç4SsFhI\â“4Œx¦\æ€šL\ÓsFhÙ£4\Ì\ĞM\0;u¨É¥\Í\0;u4·4\Ü\Ò\Í º·4\Ü\Ò@\İHM74„\Ğ;\Í!<S3A4‡fŒ\ÓsFhš3M\Í ,£4\ÜÑšC4i3FhÒ’š):Rö \Ò\Z\0L\æ‚h¤4Bi¤ÒšC@	ši4´†š	¤ \Ò\Ğ!)(4P ¢’–€/\ÑKŠLR,Z)qF(QJ€J)h ´KŠcŠ\\QŠ\0JZ1KŠ\0J)qF((—¢\r\Å(¥¢€\n(¢…R´\0RR\Ñ@Q@Š1KEb–Š\0\0£\nZQE\0­- \ëKš\0Z)3K@.))WMzu¨%±*½©erNB\î#\\´À‘BÆ¹c\ÍC%\Ø\Îj‘\å>Ô„\ëÖ»¿~*E+¾ú`\Í¸\ìŠS\Ç4McL..\ê7S3Fh\Üh\Üi´P+ZR\ãŞ™Eqû³J§5iÀ\Òa[\"˜\ãÒšRu d œ\Ò\æ¤eMG‚zP\'p\Î)U‹t\Ğ[†\ÚM™\Æ v±© °yyc\ïV-\í±\ÃµylŒoaı\î)\Ë}?g\İ@=Ú­-¨^daÒ¡{§Q´#w°¨ö\Ü\Ïş³\äÔ†M-\Ìqpı®õJmC²n\'Ö­.Y	­H\Ö[”\ã\0v fCI,Ç¦)\n*}òI­d\ÑeüÍ´U…ğô}^BM1X\ç\ÄÈ§S\Çs~a[\é¡\Û/U\rõ©?²mS¬j(©$m\éRyc\ï+Ö±³±_¼¡~”ÆŠÁG\äúP(,§\åH\Ç94ùM°û¯Q\ï‹ûüP )L+ÚH$mjz²óšwŠıñEN|¢j7<©¢\áb3\Å&\á\ëF\Öi„`\å‡\Ä/\Ş9™ m\ÆGJN”\0¹£4\Ğh&€šL\Ósš(I\â“4\Å74\0\ì\Òn™¤\Í\0.iwSsIš\0\\\ÒfŒ\Ò\Í °¹¤\'š3HM4„ÑšBhsA4\Ü\ĞO\0¹£4\Ú)\0´RQ@\Ã4f“4f€ŠLÑš\0\rQ@\Ã4”¦ŒPi\r8) C)\r8Šn(´˜§b’\r\"“4¦›šb\n(\Í¦ ¢ŒÑš@i`ÑƒKŠ1RXb“\ìQŠ\0AKJ.(´”üQŠ\0h¥\Å(b€b—b€´¸¤\Å`¢—b\ØJP8££¥b–Š\0LQŠZ(1F)Ô”\0QE\0bŒS±F)€\ÜQŠ\\R\â€Š1KŠ1@\0¢ŒQŠ\0(\Å(´\0\ÑÖE\0QE(\0”\ÃiX\Õy¤\ÂŞ€$›O>ce©º\î¥\ÈQ¹»Ğ„+²Æœuª¥‹´¬\åÛ”\Üw¦  Ÿjró\Ôt¤\ĞN(\Í!ıi3\Í\r÷©€b“#§zPŒ\Ô\áh”dT¸QÒ—>Š)ˆph«9ön_\îŠ\ÅP	<\nv6õ«K2t+zvØ‹Œ¦qÒ¥S\Æj\ävğ7­Z\Z\\M\ÊØ¢\å\ìª½jFP£bòş•£Š\è	Œƒšy·([\0\È}hm\íR(ü\Éøö§´’KòÆ¸_Z.s‚O§aR;Eh9o1½µ\0:2\ç u©%xT|\í¹º:\Õ/^PwÚ óW\×4€\ÖK°«û˜ğ=\éEÀ_½ ¬v\İÈ on´¶5×¾\êQ« 8T9«µ*mNM4ŸY˜ğœS?µ®ˆ\ÅTó\Ğv¤7$•ih\ê7\ÄM!\Ô$oV¨#F–­ElpIÂ\Ø÷¦\0·ÿ\0}±OHf=M<W¤µH¥\år‘¨\ïHŒC\ïfœ,#aò\æ¬,H>ù-ô©7SŒ÷¦u\Ó\Ğc\æ\Å+ZF§$\æ‰n¢QËŠ©> ˜!y D\ïD}ğ*’\Çú\áš\ÎyL\Ã4Ä¶l\çù\Ğ¸ˆò\Zxš9 cÖ²\ZÄŒ\ã\éN\ØĞ\å±?Z`jIj\0\Üô¨$P£ƒU%»™œdü¾•aI‘A\r74¥\È8*h\ë\Û\0\Ğ\r©\Äsšt°\ì\àQp!>””ö\á}\ê2h\0¤£4„\Ğ\æ“4„Ñš.æ“½¤\'š.\Ò´fš.\æÑš3EÀ(\íFi	¥p\n(\Í bf—4\Ú(i)i)\0´RQ@XQÒ–t¥¦0´‚–€\Ò\Zu!\0\Úm;\ÚBbS)ô\Â)¡\r4˜§IM\Æ\ÑJi)€QFi\r 66Ñ¶¤\Å¨5°\ÌQŠ“mhŒTh\Û@Xb¤\ÛF\Ú\Ä`RâŸŠ1@\Å§\âŒR˜£üQ¶˜\Å%I¶´\\\é@§\í£m\ÌQŠ~)\nÓ¸Xn(\Å;m\0Qp°\ÜQŠ~(\Å\Å§\âŒQp°\Ú)Ø£\\,6Šv(\Å\r£\ìQŠ.+\r\Å\ìQŠ.QKŠ1@XJ)qKŠ\ÃiiqHü­†=P¸m\Í\Å\\”\á*\å³LAæ¢šO0\í:V\Ï§bn ô \Ô\Zw\\-1UùsQ\ç,E>SÀZj\Z\0\0\æÂ¶MšC\Â\Ğ–ô£u7£8 gÚ\ÇÖ›ôc½+\Ço÷£\Ì\Ê(°\\˜;)ñ-\×ù¿\nU]\Ç\'µ\Í^øñ­B—S†\ÛP‰Xœ)5b\İw1¢Ã¹§krQ7Jøo\á´\Çcs!–s±©4\é¿2rW\î\Ô\Ü\Ësò¯He‹K9Ks´7z\ÕL<”Rúw©\"¼©ş\Ô@\Û\Z\àP\"$°’A™p¾Ã½L,Uó¤»\Èùª\'ºy9¦¾J Q\åúP	³÷©\ÂT\ìh\ín\ÍÒœ–\İhY½\rH.ğ)1¡>Ë³¯5\"F½:TDÈ½Z€\í\Ğ\Ğ2\ê\Æ\Ãı^3JÖ·RòxÇ¥R\rùsS&§\"ƒóq@®Z\ÂeåšœW\Ë?8\İP.«‘‚j9.\Ër­@wnRˆ\É1>Õ’\Ûßô$o_ŠsQ…‰’M£•O\â+=KA\Î\Ü\Ğ÷·(v\Ñ`¹¦ …:(üh‘ #–Qô¬œ\Ï*ü\Ò\ZAl\Ø\å\Íšf\Ş\Ø\'iŒGŒTU1€MH<÷\à´™´Ø±Ì”\è4À	+6Ö û,¼os\Í9”¢\ì\äŠ\0”ZD·\Í\È=2fXøKUwò×€§?Z#@	\0Pˆ\×\îÅ¶‘\Ò9Ü¤ı*Å½\ã7¡\ÏZ¿g}RŸ\İdı)Š\æ#¼NAFjŞ¥ ’\áS=ª\í\Ç 4\ZùºPii¢Š(\0¤&\Ñ@X\\\ÒE¥`¢—4‡µ`¤4Q@X(¢Š\Â\ÑIEai)i)R\ÑL)i \Ò\æ\n(¤\Í \ZL\Òf\ni´´”\0˜¦O¦\Ğ!¦™R\Zm4!†’œi;\Ó”\ZZC@ûh\ÛS\ì£ecsr-´m©¶ûQ·Ú‹\Ú]µ.\ßj6ûS¸ˆ±IŠ˜/µ.\ßj.2R\í©¶gµ)\\6Ñ¶§\ÙF\Ê\0‡mjm”›((\ÅK²“m<Q¶¤\ÛF\Ú`E¶‚µ.\Ú6\Ğ\"-´b¥\Û\íHWÚ€±(\ÅK¶“m\0GŠ1Rm£m\0GŠ1O\ÙF\Êaa˜£ı´b€°\ÌQŠ~\Ú1@Xf(\Å<ŠLPqF)\àQŠ.¤\ÅHG€QpŠa©\\qQ¯Ş \n\×Š£œWnÿ\0\ÖU\ïT‰c	\Ï4ƒšQIĞš¢D5\"sQ÷§\çcœ±4\å\éši\ëO<%\0šF©D(4\Ìü\ÄP3Š1šC÷©Oµ\0!6)\Ìp1@¦·4\0QHi{P\éJ\Ç\nAÒ”\æ\n\09\æ¤YH^MFH\Å*¯4o%y\ÍLˆ\Ê)ªBh2û\Ğ2a´M)e=0*¯™”…\àT?{¤ÂŠ¥œŸ¼i\áŠôjCE¡\Z½G–•\İÀ4õ˜P¾JÓ…³· ñL½J›\Ç~(¢)ÿ\0{ö,W;9©A\"œ²|\Ü\Ğ1q‡LSş\Íy59!‡˜\Ğ\ï@XAo\0\ëNh­Uršb\Ù\î<¹§ıG,r=¨ŠrÆœ\ìj€n\ÄkTXF;œS\Ú:\n\ÆX’oÂöœŒmÉ«¬ˆÿ\0\"Ê˜m–0p¹&Xª\×«\Æ)‹zş•#Ú‘÷¸úS# €°\è\ïaW­\çfa“š¤-‹\áH\Û\ïW`h\í\ÜŞ¦€,²4ŒN«I SÖ¢’\âgcƒT\æ|pI\Í\0M4¡9\æ¢m\ät5\0F—¿¦iG°ŸZ\0\\¶ \á‡Z¿e©\"\nkS-—9\'½ii¦8\ä\ÚT1>µD³~\Ò8\'pó(Á+3SÓ±1ku;kF\ÚØ¤‚v$ ş\ZĞú\ÖT\n)\ØW8¶V°\â›Zú„Bw&5\â²dVŒ\á…K)¢”3IHcM\Z(\0¤4´†€\n(¢€\n(¢…Q@Q@E”†-Q@x¢ŠJ-\Ü\Òæ˜…¢›š3@ \ÓsFhM6—4”CM§\Ó;šhB\ZozSE1	A \ÒP]\åRyUl\Æhš\ç7+¨òª×•G•@|ª<ªµ\åRùT\\eQUZRùt\\\n†,\no–já‹ŠO*\ÄTò\ÍY«~UU§–i<º¹\åRyt\\\n]*Ñ“\Ê”[e*ÁŠ.€+\ì¤d«(òóN\áb¶\Ê\nUƒ\'—E\Â\Ä)6U.“g4\\6Q²§\Ø)6\ĞMMLVƒE\ÄC¶µ7—I\å\Ñp\"\ÛFÚ—e&\Ê\0ˆ­&Ú˜/­!Z`E·b¤\Ú;\Ò\0\Â8¤E(€\"qP\rZaP2óLF}\ÑÌ•Eºš»yÄœU#T‰cE#Rô¤nsTH/4¤\ĞÉšnI AŞ¤#L\Ç\"\İµ%vÚª*\â\Ïz‘\ÎPõq\È\ë@zÒh<ŸjU\Ğ):Òµ  @9¤\Í/AJ£<š\0P(&‚\ÄjLgš@%M\Â\ZbòzT¤N{\ĞQ\æšEJ‘ñ“LeÀ¦&F84¤æ”€¿ZCŠ\0n=\è\ã\Ô\ÑÓš\ÏQ@Ÿz9¥\â€}\0(vZ±\Ë/\Ş<T!Y»PT¤Á–û\r\È\â¬\Çs¸-Á¬\åC\éR,\0¤R5•co¸\ãó©nŒú\Ödzd\Ìr¤Æ­Ç¥]õI\nıM\"ßGjQ˜\ÊÔX]®7H\r]Š\Ö^ŒÂ\Ì\ï\"g\ïJ–$ı÷8­…†8\Ç\Ì\â¢y-P\åœm\ïHv(-¨\î®i»\îõ«¯y	‹š®\ÒJ\İŠ.\"´AÌ„TL#\é\Zf¦h¼Ã—$UˆU#\n.%³fÁ\"•\ìUF\ãÖ´\Ëÿ\0«Œ©õ¨¤·y?\Ö7\Åc\ä€\äF2õ\\[H~ix¹%ºFO–œÿ\0z¨\Ílò™¸ô¦+³7ğD>´À›W,y«ÿ\0e*p‹J\Úq\Èfl\Z.3~bG³¥Y`d=*´²\Ü*÷õ¨n\ïI>]¹\Ú;Ó¹-\Z\ßğ¬\Ñ\íÜ£Š­÷\Ún8\Ö)\n¼1\É=j{yü¢??j¤\Éhê…¹hÀE\É5©\ÚH’|ËŠ\Ş\Ón¤†8İ™I=i\ÚÂ­\ÚP3\íCW\Î@®™W\rŒ¬HªÌa‡5.\äfŠ\\Rc‡`¤4´”\ÂÁE¢€\n(¢€\n(¢•À(¢Š.\ÒR\ÒP1h¢\æ€i¤\ĞI¦œ\Ó¹£4\Ü\Ò\æš3M$Ñ“@\Í¦\ä\Ò\æ‹\\\ÑIš2i\Ø¦´\ìšJ4\ÒSˆ¤\Å1\r4”\â)1@Š`ö A\íZ†Úm\\|\Ç_)›\ä{RyÒ´ş\Ï\Íg£˜|¦o‘\íG‘\íZ_g£\ìş\Ôùƒ”\Íò}©<Ÿj\Óû?µ\'\Ùı¨\æS4\Ã\íI\äûVŸ\Ù\è6\Ôù…\Êfy>ÔOµi›zo\Ù\è\æS;\Éö¤òO¥hù†\n9„\âf˜O¥\'”}+K\ìô\Ã;Š\ÆyˆúRyF´M;…Œó:¼bö¦ù^\Ô\\,R1\Òy~\Õt\ÅI\åQqX¤c¤òıªá›\åö§qXªc¦ùup\ÅM1QqØªc¦˜\êÙšc¥qX­²­Y\ÙHR‹…Š\Ûi\nÕ‚Ô…}©_e!J±²šR€+”¦\ÅZ\ÚD\àb˜ûQŠ1\ÜsH_h­\ÅE#Œ{\Ó\İÁ\éUÊ³1\Í4&R»\äâ¨š»p1\'5RE\Ú\ÜU\"¦†\ÜSq‘T@£\îS<}\ÜSqŠ`/qRc\"£\'¡§†8\Í‚*6\éOS‚i¤u´\0³J´˜\ã½1@Ô‚”œ\Ós@€òiı)sN`:\æ€\Z¼iv’r:R¸ûT˜\ÂdR©\Ë\0:\n˜\Ædq\è)‰ò¨ rjñA¸=Xõö eYˆAÖ¡\nI\ëF\Ó-\Æ3\Â\ÒN\ß>\Ñ\ĞS!f\É\Í%M9FO\Ë\ÍƒOÉ§·ô›˜ûP1p‰Ö¼vGÖÔ€“\Í#µ/˜qÒ¢,znòhq#Ô©;§j¦zÑ½ÁûÔ¬5£¾“˜\n»\r\á?z_Ö¹\İ\ä÷£{ö4\çX\æøøñ¥û)ù|\0}k’Y?|Š•|\Ã\ÖF4s©ûc™.ò?Ş¥\ÛaŞ”1§Š\æV9ø\Î>µf;!&7\ëR;›M}n‡?Jr\Ê\Ót\àJ£keg’?:Õ…\âŒ\04ã¡…ºÆ­ˆxùP­5.¸ùF)\Íuób€¸ğŒ\0¨Z1ƒ“\ÍC.¦\Éô\Ô2\\œ”zšaq²(^üúTin\Ò\í8«Mö{S™™Yşµº¢·\ËŸÊ€¸\Ù\"\n0©ó{µT¸\Â\Ş|\ç¶Ê°E\ÍÀ\Î@Nâ‡³\n´ûP#\Zt\ã\å\Î\È\ÇAŞ©µ›©\ÂrkvTG-“YóH´\Ée²²ŸœsN$M–¥yY›¯5Ff ¶súS¹ap« \'\ÊG\Ğ[Ml‘fF¸´Œ@Á·o>•·}¢İ…Z¤Kò\íóm¬d®z\â¬\ÜhştA\Ü\0qš°·6¶\n¡;\ÔZ\Í\Ä\è<±€GAC\Î~\æ\Ó\É\'Ú©Mi\ä*\ëÇ­Q™6J@¨h´È¨¥aƒŠ)J\r-! ¢–Š\0(¢ŠC–Š(\0¢ŒÑšb\nCKšBh¦Ò“HM0\Zh\ÍšCA,	\âŒ\ÒRS\ì\Ò\æ›E\0:–“´À(£P!\r%.(\Å\04\ÒR‘IŠ\0ö\ão\í@·ö­‡‚,W™\Ìz\\¦Ù¹\éJ-½«GÉ¥\Ñ\Ì¦wÙ½¨û7µiˆi|Š9‡c,\Û{R}›Úµ<Š<¥Ác/\ì¾Ô†\ÛÚµ|ŠC£˜,dı—Ú›öoj\×òE4ÁG0¹LŸ³{SM¿µkù\Ó5 q2~\Í\íL6\ŞÕ¯\äSM½>ar™&\ÛÚšmı«XÁLh9ªR‰mı©>\Ï\íZ†\no‘O˜\\¦SA\íM0{V©‚£h1G0¹L³µ0ÃÕ¨a¦4<S\æ)šb¦˜½«@\ÃL1ûS¸r”<ºO*®˜qL)Š«‘b‘šc«¦:a@(™JaZ¸\È*#j‰*·™‘\ÍX’>*\ÆbRK\n\0I&T\Ï\"«€ùæ³§”\Ê\Ø\İÀªò\ÈxnkDˆoS[\ÍÂ ™û†¬_´>î¦“\í2Ö…sMnvjAr¦²ş\ĞH\éH%\Ï•‚å›—\ÙZLšB\Ä\ÓI sT„\Æ74©Gh4\Èi¦”\Z\r0ô©e*2jX\È Š384\ZH9£\0œ\Ñ\Í\íGJ\0¤\"z\ëM=\è©Hä” \àPƒ\'\'¥\0(\Û\êjÁM€Zd»s€\Ô\Ç\æ“\éHa{®\Õ{MOpü¸\0¦Y\ŞJ\Ç\Ó›&|z“@\ÆÚ¦ gnµM\\šĞ‘„v¬gô\Ä\ÄU-Ò¥\â1\Ô\Óa\àfpsP!‡–\êi›‰8¡˜¿ô©\0L´Œ®\Ú@R\î.qOP­ \åúÑ8ô¡ÜŸ»B!o­\0ö¤\ÚMJSÊ€(³O\ã½)8¥_’p\Z¡3Œd\Ô\Ë=(3CÂ®\æ¦‰¦\à(ô ‘FœnqWc†289¬M¸ ³Õ”¼ò†óJ\Ã5£‹şY’jDšR?w¨G¬t€ûÕƒ¬+.\Êiå—šX\×.qY\Ó\ê,X¨jgš\å¹~)\"³P\Ü\äš\0’Àœª’\Ô\ã¨İ¹\Ã\åSÚ¦†\Øù—ò­­\"a‡{\Ğ2Œ[Í‡2Ç®Mh$h«… Ô‹£B\Ãt,=©¦\İC\ÎCj\02©Áıj¼÷F1´©¥g–‡G\ÍVE½‘@\Ë1nA\ÅS‘òzÓ¥Š7c‰Z®\Ğ`ü¯šd²6·\Æ¿u¹©Š•û\İ*2€¼\Ó$µo(W‘»\Ö\ÄE$Uğ+9\Ê\Úæ¤‚fCòœB ’Kk%2UKmXù¬d\Æ\Ó\È•Tj\å\ÆÂƒZÍ”\æS\É«Ü“©†\ê€øQ“YWZ\\Ä´¡N\ÚM\"\å\"\çk¯{\Û;½<¬i†\Å&€\à0A!ºŠo­Z¼\Ò\å†8\'­V#\ë>¦ˆJCKƒAô\\«	EP ¢Š(QE\0QIš3@…4\ÓJM!4\0†ši\Ô\ÓL¤4´†‚X”QE4&\n(u-%.)€¢’”\n1@	IN\Å!\ë@\r4”¦’€>Šx\Æi<±VE&Á^Iê„¡K²œ€#1ÒƒÒ¦	\Å(ƒÒƒÒ¦\ÙF\Ê\0‡`ô¤1ŠŸh£h¤,R\ÅX\Ú)\n\n\0¯\åŠo–*\Î\ÊiAM®cÒ‚¬•Ò”ÀªÑŠo”\rY)M\ÛEÀªbÆŒU²¢˜ÉšwŠ¦4ch¥1“Šw\nJaŒU¢”Â¢©2J¨\Ê\n¶\ÉQ²\n¤\ÄTd¨\ÙZe¨\Ùj„\ÑU’¢d«L¦¢aL–Š\ìµŒ\n°õZV\â©2lR»”D»j\æõ\rG\ÍÊ©­}^L@\Ü\×Y„„ö­b®e&=\Ç<óQ±-\ÔÔó×¥# =\r]¬gq¥4õ¥Á˜sš`?µ\"i9¥^\rO4Œh8\Í! ƒF\r˜)M%/Q@†÷§§\Î©d;P1O\"™\ĞÒŒş¤w€a\Òõ¥=(_Nô\0\Ô\Ó\×\ëJG‡\ï/¥ŒRŸ”RÏ\"\í\ïHy p&\Ø>´Ò¾{T¹ı\Ôdt\Ç5\\4„PU‰\í:\È=j90¾ôY¿\ïO½-ÀÄ¢€rvÖ©°Ë…«sØ¨6û±Ç­x¨\äb[h©¡\'ğ¦D…›$SbLOj|\ä*zœ¨/¯Z«?\Í(_\á‚\Â\0#]Ç½\'Ş§½€şN”†$|óRô\àR $n#\å Y‡\Ë\Ø\Ğ\Ça»1ó\Z¤…\ëJ\ì\Îp½)ñB¨o¼{RØ“w-C9rUz\nYN_jõ¤8L(\êh»D\\“šF—#)\ÜĞªI\ásL,4‚Ì¼\Ô\ŞY‚8¥Xÿ\0x¼`\Ó\åvw9†\nqŠrC¼\Ò,$7=j\ÌP;w¤‹[mƒ,\Õ(uW\ÆEG¶\Ó\'4ÿ\0±.rd eø¥\r€\ØÚ­\Æ#\ì\Ùú\Õ;{qµ\Ç\çV¾\Å\"÷ñ©i şU:\Îq1Y\Æ)‘r«Q™§O½\Å\0iM±şö\rg]YB\ã<SMÚ•\Ç ı*	&\'\îµB\æ\ÅA;EPx]§+\Ê9=*¤“üÂ\Éh¤\é \Î}¨elEJÍ¿Ö£%\É\Ãt¦M‚B¥F4\Ñ#D´ óNnz)ˆtGz–<R<n\Õ\ÆqOD\rĞ± \Ã3ô¢ö‹\Ïb¶ñ\ÄÁ°Zº‹{xlƒ\É \é\Ü\×)ö„”¨-´Ë‹¹&”F%+±«½\Åc¨¼†\ÒXFA>\Õ\Ë\ÜÀ¨\çnG5\Ôh«ik\æÉ¸{\Óu›K[Z\ÕFGaR\ĞÔKsœŠF ô4\éch¤*\ÇÒ‚qY´Zch£ŠhŠ(\Í\0RdQ‘@	š3KE1¦šRi(\0¦šZC@	Hii	 LJ(¢šP(¥ BÒŠJQ@QKT€LSH\æŸHG4†i¦€>”qM\Å+šnk\È=QØ¥›šPh\àQŠ@h\Í SI¤\Í\0:Š@h\Í\0-%\âšM0\nCIºšZM4n¦“@S\r+\Za4\0\Ze)4\Ì\ÕX.\rL4LcNÁq\Z¢4ö5\ZiF\ÅDi\ìj\"\ÕI5ª&§¨Ùª‰lkTMOv¨XñL–È¤\â©\Îx8«rŠ£u:Â„’:U¤L™\Í\ë’8\Êú\×?õ­]VüO!\Çj\ËÛº·‰\Î\Ä\Í8\Zf0Ô¢¨C\è+šnh\İ@\r#—Šv\İÔ›())\ŞY£m!§ñL\"˜\r¥µu B°§Dy#Ö›œÓ—‚\rC±\É‹\È4÷\ã‘Ş˜ÖÀ\'ñS\È\ä\ÒÒ€i4ö\èi‘÷\Í\0T\Óñ„\İI(ı\Şi\ä¢Ş€,øôSPƒ\ÃÖ¦ƒ\ç²>¢ ?z„GËœU»¤Ê‡L7zUø›m\ÏjUl˜óQ·\ëW<\ÆERnf+\ØP!’@ö§\Ä0)¤e‰=ªHúP\Øü\äûUlnrjÌƒ}\ÅD\rH,\n¤S\Êpª>÷z•S\å\Í:%ı\ã9P;\r‘0UW¡\ëQ\\7D^\Õj1ò»7\áU\ã‡t¹4\Äq\Æx©ˆ¯QS¬Ar}*S3¹\é@¬@ª>i\Z¢$“ß¥O2ñ\åŠUˆp\é@\ìD!\ÈÉ§©\â¤(L€­)~^şÔ€T„;z\ÈO\éN(-±’	5:‘oš\Ç\'\ÅP“\æ\ËH\ÜPƒt§Œ\ÔBYKµ”¨Cy¥wa„S$$Í‚Õ\ï€Í’j¤i3±\ÚH7\Ì\ÌN=(\í÷DœM\Ûôº¾Œü²I¨>\è&§Y‰?sô¤ıµ¨\Ç\Ôd\nN>Iağ¨\\y™ƒU%M‡¦hd\ë8ù\í÷g¸){¦\Ë÷•\Ö<nš¬3ƒ4X.h³\äN£\ëU\ä¶f\ä2·Ò¨´H½	J@Ò§İ“zv’¼\Ü ú\ÔLŒ½Mh“w\ÌÄŠk¸~ôÀk‘\é@sç´ôAƒ“\Í.[n1ŠDˆq\Ñx¦\ì\Ú0M!b8>\Ì\ÌI=1ó»\å©!Œ\Îi0XzS \Ês\È f‚^…ÀS€+kK¼†F!\à\×)‚]°8«v÷g5¢Ô†tz†—_¼ƒŸ¥s6\ïi)F\Ï\Ûh\Ë\Z¬™?Z\Éñd¬Á—5E\Ä\æó\Æi	\â“?.)Oj‚\Ä\Í¢Š\0m-%\0´RRS´”Q@¦šq¦\ĞR\Z_ZC@˜‚–R\ÓB\np¦ÒŠ\0p¥S\Å\0)h\ê¤i§\â\ĞDSqRM\Å\0}\Ì(*³I@“ŠòN\å­ôoª\âZ<\Ú\åô…ê¹–še A\è\ßU<\ìQ\ç\ÑaÜ¶^“}U3\Òyô\ì-\ï¤\ßU|ş)¦z,+–·\ÓK\Õo>›\ç\Ñ`¹k}!zªg¤3Ó°\\²\ÏL/UŒô\Ó=;\Ë%\ê6’«™\é5;\n\åƒ%1¤ª\í50\ÍNÂ¹a¤¨šJ¦¨\Ì\ÕV\É\ÚJˆ\ÉQ4µ–…rv’¢g\æ¢2\ÔM-RD¶J\ÒTm\'IQ´œU\"[	d\æ³\î\âóT\ç¥[g­e\ß\Î\ã!zUD™ş¥PË…\êk3sd\ã¥_»]òÇš \ça­‘ƒ[iÀƒQc<ÒŒŠb%\Ú¤\ÛL\rŠw™@§óMŠ]æÉ¦\Í\'™I¹M\0)£ \â“¤\é\Å1i1N£@)q\Í(½À¡²’W€v©qC®5#°\Ö\éB\Ş-H«¹i‹÷À ,6Oõ\ÇÒš\ËógµK \Üp:\Ğá·½aª<\Èv÷ M\Ğc¸¢0½©\ê›±\èh‚Å±¹Z‹ˆöŠv\Ü8e\èjl	F;\Ğ)!\çªÍ£lr‡¡¨^&VùGJp-\Ãc‘@\ìZ$,¤•RT\nIõ«$Œ?¥1\Ğ8´®+\ÙsƒO*C^;f#\Ë\Ñq\ØFÁô¥T\É\Î*T\\†ö©c^Ø¥q\Øj.F1K³*ÀL”\è\áÊœ\ÑqØ€G›~j1}k@Eº<\ng\Ùú\nW)\"³®\èÈ¨v­%·ù˜Ts[œœP2#æ†©Jc±«^A+J!\Ü=\è&\Å\"	Ú‘÷Àvq`>´y;FGZw.d\ËŠ¬\Ña‘‘WeA¿‘\Í,q;8Àâ‹…ˆ%* /¢\İ\æ\ïO˜»«Ú«\ì—?1\éLV,†\Ê\í+º§†·1U\"F<\î­\Å\çºwPˆ¬cs\Ç\Ê{Õ¥Òû²óTş\Ò\ÑuˆŸZµm}YOÖÄ—H•AmÀ\Ölö’&q[\Ì\É&v\ËÏ¥e\Ü	NE™/jTµ·”¡«²\Æ\Ø$šT‰\Ê|´\ÄUP\Ù\ÃsHñæ­µ¡`	l\Z‘m£3‚iˆ\Ï[rOZO³óÀÉ­e´F\èi\â\ãô&€2…œ˜\İ\Ó*x\í$‘7Hx«\"¼cµUš\é\åı\Üc•¤UjŒ\ÒÛŒLHû˜\æš\ÊW‚~jgœ\ÊqŒ“Ö\nP¼­·…­=3M\İ³tn†©[B\×w5\ãÖ¶e`X\íb<§SM­šK\İ_´²U=:T_l\ÚBµ¥j\ë\"\åi¡2w•mm·\î\Æ+š\Õ/\r\á¶@­]M$h¶\0y®~h^†}h`Š´´”•€M4\ĞM&y¦HR\ÑE\06Š( Š( µ%-! ¤4´†)i-1(¤§\n\n)\ËM \Ä\ÅŸÚ\n}1\r¤#š}4õ¦F’Â›ŠC=\Ô\É\ïK\æñU\ZQšiŸŞ¼\ÎSĞ¹s\Î÷¦™½ê‰ŸŞšg÷£”.hyşô\Ó8õ¬ó>;\Ó\r\Å5\æ4\ZzŒ\ÜsÖ³\Ş\â kŸz¥s\Z\æ\äc­\'\ÚG­d}«Ş“\í^ôù\Ìl}¤z\ÒŸz\ÈûW½!º÷£\\Æ·\Ú}\é>\Ñ\ïYj÷ \Üû\Ñ\ÈÆ¯\Ú=\é>\Ñ\ïYF\çŞ´\ÓPsP\ÜZŒ\ÜsÖ³MÏ½4\Üdõ£”9#q\ïM7õšg¤óı\éò‹˜\Ñ7ôÇ¸\ã­P3{\ÓZl÷§\Ê.b\éŸŞšg\â©i¦_zv1s\Î÷¦™ª™–“\Í÷§asL”\Ã%@d¦)\ØW,)¦JƒÌ¦\ïÉJË¾Á«Œ\â«N7SŒ\Ğy¬Ë„!\ëvddSX\×Y\İ\Í\\H’+´´g\"Š²ŠCÒ’€\Å83š4rOµwqF\Òyô©ÖšI<\n\0h\Ë\Zw—\ÆI©\íNœ\Ôl\Ü`õ¦„\Ãp\İÙ£niU=)0B¨&¦<ö§Cj\äpb¥³X¢Šb«\",Rù|\Ôó\ÊSÒ˜}ªğ‡Úœ°f—0r™\âJ-¥j%·µN¶Ô¹Š\ä2E©n\ÔñlO\âµÅ§<\n™l\Æ:sG0ùO²1Ü¯J\İûx\Å1¬1Ú`\ä1šS§5­¶²c\Î8¨š\Ä\ç¥\Â\å2Q	\îjVŒ³d\n\Óû	ô¥ûÒ‹‡!– %³Ö¤\ÌMiEhW\ï\n™-!›0È©ş\ÌI8­#¥H¶$gŠM‡!•±š° ,x -8©\Ò\Ô\í\Æ9¢\ã\å3™0§¥ \',+f\ŞÁ\Ü\àŠ¿’r:Rl¥›[,¿ŠIlñ\ĞdWPšr‚F\Ú–n)s\äÆœ[œb˜lp+­m;iÀ\é¤dm\É4s\rÀåœN\nkB\Ä,cõ\Ö&˜Ç‚)ë£\Ü/4s\Èq\Òi‡+•¡\ìv)\0c5\Ùÿ\0d‚\áÈª²i\ã8+ø\Ñ\Ì‡-¾Á¼ú\Öt¶\îI\ë]µÆ–2x¬‹½=\àU)	À\å^)S¹© ˜§\Şb+R\âÑ€\éT\ZßEZ‘“‰j9Ğ€²0 úT©nU²£({\Öi‹iÁü\ÅX[ˆqµ‹§¡ Eö/Ë¿†¡b\Î\n‘\ëA\Ş*†ùu§½¦\à<·\àP\"›¬ˆq\Ô\nr\r\ã*}ªÑ…\Õ>jA\0e\ÏCLV*µ«\ËGm½±B\Û*r	?Zº›£ûË¼v\Í™@X¨CôSùS2u-V>\Ï.~UÁ¨Í„ò™ğ)ˆ¬\àwqšƒ\ÌenœûU\æ\Ó°%óN{x\Ğg© Ò®Í»\Ôöö-,»#¼=j\Ò[—\é€)\æõ-s\\Ë½@™mQ4ø|¸‚™[\ï1\ê*cÜ¯\Ì}Mfù\ÓN\ç’u>µv9üˆò:š¤H×\ÚlœÖ±ò×©U.•–\à\ÒGs–\Û\ëM	š±LZd\Ï#Ş©x—`*P\0OjĞ²€ Jx¬v\å&º+\È”0F_ğ\Ó_µÔ„\Ô\Z	ES$?\Z(¢€\n(¢€\n(¢€Š\r\0‡µ%+v¤¦ ¢Š(S…6œ(@<R­ §¨¦&=iø¦¨©1LCqHE>\Ó\")µ#\ni†z\ËM\ïLi}\ê«IL2q\\6;.Z2Za›Ş«¦3Ó°®Yi½\êŸ\ê“\ÉM!6YiÏ­@óû\Ô-Wyj\Ò&\å¿<ú\Ñöƒ\ëT<\Ú<\Úb¹\Ï>´yşõCÍ£Í ._ó½\é<ó\ëT|\Ú<\ÊAr÷I\çŸZ¥\æRùô\Â\å\Ï8ú\Òy\ŞõS\Ì÷¤/\Írß\ïA›Ş©\ï¥\ßE€µ\æ\Òx\ëU·û\Ò÷ >aõ¤/\ïU÷\Òo ı\é7û\Ô\é7\Ğ\Şa=\é7T;\è\ß@\ï£x¨wQº€$\'½4µ0½0½0	~aŠÆ¾ˆñZû²k7R`§Y“À\â\Ò\æŒÖˆÍÉ {\Ğ=h¦\í§dcŠ@p)´\0 y«£J‰y©¡9zCÿ\0*±n\İ*rwsVoz\ÔVñ\î5\0Æ•\Î6\Ô\ÑÅ‚\0\éHF­Á TÉ•I8Š´ªE*&Hf\Ù\Ó¬\â…\\”\ìS\Ñy©ªœt©cˆdqNE«”‡a«=*\ÔpŒt¢5æ¬¢â‚’\"XqÚ¦H¥J©S*R)\"¿“\íK\äJ¶œ•\Â\Å#o\ÇŠ\ì£=+H\')»9\éE\Â\ÆqµS¾\È=+@EºŸ\ä\Ñp\å3\Ö\ÍOU©\ã³Q\Ñj\ìp\àÕ„‹Úb”Jik\íS­Š\Õv8\ÅZXb¥\È|¦jiˆOJt\Å0+E\"\0\Ô\É¥\Ì¥x,B€{\Ô\Â\â¥Ûôl¡\Èv! =(1(¤*sH\Ü\n›\Ä-\Zõ\Å&\Ñ\×#t¦\Ñr¬3`\ÎqF\Üt©@§E\ÂÈ®b\Ï8æ¡’\0\ÃV†ÑŠa4\\,ŒY¬\É\íY·6˜\Ï\Ë]<‘‘U%€6r*”‰q8»›v¬¹ì‡¥v\×@ö¬»›\éZ)¸œ›[y`ñ\Å5``2¼JŞ–È¯qUdµe<+K‘\Êe\íB1Œ\ZO.Dû‡ŠĞ’\Ï\äÊ¯5F_2,\äqL\ÎQ;yƒN+t\é\éU¾\Ğ7aˆŞ•®bFa\ÍQ›,™‰	¤^ƒ5[\Î@ùf{b\ç«•…\É~\Ñ.\ì\í¦4\Ç\æ8¡J²\nk\Ü[G÷Ÿ&š`[“H~E\İ+zTj=¢LZ¬\âI\Ï\Ì\Ø\ÄK5\ËI\Ä\' Hü¬\î;‰©#ùP~5<6»r\\\æ€\r»È \ãL’9Œ§\å8«ğ;(Â*Ò\àeE2L´²–BAZözJ¨ü@¸U!p3O°„°“\Ó4„Cª^$i\å#b¹‰Hi	\ÎMX¼fó\Éf\ÍT\'\'8\Å\ÒPM%\0´”P0¥¤¢€\n(¢€Š( 4Ph ¤\"–’1(¢Šb\np¦Ó…Š‘j1R¨¦&=jJbŠ\n¡\0„S€ Šb# S©SH g M!\âŠ9®°oµ1)ô\Ç\éT\"\'$óP953*»š	#vª\Ò9\ÍK#bªH\Ü\Õ\"G4o5	n)7S}\æÆ \İJ\Z€\'Ï½ª\Ô\í\Ô.\ê]\Õ\ê\\š\0—u&\ê&Œ\Ğ\"LÒ†¨³J\r0$\İF\ê4f’n£}Gš3@‡\ï4n4\ÜÑš.isM\Í &ŒšLÑš\ÓM)<\ÓI aÒ²u7&µz\Öf¡i¢Y’(\ë\ÔƒOQŞ´ G­\0\n\\gšBq@„4\î\ÔŞ´¦€«´g5-¹ı\à~Z!b4Š$»§\0SÀ\Û#­G\Ë\Üdô©Y°:T¶4,–|Ö”Q€*+h¶\Å\\Aš†Í£\Ê8§)@¤#¥A°c=jDô¦R(\æ€,F*\ÌkU\ãj1Ò‘H1Š²ƒ5kVQiô©\Õi‘­XU¤R@ŠxJz¯¦\ã±\ÜRyb¦)J‹…ˆvÒ5*¥8%Kc°Ô§D¡V¥E4ŠC–>*dZjƒR ¤Q\"ñÚ¤QH¢aŒPx¤\âšÇŠ	\Zy=j7\ëJI¦š4ŒŠNø§”\Üd\Ğ1\Ë\×&)Š½\êUZ\0\0£fi\áiv\Ğ6T/«$SJf€3\äƒwğ\Õ9­v­¢œT/i\ÜV9¹¬úŒU,ñš\ê\ä¶tª’ÙƒÚ´S#”å±SÒ©\ŞX‡Š\êf°\ïT§³5jFR‰Ájğ0EQ1oeP¸\î+°\Ô,w#0ûÂ¹yŠb²Ö©œ\ÓE)SŒ\ä{\Òyc<1ü*Ô©@Aù[ô¥%E\Û\Üz¤Ì¬WòTñ¿“H\ÖÁ9\Æ\ãN’Éƒ\æ92;\Ò7\éš`4$ŸÂ˜¢9Y±Œ\n‘oe\æ\\\nr\ÊHÜ´\0\ä\Â|¸Áõ©\ã‘%;IÁ¨VEnOZ–\ß=\r!3F\Ú¤\Z·-©J†\Ü\0À\ä\nÓ€‰!;º\ã¥Xbi69\ÜpEQ¸¾$\íW8«zº±Ò±YNjFH\í¸gq¨³N\ä/Jns@ƒ4”Q@š3IK@\Ã4f’–€\n(¢€Š( ”½©(\0¤4£½%11(¢Š\é\àSZx¡\0ğ*E&£*Šbd«RLQRTHA PE0#\"˜EHÂšE\0wtf™š7W\rÁM1\éÙ¨\ä§`!sP9©^«½Q,†^j¤jÔ•VA\ÍR%‘ö¢Š)ˆ1F(¢€KšJ\0;fF(\0\Í.i1J(\0\Í\0\ÑJ0\Ğ(\Å(\0qE£\0QF(\Å\0QŠ1@\r¢—b€\Zi)\ÄsIŠ\0AUorœU°*9Sp ~U\Ú\Ô\Ñ\È\Åh\Ü\ÛqœV{\r­V™\r*\ZŒœšVlñF)ˆAFr)	 PºŒR¥ § \æ†4L‹\ÎjÕ¼X9<\Ô1.j\ì)À¬¤\Íb‰\ÕA\Æ*U\\STT€T!Ø¤\Æ)Ø¤\Å\"€qR É¨±SD2i\r#n%\éU\ãn!Ò‘HYE¨sVPPR&Œb§^j$ZC-\Æ1Rª\äSTT€sRX*f·ğ´EÀh¥\Å.\Ú)T<\Ô\Ê\rD£œÔ«@\Ñ*ƒ\ëR ¨\â¤CHd\ê)ı*44ªs@˜\ãóRÚ”\ÑÚ\ÛMa\éRHs@Jœi\áFh\ÄUÀ\ÅH”/J.Eq˜¢¥\n1HR…r\"3J\â)1Ht¦‘šŠLP26\\Š£µX\"šV\\¨öáª´ök•¦TQ²†\î&®s7vC\â¸ıoJRKm\æ½.\æŒb°5m7\ÎBTsZ\ÂG=H£\Í\âq˜ÿ\0•X\nb]\Ñÿ\0ª=j\Õ\í¤–\Óe\×1ƒóT#|Î°‚º\Ì\ÑBfS=zc	\0\ÃÕ‰#hşa\Î\ï»\íH’\ÃĞ™%\"Û)…Y‘\ÊzU›ˆ\Ğ7\épvõ\ÍP†B«7\Ì1Ú­C<U¶½¼\à\ã\å5¥f\ã\Ì\0´\Ä\Ëö{€\ä\àz\Z¸\ÛB\ç¦i«8#¥±=úP#›\ÖØ«ğ8õ¬V‘»ŠÖ¼—|­¿…e\È6’\éÒó2:Ssš3š@9 Š( Š)h(¢Š\0Z(¢‹EPHii\r\0ƒ\Í%\Ä\Å¥¢˜)Â›N\Ä<v©–¡2\nbdªjaÚ¡AS\Å1\n)qš\0§cŠb\"+M\Æ*F\Ò(¶ò\Øv£\ÊcÚ·[Nö¤\Zµy\Ü\ç¡\Êbùm•‘7¥t\Ùş\Ô\ÇÓ½©ó‡)\Í<m\éP<m\é]+\é¼ôª\ï¦{U)\âsOzTzWLún:\n®\Úqş\íR™.\'4caÚ›‚;W@úyş\íB\Ö\ì\Õs\Êb{R\âµZ\Çıš¬½©\ÜV3\éjÑ´5…;‚#¥¥*Gj\0 aŒ\Ò\ãb”\n%— S(\êJ\0(¥¤ ¢–Š\0(¢–€E-\0\Â9£ò9¤\Å\0 \Æ©1HE\0W’=\ËX×±bq[øª\Z„;”‘M1X\ÆNMpiH(i½MR!†	¥\0\ÑÒ”P Á©\Zh©c\ëC.(±\0Á\æ¯\Æ8µS„U\ä²‘¼Q(©TkR¥C4C°ii\âš\Ã4ŠsÒ§ˆje\0‹Šµ\éU\ãj!Ò‘H55e\ÔQÕˆ\Å&Z&AS¥F‚¥Z‚\Ñ(•*-1G¤SRP\à¥\"\Í)\ë@	Ú™´\æh @)\â™J\r\"‰TÔ©UÁ©R€,¨5&Ú…jp8 C”z\ĞE u¤-@€)¥½)¬i;f€šxO=\éˆNjP¹\"€Jœu¦ªô§ö¦M\Ä9\'ŠpôJx¦++QjL\æ“‡q„RbE7\ã9£Š1H\Å4ŠŠağGZ£{oòœt­2j7Q‚5Qv&J\ç©\Û.N\ázŠ\çe³ò‹m\åOğúWyªÙ«F\Äk“¸\Ë,\Zº\"\ÎI\Ä\Æ\Ñe\İ¥E*m`}j\Ü\è±\ëT\\4\'\Ë~s\ĞÖˆÉ’ü\Ô8\êWF\ØÁO\ßô«6ÿ\0+\0zz\Ó\ï­w\á\âª$š\Ö\á6\È>zšb’\ã¤³Œ¬Yş*\ÑD \Ó%\'l`öªw³—€œıŞ•fi ZÆ¿›b°\í@Œ{¹Á,?\Ö\nª\Ío¾)²9\ëM\Ü\Ì)\0\Ö]­ô:Ò“i¹\Í\0.E¤ u ¥¤¥ ¥¤¢€Š( b\ÑE\0RPh ¥ \ÑA\"QEÀZQM\íNZb$\0\Ô\ÉQ\n•)‰“ 50\íQ¥J2EŒ\n\0¥¦\"2)¦¤\"˜h\îj=)Ÿe•ªñS<šñT\Ì£Òƒj=+KÉ£É¦KYƒÚ¢k%ô­£0\ÛÓ¸ŒF°µ@úwµt?g¦5½>f+\Ó\é¾\Õ\é¾\Õ\Ô5®zô¨\Ñj\Ô\Ä\àQô\ßj®úh¥u¯f*»ÙJ¥2E\ìq*«\Ù`t®º[!\éT¦±À«U	p9W¶\0ıÚ¬ö¤q]Ö˜ª3AŠ\Õ;ÕŒGŒ­4{\Õùb\ÅUhğ\Ô\É#\ÅŒQŠ\0J)qJ(¸ö£\Ôú)€\Ì{Qj}%\07\ÔcÚŸE\02ŠZ1@\r=h\Å)ÑŠ\0@(\"‚(\Å\04Š‰\ãóT\Ì2)€1nmv±Àª.»MtRÃ»šÅ¾‹c\ÓL–Š”¢“¨¥^•D4u\n\Ôñ©$T²\â^€U¡U SVEd\Ù\ÓE©R¢Z•\r\"\Ñ ¤§fŒR¨9©\ĞT)VP4‰\ã\Õn!Ò«\ÇV£¤REˆ\ê\Ìb«\ÇV£,´‰T\Ê)‘¯50^EC-ô©VšH!‡JSGJL\Ğ\0hÏ½›Š\0SÒ“4¢ŒP1W“S¢š‰z\Ô\è)*©©°qQ©\éR3P!¤-\Å&ñ´\ĞHu¥”\Õ\éÖ\Ğõ ¨\ÅJ9=*%\æ¥F\Å\0\É3N_zh\ëšv\ì\Õ\"\áN\Æi€\Òõ¦H»E4Ó°i0ia”óM ¡˜¢Ú\ÒÆ”\Êy¦5\04œqQŒçš‘†i§¥!™7\êv“ƒŠ\äõ(÷\ä\ã»[\Î\ë\\¶ª˜\ÉQ[Áœõ\ÊL¤·¡ªÿ\0\ësœ7bjı\Ùdš«\íY1\ë[£‘‚,«#pGC\ëR\Ä\Å\×=!$Œö\éS\É\È\ÕX–XH°ŠÀqV#MŠqŞ ™P)û¦­3*Fq\éL“#T˜\Ç\È<\Ö\ÍÙ•y©u‹¶óÊŠ\Ìv\È\ç­ \Z\Ü\Ó\ãı\ÜS(LR)M%\0´Q@G\ãIE\0-Q@Å¢Š(h¢Š\0CEŠ\0))i($(¢Š`©\ËM\íNZb%2T\"§Jbd\ÉS/AQ%LQ#…:S»S\ÓR\Za¢À}\Z\É@¬ %y;ùÊ¾]]Y\Ù\Í&Ê«9[e]Y\ÙHR•†¤Vh\é¦*µ²¥+˜¦\ÑqL0ŠºR\ÇE‡\Ìg´[Š\Ó1\Ô.Ô‡s*[q\éT§·ö­·Oj©,t]\Ç;=µf\\AŒ\×Iqe\\\Ç×Š\Ú3q9\É\á\æ©I3[W)Ö³&&¶L\ÊH\Ïa\Í§¿ZeQŠ\0¢”PŠ1KE0bŠ(\0\Å¥¢\Å§Rf€E-! BF)E!4\0M\Æ)\ÔPI\â²uT\ã5®zV^©÷hBf/jrô¦´\ê²-Z„Šªj\ìš™\ì@\â¥j8\êQY1µ\"i«OŠ%\êjÓ½)r\n°ƒ¥B•:i\r#j1U\ã«Q\Ò-\Æ*\Üb«\ÇV#¤\ËE¨ú\Ô\İ\ÅWNjeâ ¢\\óOSLA=)<i3GZ:PÒM<\âœE ~õ.)@¥€£‘S-BJ\ÑÖ¢`h-Q–8\âšòP\"R\ÜR8¨|\Úhƒ@‹C ©Šª¼óR†aô 1ô§N*Ó†OC@2Ào›ñÁ¨U\ç5 =©\É¥\Í6:S$MÆŒšZ)€†›N4Ú’ƒµ4Ó»SM \Ôf¤\"šÂŒ\Ç©=©§Š`VACº¹\İIQU”Mt—	\æ%sz¢\ì5¬j¥\Üf\ëÁª­\ÆÈ­+•\êÃ­T\0?\rÁ®”qÈ’\ÕKšœÈ­nÑŸ¼µ³\Î\ßZ•\âÁ$U\ÇÚ¦ø†i/•4\è\Ô\ÍS\Ôn7B\Ô2NcRı\ä\å…R<ššv\ß!¨ A \Ò\Z\0CIKA\í@	EP £ÒŠ=(\ZŠ)hQE\0´QE\0!¢”\ÒPEPH”PzP)€v§-%=iˆx«(*S¥4\"t(TÂ¨‘ÀSñ\Å4S»S\Â)¤S\Í6€>—\"€)M &¼\Û!Š1N`P+\ÛM+O4”‡q»i\n\Ó\Í&)\Øw#+M+R\âÒ±Im¨œU†TDI£H²«­T•jü€zU9A©4Fe\Â\Öe\Êpkb\àV]\Ğ\ëU3\n\éz\ÖL\ã“[}Mc\Üfº\"a#>^´Á\Í=ù4€\n²£\ì\n(1F)h \Å&)Ô”\0\ÚZ)3@\Ä4”L,hÔ„\Ònâµ°\áHi…½\è\İ\ï@Xu\ÜÑšÃe\êŸr´³Yú\Ìd\ÓBh\Ãi\â›Ò‘VH\ä\ëWm×š«ƒZ\ë\ÍD™¤Qf1R´\ÑÀ§\n\Ì\İ-H)‹OZE-?Ò˜*OJC$ŒU€8ª\èjt$i‹1Õ¨\ê¬uf3AH·X«FÂ¬F\Õ´YŠ˜sP¯Ö¦J–Z%C”€ŸZq¤ô¤\ëJ9õ§*ûR\Õ\\šv\ÓN\ÇLS¨›N(\nj`¹\ŞüQp´\â—o\Z	=\à\ÓX…\é@$¨\ëQ4™¦4§š‡yõ§a\\³œÔ±•\Ç5UŞ¥)\r^:T\Ê\ß.1Uccš°­\Ïğ d\Ê*E TA¥8GzBd\ÊsRv\ëQƒ•\"tÉ¦C)â™šp5D6-œ\Ñ\Í\0›JI¦\æÃµ!£4™¤0\Ï\Òiri¦™CO­1¹©;SV„&C/Ü¬\rUC)õ­ùòªH¬‹\ÄYĞ€0kh˜\Ô\Ô\ä&>\\¼ô¨$Ú²ƒŒf¯^ÀRS\ÆESu}\áÈ­\â\ÎI+\n¼9©\á;£Á\ëP \ÈÀ\àŠ–ƒƒVf\Ç(\n5‹ª¸õ­©¾U\Ís\ZÔ¤´„c?}é†œy\ëM4\0†ÒšJ\0Jj\r%\0QE\0QE\0-Q@Å¢Š(h¢Š\0CEŠ\0))h ‘J¥˜OZeH¢˜‡Š°•\Ôñ\Õ!2t©× ¨PUÒš$P)ø\â\nZbÂ›Šy¤4ô©¦Ó4WštR\nZbõ¤¥4R\r%;¦(E ¦µ-4š†7JŒ\Ó\Ø\ÔdÔ³H‘IÖª\ÍV$j©;Ôš\"Á\â²n›­i\\\È+\îA\Í\\P›2\îÛ“X·-É­;©z\ÖE\Ãü\ÇÒº\"ŒdÊ§­“©§b¨\Å&)h ´bŠ\0\r%\Òf€4\Ú\r4š\0Bi„Ò“Q– \İHZ›º˜Z€$\İIº¢\ßFú\0›u&\ê‹}(j\0“uU»ù¢56\êŠ~c\"š0Û‚išY\Ò\Æ9d\à5¡b¡·ˆ®*Š\ÊFñAJ(#f¤\Õ-H½j%&¥\ÉH;T@Ô«ƒÖ‘D‰S\'Z…p\rL´€³XŒ\ÕX\ÍYŒ\ÑaÜµYŒŠ¤‡¬D\Ü\Òh´Ë‹õ©–ª«\Z±\Ü:\Ô4h™:š~\êŒbŸ¸Rôçš”\Z‰n\Õ\"izŠzŒ\Ò(\íS,dr)\0\Â\0¦#­N\Ê\ç½B‰\é@¶q“P;\àT\ï’pj¬‡\0\Ó@D\Óc5úI \æ¢\rTIi$©\ÕD«QóRR,\ÆsS§\Ş÷¨b@\rZTš\0z†\ïÒ¥@;R\"f¬$@š,&\Æ*f¦AJ\à¼fˆlŠv)\0¥\è)Ø€\Å&)sMİš4\ÒSˆô¤ TŒm%.)§4Š½! “šLæˆh\r(ÉªBcYA#­Tš\Ì8`¼\Z\Ğ\0qLx\Î\íÃ½m	]ı«G#¬‹ˆv8aÒ»}N\Ë(\ÎMr·Q0\ïZ\Äç™šy;–¦„w5Á\Ï\'\"¤„\Íh`\Ç\\¾\"5\É\ên¬Çš\ê\ï1öcô®&ô\æR3\Æi+Ÿja§ŠC\Í\Zi)M%\ÒRšJ\0(¢Š\0(¢Š\0ZZJ(h¢Š-Q@h \Ñ@RPH”\nCÒL\n‘j:‘iˆ‘*x\ê©\ãH–X§b§H‘\âH SºS\Â)\r8\ÓM >”4‚†4‚¼\ÛC…- ¥ªB\ÒPM&ê‘¡Àõ¤&›ºšZ¤)4\Æj\n˜Re$!nj743b«\É&*YªWªb¤š\\Vm\Ô\Ø\Ò+\İMõ‰w?^j\Í\İ\ÇZÆ¸›9­# ¸“9¬\é[,jyŸ5TŒ÷­‘“P(\Å(À9 R\âŒPIKŠ šo­8\Ó	ö “L&œMFZ€\ZÆ¢cNcQ3P\0Z˜\ÏMf\ëQ³P\ËÑ¾¡/Fú\0›}(zƒ~iw\Ğû\ér†™¾“w!32\ã‰\ròÂt>bi¶\ç\æd\ÛSfû±VG\n\â1O”ˆ\ì)¤§`ô\Ş3Š’\Ñ\"Ô‚¢\\\Õ\"œö\Å%Z•j!\Îh2\\b•‡r\ÊÔ€\âª-\Ât\Ï5*6NzŠbº.#T\èøªj\ãjUz\n¹y½NŠ¢’\àca[\"•ŠL»œT\ÑËŠ ¬EJ²db¥¢\Ó4\ã|óKœµTğ¸\ÍK¾\Õ6-2\â6*u5N7\È\çƒV‘†K)2\Ò.\îOj™O\ÍAdc0GL\Ò\â\ïMc´S‘~l\çğ ®OÒ\\ªı\ê”\ßt\Õù“$j”ñğy¦™óEF§š|ªK})¨3TI<ur\ã5V!W\à“©h¤Y‰r«h˜¡€aE[\à‘@›‹R*5=}©wt÷¦Cd€“š\\ñQ‚WŞ—’)ˆ~\ê\\\æ£\æŒ\àdô¦I)S)3‡5|´†J\Å­W.@$ñŠ`ËœÒ°\É\Í0\Ó|\Üö \Ü\n’„=i\r8ğ1Ş˜y bu5\"\ÓTv§ªóÖ©\Ø\ä\\\æ\Ã1ñÖ‘:‘R*\í\ïš\Ú(\ÂEWˆ´,q\\^¯“;c¡®úQ¾2\Åk‰û\æ\'µjŒ$s®˜~;\Ô\Ñ.2)ˆs)\Ïjx8rjÌ™SP“d&¸»†\İ+}k­\Ö÷&¸ö\å›\ëHC{\ÓM<SH cM%)¤ 4”¦’Q@Q@EP\ÑEZ(¢€\ÑA¢€\n(¢‚D=( ô S{T‹Ò£©¥1¥O@•<uH–Y¦u8HD‹N¦¨§S$i„S! £¨\r\Å@\Ï@zò\îwò7Qº«\ï4y”\\9	É¤&¡ó)¦J.„Å±M-P™)†JW)D˜µD\ÏQ´•\Èi\\«¼õRYi’MŒóTf¸½!¸›µ•yq\ÇZ}\Í\È\çšÆ»¹\Ü:Ö±DÉ]\Üg<\Öl\Óg4\é\å\ÎyªNù­’1lóQ\Ò\Ğ)ˆJQF)@¦@¢@HzR\Ò”€i\éQš\Ôdõ É¨‰©\Z¡f˜v¨Y©\ÏP±\Å\05¢g¤v\æ£cLC·Ñ¾¡\Í¦Á\éw\Ô±Kš,+“o¥šƒ4ŠVËœ\ÔPœ:\Ôò|À\Õu8U\èaÿ\0T)\Ô\Ø>kpGJq¬Ù¼v\ZA )\íMf\"£{³\íJÀ\åb\Ê\å~õ+Lªz\ÖT—²?~*13ÖŸ)<æ¤—xj»\\\î\êjö=M\"\É\Î\0Ï­>Qsš1\\óÒ¯\Ã?#š\ÄYQ9$\æ¦K¶<Ç­#}$^¤\ÓüÜ„“\ÈO\'Š°—0	¥\ÊW9·\ÃÖ¬¬\Ãk\r/\Ğ\Z³ú{R±jf\ÂHÆ¥IqÖ²üwı*\Äw+\'CJ\Å)šşj0y©Uº`\Ö\\SvãŠ²³õ-\Z©\ZhzsV¢|V4W8\Ï~\ÍfÑ¢fªIÈ«[ò+66\ÈµN%Á¦\Å\\Ñšw&™lAL\Ñ#a=)  ~[\éU¦\ÍJ$Rúô¨ğI¦32a‡5\ZñV\'n{\Õpi’Y‡šÒ·›\0\ç ’ªã”1Ü¿\0©Qò~•R)G\\ñOS“×¥!ği»ER[ §\æ8©\rÊ“\Ã\nv±x6E\"¹\ÜESz\Ód¸$|§‰lº\Ò\Ô\ÔM4}¸¬·½d<\æ«I©€ÜŠv!³gí‘©ùZ˜ÚŠg°~Ø„’\Ç\Ü\ï\'\ËqÓ¹ª\å1ºo1\ÚßVş\Ğ/&\Ş\Ş\Õ\Î=\ì\Ğ7#p¡/‹’C\'ÒQsLWŒ9È«p^\Æ\Ã\à\×—\Ï8r}sSÅ©–e\Ù\Ôu\Í.B”\Î\Ô7\ëL,£œ\Ö5¦¬KñÚ®\Åx\Ø5.%)”\Ğ\ç4ôû\ÕOœd}1S·ši\Ù(\àÔª$óÚ¦^kh£1@À5\Æxˆm¸>õ\ÚpT\×\â°PÃ¥hŒ›9–M®M$mœ\Ò\ïßœt¦#\È5FL\Ç\Ö\ç\Â\\\É<š\ÛÖ›.Ebbi¦œx¦\ã=(¦’”\ÒP\ZJSI@‚Š( Š( ¢–Š\0(¢Š-Q@h¥¢€Š( ‘J¥˜Ú¤^•j‘zS*Tñ\Ô	V#ªD²\Äu8¨#8ªB%Zu5i\Ô\É\Zi)Æ\n\0÷Æ“Ş“Ìª/?½\'\Ú=\ëÆ¹\ëX¿\æ\ÓL¾õG\Ï÷¦™ı\è¸\Ì\Şô\Ó7½P7õ¦›zh™½\ê#7½R7j¸÷¦\çŸŞ«Ip}j“\Ü\ã½V–\ïŞ©!\\µ-Ï½g\Ü]{\Õi®òO5Fk‚{\Õ\Æ$6>\â\èó\ÍfO99\æ–isŞ¨\Ë&ke6\ÆK!5hcšJ³1hQ@\Å´‚–…%-\0RR\ÒR­Q5J\ÕPoUŞ¬=Wz`DçŠ­!«Ug \ÔEªG¨R$nh\Í ¥¦!sB«9\â“\Åh\ÙÁ‘’)6REQnØ¦´ekNPp*œ§=ªn[…R85>aV\Ê\äZ¬\à©ª3±»fsj)\í\ÇAQXôj™²=\êYªØ«<œc85Ÿ\"–\'œÖ„ö\á\ÆsŠ¨a#€zSB‘[GJh9Œ\Z±±‡QO‚pWšw\"\Åe w©T—\ÎÓŠ‘\íOP§\Í÷{u¢\â³h^X\æƒ+ò­F\êÃ¨4‰w\n\0˜Nı\é)õ¨\Û>´\Ìõ¦¿haR-\Û\n¬w\ZQš,	³J\æ\ïf§‹Su˜qXû€û¹<R\ã4¬>c ‹P•°j\Ô7-‘\\ül¸\à>µn sÒ¥£E3£†\ï>\ãÖ´ Oë˜†\àÇŸ–´\í\î²À\çZÍ£h\Ì\ê!Ÿl|Õ¸d8¬K[€\Êù`jõ¼¿8\Åg$ms ¶¥Gu(X½Gü™\ÍVÔ¦+Á©±¨Ä›œ\n”’WšÎBG\'­+2sL®J÷ª¹\"§¸q\È\ÆMVf\â‚4rm9©c“q<\Ö{HBû\ÓRğ!9â‚\æ²\Üa±šY¯V$\rÕ«o	‘Ò\æ³\r\Îq\ìi¨™¹ä¹’C½›Ò£SYG\'\×5‘uu$Tª;\Öt÷“\ædJµ7P\êc\Ö-ºLQ6»Á;óŠ\â\ä\Ô\åi¿\Úr/5\\¦n¡\ÖK\â&W5JMj0\Ønı\ë®İ»`šŒ—fı\äŠÒŸ*\'œ\Ş\Z¼np$r«œ\îıkYm\Ğ\ãvOµOš\ç) Uô4\ì\Ì\ÚkÏ·\Îü1@.€¾k1nZ.6q\êi–;\Óy?Z,5ŒÀ¤óUT\"’yÌ˜§ùR“ó)X«š\Î\áƒÊš°º¤±ùOÖ°\Ã\È\nr½9o\æ$©\\\Ò\å3;-7^1³\ä–\é]%¥Ğœğ¯7±½˜õ|Ğk²\ÒuE‘I/½+1Ñƒ#‘…\íR€T\Õx›\n\n’A\íV\æ<úU¢Y&0¦¸oI™ö\×p¤óšóÿ\0¾.ú÷ªD3€«š‚R«l\Óİ²\0ª:œ¾\\*Œ\ÎwQ¸/9ªY\'5f+9n§$Fkv\Ó\Ã,\ëóT65\Îg\'½4\äô®Í¼#”\È\Ï\êz4¶.~SEÁÅ­Ì¶À\Óq”\ãóqi;S$i¤¥4”À(¢Š\0(¢Š\0Z(¥ Š( aEPEPEPH‡¥ƒÒL\íR/J½)ˆ™*\Äu]*\ÄuH–Y¦u0ªD’­>˜´úb\Zh \Ñ@¦÷\Üõ¦ı·Ş°^ôú\Ó>\ÚqÖ¼®C\Ó\æ:{\ïMk\ßö«\í¾ôy\ïO\\\Æ\á½÷¨ş\Ûş\Õa›\Ïz\íœõ§\Ê.c¡7¹\Ç4Æ¼ÿ\0j°\Åß½\èz\Õr‡1¨÷~õV[œ\Õs\ïQ´õI\äY’~j¬“f¢yª“&­\"$•Y9£cTMÀQH){\ĞŠZAK@(¤¥Z(¢€\n(¢€\Õ©Z¢4\ÔS½@ô^J®õbJ®ôYºš‰ªV\ëQ5R%¢Š)ˆ|C/Z\Ö\çjVT\'ç«¯.\È\ÅD [|8ª\ÒEM·Ÿ{c5k¨6(˜\È5V\épEk4u|¸5i˜\É\Z:üz\n‘‡½G§ÿ\0Ç­M´b“A!>™¨\Â\àdMX”\ásJ\åX…c\rO[P\Ç9Á«+Zš4P:QqòGlzEL¶‰\Ù@\ÍYAOùe˜\nW\ZE\Òc”rj\áøó\×õv]F\Ş.\Éöª\íªg\îÎ\Ù2H„x}3÷)ğú÷©Í¨¾:Î£:„˜\'4\îÈ²\"}\0ÿ\0\Õi4Ic=jà¿ÿ\0)\â\ì¿\Şj ²2š\ÊxúÇŸÂ™\å¿BŒ?\n\Ş&I\Êùªò,©÷—4sX=šeu\à‡\Ïµ*–ƒ\Å?ÏŒqR\ì`\Z3ŠW(+>\áW •›\0tª\äJ•7(\ÊÔ²¢kip	Ç­l\ÙÏ±Àc\\\Üƒœb´\ínT°$\Ô3h\èu‘N¡x<\Õ\rF\ãpª­\æmª\ÒO\æJFj,l™zİŠĞˆn\ÅfÙœ•­\ÛxL\Òl´g]¦Óš\Ï|†­Û»Bñ\çÒ±fB\r%¢»“š­!ù¶‘Ö­2œ\Ô3©<úU&CD[‚p1U¦¹•\É\Ç#Ö¤•\çšg\Ù\Ù[\å\Î=*“3q)¼\äœ\Ö\\\ï(c°.\rmIa$­÷qPMeº\î¸qÂª\ä8\\\Âh$s’\Ä})¦P\Ò\ÄzV³\\\ÂWEº…˜ª\äD«LDŒ\Èm\î\'oº\Ã(Ò§‘¾|ÖŠİ¸9—LÏ»JL\\¨¤š+)j_\ì‰\Üõaô­2J\Ãl˜ö©Z;\àw† vEô	Š­cõ«Qi’Â¸<ı)\Æ\îúı\ìYA­®\ìJ\n~®>DH¶Ó¶)\ãÖ§]*\æcóôö«VÚ‚Jp²W£wa•|R¸\ÔL\ØôU€|\Ìw¢§])T‚‰Z\Ñ\Æ+9\ŞOz°…„„h\æ‰ŒmmŸP+^\Â@7;g\ĞÔŠ²œù|/z± „’dŸJ¤\Èh×²pÀ(;Õ¶\0z\Õkv,¹	´õa¹\0\Ó%’¢€˜ö¯8ñk\í{×£\Ärú\nó7üMÖ©%te’Y€ÖŸ-\Éi\Åhivÿ\0h”qš\êaÓ•Tey¨”¬]*IœÖ—¡”^~•\ĞC`qŠ\ÒK`¸À§ù@sšÅ»±§\Ê\Êq[€\áH\âªø—@Š{\r\ê>lU\é®c‡\Ì*i\î\âÁ¹\Ïqdb!tx^£jm.\Ù{fª}+\Å1m»s\ïX\â¶Gk!\r4Ó4\ÓQE\0QE\0´QE\0-Q@Å¢Š(\r\Z(\0¤¥¤ =(”\n`(§¯Ze=iˆ™j\Äu]j\ÄuH–Y§Z‚:œvªD’­?µFµ\'jb\Zi)M%\0mšO´\ÖwM3W\rÛš\äSZ\ìc­g4\Õ—´\ì+š/w\ÏŠAt}k\Î\Ä\ä\ZrJŞ´\ìMÍ¡u\êiE\Èõ¬‘#w4õsNÁsP\Ü)\ÕEXÓ²i\ØF\\Šaj‡š\\\ĞóE&)hE- ¥ ¥\ïIKŞ€R\Ò\nZQE\0QI@\rjªF¨Ú€!z\êw¨€+\ÉU¬IUŞ€+7SQµH\İMD\ÕD±´QE1‹ïŠ·\')U\"ûõpŒ­C\Ü\Öbm²V´\r•¬qş·«j>J–l‰«;P\ê+Dğk>û™ˆ²&‹\ÖCm ©)°°/ÒC\nz)•\"ô©,rõ©\×=EV\r\Í>IŒqñÖŠB^jkl»a’³\çº¥b¢–BŠ\ÆFåª¤²K>H\ÈQ\éT‘œ™`\Í\r¸ù>w§\Å\Åä€•Ú”ºe¼o‚\ã\'ŞºlG`\ÇAV’3mœ\Å\ä&)¼”lšwØ¤\nK¶Õ›X_K\æò\àñVµh˜Y6Á\Î+D‘„›0¤d.\0j‘\êû•	Z\Ï\r°gÂ½#\Â\Ztz’Y\ãŸ—4(‹œmµ\ä’Iµ2H\íZğ\\,„G0\ÇÖ£Ô´\ì¥ºŒ«œ\ã\ë]§¢#Û‡Œmr*eXM˜w1°m€`\ÖT=»eI\Åh\Çr\Örù\0p	©\ä†9Ae9²73!½Ş¸nµef\â³nm\Ì3¼\nt3gŠ™©\Øj·\r\Ç5’dÕˆ¤æ¥—sr;Ÿ–¥‹\æl\ÖT/»ŠÕ³ù˜\n†im\éË’+£µ‹+š\Å\Óc\é]-¢\0 VM›^\ÄR@YqY7vŠ\éY\0^xC”®+œ‹Yj#jy\ÏJ\èf¶µR\"©13­\ÂúTr\0ª\n{Ö„õ—©J-\âù~ñ«L“3SÔ/’Xõ¬Ÿ!İ¼Ù‰f=‰­(¬MÄ‡9¨dC;•ŒòOJ¢YBiv€–\ëóŸjŠ\áfH~cÚº;FHc2Ì¹p3Y\r\Ûu‚¸ùGj\Ö(\å©&Œ•·¼‘~\\„õ¤ÎŠB6}kW\Ä7-¦À#„‘Ö¹»).¢Bå”qW\Êc\ÎÍ‹{k÷>nX2Ig©j\\´J¬e^\Õ\è¶Z\\cF·»\Ú>`3š\â5t:gŠ!¸·#\ça•JûF>\r}\áÅ¨[2û‘ZJ,uH\Ã.ÌÂº\Ë\İ&\ÏU²Œ\Íe\\±\á›\Í\å®lX˜‡8¬\çhM²;\İ*k\æÚ’{\â¬iú«ğ¬~~\à\Ôz^¸e`—+\É\àÕ«\Í9‹‹QœòÀVM17l\î’U\ÆkB\Îsš|O\Èxô®Š\È\áR\Í\rKu\Ø99\Í[\0>*¬h\0ršd4X‹R¿AQ\àqŠ“\ï\n´e$K1Ÿ¥y‡‹ÿ\0\ä$\Õ\é\ê0„W™x\É\n\êSZ-Œš¹w\Âvû£İŠ\êB\ÖW†­ü5_Öµ³XLé¢¬ªº…Ç‘{U’\ÕGUˆ\É	\àô¨H\èR\Ô\á5=Rw»X\ã5\Òi33\Ùü\ä\ç\×1{\0C\×5\Òi\ë\åY\çÚše\Í^\'\â\Óş”\ßZ\æ»Vÿ\0Š%v\ßZÁ=+¢\'‘SIXi¦šq¦š¢BŠ( Š( ¢Š(h¢Š-Q@h \Ñ@RPHQEÀZ‘zTU\"ô¦\"d«\Õt«\Õ\"Yf:œv¨#©\Çj¤I*\Ó\ÇJjAÒ˜€\ÒPh Lô\Ó/½S7\"£k€{\×%²\ã\Ì=j³ËõMšE\É4\ÄL†¦Z…*e 	–¥Z‰*U d«J)( C…(¤\áÖ˜\n)i-\0(¥¤´\0´´”´€QKH)h\0¢Š\0-!¥¤=(Æ¨Ú¤jŒ\Ğ/P=Nõ\Ğ2¼•^J³%Vz	+7SQ5JıMD\ÕDŒ¢Š)€\ä8aWsûº¢:\Õ\È\ÎW,\Òp¿½«n1ªJŸ½¢ƒŠƒ¡l!F\äjù<\Z¨ûŠ‘uF~”w¥\'¤¤p\Å(¤ \Ò(œõ4ö&E0*J¬\Ú\Ç\İ |\Ô\Ó:Ğ 8\Å1X¼4Ö‰ƒ\Ç\Ó\ĞVŒZ«kxT\ÔVŠ]F\ã\çQŠ¤É”Nvô}‹Só³ò“\Íh›¨.m\Ëezt­\ìm5°\Ø©¢#›¢š1t›9\é¬aß¿ŒÒ·l<F\ÚM™··P=«\á…`L³ƒƒÀ«¡YùD\Ü\âŸ8{giV÷^\"\×\Ö\îñøSÆ»k\É _²ü£Ö± ²ÚU¸Ù\â‡\Ó\Ì\ÊC1\Êû\Ô9–¨3\Äv\\B\ÒF\Ãx\éŠ\å\íu`>[\äŞº«\í(óµ\Ï=«\ëIeSµrj.h£a\'–;¨w&3Y\àlc=½œ\Ğ>XzT¯˜\Ù\Æ(¸4B†¬Fj»XRGÖ“š6\İ:\ÖõŒ}+OM\ÄWMe³‘\Óm\Ø(x®Š\ÛE`Z®Ğµ³jı+6jÖ†ƒ€PT2ô©3•¨\ÏJ’\"S‘A\íU\ä·\ï\ÛÒ¯2sM`¡h¸4a_*Á3\n\ç\âµ7\×\r,Ÿ\êœõ\Ôj\Öÿ\0jUE\éŞ³/R\r:\Ş;v?#}\ê´\Ä\Ñ\Ë\ë7Ñ«yVœ¯N*}Â†`¤\Õ;û47‡ì€•<æ¤´·™\Ì\Ä\Z\Ñ2nuC\Æ\Ê1’+—·\×[a À\ÏSZ\Ö\Í(\ä7J§ª\éwx–¼9âµ‹9§M‘x‡LKõ/\È\Çj\äì´™\à¾XÙŠ\Æ[“]ZÍ¨[Cµ -Y÷\ÜK ÿ\0G*\ßJ\ÕH\çt\Ù\×\Üx…—\rœ#1‚kXŸU\×\á	\ÎdûPòU\Ùd\í]o…ô«}*3suÌ¬8•|\è…MIŒ$kp\0›¨Ê†”µ\æ°e%#Z¤a¸¹\à“Ş°©#²•3*\ïB…\Ô\É½©¶=®b™~^æµ£µh¤\Û2­X“Iß‡B6úV.GZ‰V\Ùa$4G\nkbÛ Áª‘\é\ê¸\Åh\ÛA·›c±f0qVb¦\"qR \Å+’\Ñd\n–3\ÅA»S\Ç÷kX\Í§\İ>µÀx\Î\Ü5\Ôg\î®ú3\Î+•ñm¡g€\ï[t1\êZÒE¦F¸À\ÛSn\Çz‚\ßä²ˆJ’	#ópO5„ˆlÀ\ÉË¥Í³gÒ®>Ò£*µ\Î~\ÎÂ‘´w8\Èw\ß\ã\ëmÀ†Àö\âªrú‘\ã½X\Ö\å\Ùc¾(KSZÒ´O5×œ5\Ëw9¬“\ĞU\İIüË–ú\Õ#]\Øñå«¸\ÓIJi*‰\nJ(=((¢Š\0Z(¥ Š( b\ÑE\0†Š\r\0QE%QL\ày¦Šp\ëLD\ÉVcª\ÉÚ¬\ÇT‰e˜\ê\Â\Õx\ê\Â\Õ\"IV)‹O¦!(4´†€9Æ—­6œ+š\ÇMÇ¥N† J™:\Ğ2t2Š…je¤ª*U¨Ö¤ZJ´\à)«Nv)E%˜´”´\0¢—‚@\n.)- \n\\R\nZ\01EPHzR\Ò”cTf¤jŒ\ĞN*;\Ô@\ÊòUi:U™*´($¬ãš…Hõª\ÌQŠ(¦ j\ÔªÕˆ\rK.%ÔˆÕŒ\àcµG\"£’L\Zƒ¡lJ\í\ÅAn394\Ã.jKA—&‚Yq¹4”¦R<\n]¢S©ƒm\n1\Å8\nv(7P{Tƒ#Š¶WŠaNE1m[@\Õ|`p*X\ßmE¸\Õ\É\ãr5È¤“õR—Š¿\è4ŠĞ•—/•\Ïfrû\È\æ¡I\Ğö©V\ã(¸\Ëx*¥\Ä\ÅyZf5©~´‚\åY%,Nj¶ğ\äU©#\ëT&	5D¶Ax\è¹8¬™f\Ã|µ5\ä\Ä\äUEóA€\ä\çÖŸ\æôô^hcH\×ÓÖº‹%\à\n\æ4\Ãó\n\ê,œVR:`x8´\ísÁ¬¸\ÎH\ÅjÚœ¨¨5kBşp¼S	\Í(-%&DFšc¯a\Ğ\Ó\Íp3I‡R¥Â¬p“k\Z{xn”ù\Ã5·wxN+šV‹*j¢§sP¨TP\0\ïY¬\äM\íZR.j¤¶‡¨\ëZ\"H\Ñ\ÙNğj\Â\Í\"©MUP\ÈpEMd\ã¥]\Ä\Òd\éx\é€\Ê\rX[È²”™>\Õq\îÀ\Æj\ÂÙ£vò)óé¶”\íc\å\'·±–”Â¯A\n®*X\áT˜ñÁ£˜=š Š\ÑSh*z\æ¬,+œ( J°\Èp½8\'GSY·r’±Qc;ˆ##Ş¬$;zT\ëT…j¹_\ÊRzS\Ö0½*`œ\æ—mH\\AœS—­(RSBd Š±LUh\'5:u­`c2u\æ³u\ØDĞ¦GJ\Ó^œ\Õ\rP\î!Eo\Ğç¶¦M\Ì\ÂAÂ°b\Ô]\ï\Ó\ÆkC\\s;}«\È”1®yp‡kk9‘&¤Ÿ\æˆ\ÖE­\Ö1ƒZ1K\æPh•™“¸Løæ°¼QrV\"¼WW:ˆ·5yßŠ¯7HÀ\Z¸£,Dô8ù\Û|\Ìj\Ôó\Î\ãQ\ã²<\í\Ä4”¦’˜¥”\0”QE\0--%\0¹£‚œ(QE\0†Š\r\0QE%…QL\áÖ˜)\ã­1%YŒ\Õd\íV#ªBe¨ù«U\ã«T‰$SR\ni\â™\"â“­8ô¦\Ğ/N\íM§VA\"ñŠ™j\íS¥ID\ÉS-B•2\Òe\éR(¨×¥J´‘E8SE<P!i@¤¢˜‡b€(¥\0§R\nZ\0QKŞR\ĞŠZAKHŠ( ´Q@\È\Øv¨\Øb¥nµP/P=Nõ\Ği*¼*Ì•Y\è³õ¨Ú¤nµU2Š( \0T±œQ\nzœ\Zã¹¥qš¯;\áªXOËŠ†\àVf\é\èD¯“W¬ø¬\ÑÁ­CMˆ¸h„Ò•%!\Ë\ÍH£Nµ2ŠL¤(Zv\Şi\ê´ıœ\Ğ{i\É\ç5&Ê‘R€dBOj\Äq\æ§H†hEh\íFsV’Û¥XH\ÅNŠ8 ´ˆ¢ƒÚ¬¬ ”õ\íN$ŠE˜…F\à\n•W•±LL­3c<V]\ãğkFcÁ¬›I¦fÑ–ë¸œ\ÓÚ¬È¸5u ,1FMJ£À1O“)\ì¥\Ø\àbºK93·\ÊB\Øa[º|¤sPÑ´\ÕÚœ¯=kVÓ‚bYM»±lÿ\00¬Ù·C_ ¨\È\ÅHû±Qµ;j7¦\í\àŒÓ»Ò·J†RT0\Å`j¶d,§\"º\ëM*cHÇªm\ÎjQ\â¸\äVİ†\ÂH!SŠ»’\ÑT\Ù+?JF\Ò70+ùV¢\"–\Ïz°‘œ\äQqlb}‚t9Z–8\çSÊš\İHıEJ#RpV€¹\Ë\İMYHŸ½iSÒ!_J5”R6«qØŠ°#µ8\0)\n\ä\">sN+š~(\Û@\íæŠ—\ÓH©\Î\Ôb”ŒRv¤1\ë\Æ=\ê\Ì#5]:\n³Z\Ú3%ÀÚ²oÜ½\Øµ¡¬Í»\î\Î{V\Ïc¦>µl\Ò\ÇÒ°&6\Åw·v\Ë$\'Š\å\ïm\Ärp+L\í§±³•8­‹&%À¬ˆ\rZ\Ö<¾hFY\\]]„v\ì\Ù\í^M\â	¼\É\Øû×¥øšq«×“jrï•‡½myµfÛ³(‘\Ç^´\Æ\íNji­FšJSILAEPz1E-\0%R\Ğ\np¦Šp aEP\Z3A\ëI@šJ( –QE4NšJ˜‹j\Äf«\'J±R%–\ã5aj¼uaj‰)‹RS$3IKE\0r\İ)Ãši§-`t’/j™j©V¤d\è*e¨S¥N”2*E\ZT«@\É\0§Mú\Å\ÅŠJ))ER\Ò\nZ\0QKŠAN\0R\ÒP(i)i)\0´QE\İj6©­F\Ô\ÔS½@ôZJ®õbJ®ôYº\ÔmR7Zª‰EPŠPpi\'z©~\Ù\ÆE>x‰^İ°Â´B†QPme4lJ¹jvõ©\Ú\ÇJ‰°‡•Ë±kŒŠPi¨wGJ)	/<l0*¸©\ã\è)\Z\"\Üc5.\Îj8ªÂŒš\0M”õı´¤\ÏJ°£¢Œb§Q\ÍH•5*ŒS¤\Í\"’$‚i€\Ò hG5VSR»UYZ˜™^w8 V|Ç­\\•º\Õ	š¨‹$8\'=j¹\É5,§&¢€°½)@\Í6œ\r!¡\Åké¯–\éX\Êy­	6°¤\Í`vV8\0Ò·l\×$\Z\çô\ÆŞ¢·\í[\n\Å\ît-p@AM<ÒPS3L\Í\î.(\Í&h# œ\Ğ)E4!’Ä²EQ–\Ì/ V¦)Œ£¡¦)‹\r\ÅH\r\\–Ú«°y¢\ã&‹>µep\rPi©Ñ½è¸¹K€)\éN¨ª]õW\"\Â\â”\nLÓ¢\â°\Ú)h¤1)¦Mj‘Œ~i6’)Ç¥ 4ƒ\0U˜¸¨PejX\ëx\Ìt§b’zV\\$´\ìİªı\ìa5ŸúÖ’v1Š».\È\ã\É9®cQkb\îR±c<š\È6m3f¹\ç|‘Z[Š×²]¨Iªği\Å[šµw\"\Û[\ÜU\ÅRvG!\ã\à¨<×œ\Ì\Û\ä-]‰\ïL\×3Ş¹–­¢6n\ìi<\æšÜ)M6¬¦Ó! ¢Š(\0¢Š(\0¢Š(\0\Å-P1h¢Š\0CÖ’”õ¤ ¥\ZJ	b\æŠJZhœ4S‡Zb&CV\"ª\ÉÒ¬\ÅT‰e¨\êÂš¯N½j‰TÔ‚¢^µ(\éL‘h¢Š\0\å9i¦œµ\ĞHµ2TKÚ¦N•%§J*©Ò€&J•j$©V€$úb\Ó\è¢@§PJ”P\0)h¢€\0)h´\0”¢Š’–Š\0(¢ŠC\İj6©[¥Dh¨§z\è´•]\êÄ•^N”Yº\ÔmR7Zª‰E(¥ ÒšZ(¶°­[vÜ¢²´,\ä\éRË‹/2|µJe5£\ËU\ä5&\ËT2\İ\Î\ÜT¢¢v5Hh\'© \"¥CÒ«­KÁ¤j™~#V\Õ(š¬\Æ\Ù\"\\¶§Òš¯\Å=y¤1\ãÚ¤^”Å©TR)SN\É8¦t¥\İH¡ù¦;R¨\äj`#½U–LÔ²5U‘©’\Ù­Áª35Y™º\Õ)\Z¨’¨\Å=M0š(¥¦KœP!\Ã9­>¢³†I¥f„ºâ¥š@\ë4’B­tv¼‘\\ö0‹Š\è,ñÁ¬¤t\Çca>\å34\äm\ÉQšW!¡Ô¢‘ii@\ëM§\Å\Å\ÓA§uª%‘\ÍA$g=*\Ó.)¿.i\r2‹DI¤\0Š²W­G§&‚\îœu«\n\Ù\éUˆ\ç=©\èsÓŠW&ÅœZp5\\g5 \ÎsE\ÅbJZ4\í\Ô\îM…4Ö¤f\æšZ‚¬•FE0¶N)\ëòĞ‰d±œpje\à{\Ô#±©`]0G<\ÙBúB\\/jddbª]\Üf\ç9\àS\à”?CJ£\ÔT•Êš…\Ã	vŠ³`ÅºŠG²ó$.\Õ=¤[$\â²J\ì\ím$Zu¹<W+\â]@E\0\Ø5\Ójw¾[Ò¼³\Äú§˜\ì\ï]\n\'ZŒ\æõ	ŒÓ±&©*Gm\ìI¨\ÍY\Î4\ÓiÔ†€¸\ÓHiM! BQE\0QE\0QE\0´QEŠ( =i)OZJ\0CEµ­- \ëKL\0S…6œ)ˆ•*\ÌuY*\ÌuH–ZŒ\Ô\ëU\ã©Ö©J½jQÒ¢Z‘zS´´”\n\0\æ\r*\ÓM9k •jd¨R¦Z’‰’¦J‰*e 	R¥Z*U ­>‘iÂ\0§RQ@¢RŠ\0QJ)( ´‚–€\n\n\0Z( u Š\r! ¡\Z¢4ö¨\Í\0Dõ\Ô\ïP= +\ÉU¤\éV$ªòt \n\ÍÖ£j•\êª$AKH)h\0¤¥¤ ©­\ßk\n‚œ‡•†™½\å)¬\ß5S·˜\0j\Ór3RÍ¢Æ¿Zwj˜\ã\ä9€zÔ©Ö¢^)\ëÖ“-’­Fj’\Z³\â‘E\Ån•:\Z¦\Z§©\rTÔª\Õµ<iLiqMS\ÅóH`j9)\Ìj64Á\Èj¬†¬Jjœ¦™¯1\ëT¤5bSÖª¹ª$Œši¡¹¦g\Î§c$Ty©c^E!–bŒZöm\ÇŸoH\ÍoZ\'\0Rf‘5,\ÜZÛ·l+\Ñ6ıkR=\ë&tGcf6\ÂRª±\ÈİªEcŞ¤m«T£¥@¸4ğ\ÛÖ™–Ò˜<RÂœ))¦C\Ó[¦)i\Í\0D\ãšc\0g¥LTSvƒ@\îDSÓ¥0\çøjV)¬¹¤PÑœT‹œu¦H€%\Í&\êg½#5°\âi	¨\ËR 	TóSj¸\äT\Ñô«Š3™dš†\î]–\ÌG¥<p3\éYz­\ÖÈŠú\×B\Ñ\ÏVc´­3¿=\êİd\äÓ­,¿q»¹©\Ä[+)\ê\Íi«\"\Øm\ÑñN„ˆÁcQFBj«©%´3U*hex§W	\0×—\êFyO=\ëW_Õ¾\Ñ+5\Ï_Z\Ø\ár»ñIGzCL4†ƒI@i\r)¤4\0”QE\0´”P ¥¤¢€Š( b\ÑE\0‡­%)¤ @{RQILB´´ƒ­-\0-8SE(¦\"T«1\Õe\éS\ÇT‰e¸\êuª±Õ•\íT‰&Z‘zT+R\nb@£µ  `Ó–’œµ\ĞH•*\ÔkÖ¦Z’‰R§Z‰*e 	R¥ZjE 	V”SE8P!\ÔP)hE(¤\n\0p¥\ÑK@´\ÑN\0P( P\Ğ:\Ñ@\ë@¤¥4†ŒjŒÔQš\0‰\ê©Ş zC+IU\ä\éVdª\Òt \n\ïPµLõU ¥¦\Ñ@E–€–Š(ñ¹R¥hCq¼b³)ñË·¾)5r\ã+\Z¬¼f™\ËUe¹\ã“RC&MM‹\æ.t4\å?5E¸\Ó\Ôçš’\âXJN*²\Z™‹E•j6ª\Êjd<\Òi\Z¤Væ««sS!\â‘W,©âED´¡¨°\î9FÆœçŠ\Ï\È%5RSVœ\Õ92J“µU\ÍO1\ëTİ½\êˆb3bsQ’Ku©c^(\ã•ye¨Uy«zR)#F\Ùr+~\Ê<šÄ±\ÅoZ°\àT¶k_…ñŠÓ‚<õª–‰È­˜#\0k\'©º\Ø#„ö©dU¨1©\Ú\0Ã¥W).¢(\"ÔW>”²E°\Ôğ¨t\Å5[)\î\à\n™9Pi$‹kš_nCC,ŠSH¼Ó½h±,J(¤ @qM\Æh¤4Àx\ëLojSM=*J\ZÆ˜Â”\ÓKS(qM\Îi©¡±@\'\Zil\ÒLL˜jX\Ï5\0æ§„c­icQ\èJ\ÒSõ\Îjn\Ò\Ş\"™­«©@S\\\Í\Õ\ê\Û\Üns\Ínö9vgI\í·Q\ÜR6&°¢ñAyqUo<U\Z)Á\n&¼\ê\ÆÆ£¨\Çl‡\ØWŸ\ëúÿ\0›•\rUõ½Ë°V8<W9<¦Vçš¤i\Ê\ãf\È\äô\ÓF\Ş:\Ó\Z´g`=i\r-!¦1¦’”\Ò\Z\0CHh4”(¢ƒÒ€\n)( ¢ŠZ\0(¢Š-”P\0i\r)¤ Ch¥4S´´ƒ­-\0œ:\ÒR­1¥O@*hê™f:²½ª´u:}j‘,™jAQ%J)’?µ  R\Ğ1NZn)ÃŠÀ\è%^µ2õ¨WµL•%¥LµT\Èhu©¢SR) 	E:˜\r;4p§S¥\İ@\n@Ô¨â–š\Z—4\0\áNÀis@ RK@@\ë@¥\â€\ÒRšC@\Æ5FjF¨Ú€\"z\êwª\îh•ZN•bCU¤4\Ô-S5B\Ô\É\Zz\ÑA\ëE\0(¥¤´\0QE\0RbŠ(f®[7\"©\àTğ}\î)1£Ha…8q\ÅD„ŒT£­Aªd\Èjd5š‘M#DYCS)\æ«)©T\Ò(°­\ÍLò\ÕU52±\éÚ7qJ\Z¡\İNİŠH\íQ»qH_4\ÒA¤26n*œ\Í\ÍXrj´¢™%Û“Tİª\ÔÃ“T\ä©!¨r\â®*ñT¢ÿ\0Z+D.N6L@p)TÒ•\È\Åp8¤hi\ØJ€kzÌ‚À\æ¹[i°\Ío\ØNÔ´\\duVxÈ­H\Ï#Ò¹\ëY\Ê\ãšØ·Ÿv+&Ö¨Ø€€F\r[iTµ—»{\ÓfºØ¹\r\Å4\Ì\ÜrÈ¬jKvß­a›\Ã#pp*\Ü72sŠ¤Á£NDW5Vh¶EI»ªY•L#¹¤Ğ¯b8ÛO¨c\Î*e\ç5\0%4Ó©(\Ì\ÒNÀ¦(†šzRša&‘Cª3\Í9†)§Š0°¦3Ct¨\Ø(wæœ­Q¢ñ\íO@3\íT‘d\èI\"­)À¨!Án:T¬@\ÍmsM•®ˆÁ\Íp~\"˜¬„]¥\Ù- ô¯>ñ\äH}kS³{©—;X\ÕW¹•øf5$“oN\ÕXi\ä#g©¦Òµ4“M!É¤£8¤¦1i\r\Z\0i¤4¦\Ó\ÓIJi(\0 ô¢Š\0J)p(À –’Š\0Z)§P1(¢Š\0\r%-%IE\Ä­-\'JZ\0;S–“Šr\Ó ©£¨GJ™*‹Õ„¨#©”\Õ\"Y2T¢¢J”t¦H\áKM–€9€iÙ¦S…`t)\éS#UqR«b•†XV©‘ª²œŠ•M!–UªEj®­O@CÒ‡¨ÓƒŠO¾€õñFñ@7\Ò¨|\ÊP\â€\'\ßO\rU\Ã\npj\0œ585B­šplP¡©À\ÔjsN 4£šh§9 \0\ÓiÙ¤ c\Z£j‘DÆ€\"n•u©\Ü\â z\0­%W’¬\ÉU¤ \Z¡j•D\Ô\Ä4õ¢”\ÒPŠ(´\0RR\Ñ@	KIE0\n–†¨©\È~j–4h£g05VÆ¬+dÔ³X“©§ƒ\ÍD)\ês\ÍI¢,RƒUÁ©óH¢Âš6*8©È¤ûºP\ÍÒ˜R3f-HZ¡/F\ì\Ò\æ¨d1j†G¦\"„\ëÖ©2\ZÑg&«H•H–S_–\á}+Z“‘Yr\Ç\ÓEZ´¾H\Æ\Ù84\ÉZ\Z/Ö¢›Ë‹\ï0¦ú0„©±o\æûC»Â…93Enaß…pMkY\Ï\È ñ\\|6å›†#Ş·4ÛŸ#şt4L^§gmr^kf\Ö\ã§5\È\ÚËœñZÖ·\\j\Z:T˜H\Äõ§IºU\ìeÁr\îÀj\ÍßœmğƒÖ¢\Åó6Cqykj\Ûe™Wñ§[jp?ú¹\Ç5\Êk:\'š\Û\ÙÙ³Ö¨X\Û\ÜZ¾\Ôv8û¢˜/3\Ó\í\ï€æ´–@ñ€Eqº,W—©Öº\ëh|¨Àİ“I±4J«Šz÷¢€qQa¦‘šwZN”a˜§æŠ0ŠŒŠ”\Ób‘DOQ0©Šû\Ó er3QµOµ\'=hDÜ‘\ÅL‹MÀü\î•¢3‘,!ú\ÒO \nM4Hc½S¹vß·±­bs\Èl²m!ô\ç:\ì\ÂI\ë^ƒ<¢+\'È¯;\ÔÂ¼\Ïõ­ŒŒ#\ëQ“\ÍK*\ÛÚ¡4a\Ò\ZS\Í!¡	¤¥¤ª˜¢–ƒ@\r4†”\Ò\Z\0i¤¥4”(¢Š\0(¢–€Š( \0S…&(\Í\n(¢€\nJ\\\ÓI BR\ÒfŠ`-(¦Ó…S–›NSLC\ÅN•2U!c\éS-@‡Š9ªD²d©J*L\ãŠbS© Ó‡4\å³N™KšÀ\è\r<5D)\à\Ğ\Ê\Ø*½V­Š@YOUƒ\æœ€-\Í(j¬—Ì ;¨\İUÄ´¾e\0X\İJ\Z«y”\íø A©\áêª¿½H­He¥zxl\Õez•Z€,)©¨Ô€\â€&SN¨\ÔÓ R”dPH 5DjV54\ÔS9\Ğ2´•]\êÄ•]\è»TG­J\ÕBõ¤¥=i(E\n)\0´”´”\0QE\0P¼5¸\É˜\"\ìG\å\ÍKsPG\Ê\â¤O—­&kØ§¯¢ƒt©jM 4õ54õ5%ƒR\Å@\r<76x¦3TfJŒ¾h(”½9M@5\"šArV\â |šs1¦÷ .1ºT,*W\êj\'li‰¿¥U’%~O¬<ê´“J¤e&Wp\ëÀ\'Ğ»yzbG#\Ô\Õ†\\ñW\Ğ\ÉÈ·\Ç=«Bs)½«6\İYˆ\0|µ»§ğ:`\nL¸2Í¡qò\ã¥lYA$®8\âªÛ˜¸8\Åh­ôvÉ•<\Ô4t&tzm¤q\ãZš\êt]È¢¹‹mu‹\ä3N»Õ‰‘˜raJ\Ås\ZN\ä´|g\Û&(¦ódÁ¬£p\Î\ÂX›ö«¶zÃ–)p¸E\ï\ëR\ÑJW:»vX”2(\0Õ¸ğ ¹\æ±,ï£¸\â5mƒÖµRPp?JÍ–\\†˜².\í¤\àû\Ó\è$J1š	\ÇZPqH\"šiæ›Š0Ša©N1L\Å+0ŠŒŠ”ŠaX.D\ëQ°\â¬\ÍBËšh›•\ÎwTŠ0)„#=\é\Ü\È5¢\"LŠGw\ÕFk‚\Òn\Ç—ó`\í¡•¶Z/BO¥i	_Íº±\\ª\Ş\\\äZ\îoñöÿ\0p:‹†‘³\ëZ2„\Ò¨\r8\ä÷\âšh”\Úu74\Ä%\'4¹¤¦!9¢–\Ò\r!¥&šNi€†’”\ÒPEPEP ¢Š(h£4f…fŒ\Ğ\ZCJM! BQEÀ)Â›NZU¤¥Zb%*TK\ÍJ•HL°•:T	S¡¦I2Ô\ê45%P‡\nQH)Gzr¹£4™£5°üÒƒQÒƒ@†§¨sJ\r&\rN\ßPn¥\İ\ï@Ñ¾ \Ş=h\İ\ï@‡§oªÁ©wû\Ğôo÷ªûı\é<\Ïz\0¸¯R£š¢²Tñ\É@“S¡ªhü\Ô\êô†‹j\Õ(9ª\Êjt<P2u4ğj%5  RQE\05ª3R5Fi\ÔORµD\Ô¯%Vz³%V’€+·ZŒ\ÓÛ­0\Õa\ëE­\0¢–R\Ò\0¢Š(\0¤¢Š\0ZAÖŠS€i0Eˆe0WŞªÇŒT±¾ƒÒ“4‰f#†©\Éæ«§\'\"¥\ÍI¢%œ\rDz\ÓóÒ¤¢\\Ó·qQf”Ÿ–€š™ºµ3v\r&Ri\áWÒ‰=y¦+–c¥5Ÿ\"ªı£oSL{°ü)\æ‹\Ë*c\æ«;u¨\ZU9\ç½Eö€ü(\ÍRD94ø8\Ôf}¨“s\É\é\íQ%°¼\Õ$dØ¬N\îE8&H\íI’¸9=jXĞ·^´\ÉJ\å»b§	•©<m\éTm X\Èf1\ã©#ˆ¢P‹óT³d¬K,¦(‡µg__°•\0n´\ë‡vBY±\íY\×‡e|ô¡!¹\Z–·E\ßnjÙ\ã@ù$¯Ş¬[&Ì¹\'­Uf*\ì\Íò¿_jV\ZdK$Ny*Æ®›Áƒq,¦³­şD+!ùOCS}ŸÎˆû1\ßÖ•‹»GAm|«.b3Ú¶b\ÕZ5R§ŸZ\â`€\ä\rüZ¦T-opı9\ëY\Ê&‘‘\Û&£\0ò6XÖ´\í\"sß¥pp\Êö¬‡rz\Öİ¦¬\Ç3œt\rs¥óƒ¤sR\ãÚ²­ut*Z\à=_Š\é`°\ç‘R2zJM\êFs\Å9F\îF\r\07\ÜS\É\0\ã½! .FS¤lL/\Ô\Æ?JˆÓ\Ôô4\Âi¢FJ—5VY\n!æ¦•ö®s\Åg]ÏŒ(\äÕ¢\"L£0yI\Ï\\Ô„lU©g\'j>a\ÔSaıü£wAVŒ™SW—m˜\Åp7­ºFú\×u¬ª…d\'\é\\&¡II\íš\ĞÅ”\Ê\ãšCNcÒ˜h´\Î\ÔóŞ™Ú˜„4™¥4S™ \Ò\Ò´\0\ÓIJi(\r%)¤ Š( –’–	KIE\0QE\n(¢€\ÑJE%\ÑA¢˜8SiÂÚœ½)½©\Ê8¦\"E©’¡Z™R\'J{T	S­2I’¤*%\"¤*„<RŠh§@NŠ(¬M…\Í¢Š\03FiZ1@š3IŠ1@…—u4R\Ğ\î¥\İM¤ \î¦æ’‚(Ej–6ªÂ¥Œ\Ğ2\ìoV\æ©\Æj\ÌfËˆjÂš¨†¬§JN•2\Ô	S-\0:Š))\0‡¥0Ó0\ĞMÒ¡nµ+t¨[­!IU¬\ÉU€+·ZŒ\ÓÛ­0\Õ\0\ÓÖ’Š(E- ¥¤EPE%\0´†–Š\0’3R\ã½VC\ÍZ•\ZLh³\İ\ëN-ƒŠ%8©\n\àf \ÙB*^\ÕU\æ\ÅYHc¥\Í4\Z^Ô™Wõ¨İ€œ\ÇJ\âB\Ñ-–\çŒ%F$\0d·5T*d	\Í!\Éô«±Ÿ0²\Î	ŸÆ™½±šV]ü°£Tù±\Î=\é“q ¿½NPF\0QÉ¥T+\ĞU¨W™i\\¤Š\ŞQ S|¿,“\ÜÖ—‘\æ!À©#\Óò µ+’\æH€©\r\ëVm£aÚ´\ÓNó.8­KM\Æ\áIÈ¸\Ó3\ìôùfufûµ·ˆ\îK2\äZºuœ(ø\'\Ø\×EQ-³`‘Y\Ü\İS<«U\ÒF\0pµœ‘´‰Ò½RĞ¼ù(\á5œ*À\Æió\éjr–P8•†\ÜÖŠ[N[c!\Ûô®¶\ËÃ‹\ÜW<\Ö\äzL!@ešNe*Gšc˜Cm\Î;T!.7•U~•\è\ÙJˆU@Áªğh¡K£&—1n™Ã¶\åtW\ãa‰óQ\Ënˆñ[ú¾\å*¸@\ßJÅ’\ÉÕ‹¨;H\àv§rl@ş|R3+\æ#\Ğ\Z|ev¾J‘Ö¤k:\ß2n{\nAje‡v0;R$Ò‚ôN|¾Â®AvT\îI.3X1\îƒ\æi<Ç‰÷n\ë\ÏXw:\ÅÔsµ­ou»Y\î³\\M­\æ\ì‰Š¿ir–\ÇjV1İ²–Œ9¨J‘Ö³4]VI¤ò¤\äŠ\Öfı\é\r\ÅK@™\ë\ÍBË—ö©\îl\n…\äù¶ş´$6È¤Â¿ŒA\â–W\'#Š¨g\ê{SHMŒ»o\İyª0+;‡~‚¬Ó«\ÕG–Tuö«D2´ò™\'8<\n¹i\0H÷š…,ğr;Ó¥˜\Å\Ê\ÑH\ÅñH\í\\e\Ä\ÂRs]Fµ6Q³Ş¸\Ù\Î\Ü÷ª2cZšiO\ÚD±zojq\ïL\íT!\r \ÑL4”´‡­\04\ÒRšJ\0CE’€\nZJ(h¤¥ AE%\0´”Q@E%\0´\ÓKHh”QE0”SiÂ„\ÓÖ™OZ¡-L•\n\Ô\ÉLL*aP¥L)’Hµ*ô¨–¤*„<RŠh§\nr”QEbl-F(\0\ÍbŒR\0¢ŒQŠb\n(\Å!…¢Šv\0¢Š(S’›Šru¤2\Ìuj3\ÅU¬¥!–Õ”5U*\ÂP2Êš”t¨¦Z\0x¤4¢\Ò¦˜jCQš\0‰\ê\'©^¢zC+\ÉU¬\ÉU€+7Za§·Zaª´´”´\0QE€(¢Š\0J(¢€’–\Ğ{ÕˆŸP0\ã4#RcF¤\"\ÜUki*\Ã5#D1T\æ§\rP¬‚•›¥!“+sRgŒ\Õ`\Õ:Ÿ–¥”˜\Çc‚k:bdc\íZOĞŠ!$ô¦‰e/,ª\î^µ4V»¾w\ëRy,eùzV„VŒTn\éUryJ\Ü\ÌrF1OÀEj‹p\Ë\éLò\Ñ=\é\\|¥X\ìÕ…Y[a·\à\á÷§ù€\ZE¤I¸Š³\Z MRûNÁM3Ã´\Z#M$,bœ/™°\éY¡óœš— ¢Å¦^\Z£u­[`€æ¹¬…;j	X\Æıi8š\ÆG¢ÁªÁ?R2jSw¢¸[X&\í\ÜÕ©n™q–¨\å4GW&ª‘ğ¤TC[\Úr\rs;Jø¬ğ¨7Q\ÊG¾…¾cW#\Öbv\Æ\à+•\0©¦ne †\éG(nwdS\ÄF\àsQ\"6Q\ëš\â\á\Õf¸bq[\Ş%\Ü\Ì0}h±F…Ş“\Z\Ä|³X\Íj\Ğ\åsÕ®5Hg5$L\Ã=H \ÊQ0$ELõ¨¶,›€\Ïz·vŠ¬M@¡I98À¢\äX¬b½ªP%G¡ùS¨«I\01†j\Ökr­Ú™&¾Š¾y\Â\Ø~õ\ĞüÌ€\È~j\ç4„÷dGßµtŠ\ÊÀŒeªZ\ZdR¸‹†©]M°CV®q \Ú:ŠÀ¿¹a&\Î\âšCl›xi	o»Ud—s^ª?´bû\ÄÒ¤{¶m\ê:Ó°®Oy\'SUƒ*GzK\é·\Ì\0¡c\ÚF\ê¢KVòBÇµg^L¦SV\ÚP¿\"t=kQo-‰ªFr05»†k\'q5¥ª¹y¥eôª1b\Zi§7\Ş\Ó@i½©Æ›Ú˜„4fƒF)€fõ¥\Å!\ë@\r4”¦’€\ÒRšJ\0(¢Š\0)i)h”QE\0QE\0QE\0#u¤¥=i(QEÀ)Â›N ´\Êz\ÕT\ËP\Õ2\Ó&Z™{T+S/jd’­<S¤*„(§\nAJ(\ÊQKEblQE\0QE!\0¥¤¸¦E£À(£b€\n(\Å AOJf)\ÉÖ“a\rYª¥Y‘H´•e*ª\Z²(:T\Êj5*š\0˜R\ZAA ša§ša ¡z™\ê¤Uy*Ì•ZJ\0¬\İi†\İi†˜\Æ\ÑKE\0%´PQKE\0%´PR\ÑE \Ó3†§šCŒPˆŸ*Cœ€Iªñ6*Vp\Ã#­&Re€@\Å0A\Í@§‘š‘›¬Zd¨ÀÕ…éŠ¥A\ÍYI•qÎ´ª2(l•¢0I©f\Î]…3\Ïj¨€•«1>\Ş)0±4Û•~QXwwò\Ã\'	š\Ş/òóT§%\çšŒcª¬¼\Óµ»`Õ™´\àXµ°ù¾\ïJ°±\ÔôRsR}¶S°\æ¬\Ãf\Z@6Œ\n»\é2qAq‰ö«‚\Øjh\î/Pı\Âkn\Ş\Ì9h\ÍjE§®TQseL\åI\Ô$9cğ§4\Ò˜ÿ\0J\îF7ª…f=xp2)\\×\à–;\è6‡\æûl\ÊWw-´Kkó \É\é\Å$[ù| ${T\Üj\'® ‡r©«§*©\Ù\Åw)„ğ«J±ùd×ŠW)#€[=I•~Z“û?Rcş®»¨`(u«f4…ÇšË§\êÇ•úTZ\êQs\åd}+\Ò\Şp~Qš‡\ì\à©R£Š.KG™ıºú\ŞA˜\åV#\ÖõØ,\çÖ»·\Òb¸\ëüªh48-\ÆJš.f\Ñ\ç¦mZbY¡8úU›In\âd\ë^Š\Ö\Ğùx?*È»±‰‰@\"¡\È\Í\ÄÇ‚7*98ô­`cÀÛ’zS?$r*Â¿—µñBd4h\Ù@a˜\ÈN+S\ÍPwªv\Ó\0À\ã9aö£n_\ÄPIWP›j\äp}«\âÅºúš\Ó\Õ\']„ƒ\Ås÷7L!\äÕ¢Y$m¹ˆûÔ‹+DH“U\"\â\Ï&ˆ\Üù„±æ˜‘<d½\Ç\ÍR\Ê\å\'\äUI®|¯›½D.Œ¿1ªH—\"\Ä÷[šÄ¾»ßœš±u)lœ\Ö§1_ºz\Õ·©Ÿx\åœ\ä\ÕSRHI\ä\Ôf„4\ÓN¦šl4\Ş\Ô\ãM\íLB\Zm8\Ói€QE\0†›N4\Ó@Š\r\0%ŠJ\0J(¢E´\0”R\ÒPEP´”§­%\n(¢˜(¤§\nR-GR-P‰¥J‰jd¦„\ÉR¦\nTÂ©Hµ \éQ­H:S¢œ;\ÓE={\Ğ+E•‰¨\ìQE\0`QF(\Å!bŒSQF(\Å1bŒPE Š©Ö’„<\Òc,%Yª¡«1šE\"\ÒU”ª¨j\Â\ZXZ™zT\nje4( \ÓA£½\0!4\ÃO4\Ã@·J³S7J…©\Õw«UŞ€+¸\æ£j‘ú\ÔmLcE- ¥ Š)(h¢’€ŠJ)\0´RR\ĞR1KGZ‘ŒƒR\ÆrisLC@“,–\Æ(w\Î\ÜTóNO½EŠ¹c,Z’9CQ‘òõ§F\ê8\Ç5,´\Ë\Èw-=2§Ú¢C•\âœ\Z’\Ñn6\'îšF9=jœ2m«jÛ…&U\Ç&›¸Š)¤\ÒC¸n\ÉÁT¢\Ç\Ê*\"G\á)W\ãnT’:Ô1ˆô\ëÖ–)A\ëS”´\\\Ö,¹hAp`V¸“\çAÚ°\à,’Ö’>\â¥&Î˜³i0³+J•C3–cÖ³\à–n9‹pjnhX’?11\Ô/AQ\"yr€8œ’`0˜\ä\î4®5¡d“°€EMn}\áÖª\Ä\àœV‘\Ûp¢\â,B\àGCR;\0	\ÇZ‚&\ÇQŞC»{PK\Ğ#bM8D\Í.\ïZxP£42*[!²e*‹‚9¦“Gj[?zœ\Ò1RÙ›c•ZxÃ©$r*\É9¨\ßMHÌ‹µbœu¨\Û\åI9=«FU\rUfˆ	\ÇQTŒ\äj&Q—ƒi³\\6HŒ`‘Œ\Ôo7š‹\ÛCS¾!Ub\à¦µF,†\îo½OCY\ËLùœÆŸ4¿j•9ù©n[j\ì\'jˆ\"Y_I\éÒ™\Z\ïF‘\Ç\"&0¾µ\íÁ6¯z¤…&Eq/›Q	\Â.\æ«\Çq°’çŠ†\r\×\×ûb«F-\Ü[»†\nsÒ°\ï\'\Z\é5«i©\É9ùBi¦”œ\ÓMHsHh4†˜sI\Í’˜„9¤¥4”À)	9¥¦´\0Ph¤4\0Ph \ĞQE\0bŒQE\nZJ(i(¢€š9¢Š\0\r%ŠQE0\np¦Ó…©£\"\Õ•jT¨…H”Ğ™2TÂ¡J”U\"IVŸÚ˜´ş\Ô\Ä8f”M\á@½QXš‹E\Ñ\Í\0Q\Í\Ò\0¢hæ˜‚Š9£šhŠ9£š\0(£š9 …\Ñ\Í*õ¤•*\Äf«­O ¢\ÒU”5U\rXCH+S•\Z˜t 	\æGz\0\rFM<\Óz\0ºT-S7J…¨\ÔS½Wz\0®ıj3R?ZŒ\ĞE-%-\n))i\0QE\0QIE0Š( ŒRRö \'\ÌqS=¦\å\Ê\Ôpµ!»\ÅKe¨˜	C\Í\"·5¥y`p+4\ÄÑ¶Zšd4\Ñ1cµ4-UCgŠ±é”2¢Ë¡²¼t¦nÁ\ä\Ò\nµ\ä°=ª¹~&\È95r&\È\çŠÉ…Ê¿µ_‰·\ZLi—\0\ÏZk{R#n§c&Š\Âc=i¬9§n\Å\Ï4À@\ÅN*\Ìr5Xó\Í7q\ÍXn‚“»©\éW ºP~cXNA\'¥X†a#u¢Åª\ãQŠ&\Ë)_]†1\ÇZç§•UñœT\çºAQÒ‹Û³¥>!.[#54~\"ŠLs\Åqws´\ê00Z-fùBš9C\ëômn\İÛµvMYZ\ám¤8÷­{y\Ø.A\àT´R¬Î¹/w)©’fa\ËW+\ãg óZpŞ’\0\ïP\î_´l\İ\r\ÛvsBZ¡\å°jÀbNjX&Zf\âšœ\Ô`\äR¨\Î*J%\İ\Å5\Û(i›¾n\r5¤\Æxâ›+—\ÚH5ŸupHlpÃ¥:övRX\n¡¹¥9a[EÉšqN\Z\ÙY›“\ÅE¨\ÂDk´µg	ü™À\æ®_^¬£‚¼V–2¹›4mpÂ¥3¤v¥™²\äwª—3»>\âx5Ÿ<Äz\n¤ŒÜ‰ş\ÒK\ç=\rEx¥A\È5]§QnÂªY\ÚMª^Œ™ªz\î\Äı\å\ä óÒ»\ßhIešeÌ„t#¥I£øn%YŠ\åÏ­tH /LTó\Z*zjp~1\å\Û\é\\Mwş1v¯?o¼jŒ^\âfš;\Ò\Z\0L\Ğh¤4\0”\ÓKHiˆCIJi´\Ä-4õ§SOZ\0(\ÅPQA¤ Š( Š)h”QE\0QE\0%Q@‚’–’\0¢w¥¦N\ÑN ½HµHµB%*ŠˆT«LD\È*QQ/J”S$‘iı©‹Oª\áJ)¢œ(—¤¥¤¬MGf“4RP³E ¥\Í\0Qš3@‚Š3Fi \n(\Í Š3Fh\0¥ZJQH\"°\ÍXª§Z³e”e*²\Z°§¥!–¦ CS”*š;\Ò--\0\Ôd\ÓÚ˜hŒx¨Z¥j‰©…\ê©Ş«½\0Wq\ÍFjG\ëQµ0\Z)i-\0%R\ÒRR\ÒPKŠ( bŠ)€bŒ\âŠ\r\0K	\Ã\nÔ‡\îYQ}\áZ\Ğ}\ÑY³Ha‘ƒUe¶\r[a\Í4Š4j\èÅ¸¢6\'\0Ö”ğ†+>E1ôª¹‹V$sÀ\æ†$¯Şªû\ËqFO¯\ìM\Ë1Ê zšµù\è+9H\İW#pKE&i¤€\n™X“Y»n\äñWReRÑªdü7Jr¨\éL\Îy«œ\Ò(yLR\Í<S€ eg„\äõ¦d\áz\Õ\í´¢,”\î.[”\n¾\ÎFX\Ô^YPA\äš\Ö0ú\ng\ÙT6H\ÍCXš59\ïO¶‡+Œõ\Í_»·.ÀÀ«vÖ¡“!{Qq{2šD\ÂE\ÉÈ­(``RH©\í\ìwJÖœ¢4\Ø&¥\È\Ö0+\Ú\Û\â0{\Õøb\Ú\Ù4\è­Jgšµ³r5Q°\è¸«h~P*LSóµªÉ·m¦¼«·Ş˜\ÒgŠi\êM+É·\\\Õv¸,8\Å:I6®\ãÒ³§•qDÉ‰wtr\ÊH¦«£lp@C\ÔU	®™\ÉCÒ«}¥À1Ç­msJF…ùUı\ê\ÅP34\ëœ\áGQH\Ê\ì¸-Ö (\Ğu<\Z´Œ\Û&‘‘£\Ü8ú\Ö=\åÁ	\ÍO<\î\ä¢\Õ\İÃ­¨\Ëû\ÆÀ5W±6¹GM\Ò/5\0\n©O9¯B\Ğü?™\n\áAr95oN\ÓV\Â\ÜD\0\ã¥_\0	5”¦oXa\0gğ¡3ƒ˜¡ûĞŸtı*b\îk;X\àübs#WŸ·\Ş5\ßx\ÇıcW\ßx\Ö\È\à{\ïHi\Ô\ÓABRE! Bfš)\rP„&’”\ÒP ¤=iiZ\0(\éE\0”˜¥ \ĞPh ô 4f’Š-Q@Q@	EP&)(4P!:R\ÒÔ¢˜)Â’”P€Zz\Ó)\ëÖ¨’e©V¢Z•iˆ™zT TKÒ¥Zb$^)Ù¦\npªğiA¦Šp\ï@\Å%-‰¨RR\Ñ@\04¹¤¢€4R\n\\\Ò\0¢ŒÑš`Qš3@X(£4f€°RŠLÒ­\09:Õ„¨­N‡š\0²•aj²\Z°§¥!–¦^•\ZzPªE-0SûPL4\ãL4TLEJõ\Ğ2\'5š\ê\é@ß­F\Õ#u¨Ú€\Z)i-\0QE!…Q@Q@.\r%;4\0˜4„\Z\\\ÒúP¢ûÂµ­ş\íeE÷\Åj\ÛıÚ–\\IOZasO=i¦ \Øa^x7)Àæ¬‘IÒ©2\Z¹‹$lŒx¦)\'<V¤\Ño\ÎSkf\\œt«LÉ«©Ö¥Y€¨	>”(­;¼²(^¼Ô‘Hs–ª‘«\ÍJ¨Ä‚NC4‹4¢—\'h\ZÏ†q\ê\Ú7=j\rnX\ÍD§œ¤©\äf–@<qS‚û\ÕU”µb\"\à\Ò\Z,CñV\ÜdŒj²¾\×\n;\Õø“?&pOzE¢?\ì\åI\0u«öZ8\nrp1Ş’4X\İ#gÀ\ïW¼\Ã#ls¶5\Z–ZH|ZZ\0jÀ\Ò]\0eæ¦³˜À#\ä\Z®¤…›%¾Z†3<Zm9a\Í/”WŒV§™€ñœRy\n\Ãv:ÔŒ\Ë1°\íG–Mh´C*¤ÙŒ\î^G¥	J`#\ëH„²ş\ZKÀV3&*•­\ë~o”pEZW!±÷r\â\éXs°\'\åcZ·ò”_»Õ‡,\Ør˜\ëZE\ÊCw\Õ<´4f9F[\å5[£s\ïRJ\Â\Ü\ç\"¶H\ç“\Ì†O\ËYÚ•\Ñ\ÜN~•,·hñ\áz•Bğ\ì÷“‰f»\ë\ÏzrvW\Ãú4—½™HCĞš\î4\İ-mFEKof!‰Q\0=*\àÂ®+6o4‡“Ö—4\Âk\'©«\Ç9õ§\'\İ4\Æ\ïON†®\Íhp¾.BY«€’6ñ^‰â‘™W!-¦\å\Íu(\İ\\ó\å/x\Ä<i	«V\åªƒƒƒQfZwÔ™ i\r4JCKHj¬!)3KM¤\\ŠNôQ@‚õ¥¤=h\0 \ÑA bPzQA\é@„¢Š(h¢Š\0(¥¤ bQE	ˆh \Ñ@‚Š(¦ÒŠh§\nO^´ÁR-Q$«R­D*e¦«Ò¥¢^• ¦I §\njÓ…P‡J\r4S…9šJZ+@¤¥¢€\n(¢€K\Å%\0¼Q\Å%\0´R\nZ\0(\âŠJ\0ZQM¥\0ô\ëS©\æ ,ti\rX^\ÕY*\ÂRa*t¨¦^”(ú\Óûu¨…>˜¦\Zq¦\Z\0c\Ô/R½Bô†Dõô©Ÿ¥@ôu¨Ú\Ô\Ã@\r´Q@QHaE(\ëKš\0m\ìÑš\0m:ŒÑŠ\0(4bŒP\âû\âµmş\íe\Ç÷…j[ıÊ–\\IOZNô½\éÆ ×¡\Ò*B)1Li84\É”\"¥aMÇ¥;’Ñ‹(e—b“!O5£w\å\ÏñVk\Â\é\Ët«LÅ«¬˜Z˜€Y¿\nª$Ò”vÈ¡¢S4£”Á<N9.k:’ıj]\æV\Æ0*lj¤_Ÿ\à<U„˜ˆNN[Ò³•À\Õ\ÕUq\ëSb“\'…Ù—\'Š—\Î)‚§5LHN\0<w©\ã‘Ö•Š¹¥¤(s÷5£À Va¾±–eg\\ğ£¡«\êZáÒ•‹LØŒ,\î7\åv÷=\ê÷\Úc#tƒX\Ğ\Ë&q\'\áS¥\Ğd+Á \Òh´Í«[÷6F>\0½ju¿Cj\'=\ë#\æÚŒ1Q\İÏŒ…ùA©°ù—L½Ù•\ÈP{š¾Ó¬|+^Ø®>\ÂFšu…N\àkt0·B¯‘·Š—©\Ş\è7­T‘³r1T¥ºP\áÕ:+\Å\Ë\r\ä:R\å1×›yr¥f\â\nÒ© “Ò¬\Í}Ñ¶\n\Öy»@Àm\â´Q3”‡\Ët\ÛBğ\ÊzVl¬¥Ê‘óz\ÓfwEÂ¨e“bù„óZEJD›\ÕL‚\ÕF\îR¬TœƒÚ«4\íÇ™Z´­t\É.çˆ =]\ìgf\É4­\Ş\ír\n\à×¢iö\ÂDF0*¶•¦%´‘’+Sax”¤oN\ÜL‘œ\Zz’\0\'šf)k;›1M0Ó³L&“1»Ô‰\Ğ\Ôdòi\Êx5¤	\Ç\â–\ÄÆ¹\è\ÈeÁ­\ïÿ\0­5\Ì\Å&Wm=.§\Ä\Ç\ÜÚ†+\î\Óa$]*\ë\ÍA=°u5¤ šdr„`óÖŠÑ»±\ÆH\Öl‘4f¹œZ6RHh¤4\âRPh AE”\0´‡­PA¢ƒ@Ä ô¢Š\0J)ih”QK@	E-%Š( LCE-%\n)zZ`œ)¢œ(@-Hµ=z\ÕL*U¨–¤Zb\'^• ¨–¤\ÄH´\áLñT!Â–R\Ğ3š¤¥\Å¬M’—PEb\\(£b€¸QE- ¥ ›N¤\Å\0¢“\0s@\n–:‰EM 	Ò¬¥WAVP2\ÂT\ËÒ Z™(E§\ÓŸ@i†j3@µDõ3t¨Z\\…úTS¿J\èu¦\Z‘ª#Ö€\n(¢€ER½\éiZu\0%RÒ¸	KE(\\bP\Ç\0S‰¨ª–¢z¾qZ\Ö\Ç)X‘\È+n\Û\îT2\âÉ»\Ó×œ\ÓH¿v \ÔB)1O£\ä,)¸©ˆ¦š	d2\0\Ë\ïY÷J\Ì1Š\Ó\Î{TR\Æ\rRbj\æ;\ÄR£l«ò@<²;\Õ‰£\Õ\Ü\Å\Æ\Â\î\Ãg­J’4’aG[ \ãÖŸ–‹	3F\'Û€9©D†G+T\ÖrP95-¸tl·¥+\Z&[\ÜBI©F\Şx5[w\×53’\Ò½1JÅ“[È¬¥I\É´¢lG“Á¬‹e*\Ç$\éZ0’\Å}IIšQ°4‡ŠCÃ‰\0\áW–e2ª“\ÅG=\áùdü¹â•Š\æ6\åIE<qU®n²\Öt“üˆ3Ç­4\ÎS\ëEƒ˜Ü±˜\ÛJdN\nŠÕ—T3¢ƒÕ†k–IdùJš›\íg\Ì)X9‹·Ws!À\è)ğ]	‡#\r\ëY­p\Ó\ÄU\Î¦Ar¨dOn´$\ÅÛ’rY_>Õur\ĞÃ¸ŒjÌ³¤v¡Áå¸¬›\ÂdŒŒ\ä-ZFr‘r+9pOAQI* \ä\ã¥R†}‹•\ê*Í…¬šÒ¬Hwg“\Õ{^\ì-,§»¾‰d©>•\éQiŠÆ¡\0e“O\ÓR\ÂÚª[œsZ½;õ¬%#ªœz„a£zÔ´\ÊuC5b\ÒR\ÑJÄˆM0\Ó\ÍFÆŒ\'“NS\Å0š\\ñZD™jq^,?½5Ê§]G‹\Îk•S]\Øó\ê­K±IV£`Â³¢l\n´[£™š\İ_<VmÖŸ»\'¬	\Å+ jn5#¸µh\Éöªı«ª¸´\rd]X`p+@\Ö22²£FzSA\Ådi{‹IFM\0QE€\n\r%(¢Š\0)i( AKM¢€III@Å¢Š(\nJ\rAŞ–Š)€\np¦ÒŠ§¯ZµD“­HµÔ«L	–¥Ô‚™#\ÅH:TbŸÚ˜´\ÑNÀ\ç1IŠv)B\ÖƒqIŠ“e(<QŠ“e&\Ú`3bŒu£€E;b€\n\\QŠ\04\0Q¶—m;i m¥O\ÙNLB*\Ô\È)*T^(\"\n™E1zT\Ê)\0õ2*5\"\ĞÖM\àh\ZŒ\ÓÉ¦@n•T­Ò¡c\Í \"~•\Ô\ÎMB\İ(TG­H\Ô\Ã@	ER\0¢Š(£­:š:Ó¨\0¤¥¥\Å\0%;8¦R¢ÁqñP³fœ\Ç5ªDÉ’À3 ­\Ëq„‰m÷\ÅmÁ÷D L:\ZzôÊ‘EA°\à3OMQR\n@1–£+S‘M\Û@™@¨œU‡_j‰\Å0+)“ e\ÅN\È=)¬£*®D‘”ñmb1M\nHc\Íi²+ö\æ«\Ïd\ÜMU\ÌùH-\Ûd\Çp\Î{Õ6f<ñŠ¨\Ë$kóRÇ“†\ÇÖ\Z6\ÒR}(’\è‡!MWó\0\\\"\à\nj\ã#ŠL¤\Í8aPr\ät«\ÜO8¬\äÂ€G\Ş\ÇZ–\'6\ß÷½iX|\Ä\ÓİŸ0.z÷¨\Ús8+Ÿ»Ş©‹\ÈÖ–9B».3švc^Õƒ\Æ|\ÓÂ*6Ÿxñ\Íg›†h¼±\Ç572À^§Ö‹1¨³ )\éR‰\à{\ãš\Êˆ\å\Êı\Üt©¥¹1D9\å\éEƒ˜•\îO˜v)\Âc–\äaI\ç5N\æ\áb€².ô5\\I(X\ä9„ƒ˜\Ğ{€Û•ºuQ\î2\İE:0ò±‰W-\ĞJ\İ\Òü%3˜\Ş\ë•\î)¶’›(iz\rÎ¨<\ÅùS=Mwº5„z\\!µ[†\Æ{EŠ\naS\Ã\Ñ\ïY9¦=·\ã¨5`(S\Çz‰~ZVOS[X~)@¦ƒN\0QA¤É B5D\Õ!¨Ú‹\r4\Ö<R±æ£‘°§\éUdq)?9®Y+¦ñA\ËW/\Íu\Ó\Øà«»&CÀ«\nN*©T\×Bg3&Gæ¯P‚(\Ï4\î\"Á`AªÒ aC9\ÇZˆ¾;\Ò\Üe›PÇ¥d\Í!5\Òe[­U¸·V*%\ã#\0di3šÒ’\ÌzUW´#8¬\ÜMŠô¢†FN´\Ğş\Õ\r2®‡QE\Ü(¢ƒ@‚ŠLš9 Š( ’Š0(”QEb\Z(=h AES\0 QJ(@-=i¢µD’­JµÔ«L	–¥\nš”\Zbc\Å?µF)\ã¥1¢R“LF\ÚpZxZpJÀ\Üf\ßjM¾\Õ8J_.˜Šûi\nš³\å\Òö \n¥(\ÙV\Z:o—@\í£mK²”\ÄE¶”%I²œ€#	J¥	NLvÔŠ• AO(Š•*§\åZx€i\àRª\Ó\ÂHEH´@§¨\0\np¤\Å/JqJa§L&€\Õu©˜ñP±\æ=B\İ*W5\ZB\Ô\ÃOn´\Ã@	E%-\0QFh£­:˜4¹¤©R\à\ÔEÉ¦®8¿4\Âi4S±-&ƒÒ–‚)’Km÷\ÅmÁ÷cZ¨.+j.VR7‚%©£4õ5&Ä«Oj5©€Š6ñJ)\Ô]Ö¢u«N¢¡e \n\Ø\Í0Š˜Œt¦m\Ğ‰¡\ÈÈ¤E#\ïT‡ Òª\æ‚lE<(\Ù6İ¨+A#\éS\"\à\æ\É\å0…¬‘†ó8\ÏJ0‹\0\Z\ßû2;\ã58°\×c\éN\á\Êso½aN1\ÏZVœ\"º9t¨§ŒF8\ÇzX<=\n1\ïŸZ|\È\\¬\æ¢À†F#¥#v²\ÕÔ·‡bv\ÆH^ø©cğ\äc„<{\ÑÌƒ‘œ~9\É<\Õ\ĞÛ¡X\Èù»š\Şo¢Éµ†rkB\Ó\Â*¤´\ïÖ•Ã‘œzšf F)’;\İH)Wr¶Iò¤Uñ\á›fT€s$\n›g\Çasq*HJ\Û\Ó<=%Ì ²g5\İY\èööp:R©«#‰6C\×e*l\Â\Ğ<5>d“`°lŠ\è\Ñ<°GcÒX§‘\È\â¡\Ê\æñŠC£A\ÔÓ†2iW\0RjYBcš‘F\"Šv{RCN\Ú\\\ÓŠi´¤\Ós@„&¢cO&˜i°Dly¨e?)úT¯Áªò±\ÚhBg\âS’k™Šºoµ\Ì\Âu\Ó\Øá«¹8\éNš)3[£’†¤\İ\Í4\ZBi\ÜV\ÍP»R³\ZfI©+\â¤\Î\áQšr\ÕW5—šo’\Z \Ç4\Õ~ih-H\ä´V*Œ¶89QZ\ê\Ô\rÒ†“´s¯\ÇÚ›¸Õ½5¨aÒ³\æ°\î \Ô8–¤Q\Í§I¡\éQ‚sŠ\ÍÅš)!\ÔRsNÀ¬1(£Š(Ô”Q@\\J(=i3@€õ¤\Å)¤ \0R\ÑE\0¢’€i¡\"\Ôy4õ&¨	V¥Z„S-1/JTJx©¦&H)\Ô\Ğiiˆx¥¦ŠZ\0\Ï	O	J*@+a¡iBÔ qN\n*„E¶­O¶¥1\ÊfšR¬\í¤*(©J6Õ‚£›E\0@”%L”-\0Dœ#©vÒ… \éÁ*P´»()Á)\áiÀPUiÀS€¥\Æ(\0”P)G4\0Rv§b)	\r4\ÃN4\ÃAC\Z¡j•h¨›¥J\æ¡c\Å\0BÇ“L&\İsQ·†&h\Í7>\Ônö¢À;4f›»Ú\Ş\Ô\n\ã\æ‚\Ô\Â\Ù\ÚqÅ©))i¡QLŠ1A 	\í~ø­”û¢±­^¶Pü¢²‘¼	H•5\"w©4$Z•j%©W­;‚Š\0c\n–§\Æi¥q@Šl´\ÌsVj J¢ƒJ¦€$)ñƒšbóS\'2©\ÅM9¨\ã>µe\0X‰y©U\ê‰3*\Ôg½!¢Xõ©¸\íÁ¦\ÆH©\ÕCH\æ•\ËH-\áò\ã5e»\àŠtC«\n?:Wp`©•Bñ”(ü\é\Ø\É4¯q¥a\àóRFû£$B¥\nÖ¤`Š@¥”\æ›ÖzxŠ)\ØÀ¦0M\Å.h´RfŒ\Ğ &“4\ZJ\0i4\ÂiÆ˜h`†5V—¡«z\ÕyFA¦„\ÎC\Ä}\rrğk¨ñ\'\n\Õ\ÊBy5\Õ\r*»²\Õ!4¢šk¡\Ìp4„\ÒHM\0!4˜¢”\Ğb•iqIŠ\0F¨¶óS\ÔMÁ4\0¢¤Šˆ6iá¶ŒP\"`Ù¤(\Z£\Şi\Ê\æ\â!–\Ñ_µQ›O\ë´sZ\Êş¢…=¨\åcš’\İ\ã=*>GQ],–\Êıª”\Ö \ç¡\Óe©˜ûÁ\íFj\ë\ØUg¶pk7Z\ÌÑšF{RgÚ•™WŠ3GjCõ¢Œ\æ“4\ÅqE- 9¥\Í\0!¥†”P„-=i”õªAS­@*u4\Ä\ÉV\rF¦¤4\ÄÇƒN\Í4\nZb\r(¦Šp\ï@À©T`Ô«X›§…¦¯jx¦ \ÛHVŸIƒLC6\Ò§‘ŠC@•¤\ÛO#ŠLR»i\Óñ@\0›iÁi@§@\0à´ S¨¡iqNcš` \ê)h(´PHzR\æô¤!†˜i\ä\Ó	 ¢6\éP7Z™q@½B\İ*g¨›¥\0@Æ£cOsÉ¨˜\Ó\Æ\æŒ\ÒQ@\\Z)-””´”)i)h\0 QJ c€¦½J«\ÅE/ZOi÷«]>è¬‹Có\n\×CÀ¬\ät@T‰Ş£\"T\Z­Jµš•M$\êj\Ó\Å\0(\ÖüSZ2\Ô,*\Ë\n…\èR¨¤c\Í*š\0‘G52ŠzÕ„ 	\Ñj\Ò/^>j\Ú\0H‚¬ ¨‘MXE4‹D\ÉÒ¬GP â§¥–Z¦\\\Ô1ö«+Šµ0STf¤€\Å(4 S‚şT\0cŠ\0§ŒR\Z@(¥\'Šni(¹£4”P1Ù£4ÜŠ(¤\Òf‚i(\r0\Ó\Í0\ĞÀ‰û\Ôğµ;µü¥4&q~&~H®^\Ít\'y¤f¹\Ø5\ÕOcŠ¦\åñÒšE9>\è¤\"º\Ì\Ä\Å4Š}! BŠSŠU4\0F)\Ø\Í%\0&*)&¦¦H§­\0@:\Ó\ê2pi\àŠ\0p¥\éH)E`İƒO\ß\Ç½)\ÜV\'I=iùµV\rOU\Ì+h”ö¨š\ÙOjp–‹‹S:]<zUI,H\í[™\Í5‘[µ\'5&s\ÏlÀt¨J2ö®‰ R:Uy-ô©y\ÅV›Ø¸\æ«IhGAP\â\ÇÌŠ£”´ÿ\0%\×<SJ‘Ö•ŠLJ\Í†:œ¦™)\Ê)(52š€T\ËM	’©©A¨TÔ€ŠbdªiÙ¨Á§f˜‡ƒJ\r0\ZPh52µVSS+u¬‹\0\Ó\ÃT!‡­=O½26h\ÍGŸz\\\Ó\ä\æšh­!¡\r%)¤¤0 Q@ RŠJp ŠZAK@…´”´À3Fh¢€Ñš( ô¥ ô¤\rFjCQš\0ˆƒQIRH\á{\Õ9nf¦\ÈÀ\n«$½j)f\'¡¨²OZ\0y|\ÓI¤£\Ä 4¹£¥\0fŒ\ÑE\0£4Q@Š(Âƒ4Ê–!@‰\áj´½j\á-S›­6–\ÔüÂµ\â9±­\Ï\Ì+bòŠ\ÆF\Ğ,\nz\Ó=j\r‰¥Z‰jU>ô\"Ô¢¢Z”P…!\åÒ”Š\0……Wu«l=ª\ÔU—“H85#µz\0‘:Õˆ\êºUˆ\è\ÔUv!T\â«ğö 	\ãZ²‹QÄ¹5e¥–‡\"ñSÆ”ˆ•:¥C,X\ÅN¢˜‹S(ö 	¥¢8\è)\0N(PHii®}\è.h\Í7#ÖŒZ\nšBx¤Ï½\0™§\Å&)GJQE\0!¦´óL4\Ä\Æ•5V\é¶\Äj\Ù\èk7R}°¶N8¦¤ô8Mº\àŠÈƒ¨«:Ü›®\Ï=\ê´xWT68jn_O¹A\Íô§[#GIO8õ¦‘L\Å\0Q\ÜS\è%-\'4\0S_¥;š\â€)?\rNSš%4ˆx\ë@\nQH½( 4”PzP\n^Ô€ûÓ»P! ÓƒSqAú\ĞÛ¨\İQfŒ\Õ\\D…\Å4°¤$S¨¸|¤Tm\Z·jhjv\ê.\"6¶SÚ ’\È‚®n\Í.E&®4Ì—± d\n¯$½«x€F)l¯S\ÈW9‚:ÒƒZ’Yxª’\Ú\è*\\JR!^je5Ò½H‡Ş§b¯re5 5\nÔ¢\ÅbE4\àj1O\ÍP¬<\ZPi‚œ\r*§†¨S\ÃqY\Z–ªUj¨\Z¥V¦C,†§¨SƒSm\Ôf£\rÖ—4†‡\æŒ\ÓA\æ—4†.iA¦\æ€hù§ƒQ\æ@\Í?<Ty§gŠ:Œ\ÒfŒ\ÓsJ\r34 \Ğ³FqIHy u¦œ\Ğ_hª\Òİ…\Ï4€˜¸Z«=\Ğ\\óT\î/Nj›\Ê\Òw 	\æ».*©bM¤\éT!1N\Å¥8¢)¦nM’”P\ÑE\0QE\0RR\Ğ(\è*x–£ŒU˜Ö¨@\Ã\åª2˜Ö“–³\æ\êh`‚¼+ZòŠÈˆüÂµ <\n\ÂF\Ğ/)©B†¦\Èp©­F*@hU©Tò*5*õaM8\Ó¤\Å\01…C\"Õ’*7Z\0¦\Ë\ÅBG5iÖ«°\æ€\Z½j\Ägšjd<\Ğ\Ø\ÎqWa\íYñµ]…ºP”&­¡ª5[ªYh¹NµZ6©ÕªYd\ËS¯J¬¦§V¤‚¥¡\rO\Í\0J\r!<\ÓA£4\0\ì\Ó_µ¤j@%QABŠQH)EŠZJbIA4™ \Ò\ÒP)\rn•ƒ®M¶úVä¯¶:\ä|Asò°\Í\\Qz6¡&û¢}\è„t¨nt\äû\ÔğtÀ\ã‘~3òŠ{t¨ü¢¥=+Tb\ÈÈ£\ìRS);ÖPŠL\ÒÑŠ\0L\ÒZv)@\ç\Ï5g\0\Õ\ÇL­Sq±ñ@)©¨#50 \ÍñIE\0%85i½\r M0Šu fŒ\Ò\âŒS\Zm8\ÓM+€\n3HMªŒbÆ“4„\Ñp°ÿ\00\Ó\ÖOZ„74…ñG0X·iJ\â«+š™&§¸lE%˜9ªojS+[xjB€EKˆ\Ó1‚°\ëO­	-\ÔôY­\È&¦\Å\\ˆSÁ\â\ÆE\'#ŠC¹ 4¹¨Á¥\Í0*RŠe8VF£Á§ƒPgšx4aO\"š®­O\r@ƒN¡SO\É3J\rF\r8\Z\0}(¦f”\Z\0}?5is@J\rF\r.i¡N\İ\ÅD\r85½?µF\\\n‰\îBŠ\0œ°\ê.GZ¡5\ïP\rS’wsÁ¦·=ñ\É©<\ÆC\Ô\Ô|“\Í8E2D¢Š1@	Š1N£\0˜£\ìQŠ\0N\Ô\Æ4\æ8¨³“@\Å\á@§@\0¤4´†€Š( ”RS\Ôs@‰PU¸– x«ğ§\ËV‰!—\îVl¿xÖ¤\ã³e1©‘HHşğ­(z\nÏŒ|Â´b\íY3X–Ò¦Z…*t©5´\îô(§\Í!Šµ*õ§@R¦J­«1\ÒØ¦²Ô PV‚Š.¼š®\ëZj¬«ŠT#š–:B9§-\0N•n.1U#«‘Œ\â˜\ânj\äm\ÅSE\ÅZŒT²\Ñi¬\ÆüU5Uˆ\Ç%\"Ò½J¦«/ZiaM:£Z}!\áM\á@4\Ü\Ğ\Ç˜Z\0}›šU ŠQH)hM6‚i¹ C¨¦\æŒ\Ğ\0{\Ğ¸\â˜Ïµh@T½“df¸mv|†æº½V\ãj\Z\àõ™÷fµF20\\î”š±	\Î*©?7Ö®[­tGc–eÔ“\nK\ÔUtBMNjd(ô ŒR)\æœNh¹¥\ÜS…\0óJi½(:SO­8œÓ‘r(€¦³\îWZL±©—,»\É4\0øø8\äUTlŠ€Rô¦†¥\'\"€ši<ÒHE\0.h\İL¥ 	3M4J\0%4\ÓñHE\0Fz\ÑN#šLPM6œ\Ô\Ó@)\r-0š\0\ZSA\âšM\0L¯\ïR$\ÕP\Z\\‘M12ÿ\0š¥\à\Õ\Ó\ÄÆ\ÄXhÁ¨\Ú\0M ˜\Ó\Öah\Ü\Z\na‹op4 JÃ¹…FMW9\Ğ8S…4v§\n`8\ZTb´€‘M<Tj)\â‘D‹N˜)A \æ€i½©\0Kº–£§p;\Ğ!\ÜúÓ¨·Ş˜÷GZ¤\"ÁlTopš£-\Şz\Z¬ó±&š$¹5\á\ìj›\Îò¼izÑÚ€$õ {S±@\Ä ¥\Å8-.)€\ÜRNKŠ\0n¥”\ìQŠ@%%)¨É s’i Qœµ<-j1J.(´†œE4\Ğ\ZAJi\08TŠ*1SÆ¹ E˜wr\Z­\nÕ¨…Z$‚\ëÚ³\ä\\Ö\Â\æ¨È¼\ÔÌ¸ÆœŠ¿\àf«F¼Š»ğ+&l‘:Š1Qª\ÔÑŠ’\ÉR\ãšrŠ]¼\Ò\ÊQÖ”ŠoJ\0±«š©«µ -®iø¦!©€ ¢^µVU\ã¥h2UiSŠg0\æ…+§4\Ğ1@GW\"=*œ}j\Ü]©q2EZˆ\Z­\\†¥–‰”T\è*5\íS¥IHz\n*$©V¥H*5(4†8Ñ)	¦\æ€šNô\ÒhSš\0’œ¢›O€u-%/j\0CM§\Zm1	EPº«\\I´\ZˆQYwó€4ĞŒm^\ãƒ\Íq:Œ»œ\×Cª\Ügw5\Êİ¶\ç5ª1™W\ï5]¶\ÍSN3W­«xœ\Ó-¨5!SV¥\ã©‘4¢–ñ@¦\Ó7sJ[&€M5¸ ŒŠ{µ\0\n3Lšq\n{\Ón.„cY\ÒJÒ’[¡ YšV\'<TGš\\\éI@\n™8b;\ÕpqR¤Á<\Z€\Z\Z\0™ZœHÁ¨E?4\0QE\0¹§\ne8Pši4\ãM4\0c4RƒM<\Ğ7\"£4ò)†€R=)ÀfŠ\04JE7\0\ŞiI£4„\ĞœQ“M&Œ\Ğ¿y•\Z4\'`±ed÷©\Ø\ïT÷\ZPôù‚\ÅZ\\R\â”\n\Â\æÀ)ÀRO‘@<\n@)\ê*F*Šx€S…\0.\r.(,\0\ëQ´ÀQaÜ—\ëÒ²Š¬\×<b¡3\Z¤‰lºf¡kŸz¨e4\Í\ÕV%²\Ã\\ŸZ…¤f\ëM\àÑŠ,MÄ¥\Í4 qM\0u£\éN—Àh S€¥\Å\0 ¸ \nv)€”f—b!\âMjC\ZÆ¡\'5#šˆš@(^ı\êP8¨Ñ±O\'4p\æƒ\Å\'CA¦E4š“S \ã4t§IHQšµ\Õu«Hx¦\"\ÄX«‘¨¬ônj\ì,M2X“ ª\ÍE\\l±¦4|RÆ+FœÕ¸“=j4Nj\ÔKY\\\Õ\"EAR \Å(ZxZ’\ÅSN€)\àPl)„T\Ì)„P/\ËÒ§ª¹\àÔ±šCF„\\Õ€S…ª\ì|\Ò)¨eAŠ¹²¢•8 \ÉP\ã®Êœ\Õb¼\Óˆ*\Ô|b AV€,\Æ\ÄU¸X\Õ4j#RZ.«t©\Ğ\ÕElT\Èô™H¶†¥Q¥R2À\Å<>*¸jvú@O¼\Ò¨wÑ»š\0—9§/\ZšzóHd«\ÍH Tj*@)ˆZMÔ””\0»¨¢Š\0LPx§f¢•ñL’‰p¦°5	ø<Ö•\Ü\ØS\\Ş¡qÁ\æ­\"$\Ì]Jl\çÖ¹ù˜–É­+\érMf:–\æ´H‰l5jı°ª‚*ı¯J\Ş;’Ü¸”üœSRŸT@Ş”u¥=)0Â‘y\æœi»\Â\Z\0qrµ·$‚¦f*³\ĞfR[-Lj°\ä\Z…… \"\Ç˜\â¥\Ç\Ğ8 ñO^ù¤\"–€\rH¨€¥V\æ€\'\rB\r<\Z\0~\áF\ên(\Å\0?4¡²i©W­\0?<\â‚(\ïJh†Œ\ÒÑŠ\0i¦)\äR\Z\0`\â‚iqA\0\ÃL\"¤¤4Z\nŠ“\ÃÖ*)„T§¥FE E(\éJi():ÒšAHdt¢›šBØ¬G\äfœ\n†œS°\\²\Zp\n©¸Ñ¸\Ñ`\æ-´\İ1L3š­¸\Òh°s<äŠŒ\ÈM0g4´\Ò`M¢€*‰`R\Ğ\0h\Å8\n1@\r\Å(¸¥€\0´¸¥”\n\0J:ö¥\ÛJ\0&)qJ;n\ßz6ûÓ©)€\Ü{\ÓZŸMj\0‰‡½B\Ã;TL*F0z\æ¥F¨ˆ¥˜ğs@lö¦†È¥Ày8\ÃKE\0£R\âUÈ©:\ÓT«LD‘Š¿	\Â\çªQ\Õ\Ûqò\Ó%–\"O2@\0\ëVnlš;\rvŠ}k®¼\ÓVk @\íJJè¸»8:%I4&Š‘B©\ïXµcx»U§m§*Ó¶\ĞP\Ğ)\ÔN\Å \Zy¦•\â¤\Åq@\ØR«bœÂ™He\È[&´!jÊ‰±Z\íšE#A>aM’<´\èy?—‘HfT\Ñ\à\Õ6NkV\â<T$\\\ZB¢¦C\íQõ\"\ÓaÚ¬FØª\ÉVR-³S-@œT¡…!“©\ÅH\Z«‡§¤2Àzvú®\ZÔ†Y\Ü)CsUƒTˆ\Ü\Ò\Ò\Z*²\Z³!“(§iœ(„SqO4\Ú\0n)3N4\Ú`!8Z\âL\Ô\Ò\nÎº“Ö™&}\ì\ß)®gP›­k\ßK€y®rş]ÄZ#)³2rd|iò[yvûZµch\\\ïqN\Õpm¢3oCrıkJ\Ùp5›\0ùÖµ`\n\Ùls²È ñ@¡ªˆ9£8 Pi€\ÓP°\æ¦5Š\0Br8¨=sS\Z).5lœT&\î)1É r7w$‡\'›\åqš\0h\\Ò• fŒ\àV1\ä@A\âÖšzšr\ĞÖ*1N‘@u\ïJ=é¹£u\0I‘@ \Zn(\Å\0<7=)\Ä\ÔbŸš\0L\ãŒS©\éı¨)ŠZC\Í\05y¥#Ş”\Z\0iô\Ò=\éô\ÓÖ€G½0õ©\r#âÛ‘M+\ïO\íM4€aZi!\Ò9 È \nq€P0ôğ3LU§*,]À\Ô\ÂM¹4™¦ƒFh—\0”sJ.(´¸4¸ \n\0M¦”\nv(€\0(\Å;P	KE.)€˜¥Š1J\0\0S‡F(E(J8 ”)(=(R(¦µ\0%4ŒÒ“M\Í!\"˜T\Ó\é\r\0FV˜T\Ô\Ø\Í4©¤2#jT<SJ\Z‘G\Ë@h4ƒšp\ÄM.\ÓKš\\ñ@š‘A¨\ÔT\Ê(ñƒZ\ÊHª1Š¿n\Ø©_Ó—ı5>µ\èÖˆ\İUºb¼ûL\æñ>µ\èVm¶5úU¤\çu\İ+c—E¬\r„6Zô«‹t»€‚9\ÅqÚ¦–\Ö\Ó£Š\çšf\ĞfX\\QŠ~Ì¯½\0qQ\Ğ\İ\Å-;mi\0\Ú;S¶Ñ¶“SP·\Êy«DqPH”\0ˆÕ¡lõ˜§r\İ\é\æ\å±y\"³-8­xEK4Ei\à\'=+*x¶“‘]Ç‘Y·Pu\â„\ÄÑŒ\Ë\Ï«jycÁ¨ö\Õ=Z¦G¨\0\"¤ZE\"Ò¿\à\Õ\0jvú\0œ5/™Po¤\ß@\Ë>m8IU<\ÊQ%&‚\åÁ%Jƒ\Íg¬‡5f\'\Î*l;šQ6j\ìCŠ¡o\Î+F.”¬;“ªÒ‘J\ìq@‘M\ÅJE4Š\0\Æ8¤\'B	Ÿ\å\Íd^KÁ\æ¯]K´šÃ½›ƒ\ÍZH†\Ì\Û\épMe\Ã\\\ÏÀ\â­0{©ö¯<\Öİ®œ ‡qÖ±\Ì&Ì·ˆA\0V&¬\ÙJ\è/ys\\ş°0•[}¨95©\àV]¨æµ¢\í[-Œ\ä€Ò’)1ƒA¦HA¤š^´\0•Œ\ÓÛŠš€j7Á§1¦5\0FT\nh$ñO=) w \0¥4±\Ü\0¥bi±®÷€%t&¦”\ÖùH+f:\0¥ŒM&@4¦\Ğ³š3Š\0\àÙ§i‹R@\n	4s@4™\æ€:Ó³šnhS@\Æ)w\nBh\0¤\Ò:\Ó\Æ)	\0\ÓHiI¤\Í\0&)1KšL\ĞMFÀÔ¹¦0 ƒJh‘¨i\nóN“­\00ƒ@SN\"\Å )…\ÇZkûS\Ü\Ô}\êKNŒsJ\0( i@ \0QŠ\\RH\Å\0S±F)€”¢€)q@¸¤\Å-\0¥¤\Å( AJ(¥˜)h\Å\æ€R”Gj\0J(4ƒ­\0-1©\Ä\Ó	 ¦š7\ZP	¤1´˜&´\Ó\Õh0¥Hw§\ïNUÈ \äPµ=ªi88¨q“@QN\ÅŠZ\0a?8S1óS…\0Hµ*\ÔB¤SŠ\0š<\n»n£Ejõ¿AT‰64„\Íò}k¾L`q\Æ+…\Ñúj}k\Ğü¼Ä¿J´\"Hd\ã\Ë\ë$¹„ñ\Í1	CV£|õ¡¤T]\Zÿ\0Oki\n©·]\íı„WQ9®N÷O{i:½«–p\ÔéŒŒ\â1HEN7^´Ò¿FÆ«RQR¤\ÛE\Ä\Ñ8¨\İ}ª\Æ\Úc- (0\ÅMnÀM6eæ˜œ5\0nY¸\È\æ·mH\"¹‹I9\ÑX¶qR\Í¤#Èª—Pd\nÒ‰r¢›,9¦\ãh\å\ç‹i\äUr¢¶o-«-“i5IŠ\Ä8\à)\Ûx¥\ÛL@(\Å.1Iš†“L\Í90š\Å\İFúˆšcIƒ@®YW\æ­À\ÙaYk&H­S’*YHÚ¶\ç¥œV}¨\éZ‘*nZ$œzP8 )\0\Òi¤ñHÍŠ…\ä\Å`‘±T\æ”ô³M×šÎ¹Ÿ­0d7sòy\æ°nf2HU9>•fò\à“€~cWô-\ÜJ%VÑ\Ì\'+\Ñt^’:`y­;¸FF8­¨­„Q\àvª\éû¶®µ#–R»8«õÃš\æõ¦@\Íu\Zš\árZ\Ãe«\'¸ú-‡JÒ†³\íV´ ­\Æ/rc\íM4\êniˆm<4\Æ4½E\05¹\éL#=*L\0\rVip\ÜP\0\Ã˜\ÄS‰\ÉÉ¨\Ë\Ğ”\Ò\Ø\æ`Wi2\ÄP‹ƒR@2j•<š\0² ¦]œ\0Jƒæ¨®0H \n q\Í1º\ÔÍŒT\\n Z(4‡4\0\àsK“L^)ù\Í\0*µ=y¨ñFH 	MŠjš	\æ€%\È\Å3\Ô”\á@	\ïKÖ”\Ó@ \0ŒRS±\Í \ÒÓ±HÂ€H\Ô\à)¬¸ F9¥\rŠR;\ĞcŠn)s\Å0¶\r(g4£Š@g±¦ŠP)qRX”\áKE\0!\ëJ))Â€”\nZQ@	E:Š\0AK@\ëKL¥\Å€P!iE\0QŠ\0QN€QŠ\0ZP(œ\Ñ@\rjN\Ô\âsHh¦\ĞM0š\0	¦JZ˜Z•\Ça7TñsU×–«J0´-@SŠ@¹¥¥\Å;\n\á1J8 )Ø¢ÁrW-Q0\ÅY~µŠ\0`<Ó–˜:\Ò\Ò§­Š(AÚ\r1zS\Ôq@\Ã\Í_€qY\Ñu­(xQT‰5ôV\Åò}k\Ñ\à;‘Gµy¶\Ã\í¨O­zµ„U¡$Òš\Şjx\Ü:ñL’<PÀT˜Sn-#º\Ô=\rO›\ZM_BÓ±\Ìj\ZQ¶rTqY\Åy\Çz\ï^\Ş;˜Šœf¹OJkv.£#5\Ï8\Ø\é§3­4¯>\Üw¡¢\ÇZ\Ä\Ş\×+ãŠ…Z)M)N\äØ£2UV\\5j4u^Xr(\Ûc‚+¡Ó›‘\Ís±¬m\é\íó\n–\\N\Ü\åEY*ªv‡ U\à3PQ›w`x¬i\àÁ5\ÒL™¬»˜¹4À\Ä+¶Õ¹b\ÅW+T+INn\rF\Í\Í0\Øk\Zc\ZV5µ¶1@\í\ÏZt­\ÅVw¦Ib#–­g÷…bÀrÂ·´õ\éQ\"‘»h8¤œ\nÏµ\Å_GÂšÍš\"\\\Ôløjn@\ã5RK:Ğ‡bÄ“UYg\ëUä¹ª²\Üğj¬;\â²\î®<Ô“\ÌB’j;+\'¾”p\ri\ÜÊ¤¬\ZV–÷·\Øg½w6vko\n:S4\Ë‚>•¢\×òœ3•\È\Ø\0µ“|‚j\Ìù\â©MTš³4\'YM„Š\áõc™Ewş\"] šó\İD\æSY[R\ï \ëAò\ÕÈº\ÕKUù\\Œ`Ö†l”ô¦w§\Zi COZPi*2y W# UQ÷²j\Ö{T2¡ \ËdñQ\É\Å¦‘Wbi€|\Õ+c4™\Å\09MO\nsS¨À\Í\0YŒõªÓ’^¬E\È9¨$\åÈ ¶\äSLtò)­Ò€·¼R…\Í!\â€\Zx¥ZoSJx \ão™Öœ\Z\0p9\æô)A \Å(4\Ñ\ëN\r@ƒJ78üiÇŠ\0™¥\Ç¦\Ğæ‘<)¹\æ€\Z\r+\ZqZc\n\0e9\Ê)1KŠ\0jóH\ËóSŠ\Óz\Z&1@§u¤m 3±NŠ*\nJv)1@	N\npúS)E@IN£\0ƒ­-\0PE\nP)@§b˜\r—˜4 PKŠ­\0(š\ĞO„Òškt &˜iM!¤1Ò¡&¦c\Å@Æ\É-şi*\ëb©Ú¯\ï*\ë©\È\æ©n)qKŠ)ˆQÒšJJš…\ÅJiŒ´†C\Ğ\ÑN+ŠAHaŞô§­%\0H½*UT\nqR¦M0\'ˆsW\â8QT#\â¯Dr´\Ñ&¤Wm§\Ş\ìÚ’;W¥ô¤ú\×iueû…‘8\íT„k\Æ\Ûp\Ë÷MZ:\Ö™¨c÷RG­l\Æûy\íLbIz‹<v«\Ã\Õy\"ô¤Æ†£9\ÍOˆ\îSc€sT\Û\"Ÿ\í9£–\ã\æ³2uM£ˆV9R§Ö»„t˜m`\rejz>\ì\ÉñXNU)œ\áİµe\àdl8Á¦À5\ÎÕ•f@c¦<<U\Ï.—\Ê\Í	‰\Ä\Ì0`\æ®Yü®*o#9\âŸ\r¾¥&Á#r\Ä\åEi È¬‹<®k^3*F\ÆÈ™ª7\ç5¨W\"«KA¦#\nhyª’GŠØj£,tÀË‘9ª\î1W\åLf©\È)¡2³¶*j–AU\ä4\ÈdRµUóR\Ì\ÇÖª–$õ¦Iz\Ìe…t–	ŒVœ½	½¡\0©f±6£” ¤–ø\nË’ğcª\Ær\Ç\ïTXÓ¡¡%\Ö\ãQ<ÿ\0-Vô\ÒÔ¬$i2j=\ÏJw@Y¸j÷’ˆ“8=\ëH\Æ\äJvBÁ\ßNzfºı3L[h”\Ïz‹H\Ò\Ö¨\İ\ë[J›zWTacŠs¸\äEN#¶\Ú\\€¹5]˜\Ê\Ø¶±\Î\Ø\Şô“¨X\ÍXE\0c\Õ{£¶3šCG\â—\Ú¯;»ù¦5\İxÉ‘¹\â¸;“™\ÍgÔ¢\å°ùZQ\ÍU€ş\ìU”\ÍY›z\ÓM<S\Z€\ZzTDŒÔ§¨Š\å¨\0$\n‰\ä&\ã\Ì\ĞNMFA1EBÆ€\"9\Í).iE½ 3\ÍZO^\ÕV1\ÍX@\n`Nœô¨.jr@\rV\çq9 aQ0\È\ÅJy¦\Æ(£ RI§ŠG4CJy ZS@	F\r*ñÖ\ï@\r§M¥ Ú”\nfqO^E\0=Hü©\Í\È\â£QŒ\Ó\Å\0*ƒÒ\Ò\ç„\æ€ñF\Şôb\ÔPCgŠ1šN†•¨¤R¯\ÍM\É4¸À\à\ĞƒŠFZF\ãš@\0¥#4‡­1Hú)M ¨4¥¢˜	J(\Å-\0! RÒ@\0¥\Å–˜€u \ÑI@\\RƒM¢€F(f€@ š;Pt¤&†&›“@\nM\'ZCH	\Í\0)\ÖR’i94†DÂ¡aVX\n¯\'€\Ì\Õq/U¬&¬\î;\é š3HzÒ‘\ÅQ#I¥´ @\ÖX0±¤22)\êS\ÏZŒšCO4 fš2E\0:¦Š„sR®ia9«–ü\Õ8ª\ìr)¢M]1±{÷¯HŒ·LŒ‚+\Ì\ì?\ãò3\ï^iƒnŸJh¨Y´Rù±v«º^¤&M’Ÿ˜qW&‡r‘+\êÕ­eóbc­P\ìt\Ê\ä0\Çİ©†5‘¦\êB\æ Œ@aZI#!\ç¥14\Æ\ËµBWV†\×\" ’,|Ã¥KLI•FS‘V œ8\Ã\Ô1Q\ão\"R\Ó}	5\r-.#.˜\Ís“@\Ğ9¼WOø\à)o,R\í2š\Ætï±½:–\Ü\å@©\ÔóÙ½³a‡*g ®I\'º\rHj&j\Ìpw\Å\Æ3Ò®Äœt©l«Â›kF\ÅW\n<c\"Z,“‘Q8\Îi\à\Ò52\n3G\ÅP:\Öqœ\æ¨\Î94Ç™:\ÕVµn`\Öd\ÕH–Q”UIncT¥<U\Ês¶*¼3Ô“±\Í$\æÁhkYª*\ÛO3U\";SŠYH\ç<\Ò\Ë&\à–\ëR\Æ\ä\Öb\ÈKV…¿#”¬Rz–Ğ“ROjH”c\' ¨e˜³\ã\êM8\Æ\â”\ÒY\î\å\Æ8®—GÒ–\Ã\æ¨4]+\ËGš\è\ã‹b\×T!cs¸\ä]¸¤+ƒL\ÉÈ¢I0=\ëC\"9\\“Ò¤†-¿52(\Ë‘\ÅX\'°\é@†\Îj•\ënCŠ·#`Uó\åµH\à|J>f®Aº\à\×y\â7z\×n\Z³\ê6\\ˆ`V\ĞqU£¬© U™°\'\Òi\Ì8É¦š\0c53qòZcP’j6~x©\rG€(¤’9¨úÔÂ£>\Ô\0‡ŠilS‡=i¸>\Ô$um\0\Æ*¤x5j=\İhGùR \êi\ÉóT\nŞ”\0¸\Å4\âœ[4\n\0‹<óN \ZLe©YqÒ€#n)¹§z\Óp\0) \çŠ\\qM\Z\0^”fòs@ \0ŒœÔ‹À¦\ã)T\Ğ³KšEóJx<P”)i\â€9â¼\nbŒóJI nM#\ZLšv8 i2ri\àq@\\\Ğ1šB9¥e§*Š\0ŒŠrñJÀSg4Xfa¤5\Ô\"\Şs;€\ïQƒŠÌ±\ÔRf–˜ Qzbœ(\ïKz@–€(Ç½0\nP(”\n\01N\Åš\r\0&i3Jh\Û\ï@	šPh+ô”\0SM?\Ó\Í\0&(n(¤~F(3IF\ßzZC#j¯%YaU\ä€š\Ë\ïU\ÌsT\í8l\Õ\Õ;©¡	JzRcšVãŠ¡:R\Z\0\É\Å8ŒR3Öši\í\Ï4\Ò;\Ğ1†£=j^´\Æ\à\Ò\Z#=i)Æ›@N¢¬\n®µ:ò)4f®Bj”k\ïWa™&™\Å\ÔZô\ëš\Ú3\í^ai\Í\ÌZõ\r1\Ñ#\çµ4°\ÕVxƒğÃŠ»°u¤x\ç?…QG3ulö²‰ \È­§\ê+q—\'*i\íÕ²\rc\\\ÛıšO27 úR¥1cœƒV0$Õ™¥Üµ\ÔqŒw«ñ©G\ë‘TC,>•]”+S\Ëz\Ô\Â:æ¥¬0x«6÷Ex4\É\"\Îj0¿5¹z\â\Ù/<f±¦µhñ\Ål[1«RÚ¤ñğ}k\Â\çM*­ôk\ĞÕ¸\È’Kq4\Ğ9\Åq\ÉXï‹º&\'\'5\"\Z4\ã­J\êP4H­N\'ŠŒ/½?oi‘b\'\éT¦jû\'j¤\É\ïL{“Œ\Öd\æ´\ïóYr§½R%”gJcÁ«\Óğ\rPœU”$\äÔ/4\Ç\\63SÀ1Ş˜\Ëö­C#\æ ¨“@‰bÖ·JÎ…3Ş­(¸Z\á{\æ¹c„ˆdŸJ\Ú\Ñ4b\ÄO(\ë\ëU¼?§G3	²}+´¶¶UPÀ«zq9\êLX`(ƒ\ĞT\Ù\Ï>”\íœc4lÀ\ë[\Ú\Ç=\Æ\0MDŠdnzS\Ê\ïn¸«T\à\ÒqQ;\à{ÔŒ6÷ª\ì™l\æ€\Z[5\Ã÷F§\Ù\ß5\éû²3H¤y×‹Nëƒ™Ú»¿ü¥ë„„şõB\ÜLÑ„µ>\rC+R\çµhH§8 ŒŠ1\ïH[¶(œSi_š1\Å \"cQ‘Š{õ¨\Ê\çœ\Ğ\rG\Ô\Ó\Ç£š\0ZcœSÛŠf;\Ğ\ã]¼Õ˜ŸœUt\éV L¿Z\0Yx¨±³ñ©f_›­1‡J\0f\êP\Ü\Ò\ì\ĞI\æ—9\í¹¤\Æ8 M\"¤\Û\ïL\'\0/i­É¥\Îid\Ğ\ãŠAÖœOjn=\è\ÙùióIŠr¯h\àƒMf;©\0\Ãu©qš\0U\ÇZi4(\Ï9§…Á\ë@§R\Ò0Á@\r\Å;øiq\Í`P”@=©6u\æ€Œ\Òw£o½(\Ğ1J)Y}\éğ\Ã\çJ¶3Ş€?ÿ\Ù','2025-02-27 04:35:30','Male'),('650e8400-e29b-41d4-a716-446655440002','6bff076f-d582-11ef-9523-005056c00001','Admin','User','Administrator','Administration','emily.clark@example.com','555-2345','Contract','2021-01-10',0,40000.00,'Night','650e8400-e29b-41d4-a716-446655440003','789 Pine St, Springfield, USA','{\"name\": \"Mark Clark\", \"relation\": \"Husband\", \"phone\": \"555-3456\"}',_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0\0ÿ\á\0.Exif\0\0MM\0*\0\0\0\0@\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0ÿ\Û\0C\0\n	\n		\n$ &%# #\"(-90(*6+\"#2D26;=@@@&0FKE>J9?@=ÿ\Û\0C\r=)#)==================================================ÿÀ\0\Ú\Ú\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rğbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0Nirh\"Š\ê9\ÅÉ§i¢”R\ìšvM2Ÿ@\Şh\Şi´P™4»2”PÁ5(\â¡´€—y¦—4Ì™Àõ¨\ä †\é\×5-”·yQäŸ™º\nÄ½¾Fs#ƒœU]GUgœü\à*œVa–IŸs8	Ÿ\\f²•G\Ğ\Ú0\îOsu`2òu •U\"š\ã÷ò!U^rx§£©*)f\ÎI{,¥L\ØnE`Ş¦ñ†|õm¹\ã9¨¤˜G\Ä{Kõ\ëÒzV\Ô\Éùˆ\É\Ç$\Õ/\ŞòêŠ‹ı\æ\íMk¨=4#W›;\Øu\ì*Œûš‘÷?v?\íœ\Ôg\Ğ}xª3dX9Ï§T\\¦N?\nSµ:0ZD\É\ï“\ëL@#=\Ïûˆ\ØHü©¸	ôô§y°óÀö 	69SŒ\à\à\Óñ\Ç1\ÈO\İn)¤\'’\ß\Ã\Ï ö¨2˜+\ÓE\0:X7!ÔƒÚ‹ˆşDuê½©a¸\Ç\Ê\ÌJªFjy\È\0\\õ\àR¸\Ò ‹§4±…$8Ò„]O@N)Ò£ò†#¯â‹…†IB@úæ„†8éŠ±l\ê\èN™Á>”²Ú´D°\ÃFNF(½´uE\Û-Tq\êG<0\ã¶’¬Ñ˜\Ô7J\æc‰ft.N:©\íR\Ù\Ü\Ëm0P:\ã¦k)E=£6·:!:©\Ï\Ó\í\ï$ˆ” \'\æC\Æ~•N\ßSW}¤˜\ä\'·«\ÈñN\ä]:y±Ÿ…d\î·5V{\ï4\è%\íÙ”“§œV\\šd¹/™\ÎTf·f³–.Œ$¹¦˜.“\n“‚W\ÔqŠ¥&\'\ÔÉ·…ı\Ü\ê2{ŠÑ’\Öö\Üy‡k)\Î1š´,¢‘\Û99\Ãw«6\Â\â<\Æ\ã\rœƒù\Ğ\åq(™‚ÿ\0÷{X÷\Ô\Ñ}šğ,c”p	4—\Öv\é!fŒ\Û\àuO™j”–2HÀ)\Æ(Vz¦´\'’û92»]3÷€\Í^¶¿?)p3‚Â³­õ\Í9„w›e‡qZŸg†\â?6\İÁ\È\Ï=\r\Z¡hÑ¨…vS\æ\ÄF	E=\"%r§#Î¥\ÓY\È6»¨¤t®‚\Úe¸@ñÈ§‚¶§>†!mK\ÖW¡C÷—ƒS;šËŠVó›ƒZ9\çš\éOC•«0$\Ó	4\ãšmP\r$\ÓI4¦’˜„É¤$\Ği¦€M&M\Ó@É§\ï>µ>•\Â\Ä­¥=h­\nZJ}!…(¤§\n\0Z1E\0R\âK@8RTs\\$Y\àŸNÔ›\ZC$—\ã_Z\çu½pFh\ç\'‚\ÃúU\ÍcR†\ŞÔ\Ø\Ü8½q7W\âL\à“a)tFÑq\Û\å¸%ò\ÙcÇ½_ŠÙ£‡?7V?Ò™g·O2l\ÆBõ\ÅXG’õ\Ñ	Ø„õôƒf\é\íŒ0FX¿mq7ú\ÆA»ÿ\0\×5fur#\êªxç¹¬ıZS\æ|ƒ´\äâ²½Ùµ¬Œ\â\Ì-\'\ï%n}\0¨e\ã\Î\æ\'\nƒüñN´Y*~c\Ü\Ô–±\å†ô­¬b\Ù³8B€*\ç*¡\áFO>\Õ;\Ë‡­G\Ù\çÖ©±¸&¦q\Î{ñIGMM½7‚~\ïqŒ\æ†\Ça¾Q¿\î\èj\ÊaH`}jÔ—ƒ•D:\0Ni¢O0gŸaF¡ ol`… ñ’3H2\İ\\t#)\ß/÷rzñ\ÅY‰\Ú\à`	<ŠM\Øi\\\Ïr¨HòÔŸ\Äb­D3Œ \äŒ\Ô\Ò\Ú(%‰%	\è;Se\Î\Ä?0\Ú3I»+\É;—\æ\ÎFGZ\ÉC„lğiÿ\0gš¥y\Újy\"Y£2ªx$Œ\Z/`¶…PNI™	\ãb®[J®<½Û”ğjb\æzçŒšŒ\Ç,$6w`÷¦\ìô`®µ-=³\Â|\è	ä´ø\åŠ\ìlw\Ë[“\ï×‘R\\Z—u¸\É\àµi\Ø\Ò\×WB4R\ÄB\Î<\Ä\Ïÿ\0CZvEŒeB\Ñõ\ÃpV©Y\Ş˜ü‰\ã\Ç\ÔT©›W\Ü~ƒ\ëS+µ\æTlŸ‘¤.fµ;¾fN‡h\Î>¢Ÿ)¶¼@\ÊV7\ÆNx\Ïÿ\0^¬\ØI\æa\Ğg™}~•b[\Îø\Õ#\Ï¥b¦­\\ÄI¬\\üŒÑ±şkV\ÛSKˆ\ÊO\Îa‚µFö\Ë\í²”Á^Œ§ª\Úi¼†v·i˜2ı\İ\Ü\æ®É¢i›3Y±B\âş~R*‰Í½\Â(%#\'\Çÿ\0X\ÕÄ¸¸„‘w\ã²ô?…6Qou¹a&9Wœ\ÃRI­Ê“O`º\Öğ’T4.rF3ƒÿ\0×ª1C%©2i²\Í\Ö\ä0ÿ\0\Zp3\ä\Ì‚§œ\Ól\å\'6³ñ“˜Øø\Z¢=Gı©/ùùr¨ù\ã?\Óü)ö¯-\Èe\Ë\'œvª÷²47;n\ìò²/Æ¤MAˆ¶²\ã±ıziktUfn<™¼·taƒƒÖ¶{W-gt‰4~saAÊ\ÕÔ‚®R#‚9\ÍuS•\Ñ\ÇR6cy¤§‘M5ª2i¦œi”\Ä!¤¥¤¦i¦A¤EK\ÍGRR	\Òb”M¦¤S¨´¢’Š\0u\Úu\0\á\ßù\ÒTH\Òd.vú\ĞÆµ%ĞŒ1Œ,{V-\Õğ(ò–\Ç?\ÄjMZ\æ1·F\Ã“\ï\\ö£x²¢Dƒ\äN w®z’\Ö\ÇD#mJ·S=Ó—›«pª;UhĞ¬Ÿ.ÁÀö©J9BOõş•£§Y¤p\æDÌ„ñÕƒ•‘´cv5!yvF8\Ëu­K[jª]\È8ö–\ëÏ–€nY\È\áGøÖ ‰mm~\ĞO(05„\ætF)\Çv¾a\r\Ä@\äúš\æ.Ígn<ŸjÚ¿”Ã¦\É\Éf”ı1\\üÀ¸ğY½j©«\êÉ¨\í¢#·¶kÙ‰`\ŞX\è(¹Ü’1q\Ót†\Ü@ƒ÷Œ2{`z\Õ;\ÈL}ŠF:g½i{³&¬Œ\Ù–Bp}”v¦º,xŒöQR\Ép ™üê°‘ƒò\çz\â´I™¶‰“%:\0¹\èx¦Xò=)F89oÆ‰ˆ\É\nK}iˆD*N~aŸÆ¬$j~ëŒ·QÒ«Dc ¯jIKG0# \Í¥,‡\çö\î\r8‰2U\Ï\Ê\Ç!½*+;¦‡\Î\è‰\Ç#‘Z\Ä/‘\æ\"‡‰Q\Îk&\Úf\É&´3\ãó\àù&\\¡\à\Z_Ş‡\"0­\Ûo¥j\Åµ\ê*œ¹\ÏJ§{£\Ëm òğÌ§\'¤¤¯f-lCMƒ½dñÁ\Å-¼H$E˜†\\üÂ¥‹Ì¸…£¸Õ”\à†©U<­¢h\È\Ğ\ç4®U¶1eŠ{w.®Lm\èzS\í\îZL£·\ÊÃ‚y\Å\\\ÔcXg\Ìe@e\åI\ÍTò¡pAVGp(sZ\'tdÕ˜®İ´\ïZ6¼#œx\ÏŸ±„Â–nä“Š˜K\ç\åp{sÒ¦J\êÆ‘ij{\í(¿\ï\á8~§\Õkm\Îş\\ÿ\0»t998«–w-²2£!³ŸÎ´¤†\ÚõG˜¡2t\'ÿ\0¯Xİ­\Íl¨¥b\ïet²¨Ü©Ê¶„2H\ZH>a\Ô\àÿ\0k!\á’)–	ò#a˜¤\Æs\ê+J\Ê_²•\Ì7½:ğ5³\Õ´V„¹#G32‘€\ß\ài³Xyq†p\Ís\ÇU5v\ãNä‰£b\0\äú¯ÿ\0\\Qö†9#¸¤i€\àôo¯jI’Ñ\Ã\"Ep|\Ûy\Ñ \á“>¾¢©\êZeÍ–fP\Ï\è\é\Î>¾Ô—›¢\Ã!ı\ÎpÁ¹+ÿ\0Ö­MUY£kiC \Æ£­h\î•\Ğ-tf:Hnaˆ,‡8úúV]\Å\ÓUÀ\É\ï\×5³\â\rM2sqk¸@Üœ•úúŠÃ¸+0\'¹\ãµ\\l\ÈwD\âğ\Ë†\á¹£G\áN<\'q\rµ½Eeg“1÷sŞ¯é—ªò{† 7\0qUk!^å—ŒŒrJú}+cJÔ¤±q¾2­\×N[=™,‹\È\ÇqP\Û\â7\Ús\Ï*Ş”\â\í±2WV;h\ædGjq®v\Ê\é\ã%‘rœ\"µ-µ8®\\ Ê¸©®˜»œ’‹L´E0\Ó\Í0Ö„ˆi)i(\Ú)\Ô\Ó@	RTtúC \'“E©¢¶2N¦\n} \nZJ)ZQÖ’š\çbß ¦e¹½SU¯n–\Ú£‡#…©„‹o	w\çh\Ï<d\Ö\×K\'™spp\0â²›iY\ZÁ_s7S¹T\à130ùˆ9\ë\Ûğª\ĞÂ± -\Ë÷j¬·l\í\'L=ªõ€\àÉŒ\08\Ír\É\ÛS¦*\ä\ÃóŒ¹\çÕ±D‘\ì ™H\ãªµ•¾Hr@\\\ç$\ÕøŠG™\0a…b;z\Ö•Îˆ\ÆÚ¶¶òİªw1\ë“T\ïoš\êc–ùÀ¥G}~\ÒbcóœqŠ¤û†B…\ëšJ=XÜº\"mJ\ä\É\n®r şu½“H7\È\ê\ÏzgŠ$œ:wª\Ş\Ê\ç\n\Ì8À\ïZ\Å]YI\Ùİ—\æºX¦e¶\É|r\ÎsšÈ¸yn&-#\î9ÀïŠ±½#¶y\ne‰\ÆCTP\Æ&7¯\'5iY·vU¸]ˆO¨¨¢ˆrNOAV¦\Ü!\ï\Í$’˜‰5U	“U}{Œ<qœ\ç\É‘“ƒ\r8dø<T¾Q!±œ\Æ(½‡k¢\ÜI\'=A©\ä‹\ÍBù€\ÈµeÜ€\ä²ôÁ\íV‡\î\Än*p}\é7a¥ \Û0²‚¤ò:J³krúlşT\Ãu´¼ŒŸ\å\èj)aò&Y£+²AOÿ\0UM)\Ì<¡1qŸJ–\ÓÜ´š\ØÔ’Å„-ya™b8\rƒœõ\é,uo6	\"¹\Ú\ã VŠ¥c-°aoœ’££¸«\ÖñZ\ê\à\É	:\ÅSŒoZ†´Ô¨½G¿“‚\ê˜\Z°#\Ş š7F#+œU?&H\Ã8R0TŒƒKd\"¸…ÁR’\0J¶1Ò¢\×[š^\Ïb¿ˆ-\ä\å[h\Æ9b1Š\ÊŒ½3\Î}+¥Ô¢gL(\Î\å\äñX“B+Ê“Œ+X=”Ö¬¥$f²£ŒŒz´‡#?t§%ü,a†DÁÁõ\ët\r€T\á‡qM»¡%gbkk‡ˆô\ìGÿ\0\ZÛ¶¼Wƒ+´dò¤t?\àk ‰ñœÁV™!u—ø\ŞQÚ²’¹¬]¦\Êò\İÉµ¼¢r6¶q´ú¥Z¸±Y#h\Ãe9\ã?ızÀ\ßÍ·÷\\‚+GI\Ô\İ!X§˜¾P\Ù\éÿ\0Ö¬\\^\è\Ñ>…\Û	M¶ô¹8RpôË¨Ë–‹¶r\ÕMZ¹H¦Äƒ‡$sT\"™’\ç\Ëfı\Ù\\)##\ÇÚ’]FÊ’I$‰\"0\\¨\Úù{\ßñ¬\Ã%Œñ\Ïğœó\ï]Qˆvó’¤œV=Å›–©8Á\íZ\Å÷\"HÚ¶\ÔbÔ´¤Wp\\.‰ı\rr—±‹yh\Â\îÃ¯¥O¦#[LclùLv°<cÿ\0\ÕK«\Â\â1ppS¶Pù\ãŞª*Ì™;£%Âƒµ\Æc\'*Ş•c\ì¹(Û‚œ\ã~3š`ˆù&H\Î\èúŒ\Õ\í%\ãºı\Ó(]\Ç\"­»–òN!X\æÇšƒ*Àd0ÿ\0\nŠkx¤!\Ó*Xr§ŒQ¾]#M—µoC’¾â¤¹ˆK¸³u•GVS\×ÿ\0¯P›L»&‚\ŞF‰Ç¨\á»f¬\Ël%q*|²¯!‡z­\Z%\Äşó£)<®:§j\ÊR\ØWù[<\Z\è§+\è\Îj‘¶¥ûk¦ $\Ã8Ï­Z#½R)¿¯QĞ\ÕbIM­÷—ƒ]\çc\é)Ø¤4\Ä2Š( §\Óiô†W=h¤=h­™\áKM´\0ú)´\ê\0AMs—\Çe§gª\\M\å$ŒNúÔ²–¥-b`G»9\Æk–Õµ”S\î¯Z“U\ÔZK“\Ï\ïXò>I$rO\Ï)]VD†’@£’N+¤¶·iDv\è=\Û«/Gµ`\Z\âE!T`]˜	C&[ ôQÔŸj\æ¨ú#¦š\ê\Ë6\Ö\é4\ŞJŸ\İ/\ß>¸ş•¥t\Ñ\0\r½?•\\y•-KÂ˜óx\0qôÖ¨\Íj\Ï2\ÆHÂŒ³\Ó\Ôÿ\0Jç¾º››ñ—c·=Xóš¡s{°I\àu\ÅX\Õnc‰ğ¤¼\0;õ\Íd\ÒÅ†I\Ï¥uF7Õœò•´D‚U\åØ€=³šra\ß\ä*I\àcŠ‡\Ë\ä/|ğ\0\ëZV\Ö\r\Z‡À\É\àgµSi“lI¢\Ùh@\àgÚ¬\ÙÛ!\äNcŒS®¢.?‡®+M-…¾Àœ©`~µ›–†ª6\ÔÀH\Ö\â\æGuF1ô¬âŒ“36FN@5¯[[Y_¼Û½+¤\Ü\ìI\'ƒš¸³)-‡! 8<ı*ô)\Ô\äg­P.RB¿€­OF\Â9¡„J\×nvv°\È#Š4\àŒ0\ÛR\İD%@§\âVª8£dz²ğA¥{¢’³om$2\êw©\ëõ¼­cl°==ÿ\0úõf3¶E™\Î\Ì(½³^f„‚	\åq§ü\rM\ÖÌ«=\Ğ\ÑG™a]\ÛU†OQ‘Um¾Ibcª3‘\Ôş½i\é£\Ì,’vœ\çŒ}iœ\èIE\ÃgqB’Ù‡+\İ\ZVW_n@Q*ŒÈ€c>ÿ\0:Kdˆ»\íeB0\Ø\çiÿ\0YD\\Y\È&O–hù\ÚxÏ¨­‹[•¹O9NU†A\é\íY5gu±¢wVd‡t¡v\ßÄ¹\0s»Û«”}b¹8À\çkÿ\0J–bc‘\r»a„ƒc\ŞßŸ–w…/9“\\²&>\ëzCE\ÚZ“*\Ëd\ËˆÀ\å:‚:­U³Ê½H¤FW\Ğ\×O5¬»g{\à)a\Æ\áY\×6;ìŒª\Ê$·?+t\Ïÿ\0\\P¥}\ãmG\ß\é\ä¡D\á†F{õb$²\ÄJaY3\ÂI\Î>†º\ë;¨\ït\Ø÷rñŒI\ÏQ\ëøZÄ¿Ó–G&<\r\ç\å\ÏCÿ\0×¢-\ìÁ¤õE[t\ÉòKF\Ì3\å¸\è}ª\ë»C\å\ÌWdª¿¼\\p\ÃÖ²€hÀİ9\íZa\å–0\×1Œ\í~\â‰+l³\ÜØ³˜CeLLx?\İÿ\0\ëUK\Ùs;ôx\ÎAú\Õ]:QjJœı\Ï(\ßÀ}>•j\å0±˜\É\ÎwşELw)\ì\\2¬\Ñ\ÆñœHW \ç¿ú\â¢\Ôc\ÉÚ‚7\0Xxÿ\0YzdÁ·Z;\Ê\Ç\Ëbzõ«~\Õ\ãx.T¹\\\ZMY‚wF=ô+†P€‰\0f¡÷Æ¤!%¶R€:†¸÷úT—0‹pmYşem\Öòxî†³\è\ØŞ˜\Ø2–9\ÛÙ‡·­Z»WD;\'fUK,/È·\ËD\Ã8<®\r	\Û]+Æ¡7•CÁúzj·t\ë4d)mŒr	?wÿ\0­U\émux›”=Ç­_5÷\'–\Û©\å\ß\Û4L„…ë‚¿‡¥f\Íe6“?f\ZX$\à¨?¥X\Í“wo  ó¹Nwñ«’\\Csm \Ç$\á—\Ú}Gµ-\Û\Í\Ò~şü\İW¸ö«V÷+$ÄªwcĞŠÇ¾9,\ÙW9T‚\å¢)t‡\å\æ\Ç8«\è‰Y«m³‰cS\ÆH\ÍLPõ\ÅgXJ²!h\Èõ«\É!|sšì‹º8\ä¬\ÉsIJI¤ª LR\Zu6˜	O¦\Ó\éª~õ¦Š\Ø\Èu-6–€)\Ô\Ê\\\ÒN1\ÍsZ\İ\×\\	\àVõÜ¾T-\êx¸]^\é¤<‡•GecZjú™——rO,M>\Ö\ßÍ™KdŒô\ê\É®9>õµcj\ß\'3s\éŠæ“²:b®\ìk‰“l£h\ëjX\ß\í)”\Èiœ QÀ(tû<˜r~PMM¤34„|–\êH\'Ö¹\äô¹Ğ»\Z’\Å\Ğù3º\äsŒ\ÈÀW?­\êfL1\àK)ù\È\ì=?­njR-•”l\Ù\ŞÀ\ÌÃ®}pw·,ò\È\ì2\ç–\'œõ\êiÇ™\İ\ì…RVV)\È\ZI7ò„÷ÿ\0õÕ›+f™\Â(fv8€¦\Ø\Û=Ì„õ\Ú2sŞ·´«_/{–\0¨\È’s]2vF1WeqxH*p3€+j\ê6µƒ\Í)ò€q\Çj½g§‹kd8\"F\àP\ëA\å!%›b¨u®iM\É\é±\Ó(­w3-Ñ!v\\¤¹Áô5­r\â]*\Ú²•lzŠÄ\ÍK\'bO\î\å\0c¶kn=·6H\Èıp=i\ËKW¹\Í\Ü\Ò\Ãn˜‚GµP4“\åI¯qŠ½«#	\Ä\'\îäŠ©\å,D€UrMl¶0–\åicd”Ÿ”OCš»eÃ\ã\İsP¼Le0É§\Î9ÀŞ†\î¬	YÜ½ ò\á¹U8Úª$\äÀrN¨ÿ\0Vşi­Y†Q+?`—@İŒ*QL¸°ü\Ãn\î2;\Õ\ÈÁ™8`F\×Z\ÉI$˜r3\ÎkJ\Ê÷.\Ñ:,N\ã\nÃ¡ü=\é4Rd†?(	&&8-\ÇÚ­\ÂLo‚w\ÄGq’>\ÕNWÖ¬Q™\Óÿ\0­RZÉ;W \ÏCY´\ÊM\ZòX\èÄ±Ò¯8?\Ä?Æ°^	ôK¼^\ÒS\Ãø¶\Ï5\ĞYÊ Ÿ-ŒRùg\×ñ¢’WŠô˜\ä\0HN€ÿ\0ı~ô£&´{\r\Å5p\Â\Ü[<À¨v`Go§×­:ú\Ç\í9—pVÀ@:\Ùú\Ô_b–(\Ú<‘†Py\Îq\Ğÿ\0J|{\ã˜,²¬\n2ûŠo\ÈQó-\é\×R\Éa$3/\ïb;\ÒG4ø\ÚLRÀ=h\Ú\ÛD0\ÅN{\à\çw½b^D\Öop\ì¹Um\åsÀSÁ#Û¥BÔ¶Q€\Ëe©I\Z6c\ã\äzVƒ\Ü\Ç–\n«Z\Î~R½+=÷#¤œ°#ô?Ò®L‹kw ”\äcnyÚª÷&\Ös`L\ÅQ”ˆ\Ç-Ôñ\\\Û7Ù„¨1*œ=> ş•>“|‘\Ş<7`©1±\çw½i\ŞÛ·‘#HUc\Æ0:B?\Ïjmô\ÜÊ·ò\åƒvWw\İ$¾\Ç\ßŞ˜€\\G%±r§=\rf_H\Ö7H\à\æ9Fzş½Kò£\ï\'®0GPE¶¨¾Œ¬—e¿nz\á¸\Åt\×!	¸O™J‚Àwÿ\0\ë\Ö±|Ÿu\È`G8\ÏZ·¦;\Éo oœ)ƒş})µuq&Ó±=ı\Ê\Ü\Û.\Ö;”rGoFÊ²\Í\ÒŞ£Yß¯Îœ\Æ\àr\r9\äû-\éŒg\åœ\çüŒU-J&889\Èojp\Ñ\ØS\Õ\\·\ÒÙ‚f‹\í\ã“\ï¨«2[Ewm\æ[È¯p29_­Q\Ğu\0nDs¸ğsŞµ5m9\í\Ğ\ŞØƒ\Çƒ\Ôz¥}w\Ú\æ]½\ÕÎŠ\ä:·s‚¤p>•¡\ç-\ÔbX+¯§z¤fYSü¬3ƒŞ ‹Ì²„\'\r\ê:Ó·\Ş?@¿-*b7¨\àz\Ö}µ\Ë\r\Ñ 0\Ç5£$‰!=\Ës‘Ú³¯-\ØI½G\×¤uV2–÷6¼?©˜\\\Å\'#8\ãµu\Ñ•l‚¥y¤w\r\r\Ìnğk¼Ó¦i`PG=W=+zo¡…E\ÔÖ¢‘8÷\ïN\Ålb6›O4\Ó@„§fšisHes÷¨¤=h\Íld:–›J(\ÔP(¯9KU°Â¸‹\Ì\â<ó\Îk±ñ&~Àq\Øó\\•÷88\ã¹\êntSØ†\Æ\Ä\\]\"–\n¤\å‰\ì+¦ı\Ò}\ÅÛ<\àVv•\Z$;™~vëš¶7\Êv…\ÆNÒ¸\ê;\èu\ÒV\Ô/\ä\"ù‰\É\Üs\è+KJCı˜€$;›¬}Jhˆ!œ*´3[RÑQòy`ş½e%hš­Ì½sSLpA#€>Ÿı|\×.\àº<…l±=\Í]¼&Yİœ÷ ˆ\äò\âAÿ\0-9oó\é[\ÓJ10›m—-|›-0I&^Y[G@¿¯J\Ö\Ğ\"&\0\ï’fl\í\é\Åg\ŞD&{[h\Ğ.;\ëøV¹‘mQ\"…”„Tyÿ\0<\ÖS•Õ©«;—\Òù|\ï—$ ,^z\nŠl¾¡l€‚ ‰ˆ>\çüšÏ·•K\Í \ãn\'¶?\Äÿ\0*dw\r\æF\Ç9a´û\Öi\Z6C\Z÷ª–RyJµ\n<®qŒQ‡û6 ÀubAüEX·po`qÄ©öoş½T–š\n/S?[·sÈ †Sµ°+;`’øù°÷®ª\é\ì\Æ}\å7\Ë&y\Û\ïøVQµX\İ\áp¼\È\Ë\ÈaD\' N\Z¶gù-‚vô¨eµf@Ê§,21[QBl\0­]†\Å\Ï2„Œ¾\ÕNVÔ”“\Ğæ­‹§\Ş\Æ§”n\ãnqÚ¥–I‹Ld\à•o\ì\Ã~8ù”0\ÏznZ	GSXNp£8<\â¯Y…ÀÜ›ŠŒƒ\Ğÿ\0ú\Å8¢\Æ7\ã\îõ£½Z­À $]ñ°=Gø\Òrº-µCe\Ó+¦¸‚C¼œ°gùƒJmZ\êö\èª\ëş¶5=?\Ú\ÇÒ§¥’7^&8\Î?¨¦\Û]E\×Ï˜\å\Ç?{üúRwhJÉ“\\\Û*•\Ä\ès\ÃOÆ”&6‘2‡î·¡ş\é­³¥Å²\Ü\Û\ÊZ0\Ù+\è¡¢H×—P0ÄŠx\Æz§oj…©w¶Ä–\Ó*$i0VY§\çşb«j0ˆ¤Ã²Ÿ0\î;ßGr‰\á\É\Ú72ŸQ\Ç\çŠt’ı¢\Ø\Ç!m˜Ê¶9SEšw\î‹\Úuú¼*¬¼Œ…\ç;TZœ‹4n?(ÁÇ¡şx¬{{å³˜		Ù¸3Úº\'¶[„–4\Úh’{ú¥&¬\îRf¬K5‘Qƒ\"¸\'­^º·ûFŸ‚0ñŒg=G_\ê*‚K%şÒ¼G\ÆğB?úÕ³*,‘\Ç ?»e\É\Çş½6\îMúT\Î\Ğ\ÊRA»i\è˜ô­;]]¤¶hg$€6‚zŠ“S´DP H§\ïr?Éª	¦JøR¤\î\È¥Vj\Z¢+\ÉVA¶LeÀ\Ç5B“v\nŒœ÷-\Ô2D\ïzsŒõªñL²8*\ÒĞ†õ5REtò\\ü…rcô\íI§^5­á^\éP\ï\ØUXd\"€Yy¦\\\Æ\×	¹q\æ)À¥\ä\Ç\æ‹Zš\r\ä \Ë/\ÜT	,^XK‚|¦;Kc;OøR\Û\\}¦I0²/\09ô¦\É3‡óÒ‹t•.¬¼\È1SA®ª\Âÿ\0\í–`¹\Ô\0Ç®?úÆ¹a+Û¸‰\ã`ÿ\0«z\r\ìBñ£Ÿ\ä\Ü;¿şªm6¯Ø”\Òv,jVbÜ÷lr8\ÚjšM˜Ds\í8OOjß½¶ó\ä\ïU\0u\ê½?J\æ®b)!F\âEúôÖº\ÓT,Ñµ»¬ f6E#\ã Ÿ—¯½6)w\ÂQËœ&¢\Äûñ\Øú\ÓD±\Æ5Án¸9ú\×W\á\ç[\ÎBœö\Ír©&\ÂWª‘Á«c\Ãw>]Ï—ü/Áö­`\ìÌ¦®¹9Aı\áÁ©ú\ÔHH,=y§ñk¥\ìy\Å4\Òf›šd§\æ›KE€®z\ÑA\ëI[‹J)´\ê@:Œ\ÒR(­\Úl\åNø\â¸û\È\Î#\ê\nğA\Ù\İH®fò?2\ë=9\È\íÿ\0×®z–J\æô®ô¦ıÃ½œñŠ»}p\"€\Ç\\‘ó0\í\íUJB:O\\U™[ˆ3\Ç$\×Wgl]‘\Î>\Ä]\ÉË“Šè¬‹±Ï“¸-sWG…Uû©\ÇÒ·4\ÙL±\Égp‹ƒJkDn\ìÁ”,•\ä8\Ã7pj]5\Ôq\ãI\'ŒT6\É\È§\×ÿ\0¯Z\ÚRG²\âüd\"G´¡8Á?\ãVİ‘)]–>\Ò&Ô¦PTD‡‡p*	®±å‘€NH:ú\él-›\ì\Şoe$óŒú«.k0±\nFÑŸóŞ²²l\ÖöExÀ*gÛš\Ù\Ó%]Z¡\Ç\'\è+–9]¹\Ğt\Ími\× º¸O˜zU¸\ÙvZ¾\Şó»\ËW¹¦\Ç1û)#…~zó\ëõ­K‹~bùG9\ãğ¬©\Â7˜\Ø\á\Ôv÷õ	§¡­š\Ô×²½gX¦\Ã$‹†=s\ïøô¬ $±ºò\Üƒ“\' =¿\nŠ\Ú\á\í¦„==ÿ\0Ï¥j8MF\0ª\ê²c÷lxúJ–¬ü‡{¡\ĞÙ£\ÂZ\ä\Óğ¨¼\ĞaŸ)}}ÿ\0\n¦.\Z\"qG^/\Å2KÙŒ…§Er?\å¢¿QN\ÌWF‚Z\Æ\è\ÈIe\ÎAÓ®-‚CF2|°\Ã>\ÇB\Úà£‡µ‘\\“\Ìy\Æ*ô·,[»!VP\êPœpjvÔ„Ú©p$«Œdv©l\Ğ\0l\ß\âm\Ñ1\íÿ\0Ö¦\År§0¿@\Ù=)÷€ùt8R¼’?‡ÿ\0¬iyBI\íü\ÛYJ¯€c=jı¯\Ú#,\ÇkmÜ§¦Oô5§o*]@\ÜbB¸qŸ\Èû\â©	&Û“˜˜\à:SM‰¢\rW{;“\r\ÆA\Ï\Ünúûû\Öö¤ñ\ì[»P\Û2D‘Ÿ\áÿ\0\\ş§bDbL¬‘‘˜\ÙF\n‚\×\\h@Ù™ºœ{úŠ¦¯ª%h\ìË“]7\ïF\ÎG¡÷z–$\'sm”^E{vE \ËF*}EcJ˜O\ÊÀc>\ÇŞšW\Ü¶¨Ö¼\ç%Fca’:şU¯¢\ë$v¨\äy‘1ˆû©Z\å\â½hÇ”HzÚˆ¯<« FQ¯©8ôõ:\Û\éZ\ÆöDÀ1N¸ ÷?\ãRX\Ş\ì„Û§!”‘¸\ç›­]¯&a¼{ñ¬\è®[\å‘Xö\r\ìjRºÑ›\Ö÷˜f‘Áaş8©\ã\Ûs¢“–\Îq‚:V]¸S$‘\É÷\ä¶:{\Ô?jhuŠJ–•³\ĞÒµ\Ç{µ«5Ağ\0¯Eô\ìÆ¹\İF\Ë\ì÷‡hù\'\Üz\×VnE\Éd ¥L8\"³\r©›Mh\Û\æ’\Ü7ªú~T\Óh–®c}¤\Ã$n§*\Ëó_ş¸­TM\É§‹4\'(~eQÇ¸5oN¸Ä£|\Ä`ƒœnSıjä®®‰N\ÎÌš\æ.\0»ÿ\0ızQ7™‰\ÇÎ§r±©\İ\Óaùr\É\ãw¸÷•\î1Ÿ•À\È9\ëK^¥\èö*\Ş0‰B\í‘x`Egœ‰–d\à©\É\Ç­C¹°Áïš§4E3‡SQdI\ZúN¦‰¾)·4}õÀ?\áK©[#\ÌT_•‰\Æ\êÆ²™¡ºbT\áF9\í\Ít\Z\Ô-o´®\Z&\ão@zÀ\ĞÕ‚N\ê\Ç8%h\æ\Ã(Á\àŒQxŸ&F9R;\Ó/\n\Ë™\ê@\éRD>\ÑG]~e#½_™>D6ÒÀZºi1])\èIñ¬X$\ç¨8­+Wo:sjº“\Ğï¡”H~u>e\ÙH\Ùt\î\05¦P7AŠê‹¹\Ë$4¿ZJ:~<\ÒU§f™O\Å!‘½IJ~õµ3)i®:J\0~E•\É\ãÜ‚*9dX\árr0	\âŸA—×¹™’’	¬Y	wû\êI?w4\×w¸™\Ù23\ïJ–¼w\n§©\Ï5\ÃQ¶õ;©«\"H@$dm\'Ö³â‰i˜$\n\Ô\Å\áUT\ÚğO§½:kPSÉ6ƒ\ëÿ\0Ö®{¤tZ\æ9„ı•dcÄš±\ÃYL\'cÂ¼w©\ïcTx\í\ã\Ãyc\ë?S =t&šjZ14Òº—2`’œõÿ\0=kHBmô\È\â,\Ê\ÙÀïŠ¡§D·F0\ä\ì}1Şµµ;•†\æ]‘GOóÖ”© ŠVm‘jr-”‘‡PH\Úpk™2’\ë\éŞ­\Ü\Êng’=\Ùqy\ëTN\îzú÷ª„lµ&n\îä€€~‚´´\Â|\ä\Ï œVW$„õ¯f<¬`x\å°Cs«\à\Ê\0\'¤`j©$C.1\Ğô¦\é¯\æ…\Ï\\`š³‚÷$;W3vgdUÖ¦UÅ“DD\Ğu•<æ¢Š\é\ĞF\ß\ãOOzé…·\îAQó/\'Œ\ÖF£§4s­†\Æ#%H\È?ıj¥4ôbtú£.[\àÀ>\Ğ1\Ç_zIeó\0#r808\Í)H¤\Ê0\Ù\'÷OCôª±\ÌŸ±Àö«^FOÌ‘6rİ™Ú·oy&\Ã\ß:ÿ\0s’?\Zªˆ¸\È\è:ñV\ã…f‘óÃ½&\×R”o°\Ï22U÷4m§x\È?YK—\à[Sœ\ÕYbûËŸ•@ô5H\Æğ\Ê?OJI&\èİŠ\âK9X\ã/\Zœ²F>•jYmş\Ô\ê>O0nM\ç\å`{CÚ¹\È\åprÁ\"´ü×¼³$\Ú\Ò  3‘\éıiµÜ’ı½À¶¬®`c–ˆŒ´^\ã\ÔV&·¦,/ö‹_õNyQ\ØúcI\r\ì¶\ça$ªı\ĞOO§§Ò™-Ç˜Œaf\éóDO\ê(Šiƒ³E+[\ém\\/ğ‚jœ\ÜDA9Áş4#5Bbı\ĞA\äi<\Åq¹r®œù­“\Ô\ÆöĞ·2G&<¶\È\à\Ô/˜Uƒ/ôœ:½\Ôö¨v4d’Fx4$6%-ö(Ê±*\0%}\r2\Îğ\Â\å™\Ò@A«X\Ül¡a‘œ‚jÕœ(dò#fÀ#œT\Ú\Úvõ5­®„Q\Â\Ìs–*XúS5\"ºÊ:O¡ªf)-®f×©£\×\×4W+ x®NT¼;ÿ\0“MjOF>¦	»\'rœ•oN¼\"ô¯\Ê|\ÃÀ=Ï§\ãÒ²å‰­ˆ0’6:óŸ¯¡ª\Â\ãdŠT÷\È9§k zõ»&B\Ò\Â>Uù—#ªŸğ\éYc\çµ/U€\ã¶kª’ò;\ÛŠ\î\n}øaık˜(Ğ™¢n—§ùôªƒ\Ò\Ä\ÍkrH¥2Bs‚Ã’­Do%$\\\Äv¨_-ö9À=v«f(®@W\Â1\àÈ¼ƒWn\äk\ĞH\î˜c’\Ê8\ÜqR” o—ĞŠ\Îp\Öry\ê;Õ‹$e\Ã\ã\Âz\â—*;¶¢\É$C¤¤`\ä©\ç5±o|·ZaYğ\ŞCn\ÎrB·_\È\â¹y@|\ìnGU<U\İ\ã\ì÷L§²FASŞ©\ÇK§©j\æ\Øy`\ã(\İ\æ¨[;[Í‘\Ø\×GoJn¹\Û \ß\'8\ï\éøV.«lÖ²GC:\ä‚1R¶-­.W|%\äˆ~\ër¥_¶R^ı\åqzÏ¼ Kw*+_N‹\Ì\ØqV‹[½.u6xJOsŠ\Ñ( v›fNO\"µH\à\n\ê‰\ÊÈ%:Š¢©*:4†B~õ½Ejf-%-Z\à´ º©a\Ü\n§-üRÁ\"“†\ÚNy\æ\0”\'\æ\ê3Ş³µ+4™\Õ@†\êd\ßB¢—SšK€v’\09v©ş\Ùœ\È\ì\í\Ù@\Åf¼o;eN	\éV\á6Ï†#×\Õ\Ã4v\Ä\Ö{\ÏÜ¦\ï”B\Óaw–B~\ì_\ÄÆ©Kum‡\É_AOû{J‰\n\Î\'ŠÉ£d\É,P<wDd)ùA\ïYº¨a:\Æ\ÄŒ‚=\ëhFm´´P0\ß5—s¼\àJ¶F{ûR‹W\ïkÚ¹´„)¿_¥U¾¸2_\ç\'`\ÕûŸ\Ş dJ\ÈÀ~½GC\éVµw!\è¬3\Ì`KpJ´\éLn\åòT·#½2D(=	\Î}iR3\"\r¤6\Ş\rYûm2rF	\É>‚´£8‘\èOOjŠ(‚F	\ã8õ©m¿y0$t¬\ä\îkm\r½5Û \à··n-„Q\Å!Æ³4›~U±ß]]\å±ûbLŒ\×,Şº°VV+[ Án1´T·\Zq1l*\nTúQc$“\Ï\"µ!,øŒŒ€8µE\Æpº‚d$¯9\ãüš\å\î\í¥†R$RkØ¤µY2&ŒG^µ\Íx“H,\ÚE\Âó‚9­aQ¢\'MMhpÖ²—t¾ñ\ã5¾–e#¯\İ\'Ÿz£©hl‹qf€€CJ}}ª\æ›eI6†S‚qœ\ÕI\ßTM4ÖŒ¦ğ‡šD\ÎPz\â¨\\29zõ«j8VIË©\ÔU[û\0\É\èq‚zR‹\×Q\Î7WFP&<\ã¸\ïW¢¸CŒq ;”ƒÒ©\à§+\Îz‚)0ğ:\í\ëŠ\×Faf‹ryD™?‡\Ì8ÿ\0\ëU[ˆš<4l6“A\éQ¤,œgªš³is6\ç“	8\İô÷ö¡h\'©E\Â\È0¸\rœbK¡y€®EL\à=U\èx\Å7#z³NC+D\Ì\Ú²¼LJœqœ\r?\Ì\ŞÈ¸n›ºf­\\ùbb¡\Ø\Æ\Ê	\Æy¦yd¦2õ\Å+÷»\ÇndÏ—Ã¯#=\rZ°Wx	++\rÉ“üB¡ˆIn\á\Ó8\ÏNµr\æ4%\Â²ƒ¸0â¥²’.[J%pf·.\Ğ[­U\î-\Ê9u\Î†S\ÎiO\ßY£8W\Æ\á\è\ßızĞ³–\'›Ë¹ÿ\0T\Ç‡ğû\Ô^Ú–•ô1Yl§h\ØL`©Gø\Ô2\"8-cŸLVÎ¯¦µ¼\Ä8\Ô\ä0\ä:ú\Ö9·-`¼\ÓM=D\ÓZ	ñAƒ\Ã)\âŸsp³\0ø\0¨Á¨\Î\"\ÔvªÏº>P\îSÈ«K±\r\ÛF=\ãóc grœ\Ôq\ÜIo\Ót ÷¥…Ï˜?0 \Ó\\1ù\×ñ_ZµÙû¢St·PğO÷†qô«Vºt\×\0*9*ÍŒVc\ÄH\ß	\äu\é[zI¹q—\å^œ\í\Ç\ãI\è´\î\ì\Ê÷º\rÅ´{\İ6ó\Ğ\Õkx¶M\È<æº§º´0ySŞ¬M\Äı9yˆ\ç)¨P\ïÿ\0\ê¡6÷’Ø³eu’C$›\Ë\Î1\Î3F·¶\â\Î9\Ç%Ÿ;‰û\ÙÒ³b~\è89ô§Mt\Íf¶‡`v*Gpjmªc½•Šw\Ñ\ã\ì\ä\Õ\Ñh©”v9\Åd\Ü[y±«/EPÕ¹£…rg>µ¤^\ÄMnoZÃ™Ä‡¢¯tòj+¹ô©uD\äc8¢–’¨‘´úe>€+¦Œ\Ò´V¦c³I\Í%€3õ4Ya<• d˜®nM^X÷F\ïÓŒõ\Íu\Zß³@\á½+¹ˆLŒ[\0\êk*šloOmJ\×,	m\Ô\Í\áe f«¼ g$\çª<‘œ“\\­Ü™¤\É=3“\ïWl\ä>bv\È=k12H\éŒ\ã5z\Ô=	û ô=\éI+\ît\×f\Ö%<m\nH«bp[šLŒU¹.#İ·pÀ\'±¬ù&_=C’6õ\Ïc\\ñMi‹q(tp‡pES·2j–Ø«ÜºÇŒw©-\ÑR\êHÏ½ik\"/vUy\Z2\Ü+\0~\é§\Ãr£;\"En\ä/Jm\Ê1ö\ëL¶O‘»œSÑ¡ZÌœ?šO\Ì\Üœbµt\ërøP8\Ï8\éT­mšR\ç‚}+µ\ĞtP#G5I$šp¾¬µ¥Y6c%p3+_R\Ü ÿ\0tr}j\ìv‹mn§¸9ª:“ş\âF\î\İ3\\Û³u«e\Z‚\Êx\Èô«ñ\Æ>R:Š©fT\İ‚ƒ­h*‚IÚ—Q“\é\\÷‰\ä²\Øg?tzV\İ\Å\ÄVPI,„`z\ä¢s©j^Lq\\’N0úÂš\î•\Â\Ã<–vu\Íb\êzEµ¼k-³˜¥#-ö­È›¾\à©\ÑI«:óı&m‰\Ë€sŠ´\Ø\ÜS1D\Ò\ÄûdAı\ÒG«\Ğ\Ï°œ€\Ø\Ç\"´¾À±¼qœ8@Iœ’*«\é\Ë4\ÅcBŒœq\Í\r¦+4e^XŒ‚£@\ä\Z©%‹\æAœ\ÊúVÌ–sF0\Äğx$b‘,e?2…;º¨¦¤\Ñ.šg7-¹9\ã\Üõ!\È`x=+ª—Ng1qù\â³\å°©SùVŠk©‹¢÷FD¥f ¿‚Ç½Vt`H\Æ}E]¹¶d\008ª“‡©+\ë\éZ\Å\ßcÅ­Á$Ş›XŸ—€zâ¥†\ëØõ\Zcq\İ\È#b$\Ìx	¿\ÓE6J¹f\Ş\"\î»\\~5vKsœ•+\ê+.;‰\"qœ\ì@+b\Î\éncI\åy¬Ñ´l\ÊÈ€¯(x#¨5n(–lù,RE\ä¡\ïô4 l›Ëqô\Æjpc\Ë)#¥KeZ\Û+\Èö»X· =«\ZhvbT\à‚¦·-®„³|\ê6	\é×ºrÇœG!\â’vvWW0¥¶W„?÷9¬™3‡¸\Î+e\Ñ\í\äx[„ş\ëTn­\Ğ˜0\'¸9­`õ±ŒÖ—(o †BÁ\Í;\íDq“\×\"˜SÁ\Èú\Ôgi$\î\rjµ2nÅ‘pÑ¾\åHÁ=ni’\Ü\Í.\á#±=Gl~S\ß(A\ÏU<\æ´\İ ¼¶GòJƒk(\íÿ\0\ê¦\ìˆW{Qø,3z\Ô\ép\ØMä—Œ\àŸQTÜ±\á½8©\âığ½\ÇzMXi\ßBxd\Èu?yyr~•‡Ê˜\Ô\nX\æÄ>S\È\Å0¹¹¦H¯\Ç#p\0zUı0´d|£¯µ`G0GV\Ï^*ô\"^D.Bõ¢*\Ì¨\ía‘vŒx©²+›\Óf¸ˆ„‘I^£\ĞDşbúWDY\Ì\Ğúe<Ša« CO¦Kšb!=i)¤óEjf;4\ÓE&h®¤7Ù¸¶:\n\âü\Ã\í¿$\ÓÒ»‹¢|’2G9®b\ê\Ö	_¦;nõ¬*+½Š{ja\Ìù\'\0e»\Ô&\'s\ÜV­Õ„p\Å\Ï*„²ÁÆ°wL\ÙX\0#\n½\Í:\'m\áú\ÕP\È\Ò:«qÚ­F\ã\Ì\0÷â¡=KR\È]7÷Sš‚\êQ6øñ\×\×ÿ\0¯O˜údñT\å2Tò\ê9¥Sd\Ö\îRE`sƒùU\ÉC	ƒ\Îy\Ç¬\ëny½Z¾r6u\É\Ò{•¥Ç¸<©\Æ\Å6\Õ3&Á\É<Q\ÃÊƒM_²ŒEzw.FEK\Ò\è\Ò:´Î‹GÓ)Àæ»«V8À\às\í\\şŠ€(ı+[Q¿KR\ÙF\árq\\\ÒWg]\ÒVF…Äª\î±\î\é\×‘¬\\Æ‘¶d]ªz3XxŠH\Ï\ÊH\0÷\ïT5a¯6+\å€9r6.d®\Ú\æ(\äò…\È\ç\Ôû\Ù\Ã	\n\å˜\àsš\à%¿”¾\Öv\0ğJ\Ûlóu\ä\Óöa\ÏsCR\Ö.ui€ªƒÂ\ßızµmk)8\ß>P\ço@}\ÍA±‘\Ã!‰GSÕ¥“\\€9\Ù\èœRj\ÅÅ¢;«¡Å½¹°\ã\Ø}jå…‹C`	r2X¦´¬t«k`<´½H­\í\Ò1“×·µMºÌŒo°°\É\Ç$uª\Ñ\ÂÑ»9–­÷~Fzşµ\Ù/O^)$\îaÌ\"\Ç8\Î\ëU’3\Ìg‚yS[RÚ¶1?½\éUM“d¯n´0Z„I˜ó\Ä\Ø\ÆzƒT/,Q\'oF\èk ··$ã°¨î¬šH\ÇN8\àQ¨Õ®r7¶\nˆH\0\äö\Ís·:t€–UÇ®;× Ë¦¶õ\ç5{bÉ‘³\0‡œÖ“DN	£‡x˜‘‚j™?t\âH\Î\íZóiØ–\ç·\"³\å‡\Ê~œV\ÊW9\\,ô&I£¹\'r\rÇ‚:T£Lh¤\ÚË\à1U…ºI‡F*q\Î;\Ôö×“\Û/Î»“8\Î3I§\Ğq·SJ[ˆ/ ò\äı\Å\â€Ã†>\ßZ†\"\Ò[\0z6{\Z%š+„‘yw\ÅTG6»€bcsƒ\íR–…7m‹ö\ÒDø$\ía÷—\ĞyI{§€q^‡+’C=\ÔğÂ­\Øj\Ò\Û†\Ê÷¦P{¢£5³¨Ã¾\Ü|\êpsT/S|e8Ü¼qWo®„\Ò£[¿½e\\\ÊIİ’	õª‚w&mX \0\ÎSÀ÷ª\î6ú\Z±\'$úg9¨¥ë¿±û\Ë]\ä‘PğI\â­X\Ì\Ñ\Ìğj7‰y*\á\Ù=\êXbÁ\å—gƒœ\Õ6¬DosB\çMm‚hd;Xdÿ\0}ªŒ9a\ëŞ´\ìunRbXa”\ã\ÜU{Í°\ÈI@ñõVdT&öe´·At u\0r*c#$g¥^ŒA4#7€\ÜUY\ÆB:œ™\íB\ì¸ĞF\Ì:ñÚ¯XÜ˜\İU¸ƒ\íTC\ì\Ã)#½ZŠ\ád8`şuD…Œ« Á \à`\ØÖ”9\È²\ã#=«’²¼[i‚9É­»mN#–Ş¹=k¢2MI4\Ír\ãó¦T~Ş\Ü8f=y©\ã,ø,•i\ßb\Ñ>sN\Å0SóL’©<\ÒfšLÖ¦c³E%%(\ên\ŞK\ê5‹¶È¼öö­›—ÁosX\Æ\à\ÛÏ¹\Æô\Ï¬¥½Îˆl3R\Ùn+ó7*=kŸt\Ç^¸­Ë›:@XğOJÈ•“\Ó\Û5\ÏS{›Gb¬\\\çµ>7\Ì\Ëõ\â‰\0\0(üH¨¹õ¨\Ü{¦uõ¨®B¾]yV\êQR‰\Ô\èz\ãµC,E:;Ş’Ü¶ \'ù§¾%\áF÷\"™q“\ÂûŠb\â^…NEK\Ş\å-¬>\Ä\0õ\Ğé¶ªó®õYpA\ïY\Z-³M6\0\áF@®¹-\Ö\Û\Ê}§8\Åg\'©´6-D\ëabIU\è$ı+úò[É™\Î<\Üü«œ\í\çÖ©\ÜM)\Ø7tPzU8ü\Ì-A òGj›u.\íŒ\ÚÑ¡$|\í\ÎIİŠ¯(\\œr\Ù\ê{Ö„’0‡\Ë)‚\İX\æ©}•\\³\Ù>ô\ÓBi‘\Ë T!•vşy¨#™xÀe\ìi\ÆÔœ‚ÇZ‰Ğ¦@ù€=\êô\"Ì½\è‹˜ş\'5­e\âL.[#¾85Ê˜ó\ìsRÆ’†¡\Å2\ã&G°\Ö\â—\0¹zƒ\ÅmCt“ cŞ¼®\Ú\âHˆ\ÏLğ}+£±\Õ\Ù6\á‡LVmX\Ù;™\×\éRG2ò	\×9&§¼ƒHõ«1_©\0~u\Z%sd• úØ¨^%rğŠ.”\Ï\áRo\È\Îx «X·Xğ£¡•qTD\ã$i²\İüT\Ñ,\Ó,d–#Ê³/o-ñ½ğx\Ï9ªÚ•\ï\î\Î>öp+›¾Ÿ<of>¹«Š3“\Ğ\ÔÔ¯\ìŠŒşñºñÒ².c†T\0:=qŠÌšV\É?€•X¹\'¹ö­2m–Std\í\Úq\ĞjX\ïšß†L\ägƒ\ÅR\âG¦(‘	#\Ş\Ä\Z«#7~…‰n£†ˆõ\Î2\rW’\êQ\×¸\ê;Ó‚„1§½W=º\æši\nÍ–­®b’b)²<NB£(€§ŒVy‰£rB>´\Şc<6p}¨²³D\Ë$q\íÀ*ˆsTn¤\à•,v³\ì$6Ğœf™ƒ°ƒ÷½jV›}\ÊO’…{ƒšƒy¤r3Ş®MGqÈª®ÁÀ­\"Ì¤¬# 1‡T3\Ï?t\Ó\ícg …\Æ9\â™\Í	m¸;\×ÿ\0®+N\Æ-ˆ}\æ\0ı*›²&*\ì­,f3€9#$T¡ñIQÁ5,\Ñï›§ğ“P\ÜQÿ\0\"§r‚\ÅKi`0qIor3a¶Ÿ”õ8 i’\ÆXqY»	„8\ê½i\Ç[‰\écF8£rL\'ºó\Í8[\Äügk/j\ÉI˜ÁˆaWR\ê^\ån1\È\ëN\ÍtÍ»h‰Ê¸õ<V\Ü:Eœ€LıOJå¬µ&I•\ÚŒ\×_c*\Ée|ñ\È\Æ1[\ÓkfŒª+j‹ö°[qJ=\êb}©-lb\ì\Zm:ŠG­´V¦B\Ò\ÒR\æ˜Ú¯›\ï\nJw¬k‹„=?#Ú»	dM¤=\ê…Æ‘¹;FOJ‰A½#4·8\â\ì\äDÖ²\Ç\0‘\nzWRš<¬[éš­©Û‰¡l.F\0Œ©;\\\Ú5\ìrG/À\ïQ¶Q0zö)>T‡\×<S(Ü„g*k\rw™\àÓ¼\æ\Ï@ü\é€lyõ\éBFI\Å&R¹8v‘œÓ¢%]‚=i¥KfÀS\È5=\nI\Ş\ÇG\á»\\NX«Š\ën,÷À#‘Š\Íğ\åÁˆ\àò=«§ò—\Ë\0ô\Ås\É\êuEYX\â\ï\ì°NHÁš¢–01\Çfº[û=\è\Üg\ÓÚ¹[\ß2®\ÓBw)Dl—KK\ãô¬ù/\İ\Ï\î‘M(Ò¸y\Ï\î\Çğ\ç­2[’\ä\Å\nQ\Ç\ê\ÒL™;hˆ¥¸¸=Y@5VK†Cş´Ÿ¥hÉ¤¿ö|“œ£#Š\Çx\Øu\Z\Ù%cšRi’ı¡ø;XŠ\æ^\ÄUä¹–Xaˆ)!\0\ÆYµ³—\Ì\î:u¤\ÒA	¶Z†õN¦¯G*ğAZ\Î0œ•q†\íô±£\Æ9\ÉO\åY4ºQ“[›±\İ9\Î+ON‘\î$ÀÏ¥sLQÀ9\Úk°ğôYpq‘Ö²’±´es~\ŞÅ¶ƒq-‚ \Ü3\ÅYŠ2\àpx\écd¥g s7¡ƒ~<¬•\ãÒ¹û›÷\äd\×O¨Û¼ˆx?\ã\\Nª¼\Zh»\è2\êü¸!e\ËsœóPMp\ÄóÒª\È\ìü/\ç[(˜J}‰$¸DûÆ¡7 tŒŸ¯Go\Ï –=*Ôº<¿`’sg\0u­F2rJ\å¿sÀ\0zw¦\Ç{\'BG\â*\Şdv@À•aÁö>Æ4‹-\Ã\ÈSsd*ú{Vœª\Ç;¨\î^\\c…R;b¤ùşñJŸqT­Ä¡ğ¹9*\ìw\0\ådLö9\íR\Ò5Œ‹ò)@\Ü2}EW\ãy#£\ZW³\ãtGƒ\Í,q¶°úqSdŠÕ–¢””\n{)\æ\ß\ä\r\Ø\n[{V”8#Ú­Y@*A\Æ>µ\Ñ+™2GŒ\ç¡\æ¨I!#°­\ém\Ù#§µR¼ˆ\\SŒ‰œt2cBò;\à\nÛ¶‹	‚X\àgŠÏ·@¸ö\æ®C#I18•R\Ô\Æ*\Ã$\'\Î`N*tÛ‡\Ü\Î?\nHÌ’HÀü\ä\àqPÉ¶´\Çùú\Õ!42\ê_\Üm^™\Å2\ØF^=ª)¤\àçš’\0¯Z«Y{²„\äÖˆ¤dÁô<Jš\\¤\Ù÷¥şÿ\0•a‘M;Õh¡KˆVx~ğ2\×A¤\ç`À v5…¤\ÄĞ¸|¤\ã5\Ô\ÙÇ°qƒÈ­ ®\îg7eb\Ø\'ñ¥¤¥­ŒD§\Óiô€¢O4RFkc!\Ôf›š3@¤\'ŠL\Ò98\ã­\0W¹|`¤òMPº¹Q‰\Z–Œ\0jô–\Í!Ë±ú\nAn‘¡\n£¼u©’oÈ¸´?ºãœ‰>şyÁ#FAŠ\Ñ\ÕQ¥¿™\Ê7`U)”;€F0+«\\\êN\ã\Ñ\Ş@A§€7…\ÎIëŠP\"¤\ç½,X·e\éY³DM0\Æhi\Ö\Ù(£©\ëY\ÈL³(÷®H„›Ø”	\æ¢Z+\Z\ÓWw;M\"/.\ç²#\ÊcÚ©Y \n+N.\ÜW,™\×k·6L\èv…?^+¿\Ñó÷\Ã(\ì\Îk·0ùñô¦¥¬Hw\É\îO5)²“GœI K!Ç²5VaÒ¬˜ö²}\â3“]n£m½\Ã\"‚;ZÎ†\Â#3vS\Èö­ÁG©z*\Åfbx·E*\à0\ç?J\ã¯|?%¬Ì’DLYÂ°Ez\n[\Íƒ±9«|$’?:\Ş,ƒ–qš¾w\Ü\É\ÑM\İ#Ë­´M„K\ä1\\\àqœ\×M¤øx\0n&Rdq…Œ‘]—öºlX\á´EˆH\Æ~•\ÜJó‰@TlqÆ“š\îT(´µV8{\ßù²39*œ#¥g\Û\Ø4xó¶¼L\ÛJ\ç\æÿ\0Jôycù¸(\Ù\ìx©VøPñ\Åf\æ\ícu¥v:¸\Ğ)Â¢„dµ\Õø~\×\ÉD\ã·5©ueF \0qŒt¢(\Ä.\0\é\Õ.M«2R]\r‹P\ãWLJc\É¥Q¶\ÉÁ­<$ñ\ĞuªKC\èÌ‹\ÈÔ©W¯Y™f)û\Ç&»Û®Aõ¬-•\ç\É\Ç\'7³5KC‡_\Í#œ/\'¦EG{¡\ËlV8Ñ‰c‚H\é^ŸkBrƒrò\r[I6\îA•\è\ÄU)»‰%\Õcc¢Oö“º6`§‚GZ\ëm´\è^\É\áÜ¸9­\Ç1\É#ºVn7Ò£\"RB««*¹\İ\î9AIXóM[\Ã\ím3!‰Šƒ\Ãœ\Õt…C\È$™¯^7#f·C‚3\×ÿ\0\×U\ÍÕ·œ\í‚!<€W5¢›]L»\Øá´Ÿd%\ØaP\n¯á§Š2A´7aÚ»‹«™e‘F#B¸ qU\Ş\ŞM&bÀœ®{Rö…ªIzh÷>¸\ÏZXô\éQö6\Ö\ÇBx\ÍwvVJ!B@\rŒdTÏ¦[\Ì>hÀ=ˆ\â¡É”¢“9[Œóaº\ã‘Z	d\Äü\ÈBû\×BšbG÷‡\ãšIm˜u$\àzT¹‘\ÎM¦«“\ÇúW7«\ÛÏ–z\î¦Lg5\ÊkV\å\äfªR$®R\ç¨Iõ«6hRùùÛ\íPs%\Ñ8“\éSMta\Ê\ÆW¥nõ\Ñ\ËF\îK#­¬e™Ir8\ÏŒei&.Ç’xqK+µÁ\Ş\îry\Ã\ZbFG\ã\éV•ˆn\ày\É>µz\Ö2\Ølq\ïUD`‘š¹Ÿ E8\É÷§\ĞJ\×!»9Ç®)À\"c)’‚\ç>¦Ÿ \ÃÀƒœH¦‘zu„*ğŒdd{V¬d\0\íT\ì—lƒÂµsƒ]qZ\Òwv&OzZ„NS(úˆ\Z“4@õ¦\æÑš\Ô\Ì	¥\Í74Rô™¤\Í\Ä:£qiI¤4‹«[lk–\ÎFfG§$i#\Ü°®  \'$sŠ\ÂÖ£$\0™\ë\Îc8¥vo	7¡cS`{\àT|$gŞ¯%«7fR1\È\ÍR\Ær=9®Fšvg\\uZ²:Ÿz\ëô\Í\È<`µ\É\ÛÇ§z\êü>Wñ\Íe3jz½¨­…f\Ù°cšÒˆô®YH²S|²{ñŞœŠ‘\0\"\È>Î¤\nÎº\Ò—¶·\\u\ÍnñÀ\éN1Œb…\Ì\Ó\Ğã¤–ö\Ôüğ1\Çñ/5ö‹œ\æ6<\äb»·Sœ…üªn¡º/>¢_2\ÕE\Ø\æ\æI1„s\Ø`U¸£¸|e=\Ínu\à\ã©~\ÎI\àô\âŸ\'™N¯dg%¨O¼rzñS\Çm° c®1W…¸À\È\éQ\ÌpB”‘m•0\ë\È\Æ\rBP>Æ§.C\Z‹¿¹¨Ü´¬^³?^+G-\åœzuª6 1×½_ yJ\Ò;Os*\èGzÊ‘?x>µ±795› \ç¥CF±Ø’7\äg\Ó+\Ù	\åşUW$W\íf\Î\éD]™3MjŠRX1\ã\Ç9Iâº‰² 0\Ò<9ƒ\ÔTf~a\Çn+GJ¨\í©Ë¾§,G÷ñ:•ã‘š‰õˆß¸ú+«6\Êx\Ú¨L¶ü\Ğ\ÇøI\ÇÌ¯hº£š:¬g®zu©-ü\Û\Çùp=\Ít	¢Ú¡È…?*°– \â5AJÀ\ê.ˆÏ†\Îx‡b>µe|cŠ´#T\Î\îsHO\Ñb/r€s\Ç\ÔTrƒRñÚ¢’¥±XÈ¼lW?©\ÆŠ\ênP~•\Í\ê<\ã·¤\Î2@#vc\ÑN@õ¬¹¹ñZºwx\çŠ\ÌÙ¿Ô»œ’\Ş\Ã|±ø”‚1\Ïö«h9-\ë\éIöbù!I\'¹4\Ó\î>[­\nQ£H\à`\â®\Æ#ŒÇœUÁ¦ù6Fyº\Æ+*Y3…^pi§}‰’q\Ü÷Í\Ğv­\r*Í¦½\ÜeGAQ\éºd·2Û…\îÆºhl\Ò\Ü\Æ	\ëhA½NyI-\È*@j?zp®m\ÉE¦ƒKšCš“}AOÏµ )“KM\ïEh@\ê)´\ê\0L\Ò\Òf’€M4Pi€Ú¯$+!\Ë\n±II«;®¬Á¶coz\æ’\Ùö9Á\Êóõ®Ä€TƒÏµV\Zr\Ém$C‰Q·)õ­q\âU¬\ÑÛ…÷™\Ì&Q=«¥\Ğ·8óY³X\èzÕ)rúƒŒ\×3wGW+Lô0¥i¦H¬kÀõ±®vµ:bô,\Æx©£“œTŸ•#µËˆ\âŸ\Çj«şu!\ä\0=©¦\'\ïu¦˜˜N=jd<{ñR‡^\çƒUk“{#‡=zÕ‚1\Óò\íO\Îq\éM—¸şTZ\È/vV‘À\ïYó\'9ïš½7C\íT$95œb¬0\à\ã\ÜS9\È4üZw—=E\"“-\Ùg‚S¥hK”Œñ\ÔsT\ì“«\×\êqßµj–†3~ñ‘pr8üj™\ç5n\ã#5M\Î¬¬n¶~•4/\ÍA“­M\0ö4¡ô\ë\ÆjÀ\Úü\ã&ªÛƒ×°«H¹¢1’WadS|¬ı­XB\ÆiÃ§Ó¨§k“vˆ¼1ú\Ò\á@8\ç#ó\éPI&)lld1\ÅVw$\ÒI+ù€c\å=M\'Z›\Ü\Õ+\ãQHıA\ïK!	P\Èr!5Ô¯rx?J\ç5\"Nqú÷­\ë—\àŒ\×7©\ÊO÷FkJkS»#‘Õœ\Çz©B÷\ÅKtZiò&¤2<\ß( )\Æk§Dµ0I·qÜ»€úÖµŸ\Éó¥[Ó­cˆbAøÕ½›\æŒ(=»\Ô7vt\Å#WI\å;t\à\ĞSmtHÏ˜w;Œv5³<kö£‹À§Fz{]”©®[³\Î\ÄT´\ÚC-QE²ô\Êğp1V1\Ó\Ø\Ócv\àò)ø®ˆ­,rIİ}*AQO\Ä>Œ\ÒQH§\Ó)ô†R\Í†Š²¢’Š\0Z(¢€\n\r”À(¤¢€¦¥/ ‰‡nõ\ÓNCØŠÎ¤\â\Ó5¥7	&‰\ï¬\ÒHÃ ûÂ±¡·kk\Õ,F	\ä\n\é-À{`£œqYZ»Fñ1\ÎIæ¼¥cÚ’R2:7\á}\â¶-ßŠ\çl%&5\ç¥m[Éœs\ÏzRA¡¤‡Š•xª\ÈOaJÍ£DXDô{\ç4\Ä~)\àŠjZ‹QS\åN;\ã­TI1ƒ\ÅK\æ\ã\ïVŒ¥õ	o\0ŠG\äv\ëMrX\çùw¦¹\0Rnãµ¬W¸\È\ÍR8\nj\ÕË„w\åYSJ\Åö­d÷6Šm\ï\ê\ÂŞ•Ewo\ëV\â|¸\Ğ\ìiCÚ¬LFÊ‚\Ø\Z±\"e;ş5ª\ØÁ\Ú\æEÁ$ğ;\Õ)G8\ïZR¦	p0sY´n¶+ù˜jµo\"¾\0>õœQ\ä\Î\È<S¡,®GP)k£~\'\ÓùÕF>•—ÀıE]I1\Ç\'\Øö¦™›E¤\Æsœ“\×¤\ß\Î\ĞUdf‚=ù8\Í<>\ìÕ¦f\Ğ\ç\ïƒß€j¬ óõ©Ì \ç×¨ªò>IúÔ½KŠ±\Í0Œfšg<óHl‚N§Ú ‘ğ*i\\ú\Õ‰O4$&Ê—’uô®WX˜“´\ÏZßº—9\â¹}Mÿ\0x\0\Ï\'Jè¦j®\Ú\é	I2yÈ­›d\'­T†İ\É…¹kl$€H\äQ7¨SZs&\ì:¶!¤`>Q\Å>\Ù×Š£¨\Ü	d\Æ~U<\ã½:i\Í\Ù\ZTš§\Ù^0I.z±\Ï5 \ÒÆƒô4\ïZô¢’V<i\ÉÉ¶\ÃúsOš;şT\ê´f(¥‚@¢’Š8T•§\Ò‘¤ \ÒU--%\0´RQL¢’Š\0))i)€”¹=}:Sh9¤\"HošØ“\ÕOQ\éW%¸†ú ©À\à\æ²\İ1\Ïù5›x\ïe xØ¤npÀW#›\æG¡C\Ò\äz-™ò\Î3\í[v²Œu®WE¸3[bK©\ÇÖ·!—Á\çÒ¹dºr¾¦ôr*\Ôgµ¥\ÈÁÇ®kJ)\0\ÍbÎ”]B*TqÖª‡\íø\çµH\ì[\Ş0A\ïJ`\0zU_3Ó­n(¸Xµ\çc9?Ö£7\0sš­$\Ë\Üöª²I\æp¹ü\é65÷&¹¹\ÎqU¢\ä\Éô¾K`§\Ğ\Ó\"˜#œğs‚)+õ/E±<˜G¬B‹Â³\înF3O±¿WI…ZB{ht¶È£œñS\Ê]Ä+^\0\Ïÿ\0·d:®ek\î›n\ä\Ó\\8\ï\ëY×˜Á\ÏJt· d\æ²nµX\ÉÛ¼dö©6E\Ë`¤\Zw•û\ìô“U¬\îfwjI.W g½&†™~-£Š\Ï~\"¡Hò\ÅH#=@ıh…\í\ïù\æ\äõ\ÏLu\éUòÃ¨\'\ß4‚]üf‹ŠÄ¿\êó\ï\ÏZŒ¸\ç…ı\é™4]ù\Í1ÜŠar2\0¨e\ÍdWu5™sq3Ö¦¹ŸƒX÷\äzU\Å\ØK&I\æ°\î“3“\ØŠ\Õ$ˆòFy\ëY\Ó\Î}:\×L4G%Gv-•\Ê\Ä\åH“ƒ[)¨\Å |¡@ü«\Ï/u‹{\ÙV6\Üfª\\jWW	µ¥m§ªƒ\ÅK¤Û½Æ±Šµ\ËQñ\Z\É)ŠÔ†$\à°\íN°v•w§5\ÆiÒ•™y\Ç5\Ú\Ç`®‡k0\É\Çz\ê£¡\ÉZ£šÔ¸6„\àñM2t\Ø2OS\éMH€\ä’~µ\'ò®›>§+hSé‚–¨‘sKE&hù¥¦R\Ğ\ÅIš‡5&iLõ¢ƒÖŠ`´”PKIE1EPIE\0SI=¨¢˜†„éš§¬[™\ì¨\åy\"¯R\n#†\ÅL•ÕŠ‹³¹—\áyXº\Ç5\Òo\Ù =:V…Ÿ\Øõåƒ±º{V\é\Ï¾3^eEiY¥ut^·¸õkJ+•Í¤¤?·S\Å_†\èq“\ß„‘\Õt	.@©ñYğÍ™©Œ¤:šÅ›-K;ñ\Ğ\ÓL§_{;Swv\ã\ĞR-™ÿ\0V!‰¸¨m\ã.A\Æ­hF0?­r[°¾X#®95\ÈkWRX^0$…nAõ®¼¾?*\ä|o’Y£(\ès‘Ú­%q\'¡\Ï\\ø¡¡|\Ì=©ö^ [‚Ãªx5\ÊK»\'p&ˆFt%Xw«¡AXÁ\Ôi‘ˆP p\ßZy×tqô®\Z;\İ\à	Vúfö‘Ÿ¾\ãPé–ª£¨\Ôu\Çò\ÈV\çùW)s¯¬s¥¤~\äb«\ßŞ´\Ë\å£qüDw¬ñ\ë\íZFšKS)Vm\Ù\r¯‰\îNİ£\ë[VZ³M$cw9\ÃF\ì³¤»˜\Î	 ôõ©”\Õ\ZS¨ŞŒöWS\n’{sS’q\ÇOz¡fY-‘\ÉYq\Ï\åX6]µ¦s\É\æšBŒ9\èy1Q\Ïqù\Ô\\¤/š2wS]\ê9\åP<Œq\Î\0\ë\ïBce‡|\n£sq\Æ	¥–\à $\çŠÏšRÉ»¹\è*\Ò3l†\ê\ä\ëÇ­e\È\í&\núóš±uó•_NMFƒ®j•Œ\Û\Ï\îÇ°ü\ë6\áö#±şšÑ”lOcXÚ›²\Ù\Èr:`f¶\Ç=C‘ó4§½Fi\Û	ripx\Íms–\Ã\íÀó{\×q\Ù\Zm$ğ®.·\Í\Z¬x®\Æ\Å\Ë@ªxt\"´£«dUVE°s\Î)i”\ê\é9\ÇR\æš)h\ê)( c\è¦Ñš>ŸQO\Í+œSizRP¨¦\Ñ@¢›E1¢Š(Sh¢QL—¯Ò’”c¥&!Q˜¸5xƒƒxôª`\à{\Õ\ä\Ëp+ƒ¬\Ó=#ºh­\Z1$úñŠ‘–\ãÖ§Hø2(–.£¥q¶w¢õ³€ú\Õ\èğ@ô™fÿ\0\ÂkR1YKsX½\0Nj0L„u#=)$İŠ2\Ì*·\rªÆƒø‰\ê}j½‰!=\0\íVCñ\Å5#P3\Å,g/ŠiX–\î9\È?Z‚ö\Å/!1H¹R?*´N\Ìcô\àAñT+³‰ºğ0$˜\Ø`â³®|%¼e”\Ğµ\è\î{\n‚XüÀx\ÍW3]E£\İ-yD\åX`ƒŠ _»\èŒó4°§|;\×\"ör‚§ò®ˆM4sÔƒOB¸9\Å]µ³{‚\0R~”û\r&{©\Â\"1$ö+\Ñô\rEg\n¼\Ê\ZB:zQ:‰h‚&õgg\á[‹Œ¸âº½\Âij\ë$\Ä1Š\é\á¶H\Ó\îô©8\íX9¶n’[ P:Š>^}ª@3\Å4…¢À\ÙJP\Î~ZÄƒ†\éZ`Ï­U–^1·\'8\àRi™XW5’z\Z–X™Á÷ª´@\ï9*P\Ş\Ã%{şµRQŠ·q»${UIObkX™È§$9 DÀŒüu©öe\É\ìi\î8ÿ\0\n\Ñ™×˜\0û\×=­œB<Mo^‘À\ï\\Ÿˆe>z(?tdâ·Š\Ğ\ç¨\Ì\Ï$&Ns\è*<€\Äõo\å@\İ\'~´¾V:õ\ë\ÅV¦…­6&šñGe\äŸJ\ê£Bzw¬\ße#©â¶‡PGj\ë£+˜U•İ‰Á4´\ÑN­L¢’–‹š3IE\0:Šm-\0.iÙ¦Sø 3\ÍQ@Q@Q@Q@QL4”¦’RSô$\Z½	\Ì|f³\Å[³~H\í\\¸•xß±×„•§nå¸²œT\æ<µc?Ö®F›Àö\ë^dQÃ€\ã\ØÖ˜uÀŞ¬\ârBjô.¥\îc\"\â98œgŠ\Ú\î\0\ïš`q\Z\ê{÷¬\Ëù˜G\"Ù¡s«$	\Ù=\0\ÍMg©$‘Œ\ã$f¼\çR\Ô\åI6\äğz\ÖÎƒ©G\"3ôô5|®\×&\é\èö9D€\Õ/ğ¬˜µ;P€,‹\í\ÍIı³ş%?CI«\rE³Sfs\Î3Úœ‘d\\\äŞ±ÿ\0·\"!¹<P5\ÄC\Ù\ãŠömš\ZbJ`9<ñY²øb\ŞG\'b\çéšµo¯F\ä\ã=*è¾€®wßš¥b\\$\ÅM;AŠ\ÔÚ ö U\ÃŒp*Î½@ª0<\Õ\'ñ$`a±\É\ëI´R§.¦\Ërœw\âš;ô\ëY?\Ûğ0\àv\r^#\Îñù\ĞK‹F¬’0\'\r\Æ+2\ëQh²¤œF*7Õ¢ÿ\0ƒ§­s\ÚÖ¹o9‘Cchµö&\Ö\Ü\Øş\Ú\\a˜g>µ\"j¨H†+Î´\×µ3Œğk[LvwßL\Ópkr“Oc¼¬‰•Á\È\íQ¢sœ{óUt\Ù\"\0¢\ã#Ö­\Ìû¬–\ãeK¢:ñYóHû‰I${\Ôqqš\Ú(Í“ ÂŠd\Ä\0ELƒ=ûU©9# V±Wd=ŠfLúWª\Èe¼cØœWSu.ŒO@k˜\ïrI\ï]9*1¢3ô\íR[\Ä\×_\â5/\Çoz\Ü\ÑlŠ5\Ç=³ZB<\Ì\ÆN\Êæ•¼K1 ½YA\Éô¦8§¦q]©[C’Nä‚L¥ §Sh c©i(¤\ÑIK@:›N ii¦–‹E%-\0QE\0QE\0QE0\n(¢€\nJZJ->7 ŒTt\àjd”¢\Ó*\r\ÆI£J\'\'û½óZ0¸#¬kyx\ÆFE^†Lœ\çñ¯qiÙ\Ô$šM®\0<\Í>\Ú@z\Zar\ÉÁ\éÖ¢.ÉŒt¬Z¹{\Z# =*»\ÙŒ\ç<öûi·€+F\à\Z\ÏSDÌ¸|5i\ËOr{š«y\á6\ã˜#ky;4g\Ô&Hæ¡–y^¾\Õi´\nÍœEÏ…¯-Áû5Á“ñY§NÖ£$7¨ôlW¡’Áö¶0}j‹Q\ÈpÃš\ÑN\è\ŞÙ³\Ï\Äz¤dy–“|\Ü\09©¾\Ùqnv\ÏªA\è\Êx®\Ín\Ê‹÷O¥]¶½·–2.#Vv?xŒÓº{š4ÒºW8\íp÷Š·lñM¸ñ¾S\ÌAÀ\Ç9¯Bš\×L¸¹$QI\êvõªñhú,gsZ\'<ô4„¥\İ3€“Zi0ª€;\æ˜o.$O–\ŞvòkÒŒzt1§“aŒu¦\\\ŞÁ°ˆcUÁ\ã¥=µ—C\Ì\êN,\ç\0zŒSj\Í\Â[8\Ï|\æ½\å™ÁõŸZx…9\Å4\×a8%\Ôóˆ´\íj\ä…\àt\É\â´m|\rus\'™y(QFrMv3\\\Çn˜\É8\0TöA¥ù˜\Ïz‡6¶1q]L\ë?X\ÃÚƒ8\êy« ZÅŒ&zV\ØÀ J‚\à‚\ÄvMe&Ş¤«-Švö«l2 \ëQ^L9ÁúÔ·7\n+ö\ë€N(„n\Ä\åm\Å2o\nÂ ›l\äÉ¸ÖƒŸ\Zİ«§q\ï(Hù\ëŠÆ½¸ö\æ­]M±zÆ–BI\'¯aZAu&oK\\œ\ÛH{\Ås2Oûšê¥6D\â¬ûm!]÷¶H\ÏC]PƒkCŠ¤’z™ö6M,Ë‘…şu\Ó\ÇŒ\0£ŒR$)¨\éS\n\ê§S’¤ï°›(\éO¦Ö¬\È)\Ô\Úu Š(¤0¢Š(\ÔSi\Ô\0´\êe:€!4´´R”´Q@Q@Q@RP\ÒQE\0Sh QM¢˜!Á\Ó\ßr)†~V\Î:ûV~M	\'–}\é\\XŠW÷‘Û†­ou›\ÑL§‚p+¿VTr‘‚Gj¸’—şªóš±\è\'rÍ´ƒx\ç©æ¶­\ä\ã+œ\ÄÁ—¡\íZĞ¹ s\È«6¬\Í¦\Â>G=©K/\çU-\ä!0Äš²”\\vq½ê¡¸h\É\ÜN*Ôb³\î\çŠ\ÓhY.\"”a±\Ç ô¨‰Œtnzõª“=­e\İ\\4y\ÃûÕ­M£Y­\Íø¤ ı\áùÔqÀƒƒ\Åq\æò~0\Øõ5\Û\ç\Éù\Î\Ñ\ïT®‹u\âõh\ë$˜ƒ“\Ó<sQ”	Qø\×.5	föÉ©Rñ²~\æIx…\Ñ8½Hñ\ÍA6¬ ¼š\Å<¼Õ«k6r	/S\'QÈµn^\âpï¼\n\è­ñ\Zk2\Ú/\ÕÜ·ùT=H-} œı*¬²¹\ã½4†L\ç\ëUnœwÒ’W\Ê÷3\Ï5•(.\æ­ÍœMC°df¶Š±“Õ¶9\"¤–\à4\Ğp=«>\æc\Ï?RÕ‰h†]M¼\àtöª‡$\ë\Å’I©m\Ğ\É2NkE¡›Ô°\è\n\r4`U‹À-V½\Z\ä¹\æb\çh)ÂR\Ö\Æ\è¦Ó¨\0¢Š(h¤¢€ŠJZ¹¤¢‹švi”úGKIKRPRR\ÒP\ÑIE\0-”PE\Ú\0u6Š(\0\Í%S\0¢Š(\0¤#<ô´”Y5f	´î„R‡\rŒ•~\Ş`€1Tv\Ş)±J\ÈHo¡¼ªôùd\Ò=Z9¢›7ƒ ş9\êı°\ç {V2œs™­«^ü“\ĞW$‘\ÕcIFğL#ù9¨	l©ç¸«\Ñ|À\ÌTr°BHxõ¨\Ø>}+K\ËWµ0¹5€Z\Î´„“¸\äğ+¬H‡qVc…zc­5~tp\Í\á†=½À¨\Âò0\Ã\Û¯D¯<(Ø¾ƒŠ­EÌ—C\Î\ãğŒ§\ïŸ¦*tğ\Ò\Æ>\ëq\×\"»³·ÓµB@\Å\'~ã¿‘\ÇÇ¤ÿ\0†®\Çg°`-m¼*y\ã­Da¥¶=\n1B:²!3jdŒiHM”¦ŒóT.0ˆq×½h\\9\ëšÇ½“¯^}*\â‰l§6zçŠƒ\Ì\Ç<ƒ‘Ş«<»	Á­Q$²\Üc\Øb³¦“y4³LO­W/\É\Ç5qÇ­^°\\¾k<\àc­l\ØFS\ì9¦Ş†}G_İc\ÍR¥|™„5š+\Ğ\Ã;Àóq*\Ó”RR\Ö\ç8´\ênh\Í0E6Š\0u\Úu\0QE\nZJ(i\Ô\Ê}\0Fii´T–\êmu6Š(\Ô\Ú( Š)(\0¢ŠJ\0)i( Š(¦EP£8p}ù¤¾ˆ\Ä\âU+u¤­\Ñn \Ø\Ü\äb¸±j\ÍH\î\Â;§:\È ƒ\ÅkY\İ;z\Z\ç\ä\İk9úgŠ·o69Œôæ¸¤¯©ÜŸC²³•¥$c?•hE\"¡# æ¹«+õ\à`0qŞµ\ã”pzñ\Î+¬Z6£q­)©\Å/‘j°%R¸gµ!¡\É ƒV\Î=*·\ÎE/N\ëMhR\Ösx¥şUXI\Ğg\ëN2u\Å;€ù¨\íP’O~*7˜‡\çühó¯\åI±¤<úS­&şô\ÒùoÖ•ÀW \n¥4¸Ï½K4œ\ZÌšF\É\ç\åT•\ÄÅš_õ‡}p<óW/\ï49\àâ¹»«¯0œdŒñš\Ñ\"[${3\ë\ß5Y\æ\ëUÌŒ\çœ\Ò\'\éTRO?Î„\ÜT‘£H\áGz¤\Î/6a\í\Îk~\Ö 2İ€\ïT­!XÀU\ë\ÜÖ™!œcó¤\İÈ±\Ç\ï#eö¬œbµ¹\è~¦¨\Ü\Ã\å\ÈOğk³5¬YÃ‹ƒv’ ¤¥<Rf»N!h¢Šb\nZJ(h¢’EP¨¦\ÒP\éri™¥\Í\0!¤¢Š’ÂŠ( AEPEPEPIKI@Q@Q@R\â˜	Wl\Ïô5Sb\Ì\á\Èõ®|ToNıœ$­Q.\ãu«Q,\"U2õ‰\ÄpzW`ñ	a õ\"¹KûV¶¹#‘^l]ô=F­©n\Ú\áH#°\'³g~¸á³“\\ ûgù\Ô\ÑÜ²F÷4œn8³»†ø\"’GµX†\ä>?ıj\ãa\Ô[\'’jõ¾­³\0·Ê²phµc®8>Ô¿i5\Î\Ûj¨\äü\ç$ğ\rZKòI©±V5şÕ³Òy¿ŒşU‡-\Óc;¿ú\Õº<\á‰#¨ªH†o<Á\é\Şp®ûK½ù¥}G§\Ì:P\â5sjK°€ó\ÍV7\ÌI\â±.5.\Ò:wªoª‘Ş…:	oIf¨\Ë|[œòk\ï\Î7n9\ìª3]4™;Õ¤&M|\×¹\ÅP\í“JpI¤\É§µ]\Ån\âŒ\â”\nAA\Í\Øx\ÅhX\Ûpµ^\Ê\Ø\Ì\ã°¹ mU8ü©·bwo\\=}jW\ê}ªtˆ\Úp95˜\Éö©ORYzY\"G´şÒ„\ä\ÔÁ2*¹œ]\ÑªJ\ÌÇ–&ŒE@k¡{U‘0\Ã5—u§´Ye\É^õ\İK¥£\Üá©…q\ÕjŠ€\ÒóI°Ô©\Îk©I=W·ŠP*aôü\é¥\Ñ:œı*gR0Wl¨Rœİ¢ˆ±E?)!\ÂCŞ“8TSWL™Ó”¨m%-%YIKHh\0§S3N\Í\0QEAaES\0¢Š(QE\0QIK@%PEPE-\0\nZ)\ÔÀLT\Öø÷\â£\ä\â@}\ê*+Á¢\é;M?3bÒ«j¶)u	8ù€\È5=¹\èj\ÙA$d~F¼Gt\Ïstp2Dc«pT\ãšis[zÅ‘G-·\èEc\ì\Ål\ÕÈµ´tê¢$a‚Œx\ç\éHF)?\Ï\ì;“¥Ôˆr	\Ïó«	©·9Ü¤ \Övö}v(¸8©q¸Ô¬jj\È;\ç\Õö›“í˜=«?\í*:£~t†\æ>\ê\Ôr…\×rû^°pC\ä×¥#Ü±\çw_z¢.\"\ç†\éJ.\"şóc\ÜQa\İw,™› ò}h’Er\n) öªÿ\0i„qó7\Ğb“\í,Õ \ÔóE†\Ú\îX\Ã?\Ìq\îz\nˆÊ£„\äú\Ô[\ÚO¾\Ä\ÓÀ¥û\n\'$\äÓ…&h\ëH.;5,q— õµt\ÛR\îŒ\Ôl+İ—\ìmDh2>¼VœP\àg¡=)\"@º/AZB0ú‘œzVm”•Š\æ<GÀ\ë\ÍRqZsd\äö\ì*‰Nsú\ÓL†ˆ¶c®jT©¦\à9?­X·3g\ĞqCz	-KI\È*¼\Ö\àö«\Ã\æ³\ïõ8m\0‡~À\ZQ½Êµ\Ì\ë‹xÀ\ç*¸Xİ†~Àt·:Œ÷D†$(ş\Û\ëTö\ä\n\İTiZ\ä{\İ\ÚK§”\ã={\nvÁı©\Ç\æH\İ¦;Õ¤Œc#\×5]Í”l´)¤ƒu\àg­[C\æ şõD\á@ ‘Òˆ¤\Â>¼\ÕÓ¨\à\ÓF5(©¦˜\ïjJts\ëL\ÍzĞš’Lñg\ĞRR\ÑTH\Úu6\Å+ÁE%#Š(¦KIEŠJZ\0(¢Š\0JZ( Š(¦Eú \à(\ÅM\r&Hû£©¥)$®ÊŒ\\‘À¤Œ«\È sŞ \Ôî¢³„„z\Ö>,º®ª›Iò\Ğ\äš\å!´ùQ\Õ:Ms=N\Ú\Õz.™GQUcª\Â˜¯6Z¤H¯a[ˆ\ÎG8®R\ê\Ü\Å!\Ç5\Ü\á\\r0Oz\ÅÕ¬w‚@ç¨¢³°5s•)Ï·jafT*pG\" <\ÖÄ‘\Zi\ïRQ‘@š#8¤8\ãÖœA\íÚ›‚iŠ\Â`QNÁ£\n\Âm§\0(§´ŠHZp4˜¥\ÇiÂš)\èœ\n\äö±4\Ò®¢\Ê\×d@\0\ëYúE˜L;Mt0\ÂN?J\Êl´ºµ·\Ãò©\à\Z½\ÉoÆ–8\Â À\éÒšù9e¸\Ê÷|\à`U#\Î@zl·={U7u	n½Rbh`\\Sú+\\\å†\ã\ÑG9¬\ë\İU³²:à±¬\ÜùÛ·u\ï“ücV\n7\ÜÑºÖ§¸\Ê&\ä¨^Oÿ\0ª¨d\äo8-Ñ»\ZŠ\0BC‚*x\Ó 	!7cù\Ñ{¢0$ƒøH\Ç8\î?\ÄSdM\ï\Ï2^@\Æ=Š\Ê8\'šÏ¿¸	\ã„\î\Êj\ÈKG2\ä¤qŠ±$¥#$q\ê+M—l\åI?0\Ï©\å\Ëp…#Bõc\ÅSVd_B³Í€N3¸\äb\Ë,mó2*ı’±\å¦p\ï\Ù@Àf\Ì^(º[\nÍ˜\Å.x\Â}A\â¤<‰\ÊÃ¨­‡#=1Q~\ì—ªiGc9a\ã7vfw\ì)¦7Nª*\Ö7\ÎoN)§q?\ê\Ï\ã[\Ç%º0fd\ÒñZŸfó‹?öT\Üık_®.\Ç;ÀË¹‡IN“ïŸ­ \í]g™¥¢@\r¥¥S(§Q@„¢–J\0m--( \ÒÓ©iˆeHH…Imş¹i7dÊŠ»E˜mWnN:S„\Ë)\Æ*\Ì_\ë\éY·?\ë›\ë^eJOSÖ¥N0J\È\ä|Or\ï!\\|¹\âºi¢\×Mó\Ø~ñ\ÆEszÿ\0ü|¯û\Õ\İh\ßò\r‹\è)K\àD\ÇZŒº*\Äa_­3µIQX3¦%¸\Ó\åÁü)—ù€õ4])\Ò\Öl´r\Z¶œ\È\å€\àúV¨ÑœWq¨ôü+¿ÿ\0X~µ¤$É’±@¸\éŠi#œS›ú\Ó=kRF\Ò\ÑŞ–XN\rR\ÒzP\Å&E8w¨\è@E\ê:p\ê(T\É#Š\ÖÓ¬Zg\ZÎ·û\â» úTM\Ù©v\Ê\Åc@\äV”q\0=±\Í5z\n›şY¥s\Şæ¬‰\ß<\İı*2qšw¨\ä\êh+\Í\" .\Ä\09$ñ\\Î¥©4\ÌU@òI\Æ\àq“Zş ÿ\0%ú\×7ü´úU HŒ†9`\İNFqMDd =;\çÿ\0­R\'Tÿ\0xÔ²\Ç\ÌZ¢¬Oq\\¦$Á\\p{Ô¡\Ä s¼ı\ïş½Akş°ÿ\0½R\\}\Ãõ¨\êjË›Ä†?6ò“ÊÕ’!“Wº”ˆI©\çû’U\íï¥^\È\Îe‹=&2G–\Äy\Í^p±œ\0=qV“ı`úU)\Ö~57l[nÿ\0”;Op\Û\Æ1D]ªJ†<>`\ã½U{P\ïó(ö#Š\Ô?p}*!Ú„\ÆTŠ\Û\Ë œ\ÔÏ¶4,\Äw©\ã\ïôª:—\Ü_¥C \à\Ú=3ûJ\ã\Ğ~B©\Ç\Û\éRU¤Kgÿ\Ù','2025-02-27 04:31:09',NULL),('650e8400-e29b-41d4-a716-446655440003','550e8400-e29b-41d4-a716-446655440004','Muluken','Gizaw','Administrator','Manager','michael.brown@example.com','555-6543','Full-time','2015-09-25',1,75000.00,'Day',NULL,'321 Oak St, Springfield, USA','{\"name\": \"Lisa Brown\", \"relation\": \"Daughter\", \"phone\": \"555-7654\"}',NULL,'2025-02-27 02:28:36','male'),('677e8400-e29b-41d4-a716-446655440043','357df13c-c77e-11ef-918a-005056c00001','Helen','Bedelu','Laboratory Technician','Laboratory','helen.brown@example.com','555-6543','Full-time','2015-09-25',1,75000.00,'Day',NULL,'321 Oak St, Springfield, USA','{\"name\": \"Lisa Brown\", \"relation\": \"Daughter\", \"phone\": \"555-7654\"}',_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0\0ÿ\á\0.Exif\0\0MM\0*\0\0\0\0@\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0ÿ\Û\0C\0\n	\n		\n$ &%# #\"(-90(*6+\"#2D26;=@@@&0FKE>J9?@=ÿ\Û\0C\r=)#)==================================================ÿÀ\0Áe\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rğbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0ô\Z:…\ëùÑŸÖ´1»ÿ\0_4d\ÑIú\nbQGÔ¿  ÿ\0\"—ÿ\0\×I\é\ëG·¶)€¿‡4¹\ãŞ›şsGZ,\Ò\ÒzÑšqisI”g§jqsüú\Òæ›Ÿğ£Òš=\ésJ\ÃÚ”S;ş˜\íNi;úÒÖ“4£ÛŸzC”RRşµ!‹Š;R¯jJ‘…E\éK\ÛÖˆ?­/§ò¤õü©Ş´\0\ÚZNø£\ëõ\Å–S\én0¥\nZ`‚ƒÖŠ1HŠ)j-”ú…\ç¬\0;ú\Ñ\Óüh¢€¸\Ú)\n)›œó\ÓQõ\Å\Ôs‡­Î\å\é@\ë\Æh¢^üPş}(“G\ëL@J(ÿ\0<Q\ë\é@ƒÖó\ÅzP\0{úJ(\Å\0~‡Öşf›Ú@\ë\ÅŸ§µ( ¡sN\ß\çJ8©\êx¦S©‡úR\ÓE/¥H\î={RÎ“ŸÆ”~b‘I‡j?ZZ\r _J^İ¨R°\r£ùR\Ñ@Â”sE(ı(Â’Z(°‡Qüè¥¤0ıi1Ö—üñEŠ\\\Z=;­÷¥ ÷ô ER<ş”±ß¥8ô¦úWQ\Ì¥\Ë~¢\å@®ÖŠ( ¤=\èj?J\0=(¤4´À?È¢\Û\×¿Ö^ôzÒŸóš\'ù\âŠ?\Î(?­¸gñ£ú\çÖÖŒ\Ñaı>´\ïJ`\ï\éKú\Ò(x\ë\ïOı)\ãò¨ñJ;*oó§~´ŠúRòi¿\Ë4£­!¡ôQü\è¤P¢Ó©¸\ä\Ò=)E;ôúRb‹\0q@£ñúR\0ş´\ßğ§Sh\Z8úÒŠAı)Ş”\0*=}ÿ\0Z(ş´†%´¿…µ)jSø\Ó)€QN¢´”\êi\í\ÛÖºQıTœqKú\ÒSB¸R\ÒQ@\Ã\ëÓ¥½¾´~£ù\ÑF\â¸~´hõ\ã­Ê€\åK\éÚ“ô¢˜®\éŠ(£µ Ÿ¥/¯§j(úæ‚‚J( üi—Ò“¿½(\íE€p4\ï¥0uñÿ\0\ë©\Z)\ßÎ˜8÷§Š–P\ïÒ\Û\Ô\Ò\nZEú`\Í?ò©(Ojw\éII\×ò¡\ãÿ\0–i6ı)h¤À?Ozm:Š\0Jşª?!‡ò§RzÒŠ\áúQúR\ÑH”i}}Eşt”w÷£õ Z)p(¤m\'\éÚ—Ò“ùWV‡(ZJ_Ò@	\Ó\éE\ß\ç4÷$;Nô*?É¢€~\ÔQ\×Ú\×Ö˜!i=()z\Ó@!ú\ã\Ğ\Ñú\ãñ¢8\Í \n\r.}i¥\ÔwÀõ4´\ì~4T~r\ç\å9\Çqš†K£“£§ÿ\0^€,’<üª	oR\"<\ç\0\n\ç5Yi ù’‰\æˆ‘³¯ÿ\0^¸[ÿ\0jZ¬\ég<c ı3ùRrH¥\ÏC\Ôücm¥}ù\"\Ğ!\É\'\éó\î+\r>&\\K9Š\ÛK3\à\ãj1\É\ç\Ø5qöÏ¤[\Èf¾K\é’Ll@ú|\Ë\×\ß?JØ‡WÓ\Å\Öİ€\ã\0¡üy\Çó÷¬CX\Â\Çk¦x\ê\Îş\émd‚[K¦$ø\\\Øç¿¾:ô®‡Î—şy‚1U³ŸÒ¼§Xy/-qrˆYF\è¦SŒŸñ\ÆG5{AñÌ¶°}y\Zu\\yr¸Á\Ğı:g\ØóŠjiƒ…IŠõI\0†V\Î0E[\ä\ã½r‘k~nÇ‘¡’7\É6\ä\Ç~ı8?ızØ±¿‰Â²>Q\ÆJút\ä{{Qqr³TS¿¥0FA\È#ŒS…!¡x§×½7¿¨¥ô¤\ÊC€£×½¨ıOj…ö¦Ó¿É ¼~4”´{ò(\0ı(ô¢ŠKúSE-\Ò\Å/ó¤4†6—Š=~´P\ÑIƒE3üóIùR3\èG4\ß_j\ê9¹¤¢“Ö‹\0¿¥\'½¿Ê“õªD£ü\âv£ù\nAq{ŸjO_­”f˜\\w\ãhÿ\0&“×(õ¤\ëıi¤ŒhwÁ\0·aş{SxŒsÁ=\r\0/\Ìø\Æ\0\îj)\nÇ–, \ânqX\Ú×‰â²„\ìh\Ôc™°^ƒ©={~u\ç:ß\ïndh\í.c`T•P3ô\ã?Ci¶wšÿ\0lô¤(…d”pOÿ\0[ü\ç=<÷Sñ~§ª’<\á=E\Ç\ç\î¥sß½¹s#–b\Ç%$ıi_pÀ\èf\äÙ²‚E2>|\Çb{“QI\"ÿ\0\Ë0Hõ\ê€d	\éô†m\ä\Ï=j°ç•=zsJ\Çù\Ôy ó\ÍH.#¯¸\íEÆ‹°\İ:F\"g`¹\È\â\Üù$Ô\0ªJe\Æ:\ç\Õ…‰9oz©­­s\Í\ÎH\rŒıkcKñL°¹:Œd\éŸq‡¯üzr\é7&G\éV#D›F\Ö\è¸·\á¿D\äGw8\ØÍ€\Äıß§·_ÿ\0UwqÈ² *A\Ï9\×\Í\Ñù–\ä`“\ì;ı+Ğ¼\r\ãV…ã°¾\İµY¿‡ş\Ã\Ô\Õ\'Ü—¨õ1úR\Óc8ã¯ju1şsKúR~´´†‚ƒıhô~´h\0?*_\Ó4˜¥õõ¤E§ùR\0ü)E §*\0)zZm\ßŞ—ùRş±¥¤n\Û\Å~\Ìı)¦Z+¨\äbzv¦Ó³M¦!JQú\nO\Ğ\Ñ\éT =¾´t\Í ±×½!E\'¥¯µ\0-!<\çKÛŸ¯Zò\äÄ#¥~\ë\ì\0A5\Ó$\Æ8Ì—>‹õÿ\0#§\á\\Š|Tºd²Ldºq…D8õ÷U\ï\ê\Ëcjö\Ğ\Ê¬»¦sü+ÜŸ¯ ù\ï\ß\Èu[ß·Ş¼ƒpŒ(<Ÿ\Ç\Üõ¬\æ\ìmN7Õ’jZ\ÅÎ­022„\\…DUú\nm¬J2\í\ĞrÂ¢·„¿9À\Ï$\Õøø\0ò¤÷¬÷Õ›m°\Ğ\ï)\éµ;\0qšR#\É=qÛµJó,y\Ç-\ë\éT¤\İ+\à‡µ&a-!>™\æ—\åN¯Ò\ã\Êş,dû\Ó#…\ÎÜƒøT•¸£\æ ÿ\0]XHG÷L\æ¬Z\Ú\ï\äs€=kR\ŞÁe Hª\\’)E³%-[ \íÀ\ê1U&…‘\É9Á=«¯K‚\ã<\Õ+\Í5Ÿ†^\Ø\È\niš:n\×9”‘G]\Ø\Ï~\Õr(\Õ\ÎT’zñEÍƒFO\ÍWM\Ñ8Á#ô­¹“M\Z[2ƒw#\Z\0x¤§9§¿\çD%eOC\Ü\n›g\ÈTñs\éF\Â=KÀ¾\'kûagrs<@OV\â:Wng±«\ç\í\'R—M\Ô#™N$‰²q\Üwı+\Ût=V=V\Â;ˆ\È€b£œoc\×ñ¦ô]Q«\éN¦@\íOªP(ş”\n\0\\õúQ‘E½)X”ÿ\0:N˜¥¤\0)Â›J(i§¿ju!¤0¢xştb‰E-ÀÉ¤ı=\Í\'Z_Z\ê±É¸n¦úû\Òÿ\0´”\Ñ,?Ÿz=;\Òzö¢˜…şT~´”f€Ö„¿JL÷\í\ÛÚ£s’Fp1\É\r	,ÊˆX°TI\ïôÿ\0\n\Ç\Ôo~\Ë—W\ÆpNŸ\×üô©µ\è\âË·1\Ä7L\ã<û¼{c+\ÎüO¯\Ë4†i\Ôy\nHŠ&9\ŞŞ§\Øq\Çù0İ‹Œnaø—U{©¶Al4€s\éŸ\çøšÂ‚##Û©4M+\\H\Ò9Ë±\É&§ŒˆaõvÇ¥c»:²$s´¨?Hd.DkÀ\é‘U\Æ@\ÉûÇ ªhƒE‡n8‹€’&¸¥H‚\í\×úT»3\Ïnşô\×MøLõ\êhA^k—~G½XDód¢Oä”p0;\n\Ò\Ñ,\Ì\ÆfÀŠ3’O\çúZ\ÊNÆ‘\Ùb\ÚÀ\ÛÆ¹;Ÿ\á[V:—\Ï\Ü\çÒ¥·³ó§¸ù@Â©\ãüš\Õòp8\ãô®i»\ìuF6(\ÇjSi’Ùƒ\Û8\Î	\íZZ\äq\Î1\Å;\Ê\Îp8\ïš\Â\í\ZZ\èä¯´\ì¡zq\\\Õõ‰L•{u¯Eº³\È8ö\é\\¾§fc\Üq€sz\n\è¥S¡HÕ›˜\ß¨\ê=kEğ1\"µ†\Ç\×üşFD\Ù1\ì1À«v\Ò}¢3p\Äd\Æ+§s—a%ˆ\È\'9R;ı}úşu\Ùü=×¼\æ\Õ\Û\Çr\ç\ë‚?¿qÄ°O9Ô¶WMe\Âdmm\Ø¿\àEJÑ•¹ô\"?C\Ô0\ïÚ¥æ±´;õ¾\Ó\ãum\Øô\Ík§\İ÷­V¦oF;ú\Òñ\Å´\n\0_\åJ)=h \éš)=}=¨©E-\'ÿ\0ª–€qşzRzÒ¯z?•!‰Gù4¸ ÿ\0õ¨¼QF(¦3ñM\î)\ÔW]\Î ô¤ısG \í\éA<P\r‡ó4gñ4\Ú=}{SB»ú…!`ƒ¾ƒš	\í\Ô\Ôn~r½;“\éH23\ä \ã$ö¬\İNñmc$\îf €£¡>ş\Ø\Éæ§½¼û:ƒ.x¹-^õK\íyp£&V\Ï8\à_òiIØ¨«²¯ª¬–\Í5\Ëm·ˆş\íA\ÌnO{ò}\Ï~k€\Ôo¦\ÔnL³œ0p}°­\rsQkû’rDQœF§Œ\n\Éy9\àN{\Ö\r\Ü\êQ²\ãÏ¹©üµ\0³t­,I“\Ç*;™rƒ:‘Ş€$’s“À50&Bs\Ç&«G\Éı1Ş¯\Â<¤,zuÁ\ïH,;Œˆ\Æx\ÅIn\Ìq÷A\çŞª<Ÿ\ân­\r:21\ß`xö¡²’¹<‘3Š9a\Ğvÿ\0\ëš\êô7Ê¶H¸òÀÌœcqÿ\0\Åghºs^]_ˆ\Ğ\à‘\Î~•Ö¢* U€=+šnú„.‡¿ò©1@¥\'ô¬Y²şºwNôƒ\ê{ŸZ+\'¹c\\g=ı«#V²ó#b9\'§Z\Ù\ÍCpdeqŸn´¢\ì\î&5½·Án0A¬ô•¡\Î\ÒÖº­^\ËË™»n\é\\\Å\ÜB2qÚ»\á+£¢³/H|\Âvı\Ç—\ëş•0t;¾ğ\êz†\ÎmÖ­R§ \Ô\É\'›\Ï\0¯\ZoBQ\èu/6\ì\ÙU\ä\Ï>•\éFWÖ¼E¿m;RD;Q\Ò}ù\ãñ¯d\Ñ\ï\Ö\êğr\n\ä^ß˜\ä~\â\Å%\Ô\Úô£óÀr=û\Ó\Åh@R\ÒRôh\ÑI\ëGó ¥ÿ\08Ÿ­/øT€¢ÒÃŠ\é@\Å\Å!¥¢\r¢( _\å\ëA£\ÓÖŒuşuØ0†’ŠÄ¤\Ï\È=…)¨\Ü\ã±8ª\Çg=Oòª\ÓL!„\Êy$\à™©\É\É°\äŸz\Æ\Ô\î~\"Q’ô\É<~^§\ëRÆ•\Ê:ÑŒ|\ÓJp3ù’}€\Î>‡Ş¸o\ê\ndh`¸\ã\Ìrs¹½½‡SZ\Û\×\ïMªHˆ\ìò\ÈA\0}\â=‡#ğ®\Z\âA,‡h;A\ã<\Ö—C¦¶¤2¾~¿Î™\Ó:\ç\'\è\ãŸÆ‹qó™eG=:Ô£Bs\'“n®\Üj O>¤õ4û‰|\Ç>€\à\njsŒsÚ-c%ş•<¯’z/\\w¤a€g\ïriœ„ô$\äf¡\Ãùül\Ù\Â\É\0\â\ìŒzú‘\ì=~•OH²ûT†I8‚!ºB{ı=\ë¥\Ñ\í\Úúü\İ2\â$b^˜?_\éYI\ØÖš:6\Ùmm£Š>O­^\Ç\0\Ó!Œ\0;\åSc5ú¿µ/ò\'\á5.Á\Æ~¼ö©h¤3aü\é\Û:\Ó\Æ)’\ÍHX²€=N+>Vö’@S©\éP¸9\ëT&ñ\rœ\'\r(\Ïò¢\Û\Äs8`=MK¥!{D\Èu{O62\à`ûW«Ç²C‘\È\'5\ê7“[B\àƒš\à¼Ce\å¹q\È# Ö´dÓ³3¨®®j\ÚO.a\è\Ü\Zµ¸\Å0\î\äUMGL*\Ó\È\n+õ8Áµ\Ô\Îer\Û\ã‡(\Ü\ç¦+\Ğ|­!\Ò>eFÇ¨ü\ç^um\"\ì(\ã#÷­?\ß}ƒSM\Ç(\Çi>\ß\ãKbz†Et½f¦¬õf¶\nO=·ù­oó\ÅZ\Ô\ËaÂŒ\Òqõ¥¦\Ñü©(¡‚š\åEò¤¸¢\åGó¢\ã\×Ş“ô¥ÿ\0\"\â€Ÿj)x¢]?´g§½v#Œò¤ô£Û¥!4\Éb÷¨¤#¶)ÿ\0çšğKúŒs\ëLCwùh\Î\Çÿ\0\á\\\á¸û\×=7c\ïú\àş«{#J|\ØÇ®ıx\ë\\\îµ+X\éğ \0”p{Ÿğ\Î+9\èi«œN¿u\æ\İ2©;Pm\0ö\çù“Y\Ò\"\Ç\0~\ç\0{ı)\×|\Ì[‘š‚\êR\é\Zt\n0q\\\Û\êu%b±ı\áû£’*IŠ\Å\0Q÷&„À öóUe—\Ìr!\éT†GÖ¯YÇ’I\àc9ôª‘‚\î_AW¤*‹\Ì2}¨óe=\Õzg½6C\æ>N‚G$}\ê\è\Ñ\åò\ãbG™ %P`Ÿ\Çùş~õ-¤4¯±a/’;h\í#\á2‡û\Õ\Õéšµœq\ì¨\0\Ûük\nK.\çP\îq\Ç8ÿ\0\ëS¤ğä±$\ï\Î;ı+7$\Í\"¤\â+øe\Æ\×RCšµ\æ¸kx®-p	\É‚8®¢\Âé¤„n98Á÷¬İº\ZÅ¾¦°#¯\çP\Ü\\,HXœô\èùJı	”ğÁ÷›‘­¯ª15o\Ü!)mò¯MÇœ\×?%\æ©Áó\n“3\Ít2EUY”w\íQ‰˜¨:gj§dC§}Y•oá‹›\ZGò\Éõ\æ´ƒe\0ºÁ¦?úõ£\Îø&[ßµ\\IncM\åTJGø\ÒsšN&\"&­¢Ióa\Ï$s¨¥½–=NÀºõOj\è\âš;˜\Ë.H\èA\Åg\ßi±G™#lt?Z\Ç\Ú]\êZ…•7º‹d\î=0)‘ó?ºH«º”a/2NsÚ³\íÿ\0\Ö?wGX\Üã’³±<G.p3ò“\Ûÿ\0\×VOÏ†^\nõöªo\Üv\Ï\Ób)	‰\È\Æ\çHRğ6°o-„nÙ’?”\çŒğ1øG\á]ô2e­x_†5&°\Ö$…n8\Ü3şE{Np³@s#ô\Å	\ÛBZ\êig¥µ1:g¯­?ò\â´%\nM’HR\ÒQü¨\ÔQE!‡ø÷£ŸÆƒ=hşT?\n)8¢X\Â=¿­4½\é3G­v£ˆ=z\â\ÔgŠJL\Ó%‹PJ\â2IéŒ“S\Õ\rX”²m¿yˆPx\ã\é’\n\\‚1ş‹%\Ãpòó\Ù}>ÿ\0\Z\ä<Q7\Ü\r÷T“‘ß©\çó®¶\ã\Ìò\Ê| 0ÀQ\Î?Æ¸_†\0±e\Æ\ĞpµeSczkS‘;\ÏrÇ€;\Ó.\Ë;I\Éò§\Ã&&x\0w\ïUneó$\'¶z\×9\ÒG,¸s\×Ò ô¤s“Jƒ$zf„ZµË·© $›Ö‡8Uz¾ô \á÷\rŒµm·\ÌRF\áú\×Am/\ÙÈ–OšfçµKHµQša’\Ô\ÉR\æ\æf\Ú0„ö¨z—\r¨õe.^{…Q\Ğ(\ãfkûm‹û\ì9\çqõ¬‰­b–\Ê8£‡Ë•8,y\İõ÷\ïR\Ú\é3É±¤Á\0Xœ.síœ=jZ‰i³@;J™C¸g‚;Ô¶\Í\Â7\à\çŞ§xd–C.Ø¡$Œ„g·ùúUK¤ÿ\0I>ğ<‘Ş¥¢\î\Ù\×\Ù?˜=r*-i zõ\Í3L“ô«Z´fXW\Óa%fo¡\ÍK\Z\Å‘\Ï<õZ\Ş\ÖÔ‘¦ºXØ©1¢¶3\Çsıj&\í†6@1\ĞTY+c^½G¬\ZB’rV8\×K‚\Z›;³»“¼©\ç<ôô­{1wm§\Ç%½ÔŸh,sAù\è~Õºšrœ¤2Z·Ó£ò¨Á÷¢uV\Ö3T­\Ô\Î\Ónn]\Ë\ÏF\ç‚GCõÿ\0\Z\Û\ŞÚ‘\Æ@\ÈqS¥ºöP ©\Ä[P¢¹®\æ\ëka\âKb—R7¾\áùˆ5\Ï\ï\Ù0|pO\"»\ß\Ùf2ãªx\ë\ßü:\á®\"\ÂsŠ\î£+\Äâª¬\ËrÆ®¯F\0ı*$ÜŸ2ô\Ï5-·\ïl\İ?‰áŠ‹Ñº\Ôu­,\ÛË’¬œ:\í=¿ú\Õ\ë\Ş\ÕV\ê\Ú5İ€Ã…<c¾\Ğ\çS^1¿Ë8\à÷#½u¾\Ö\Â\ê%\ÜLR\á9şT\ã\İÒ‡òïšwª6WK4!ğ@aœõ\ç\ëW‚9÷i\Ü\Ëaııi\Ãò¦ÒÖ€¿Ö—Òš)\Ô\0\ê;RR\Ña 4*( aE\'\ÔRŸşTŸ­†»<={\Ò~”RøÓ°úœ\Õk\Ğ$\n§¨9Ò¬}OÁ\è:\Ğ%¹™\æ6òÍ´Æ‹œóÖ¸O\É,\É\"66\Ä\0,9\ä‘À÷\Çj\ì5{‘b02\îwı~ƒ¯\á^u\â`\\\â\Ê\ÓsB–œ\ï~\íùæ°¨t\ÓZ\ÜÂ¸—…\äp*«¹\çßŸZ{ğy\ëP—ÿ\0\ëV:©#8úÿ\0*Š»ÿ\0\ÕE‚Åı	\ïRB\ZY2@\éU{dı*Í‘ıüc¶\áœQ`:\ëVòs\Æ1Z\Öö\0sP\Ø\ã\é€kn\Ş?z\â¹\æ\İô:)­\nb\ÉF2ªH\Ï5*[7\Ğg<U\ág\'¥HaÀ¨Išú^%~µ™qÏ™5«s1\ĞVt¸<u\æª\ì\Î\ÆÎ÷¶d‹Ìs\È#¦`\"Œr9­\Í\ß õjÊ¡\Ñ\rŒ\ãk‚Nq˜=\ê\ä…@$šˆ>\ã5“\Ø|½J¥6gÊ–0O®*×•Ó¸§±Æ­‚A|SŸ:T©\Ç\åQK\ëßµa\"¬sş …d³›>›=«\Íä·2öZô\ßœi7¡ù\ãŠó¸L’)•\àúÿ\0*\ê\Ã\ìrb¥K\'ò¦\\ğ¼©\âYd?\Âx\íQ°\ØH\ês\ÅO\'\ïQe\ÆXqş\Î+¤\ç\"Ù–#¯¦+gN	-©pU€ö\É\Ç>Àş’ƒ‘\íZzhÈ’<\à1?\çüñS=#¹\é^	\Õ\Ú[e†C’£qÿ\0\ëÿ\0\Z\íP¯\Ğı+\Ê<=3Et3\Æ\âXõ\Ç\èAü\ë\Õ-dó!¸É¢›¾„TV\ÕúÓ©¸ÿ\0\"Z³1Ãµ(üş”\Êp÷¤©i8¥¿aü\èıh¢Ãš)ÖŠ\0\æóG¥Ÿ¯Ö»¬y\àM\'ù\âƒ\Û\ë\Í7\×ò¦ õ\'õ¨f~v\'!\èj7ñ\Û(y\çŒ.§ûQCdùd/R¹\ç^ÿ\0€®.\ë&0Bª(\0¾¾\æ»\Æ\ß\Úp¯$\'\Æ	\'ù\àš\å¯HŠ\æ\è[ƒš\å¨õ±\ÛMhb¿_S\ïL\ÇNõ`¦2OÒ™\Û=‡J\ÌĞct\êjx\í¾¸‘\ç×M]·Á$õ\n:\ÕN\ç\ä!@À5-¡Tuõ\È\çò¨®d\' \Ï•7!y\Å=LË…\ì0+£µ^Ò¹PÑ£z\Ç5\ÓC&@ô®Z\Ìê§ª. €\ïI#¨\'\Î#N¸â³¥•¦\'$…\'€;\Ö|\Æü¤z\ÒòÀŠ£n›\Ï\'5fh\×µrGœ=*Óº3kSb\Ã ;ŸJÕ‹/€:Í±– 9f¯=\äq&G8\ç>•”Ñ¼vX\\’½Gb++Í–ğœ\Zµı«$‡\åC\Äñš„ƒ#–n¬rk%¡C¢\Ôy\Ã\ØñW£¹WMd\ËOLú\Z‰.$·|?\r]Å¥Î„=ù¿Ò³£º\È9©\Ä\ÙQú\ÖR(\Çñ)Í€‹¼²ıs\\ôgv }û\×O\ã\Ëù-m­|–Ã™wy\ìk’ó\íV²´ü\Í\æÇ´\0]¯Ÿ\×o\å]¸xû·8q\Ö\Ä/û\Ì2HÉ©­v¼%^\ÇÒ¡#ö<{Š|G\Ür+sœyúö­=;ı`\î\Îù\éT½z\Õı8\à\Ç#Š‰lZ\Ü\è´t?jNÁe*{v\rş?­zm‰`¦6û\Ë\È=3\Ûüık\Ëô\Í\ÃSU=CA\ÄW§Å‡—“\Ôwÿ\0?ıjŠ{„ö4GOj_Jˆ\ŞüûT€ôô­Ì‡Ó…6\Í}iÃ§¥6”R\Ô‘G\éE\0.3E\'4P3›şt´”\Ó]\Èó€ş”\ï\éÚ—ùSI>\Ø\íM\0’=9\Æ}9¦gzR¶q×Œöâ£‘\Ô!,pS\éOQ_\âi„sÆŒ<¬«7Lß—?pWd^ù¯A\×\ï…\Ñx#ÉF$a\Ğı?\Ïjó»\Ïõ\Î\È\Ï÷®J‹S¶–\Å9H¨I\ÉRŸ¿\ëŠh¼•™©\"\0‰\îx«q\r–Ç±cŠ«Ÿ@\äg9«$ô_O\çT€«*`¯4c\åö©%Öšq\åŸN”\é¼=u›m…°P\àŠê­¦$v¯<\Ğ\ï7X\á\å$öÿ\0?Ö»»|­\Æzc½sVSªŒ¬¬[’Vw\nx\é«9Ç¥Z1)‡8şu©Û´.\Í2ƒ\Ï«\nz»6i—C\Ç\éQ\É\n¿A‘Ö°´ç¹º3 ™¼\È\È\Ú\0n_ñ­\á¢\êI1Œ)a·v\àzı=\ëwM£%5{6>8¥X\É\ì	\Æ*\ìqL\àö\àş5^\ÏI\Ô&€MÜ¤œ\0y\ëZ–~\Ô/\áß¸D¸À\Ï$\Ô8š¦—R-€\0IP=ø¦=\ÄQõ‘AúŠÑ³ğœ“YI$\Ë($*Ÿo_Æ¡\Ôt Œ\ä•X˜¶{Ÿş·øT*wcu º™SjÖˆBù\ÈXŒ€sUşÔ·±ˆ\îzb³®![«õktQ(@}z\ÖÍ²\Ã\ã$òM9ÁAwW¡d\Ó8«ÑŒ\0\r=#\éü\é\Ç	\íŠ\æl\Ñ3€ø….n­£„>•\Î\'\î\í¡\Î\Ğ[/~›Iük ñ\Ê\êItˆ¥[\Ø\ãVö\Úù\0\ç¦qùW9ò›–#\î\à/\ç^•5\Ë:£¼™lsnø\Æ:jvõ\ÆI§GÍ·¾E*&¿L\Z¢	\ã9=AW-O—:ú§ñªq”z¾\Õn3‡ó“\Æ;T3H%©Ùª\Â\İ\Øn>ü\nôm4\æ8×±\çüÿ\0+Î­5wÁ\Úr¤§ÿ\0\\W¡i\\B[³a¨§¸L\×P0GANqÛµ \è)}}+s\ã·ju0S\è°¥<Tb)\0ú)¢–‹š)?\Z(\ÍRş½õÄ¡$ñ]\Ûp\éAü²:Š9\ZNz\×5&:zû\Õh!9\èH¬Z\à\Ä<…$3òI\ãüñøÖ«ğ¯\\š\æu\Ëõ·Ide\'\0÷=±ø\â¢r².»9\ß\ß\Åej\"˜J\Çs0\ï\ÇüûW\åu\ëW¦-;\ÜHr/¯¿Ò«\Ü\æ\Ğ+–N\çlU‘P¾¹¥\Ç\ãJ{ú\æğÓ½IB\'\ß\'·Z”?>\ÜTC¿sOè¹¦€”\à\ÆO¡T=§^*hğ\è\Ê	=\Å1£\á\Ïa¥vº¢·¶\Â7 JƒÖ¸Í™\'±\ë\ÍYK³§^¤\Öû‚u\Ş\\ÿ\0‘ø\Z‰Ç™Y£o\'™B~`?:«xt$=ê–™ªGul“F\İzJ½+\ç,:\Î+™G•<\×1£-€©\ÚÁ·]Fâ•‰\í\Ä\èÀ(\Ë\ÈOn\çX\Â$“Ğõ\"Z°#¸­\ÕN\à\é\Æn\ì\ît\İsOx\äd™Q\äõ«V~#\ÓÀlÜ ùˆÁ w==ºt®\Ş\İxÜ¹¢´cµ³]•Ù‡@8\ÏÖ•\Ó)PK©º|ceQ˜n%H\ã<\ç+ò[IÑ§|Áõ÷<tô¨|¦\Èò\Ó\0‘œv«1[ÿ\0\ÏFÏ ö¬eR\ÆÊŒ£l\ì…\ÂpO«f/œS\ÇAı)\Û8$\×<¦Ş¬c2\0õ\ÅcøT]3L’BxÀªSŠÑ¸•bFv *Œ’{W˜x§WmORQÏ’™\Ú=}\éÒ‡<Œ\êO•iòù’,R?\r¾V-\Ğ6Ó´psùJ„Æ¨\í·$d€HÁ?­-‹¤iqº-\Ï*…ŒŸ\áù\È÷ øšP¦y\"$(9\Ç=°¯Gcƒq\"\èW·~5(¿L\Ó\"OŒ\äÀt>´ŠH±N‚Ÿƒ‚{Jl}	\ï\0«\0,úc$T2–†å›™’Ü«ÀÀ\Ï÷ı+\Ñ4y3j™ã‚+\Ëô\É9y\È\È¾\Õ\è^\Z¹ûD\r\çaÜ¬y\Ï>£‘\Çó\ÍL7	\ìu ÿ\0‘KŞ C\Æ}ªD9\Çn\äV\æ(”S¦ƒGÖşy§\Ôt \âÇƒø\Ò\æ›\ïK@¢›\Í\æsTµW\Ùm\Ñ|À	ôÿ\0<U\ÂzUmFİ®¬¤~ş7/l°\ägÛ¥v³nGı×™\Øôö« ü™S’G~õ›¦],\ÖÁs’	RX(Ñ¾A\Êö^”\Ó\Ğmj-Ô¿¸n\ì\0W›ø\Æû\í:˜¶‡\"b;vıxü\ë¹Õ¯¢µ²–M\Ø}¤l<d\ã·\ã^\\ò}¦i$s‡‘³1ş{V5e\ĞÖŒz„1„@\Ì>P8N\ã\äôö«wR\ì@£®0*|ƒŞ°GI	\äŸ@*9:~8©N\0$ñP¿<ö4ÀH\ÎI\íj~\Ş\âª\Åß·j—\Ì\é\ëh@In\äIø÷§:yr0\ê:‚*!\×#­LNF{Š\0µ§B×—?,8Xİ°£$ü¿\Ï?\ç\İV\Û\É\Ó\ì1\"º²³Á\Êü\Ø\çò=j¬R\É‚X]£‘O§}+¡–\Ê_h]\ÄX\İX\ÊZXW\î˜Ê¼{§q>\İ;²^†‡&xw€\Ù\\òµ\×Y\Ü	)9ô®?CÀ™—§5¾¢!×•‘\éYM#XJ\ÆÁN}½ª\Ä=¿­Wµ™fŒ\ÌU”JÁ}I\Î\Ş2}j\ÌaqƒÏ¥C%ñõ«ñ\Ûp01\ëH\Ö\äh?ıtÿ\0(9\æ%N}*a Œu\íXÌµ°G5Ä:zÓ¦¸XP’p\0\êx®cR\Ôd¹&8Nõo_¥gk…Êºö¦n­¡b\"_¼Ã¿°®.ò3%\à\Ç\È\í]\Ä*ˆNH\0dš\ç®&\Ø\å\Ç$t¿Zì¢’Zµ\ÉBx\ËğXğ«Œ\ã\ëM<€;O–h\Ìp${‹*\îv<e_Ë§\áÛ¥D\ã:fºrTû‡œ{Ò§oZg&3x©#Œñ\Ç8¤R,¡\äv«\É\Ç\0g\Õ^˜=ˆ\ã5$_|`\ä„TÖ·¼J‡kÃŒq\ÛŞ½@†(m£(1+\Ïl%\\€ü`‚¡\Ïÿ\0Z»-UHÏ“1R§•#·×Ÿ\åùT\ÃIö;\ÏE9=¹©“óª1^A.z˜\è2qV£•@?0ÀI®ƒ\rK\"–£GŒt=\éÿ\0\ç¥&1iE\'ò¢\ÇfL\Í-\0?š)¹¢˜ô9¯Zi~¾\İ\éO<úTgùWmU·\Æg½²B\ê\Ç2\Ä?\àC\ß\Ûú\Ò[x–\Î\æ0*$¹ÁG;XVñ\ÜAô\î:\×=­xr¤iDHN:ü¿J‰]l\\Z–\æŠ5XfŒ\Åo*¸\Î6¯9l\ã\Ãù\×*b1\r\Ó0\Û\éõ®†òÁ´ $‡\ç·\ë\\\å\ì\Ì]•dc“\\\Òm½N¨$–…¤óúw¨óşzPã“¢˜O_Ò‘M\ç$€v “\ßŞ\Ûõ \ÔÀ‡9ü©qßµ\ïZp\Î\ßl\Ñ`c\ã9 {U‘\Ó\ØUT\ë\éWcC\è8¦0AÖ†‘­]\è7¦\æÑ“s)B®+\ÏO®#°\ëTyŒñ\ØSd\ê;j=M\r7\ç¹\Î9#$Š\é¡¹\Æ\rrúDŸ\éJ¹Á&º¨zLuõ¬ª	º\Ù÷®vHô­K;…”sŸÖªÊœgb ²\Ğ6\Ó\é\Ô\Z\Ä\Ú:$.Š´“c\ÏEys¡b:dsŸÂ¦Ò.8\ëŒVm›D\Ş/sQ\Ü_G%›\0v=\ë%¼”€`=\Í<Yÿ\0\Ì]‡<ö¬Y¡\ÍÄ·¤“•ˆr\×\ëUDc\éÚ®K‘\ëÚ«\ÜI\äÚ»ô*§\æœQ,çµ»ó#\å¸\ÜÃ·ù\ëùV\r\Ç\îÁ\Ç,SZb6“tŸ\ÄÄ‚\ë\Óğª×°\0a\Ü\à\×]=49¦¯©^\İŒ÷\ëõ§“‡\'¸\àŸóÖŸn?w‚˜=z\ç\ëÿ\0\ê­L	r0®I÷âœ½r1M“’8ÀªH\Æq\Û\ÛÖ“d@\êqÒ–€}q\Í@N\Ç¤ò¥JŸ^0jJ-\Ç/–A\è	\ëZ\Ö\×C\nc\ÍÔŒ?Z\ÃOºA\î03[\Zd|61\Ç?Ê¡\é©K]\Í\ë+Û™‡ÍµvòIÀa×¯<Š\İÓ¯:\à#œô<Ã¿Z\ç¡\r*%IC‚A?\ëøV½´^l!\ãºŒN¯J#&\Èi#°·q$a³\Ç\\1VGjÀ\Ğ\î¼\Ğc\èW~H\ãñşuº\ç\Ğ\Ö×¹\ê?JL\Òş´\Æ;\ßÒŠm.zPñE%€\æ\ÍDxqùÔ´\Çõük¼ó\Ã<‘\Ğb¨\ßJ¨„4˜ô?\×Û¯\åV¤|!\'3š\ã¼K«d}š\ã;K\éúgü*dì‹Œn\Ì\ÍsUk«’”Rpß \ãğ®Z\ã\ï“\Ô÷>µ§\'u!G,‹\éøğ>••p\ß9\îGz\ãn\î\çtU‘ZCøúcµEÏµ<òs\Ô\ÓOó ƒ$\Ô\ÓÔŸS\Å;Âš{úŠ`§¾8§D:÷ö4\Ô\çı\êD Jƒg\áV\"pŠ€œ¸ô#‘ÒŒ”>Ù§°É	\ÏN\Ô\ì\Çn8¨³Ÿj‘0>„v¤cû»øÿ\0\Ş\0Wm\áOCÒ¸¸Q^\ê3\ï“]‘%\0#\'k:†”\Ñt§¨\éQù{ \íVb ıi“\'\á\é\\÷6µ‰a<zû\Z¹\éŸÊ¨\Û\ç¿<\Õ\Ô‘¨‘H—*¡ö¨œõõ?­I³9şµƒ¯\ã\Ô3D\ÊrIô\éš\É\Ö%g†;hòS€Gÿ\0<V´§\0ö\É=+\"ö­d¹\áb\\(=³ş#4ºƒd&\Åa€®0p\0¬Y<°¨;€Hô®šû¯|\ãúW5ªü\î;–9\ì:q[\ÓÕ˜\ÔØ©ú=)\Ğó\ì>ü\ÒD‡‘\íŒQ\ØpxúV\ç8\ï_qÁ£ø\0\ßÚœFGZAGC\ëHb¸\Ş¸ü©¨[88#¦E?\Çašaöõ\Å\0Y·<úVÎ™s:‘\×\ë¸<5^ŠFˆƒœ`ğEK]›:\á\ĞÊ£ °?Lóõ\éø\ÖÎœ\ê›\İyV\'\0\à\ç¥r6w\Ìc ¶s\Ğzÿ\0\á[º,¬@ˆ\äôú~=\ê¶€\Íûıµ\\pm#\×üò\Z\èc<şÚ²\ì!¸\0q\Î:¿€g=ø\ç5²2ešpû¾´Às\íõ§S\ê2)?-4RQE†s]¨\Ï$g·J\\\ÒW y¦n«(Š½>üÿ\0‘^{«\\y·®T\à*\à°\ã>½?\n\í<Q;GfJ.X)\Ç\çŸñ¯>½@\'…xÁ ½ù÷<š\ç­.‡UÔ†[Ÿİ’¼dŠ\Ï<£1\ë\ØU«#^™a’jƒ\Ë\àúc5\ÎtlU¨\ïA¯ \æœ“\ëš$\ãøü\é\Î@¨õ©¿Ò˜G\çL@isùóŞœ½G\Ó4\0o9Æ¦“\Ôdwª„õşU<o˜\È<‘ÓšM€©\'J•#\ß8ªş½©Ñ“¼u\ç¥E\Ûs‡\àõ»\r*C$\Ø\ÏcŠ\â\ã8q¹\ä\n\ëô_õdÀ0µ•M®mOsr\é\Î(˜\åBÃ¿Ò¦#zzóÖ¹®jCnG>õ£¾†³@(x\é\ëV£˜¦?•\r\Å\ßÒ “¿§QHn3\Û’\Åf\ÊH¥tr\á‡˜ú(ÿ\0ñªºP.&ğ|\Â\0üªI‰0\È\Ù\æV€xÀ\ïn§ñ£L<\\/B²“¯?•Z\ÕX÷\Èûù\×7}\Ä\áOE8®“S\è‹İ˜gß­s\×\Ã}Ô§¨ZÚ‘Œö „to~ô\×NOc3O·ÿ\0R}G?J–Hƒ¡#†ñ[¶cb$Ü\İiGÏ‚ ‘œ\Ô\Â5t/Q\Ê{õ\éH\Æp9Á÷©¹VŒûôª\Æ7G#\\ğ\Õd?^€;S.‘¸`z=\é¦Iœğ*\Är\0Ÿ\'<š©$¸Á\êzNI…÷¦Ğ¯coM\Ú\ä†é‘[7¿a¼\Û#`‚^‡üş?J\ä\"™¶‚»€¨5f\æ\Ş7¶qß¦+\'nŠO¹\é¿h¹¸L’´h9\Ùşgü+V\Î\Ë\ÌE3,\Ã$™	?k€\Ó<A\0¹Xu²DÀb2\Ôg¯\×ÿ\0­]¾•d’BZ±®IV@FG\àz~}*“d»t5|›ˆ~d°=A%³ùÿ\0B*\äR—pÁj„3Km Š\ç”c…”\0??óş5#x\İj‘,—õ§S(\íT!Ù¢Š(œ\ÎFOÒš_\0ú‘\Å£=1œŒ\â»\Ï8¥¨\Û«g\\\à\ã Ÿóô¯0ºGµ¹š\Î~£\î±=9ÿ\0\"½:ş\äE\ì\0$±ÀÇ¿\ĞWšø’\â+«À\è9–<güúšçªµ:\è\ìc\Ë7ğ\ã¿óH’¶\0==)|±Õº\ã5úø¬loqò>8\í\ê*794\Ãùb˜OÓµ7üş½€§‚«gœõ\ÍL‡(} 	“”öÁ8¦?B*XÊ“ô”9\îO€)ºv\çšıjÜ±p;’*£‚\ã@q*\æXi&şš¦§®z|v\Ò\Ü‹»op(*Å˜÷\\\İ3 ùz\àqŠ\ì4\\l·`\â8\ï\Ï\çŞ±´\İ9m g“†\0ñş>\ç+¡\ÒcX\ã¸\È8ÿ\0?ZÂ£\ìkM\Z»0Ö•7qùTG¯½*Fsø\Ö£g\è(\èzU”\ÇN´™H„\Z]™\É?½;\Ê\ç\ÛùT8MMŠ\Ğ\ÊC\çppB\ÆX\ã·Aş5\0ÿ\0C¿9ÿ\0W/\ÊI\ìÀ\ä~g¯µXÓ†&d=R5Cúÿ\0õ\é\×\ë.\åaGN”\â¬\r•¯\Ğ~\ìöİŸÖ¹»ƒó\Ïë¸Œş&·o$–‰g\Ë\"œ‡ş¾\â°\å*L¸\åK+¢†e{R7²ôcò«q\Ş÷\"³#.pk@»¥A9<š\ÒFk\Ès\Ã\×iÁõõ¨e|\00Cw#ñ\ëWR|±ú\àqK-¨\Ù\È\ÆF*.‹\å¹IG<ŒgŠ{6Ù³\Ã/\"¬=“D›×Œú\æ«Fy#ğ#¥T]È”lgŒú\çŒ\ÓÛ\Óª{˜°ür3\ÍV\ÄV†L”JÈ‡“\ëM3`=E\ä¡\Ç4\ÉP§;\Ñ`¹f9C‘»;\Z\ì¼7\âË\ät\å]¬@÷÷®<`~F§VB1A\ê;Rq\ì	÷=\ÂÆš-“\ÈF	 ñŞ®\Ù\ÌÀ\ä\çi\ÚóŸLıx¯=ğ¯‹£;m5\Ãpª\í\ĞûzôP0W À=\È÷ı%t=¥¼z\Óı*¼gzt©\Î=*®!Ù¢‡¥X`\ÔR‘ƒ\Ü\Í<¾Nk\Ä\Zª\é\ÖR1p$`B¨\ê[Ó­w7evpE]\Ø\È\×õx¡GyV3¶(\Ç;\Ü½ô^Ÿ‡Ò¸e2¹y>ñ9\Í>öö[—\Û!F\ÕöPu\äŸJä”®vB6DŸ1°\íQ¾\ÜúT\Ä\á2zµVg\ë\Ç>õ%|¹bšı=\Ç\\S\Ó8,y=½©1¼~<“@c\0ş´ø\Î?J$@\ß\éM¨\ï\Î(bÿ\0\éJ$\Ôò)²G°\ã¶:Ğ”e$8\ÏSÒ¡‘€z±\äJ|`c\É\êjÁ„$ \ã\æ\'½!\îV^d‹¿¡#Šé¢·Š8B¯@A8\0gš‡EÓ¥’mŒŒŒÿ\0Z\Ü\ZsI\ï\æf\0¨\à¨½«6Í£#z\ÜO\Æ<µ<üg\Ğ{u<úzğum¾Hò’ÄüªÄšrG6xŒú‡<{ñV¡·1FNõ”™i$=`v•:O ”F*tˆÔ•bQ\Èõô§\0´À1L.GN¾µ%t$1/8\â£p\0Ï¥!•¿JŒ»`§5ZXnP¶EK\Ù\ÇbIŸÿ\0®§”{\éU¹K¥“¢\äƒ\î?ú\ÜU\ç‹#ğ©+\ÔÉ¿ı\ät#¦k¸O»\É\Çj\ê\ï-¾C\Üñ\\\Ì\Éû\Ãõ V°fSFI¼ôúö­«ü\ë ?ˆ6Ö²&O\Ş\Ù=\rm\è§÷a{y‚´›\Ò\ä\ÓZ–-vœ\çiŸş®G\áD\ÄùşGP§w\çüóO¼­\æ2/B\Ù#Ò›/½\Ï.W#5…\ît=\nÚ\â\ÃUnX\ãµe	7\"œ‘Á«0’r:éš­k.\Ó\Ğğy\é[\ÅY³•\ÙrhüÀ¶z\Õ	8A\ÍhCÔ¡\äcz©u\Ç-3+Df\ÈRfÙ§½V z`\0ey\Èô¤\ì;‘úS°‰cpx<sO=I\èj\Ï\è*O¿y\Ïl\Ñ\Ø{k¿ğ7‹q2\é\×ò¯\ÄR\Çû§\Øúı?<\ädt\í\ÍM…H \äÚŒ“\è¤\0ô\è*A\íÛ­s^\×ÿ\0¶ôA\æsq	&Ns\Ç~¼şFº@z\Ô\í¡D{QMP)q(†2O%Fq\ï^i\â;¦¹tü¬ŒR/p:·\ã]—ˆoZd\ÅAa€IÇ·\é\×üšó½j\én&(\ÙDP¨Qÿ\0\çúWEYt9\èÇ©˜Fó\è\ëH‘õ©P¨<nô\âı\Æ\0¯­`t¹8=€}j±Ãœv©%œ÷\ç“Ò£‚OQ\Ğ\Ğsô·JT\ÇaH9\'Âœx\ã½\0C)\ÎGn•c\çûT’ú…Œzô`Ç¼P0j0›*[fó\È#š’Hø$t0\Ô,“ªõ\É\n·{ş±cÊŒ;UK$S1bq´˜©£,\Å\Æ[s`ZL¥\Ø\î4\Ø|«;q\ë\éô\Í_$Œƒ9&¡µ¸h\ÕS‚€¤`¯Ö¦#\Í%„“\ë\\ò:#µ‡ óc\É\åqÀ5b\Ù÷ r\Ø’A\Ï$sõÁ?ˆ\ëÖ¢H°8ö¢=\Ñ\ÈFx?6	\Æ:Ï¦\0ô4„Ë¡\×#&¥Ls\éP¡ÿ\0\ëÔ¢\â>}½j3jœô¦b‹\Z\\®bü©¦<\Ã Uœõé‡¡§bngF€H7©8 ó\Ûÿ\0\ÕV£\ïr\ëÁ\'¸ÿ\09ıj7O¾1\Îr­M/(%C‚\Í\î?ú\İj\Z(©xvB\İ\Éb¹›\è„n¤r\à\â\íúğk¥¹ur‚zó\Ïù\ìyô¬]I	¶\ã`\éW	j\æ\r\Ìd|\Ü\äf´ô<;•\ês’*•\ÊoL\ã5k@“ºŒe†æ´Ÿ\ÂD>#t\Û}©\Ï¬g\'<\ç\×ô¬­Tµƒ§\ä\å\'òEu\"¯œd\Z\â|[~%x\à^~föÿ\0=YRM¬¬`J\ì\î\ÎNKæ˜2;\ßÖ&F\\ö ±õÔ[š¾ğ˜sZl\Î9V\çüı9¨bq\"¤|\Ïs1ş}hœ™BqéŠ‡=*Á%{\ã\"«¿\ê3M \àg¡\íR#ş<ñQ‡ÚcÛµ0/M\Z˜Q\×;[\â¢C€=ùûy¾Gø\\tô5şO=)\×|?\Ö?³|C\Z;\Ç\î˜§\ëø×µ\r¹ö\Æs_7\Ù\Ê\Ö÷	\"}\å!ük\è-2\éo4øf\ïPxúf¥\î‡¿•ÀEXñ9·²’G{‹†\à18U\à§\ç\\L’³x\É\Ínxeò-\â$Br£¸=?ˆü>•\Ïs\ëÚ´›»\"\Z\"D\r!õa\Ğ\"rFq“UP°\Ç8úSœ\äzúT–#’\ä\Ğw¤\åÓ\î\Ğù\éL2p~şô\0ø\Æz\ÒÉ€S”‘ƒÀ\é\ëŠ$CÏ±\æ€#ši\ëÊ€\ïŸ\Æ{“@!Ø¹\çRy\ÛÁ8\æ£tù®*\àúz\ĞÀ){\Çv\Ími±š\Õ{\î‘\Î+\r>ÿ\0\ë\Ít~?h½<…_j™l\\w:Ù­¼À?’aÀa\ß\ë\íRÚ\à˜p\Ê{ğ©‚d\Ó\ÃÊºE\àH6?ñ•`l‹Yüó\Å1\Î\ÇW?w$1\ÆpÁüG\'ğ´Ÿ7¨÷\íO\ê<ñŠÉ†\îAVV‚ qÏ¸ô©Gj‚\ßnÀh*\0 g\éÏ¹\ëÇ¯•`Q°\â8)@ü\Í \è?\ÎiÂ‚†Ö“ô\çÿ\0&™\Øı8¤Y?\Ö\ÄôşTBø„)şŠS\Ë\Ü\Z€€‘\é\Æ9¬\Ş\å\"İ½\Ç\Ìœ€N\ê=;r?:§yx\åùs€p~+IÑ¼®He\Ï·SÇ¶sTe|$\ã¥)#˜›(€\0gÃ£TŒ7!†r{S5(ü¬¯pG>•Z\Ê_³j¹ã‘œ\Ö\é]l\Î\ÛU¿\Â\ÊI˜\áUN­y•\Í\Ó\\\Îó?.ä±­k\Ú3,PœBƒ\â>¿‡ø\ÖúÖ´\ãdc96\Å;{q\Å\'\éIN}j\É‘ßõn\ß\çG\ì@\ÈG¿§<\Õ\Û#Ä™ã©©`·\"<H:ò;\Õy$\"¬\ã|ş\È\Ïôª\Ó\ÌxÀ\Í8ƒxşt\Üÿ\0…8=3Ş™\ë\íU ‡G!C\è3Ò¦|0\èy¨Jr1\Ô\n‘–¢\É#\Øòk\Úü\rx.tpÄ•Ny\Æ8üÿ\0ú\Õ\âp‚ù\ä/|š\ì|\r\âE\Òu%µ¸‹Y\ÈR\Äğ§×ÇR\×PLõıÿ\0SEH£#\å\Æ(¥p¹óU\åôš•\ÓM9ÌHúcô\0UYcò\È\'ô¦d‡yô©\åJ€ÿ\0:\n¶$Wş!ßš\r5\Î)\ï\ß\éù\ÑaJrıx¥>4±\ä\çŠf\Â_\ß8Ç­O½W°\0z÷>Ô²lõ©FÑ»#!†2{Uy\à\090A\ç\ß=)˜Ã2:ı(ñùt§?\ßL}h\Â\0Pú‘ÒªH˜\Ïlœb§ó0=sD\Ñl@\ç®86Q½ø\Å]²\Ôd\Óg†xO òñz§ú²qÁ\"‹’¼\Ğ\n\çªi·\Ñ_Ú¤ğ£‘\Ü}}Á©/#&1\ê¬?øf¼û\Ãz\ÛiW#q>CH¾²>•\è†X®m‘\á`\Ê\Ä0#Ea8´\îm	!ı‡~)©\×\ĞûT\ŞYÀ\ãŒSBu\íYš\è–\íù\àH\099ã¿¯°\íÈ²ÿ\0®ª¸ «¼„0#?‘©ƒ\'o*NFx\ë\éôôúS¹+r\È\í\éAÿ\08¨ƒ~Ÿ¾‹—`\'ó¤4\Âø\ÏÒ£ó\n›…†¿Võ\ï\ïU\0b\ê¸b3’Go¯±\àq\ëR\Ë&7x\Ç\å—#\æc€}¿.‡ú~R?!e<·€?*Î4Ó€£\0u>½ª\ì\Ò`Ns\ëY——m™8f÷\Çÿ\0\\Ò®Æš$cjEeºr§*wÿ\0õõ¬\Ã\ÔCŒ\Ó\ï/‚oƒ#G\\z~5R97œ\çŸzê‚²8\æ\î\ÊR\îF±¦\Ô÷C÷\ç¿B=û\ÕÒ¶‰½N¤şT£©õ§¸ƒÒ¯B<¸N=\ê¤c\çéš¹p\á \ã\ÓJ–8‘D\êI\ê0*£œ¹\ì<Õ‡;-Tt$“U¶7q€zf„SÀ÷¦€{õ\ïN\à‘“\ßÓ¿w‚Ilı?úõBZQ\ÇÖ—·CKüóH¡\éüªhßŸ×š€v\ãš\ßğ¶&¯x$‘Hµˆ‚\Í\Ów|¯ù÷‰5v8«³\Öü\'©È\Z²K\×\ß*\Æ>b¹;{~Cğ¢¯i¶!,\×z@ö¢°\çf¼¨ù\Ô \Ï4„cğô¦ü\Èy\í\Ôt§p\ã\Ôö5\Òd,@—Ï©\äS\î\0÷4[Œ8\ã¡\ä\Z.Ÿ$zh\èh2\àõŸ­;˜õ\Æg“\íNr§\n\Ç9ú\Ò\é´\Û~ö8ª²?_\\\Ô\âpN2¸\ê*¤€\äñ\ÎqŠhC\ÍNO\Ê=\0\ÅVõúsS!ı\ÉÏ¦(D=óN–MñäœƒÀ¨sòc¡¥“¢­D\â1\ÏSš‚^d>ŸÊ¦wÀÓµC\Üı{\Ó@<ö=«s@ñšk¬–{ryªõ\éş‚{R\ÏøP\Õ÷´\îf³ºŠú’	ĞŒ‚?¯½JS8\äšVµw¤É¾\ÚBTòÖ»½#\ÆVW\Èå…¼½\Ã}\Óô?\ãX:}Q¬jw:,MDm€|\Ä)\Úr\Ç9Ÿ#ŸN½©ğ\ËÀ<n¬‡£)\È?J{¢‰;H#nOnŸQ\Îzj9K\æ[‘¾\áÓ‘J;ÔÓ¶*3µ3“\Ågfh¤†¿8÷¨ˆ\ë\Øz\ÓÌ«‘\ÏV\ëQ¶·O\ŞNŠO@[ıi(É‡:D3\äöU$“\×ó\ç­\\b\ÄA‚Cd~ĞœŸÆ±\"\×m\ã†[˜\äwû03 \Î8\\û\Ç\åXş.\å<¨TEqMh©·¡¢7õZ4ri po¯øW-ª\ê¬\ä…lŸQşz\Ö|·\ÌrweV<\ÕG“\Ì$““\êkZt\ìg*\è?\Ì\ëÜŸ^õ-³\á‡qU}zš.üñZ\Ø\Êä·£÷€ö b«õúÕ›”ùó\Óú\ÕaB(£?Ÿjÿ\0®“š¡G\×\Ğv©d“\'o^\æ C\Í;şZPRµ†\Êù~A\íşNiI=sN8\Éõ=\é„uştĞ„\ÏJqıi R\Õn!@§sÏ¨¤\éJ$\02x\Òv\Z\'µ†K›˜\áwH\Ä\0şµ{„tÈ­`×¨\\³üF¹/\è\Â\ß\íw+‰\äü#üMwÿ\0?Ò¸jURšŠ:U>X]@m¼(\âŠ?\ÏZ+¤\ç<›\Å~¶¸…\ï,qˆ¹*\çS[\Él\å$R¬=xü«Û¯SÌ²OFR+Ï®l¢¼B³&Nx#ŒVÕ½\ÆeE¹-NN\ÖF»<ô4³¿¶pz\Õ\ë\â\ÕÌ‘259\ã¨B\àuZ›§±§-‚\İò\äÇ¯Q\Ó4@>§\ëD¼@(ö\×2[6\àx\î­]V\×8\Ü0Ş‡\Ö_ğT\ç\ì4fò\Ğ±¯\ÔU7sŞ™–\äd\Ğ9\ë\Í+,@?•>N$<c\n.\Â\ŞôË“û\ãFz\Ğ\0üûd\ÔcŒ\Ğ9úg¸ª\Äô÷£M/\èhş´X¡ğO8£Ö“ğ\â‹j\Şş\â\Ù\ÃA3¡‚­Š\Ñ(Õ\í’Aœ\ã¿\ç\ïX Sÿ\0Â‹\Õ\ë#\Ô\"9m®JAqÊ¨0vö#§bü¸T$\Ôß­Û\è8\ÇÓŠu¾\íG\Ãs@ldóÔ‚\0°ó\îLc[¯lc\îjl»¥\Éu;™¿\Ö\\J\ßV&«Y\È\Ë\ÏS\ÍGø÷©\ì­Zòòt\Æù(\ÉÀ¹öõ4ô@Z™\Ö\ÛJ5\Ød¸c#œ¨\0\Ø<3\ÔU…\ÆG>µgQ¹[›\É=\â;cW9*ƒ€@À\íL†EŒö õŠFCÊ\Øÿ\0\ëU£\n\ÈIŒdg \ëU\Üc?®xª@2§„®x*rG¯oğ¨l~„\àş‡Ş˜+„WHäµ@ğ}óZV¥d€¯^0sş~•J\â-{J”2?CHh\ç\Ôs\Í;ˆ\Æ)\ÎIšg\é\Ü\Z|c~GC\ß=\é1ëƒœ\à\à\ÓzvdƒÒ™““\éŞ€t¥®)^zÓ1 ’N\0\é\ŞÀ€u÷®\Ï\Âşò\Â\ŞŞ¯\Ï÷£C\Û\Üû\Òxs\ÂşVÛ½A~~±\Ä{{Ÿğ®´qô\ì=+‡_\ì\Ä\ì£F\Şô…~‡ò­O\Ç\Ï\ç\Ï\áYñ\×\"¶ü6˜O±?\ÈW-fki¥\âŠO\Çô¢½C\Ï\Ô\åe\æ6r1\\110H\ÇNõ\Şúöú\×z5…!\Åm‰\Ù36\í\Ä3\ïØƒ\\Ÿˆ,ş\Ïu¼#‚+«…øzU]n\Ë\íZ{`|\Ê2\0\í\\Q“L\íqº8Ç²–8Ä e¡\ã\ëU\Ü\àŸN¸­K	‰­\Ü\à\î\ÆnqVn4˜üğ¯”IU‡c[§©—/c	ş;\Í$Ñ€\Ù^GqW¯´ß±\È6K¸‘‘ŒTDÈƒ¸\Çj»“n\åC\Øt=\éz~t \Í+ûv E¨]|‚=óQÜœ Œ\æ£Y8ô©_\çŒ¤p{Ğ€„R“õ\ÚQj„(ü\éÃµ7<Röşt\Äõştÿ\0U\êW\0õ£&óšo4\\f–‰|¶\Z¬2É·\Ê\'d™]À+øs\ĞTz­‹iÚÅ©\Î#o•ˆÁe\ÆT\ã=Á\ã=G5K§Ö·5!öı\×RR\ZhÇ‘sŒ–8û¬x\èWÿ\0=ú€bzÖ•şe{|c\'d~Lm´ı}¶	\Ô­f£¾kWU\İeae§\Z0g•JC¸¢ªşf>¿^‚şÔ£¯µ¿¯z\0TvŒ‚\èA©M×š1\"‚GF\ïø\Õn!@<zcÒ’j\ëÒ?Z==h{Na²A\É$dSî¶¾r¬2*3\å¸ÿ\0h€*À\É	\á”\î\\÷\ç=@¥\é\éC\à\Ò\È\'°Ÿ\ãù\Õh!¿­\'\Ü £;S\ÎH¦\ãŸnù©\Â\\[J\0¸Œ«Œ|\é\Æ~´\Óm?»•H=3\Æ>µ=\×yiª?k\ÚøZ\Ûx2H\ì3\Ğ\03Y\Êj&Ğ¦\äbE¦\Ï)\Âc\ìA\Åtş\Ò`±\Ä\ÓDòO\Ğ^\é\ï\ïùVİ…½¤a ‰Tcœ¿Z¾@\èö®J•\Û\ÑT\è(\êÆ‡c\Ô`š	\çÚq\é\Î)¾•\Æ\î\Í\Ğ‘õ®›\Ã\Ñ\â2\Ş\Øú÷®gp;“\é]~—f÷«|:¼®aˆzX\ÒŞŠ3Ez\'§*\Õ\Ä\ß\ÈJ\çşº\Z(­±;#7\Ä\ÇÁ\Ğ}*køõ—\éEÁ\Ôô\Çmÿ\0!\'ÿ\0®¿û5t7\ßz\Ó\êh¢º:™-Œ\Ícıbı*\Ïú±ô¢Š¤DŠ\Ò†Š*ˆUˆÿ\0ÕŸ­P€†—ÖŠ*„©\Ã\îš( AŞ”t¢Š\0^ß…\'ñ\ÑEõ»cÿ\0\"¦©ÿ\0]cştQ@ŒEû\Ë[^.ÿ\0‘’÷Sÿ\0@Z( 1N=MP¥ \èh¢’ŠO\âQ@\É\áûñÿ\0¼*\ëÿ\0\ÈIÿ\0\İÒŠ*zV\ãø¾µø\ÑE@)¯ŞŠ(`tz?ú˜ş•¿EúQEq\Ö;¨\Zıóô©\ÇZ(®N§P\ãı)Ÿ\Âh¢ Hırı­všgüƒÒŠ+£\r¹ÍˆØ·EWq\Èÿ\Ù','2025-03-03 01:20:42',NULL),('78621cdb-e01c-11ef-a1d1-005056c00001','78620103-e01c-11ef-a1d1-005056c00001','Kaleb','Abel','admin','administrative','kaleb@gmail.com','0900130082','Part-time','2025-01-30',0,5000.00,'night','650e8400-e29b-41d4-a716-446655440002','Addis Ababa','0900130082',NULL,'2025-03-01 04:49:13','male'),('7f26a855-e014-11ef-a1d1-005056c00001','7f266162-e014-11ef-a1d1-005056c00001','Mahider','Tesfaye','doctor','medical','hilcoe2@gmail.com','0900125689','Part-time','2025-01-03',0,3000.00,'night',NULL,'Addis Ababa','0900130082',_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0\0ÿ\á\0.Exif\0\0MM\0*\0\0\0\0@\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0ÿ\Û\0C\0\n	\n		\n$ &%# #\"(-90(*6+\"#2D26;=@@@&0FKE>J9?@=ÿ\Û\0C\r=)#)==================================================ÿÀ\0Áe\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rğbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0ô\Z:…\ëùÑŸÖ´1»ÿ\0_4d\ÑIú\nbQGÔ¿  ÿ\0\"—ÿ\0\×I\é\ëG·¶)€¿‡4¹\ãŞ›şsGZ,\Ò\ÒzÑšqisI”g§jqsüú\Òæ›Ÿğ£Òš=\ésJ\ÃÚ”S;ş˜\íNi;úÒÖ“4£ÛŸzC”RRşµ!‹Š;R¯jJ‘…E\éK\ÛÖˆ?­/§ò¤õü©Ş´\0\ÚZNø£\ëõ\Å–S\én0¥\nZ`‚ƒÖŠ1HŠ)j-”ú…\ç¬\0;ú\Ñ\Óüh¢€¸\Ú)\n)›œó\ÓQõ\Å\Ôs‡­Î\å\é@\ë\Æh¢^üPş}(“G\ëL@J(ÿ\0<Q\ë\é@ƒÖó\ÅzP\0{úJ(\Å\0~‡Öşf›Ú@\ë\ÅŸ§µ( ¡sN\ß\çJ8©\êx¦S©‡úR\ÓE/¥H\î={RÎ“ŸÆ”~b‘I‡j?ZZ\r _J^İ¨R°\r£ùR\Ñ@Â”sE(ı(Â’Z(°‡Qüè¥¤0ıi1Ö—üñEŠ\\\Z=;­÷¥ ÷ô ER<ş”±ß¥8ô¦úWQ\Ì¥\Ë~¢\å@®ÖŠ( ¤=\èj?J\0=(¤4´À?È¢\Û\×¿Ö^ôzÒŸóš\'ù\âŠ?\Î(?­¸gñ£ú\çÖÖŒ\Ñaı>´\ïJ`\ï\éKú\Ò(x\ë\ïOı)\ãò¨ñJ;*oó§~´ŠúRòi¿\Ë4£­!¡ôQü\è¤P¢Ó©¸\ä\Ò=)E;ôúRb‹\0q@£ñúR\0ş´\ßğ§Sh\Z8úÒŠAı)Ş”\0*=}ÿ\0Z(ş´†%´¿…µ)jSø\Ó)€QN¢´”\êi\í\ÛÖºQıTœqKú\ÒSB¸R\ÒQ@\Ã\ëÓ¥½¾´~£ù\ÑF\â¸~´hõ\ã­Ê€\åK\éÚ“ô¢˜®\éŠ(£µ Ÿ¥/¯§j(úæ‚‚J( üi—Ò“¿½(\íE€p4\ï¥0uñÿ\0\ë©\Z)\ßÎ˜8÷§Š–P\ïÒ\Û\Ô\Ò\nZEú`\Í?ò©(Ojw\éII\×ò¡\ãÿ\0–i6ı)h¤À?Ozm:Š\0Jşª?!‡ò§RzÒŠ\áúQúR\ÑH”i}}Eşt”w÷£õ Z)p(¤m\'\éÚ—Ò“ùWV‡(ZJ_Ò@	\Ó\éE\ß\ç4÷$;Nô*?É¢€~\ÔQ\×Ú\×Ö˜!i=()z\Ó@!ú\ã\Ğ\Ñú\ãñ¢8\Í \n\r.}i¥\ÔwÀõ4´\ì~4T~r\ç\å9\Çqš†K£“£§ÿ\0^€,’<üª	oR\"<\ç\0\n\ç5Yi ù’‰\æˆ‘³¯ÿ\0^¸[ÿ\0jZ¬\ég<c ı3ùRrH¥\ÏC\Ôücm¥}ù\"\Ğ!\É\'\éó\î+\r>&\\K9Š\ÛK3\à\ãj1\É\ç\Ø5qöÏ¤[\Èf¾K\é’Ll@ú|\Ë\×\ß?JØ‡WÓ\Å\Öİ€\ã\0¡üy\Çó÷¬CX\Â\Çk¦x\ê\Îş\émd‚[K¦$ø\\\Øç¿¾:ô®‡Î—şy‚1U³ŸÒ¼§Xy/-qrˆYF\è¦SŒŸñ\ÆG5{AñÌ¶°}y\Zu\\yr¸Á\Ğı:g\ØóŠjiƒ…IŠõI\0†V\Î0E[\ä\ã½r‘k~nÇ‘¡’7\É6\ä\Ç~ı8?ızØ±¿‰Â²>Q\ÆJút\ä{{Qqr³TS¿¥0FA\È#ŒS…!¡x§×½7¿¨¥ô¤\ÊC€£×½¨ıOj…ö¦Ó¿É ¼~4”´{ò(\0ı(ô¢ŠKúSE-\Ò\Å/ó¤4†6—Š=~´P\ÑIƒE3üóIùR3\èG4\ß_j\ê9¹¤¢“Ö‹\0¿¥\'½¿Ê“õªD£ü\âv£ù\nAq{ŸjO_­”f˜\\w\ãhÿ\0&“×(õ¤\ëıi¤ŒhwÁ\0·aş{SxŒsÁ=\r\0/\Ìø\Æ\0\îj)\nÇ–, \ânqX\Ú×‰â²„\ìh\Ôc™°^ƒ©={~u\ç:ß\ïndh\í.c`T•P3ô\ã?Ci¶wšÿ\0lô¤(…d”pOÿ\0[ü\ç=<÷Sñ~§ª’<\á=E\Ç\ç\î¥sß½¹s#–b\Ç%$ıi_pÀ\èf\äÙ²‚E2>|\Çb{“QI\"ÿ\0\Ë0Hõ\ê€d	\éô†m\ä\Ï=j°ç•=zsJ\Çù\Ôy ó\ÍH.#¯¸\íEÆ‹°\İ:F\"g`¹\È\â\Üù$Ô\0ªJe\Æ:\ç\Õ…‰9oz©­­s\Í\ÎH\rŒıkcKñL°¹:Œd\éŸq‡¯üzr\é7&G\éV#D›F\Ö\è¸·\á¿D\äGw8\ØÍ€\Äıß§·_ÿ\0UwqÈ² *A\Ï9\×\Í\Ñù–\ä`“\ì;ı+Ğ¼\r\ãV…ã°¾\İµY¿‡ş\Ã\Ô\Õ\'Ü—¨õ1úR\Óc8ã¯ju1şsKúR~´´†‚ƒıhô~´h\0?*_\Ó4˜¥õõ¤E§ùR\0ü)E §*\0)zZm\ßŞ—ùRş±¥¤n\Û\Å~\Ìı)¦Z+¨\äbzv¦Ó³M¦!JQú\nO\Ğ\Ñ\éT =¾´t\Í ±×½!E\'¥¯µ\0-!<\çKÛŸ¯Zò\äÄ#¥~\ë\ì\0A5\Ó$\Æ8Ì—>‹õÿ\0#§\á\\Š|Tºd²Ldºq…D8õ÷U\ï\ê\Ëcjö\Ğ\Ê¬»¦sü+ÜŸ¯ ù\ï\ß\Èu[ß·Ş¼ƒpŒ(<Ÿ\Ç\Üõ¬\æ\ìmN7Õ’jZ\ÅÎ­022„\\…DUú\nm¬J2\í\ĞrÂ¢·„¿9À\Ï$\Õøø\0ò¤÷¬÷Õ›m°\Ğ\ï)\éµ;\0qšR#\É=qÛµJó,y\Ç-\ë\éT¤\İ+\à‡µ&a-!>™\æ—\åN¯Ò\ã\Êş,dû\Ó#…\ÎÜƒøT•¸£\æ ÿ\0]XHG÷L\æ¬Z\Ú\ï\äs€=kR\ŞÁe Hª\\’)E³%-[ \íÀ\ê1U&…‘\É9Á=«¯K‚\ã<\Õ+\Í5Ÿ†^\Ø\È\niš:n\×9”‘G]\Ø\Ï~\Õr(\Õ\ÎT’zñEÍƒFO\ÍWM\Ñ8Á#ô­¹“M\Z[2ƒw#\Z\0x¤§9§¿\çD%eOC\Ü\n›g\ÈTñs\éF\Â=KÀ¾\'kûagrs<@OV\â:Wng±«\ç\í\'R—M\Ô#™N$‰²q\Üwı+\Ût=V=V\Â;ˆ\È€b£œoc\×ñ¦ô]Q«\éN¦@\íOªP(ş”\n\0\\õúQ‘E½)X”ÿ\0:N˜¥¤\0)Â›J(i§¿ju!¤0¢xştb‰E-ÀÉ¤ı=\Í\'Z_Z\ê±É¸n¦úû\Òÿ\0´”\Ñ,?Ÿz=;\Òzö¢˜…şT~´”f€Ö„¿JL÷\í\ÛÚ£s’Fp1\É\r	,ÊˆX°TI\ïôÿ\0\n\Ç\Ôo~\Ë—W\ÆpNŸ\×üô©µ\è\âË·1\Ä7L\ã<û¼{c+\ÎüO¯\Ë4†i\Ôy\nHŠ&9\ŞŞ§\Øq\Çù0İ‹Œnaø—U{©¶Al4€s\éŸ\çøšÂ‚##Û©4M+\\H\Ò9Ë±\É&§ŒˆaõvÇ¥c»:²$s´¨?Hd.DkÀ\é‘U\Æ@\ÉûÇ ªhƒE‡n8‹€’&¸¥H‚\í\×úT»3\Ïnşô\×MøLõ\êhA^k—~G½XDód¢Oä”p0;\n\Ò\Ñ,\Ì\ÆfÀŠ3’O\çúZ\ÊNÆ‘\Ùb\ÚÀ\ÛÆ¹;Ÿ\á[V:—\Ï\Ü\çÒ¥·³ó§¸ù@Â©\ãüš\Õòp8\ãô®i»\ìuF6(\ÇjSi’Ùƒ\Û8\Î	\íZZ\äq\Î1\Å;\Ê\Îp8\ïš\Â\í\ZZ\èä¯´\ì¡zq\\\Õõ‰L•{u¯Eº³\È8ö\é\\¾§fc\Üq€sz\n\è¥S¡HÕ›˜\ß¨\ê=kEğ1\"µ†\Ç\×üşFD\Ù1\ì1À«v\Ò}¢3p\Äd\Æ+§s—a%ˆ\È\'9R;ı}úşu\Ùü=×¼\æ\Õ\Û\Çr\ç\ë‚?¿qÄ°O9Ô¶WMe\Âdmm\Ø¿\àEJÑ•¹ô\"?C\Ô0\ïÚ¥æ±´;õ¾\Ó\ãum\Øô\Ík§\İ÷­V¦oF;ú\Òñ\Å´\n\0_\åJ)=h \éš)=}=¨©E-\'ÿ\0ª–€qşzRzÒ¯z?•!‰Gù4¸ ÿ\0õ¨¼QF(¦3ñM\î)\ÔW]\Î ô¤ısG \í\éA<P\r‡ó4gñ4\Ú=}{SB»ú…!`ƒ¾ƒš	\í\Ô\Ôn~r½;“\éH23\ä \ã$ö¬\İNñmc$\îf €£¡>ş\Ø\Éæ§½¼û:ƒ.x¹-^õK\íyp£&V\Ï8\à_òiIØ¨«²¯ª¬–\Í5\Ëm·ˆş\íA\ÌnO{ò}\Ï~k€\Ôo¦\ÔnL³œ0p}°­\rsQkû’rDQœF§Œ\n\Éy9\àN{\Ö\r\Ü\êQ²\ãÏ¹©üµ\0³t­,I“\Ç*;™rƒ:‘Ş€$’s“À50&Bs\Ç&«G\Éı1Ş¯\Â<¤,zuÁ\ïH,;Œˆ\Æx\ÅIn\Ìq÷A\çŞª<Ÿ\ân­\r:21\ß`xö¡²’¹<‘3Š9a\Ğvÿ\0\ëš\êô7Ê¶H¸òÀÌœcqÿ\0\Åghºs^]_ˆ\Ğ\à‘\Î~•Ö¢* U€=+šnú„.‡¿ò©1@¥\'ô¬Y²şºwNôƒ\ê{ŸZ+\'¹c\\g=ı«#V²ó#b9\'§Z\Ù\ÍCpdeqŸn´¢\ì\î&5½·Án0A¬ô•¡\Î\ÒÖº­^\ËË™»n\é\\\Å\ÜB2qÚ»\á+£¢³/H|\Âvı\Ç—\ëş•0t;¾ğ\êz†\ÎmÖ­R§ \Ô\É\'›\Ï\0¯\ZoBQ\èu/6\ì\ÙU\ä\Ï>•\éFWÖ¼E¿m;RD;Q\Ò}ù\ãñ¯d\Ñ\ï\Ö\êğr\n\ä^ß˜\ä~\â\Å%\Ô\Úô£óÀr=û\Ó\Åh@R\ÒRôh\ÑI\ëGó ¥ÿ\08Ÿ­/øT€¢ÒÃŠ\é@\Å\Å!¥¢\r¢( _\å\ëA£\ÓÖŒuşuØ0†’ŠÄ¤\Ï\È=…)¨\Ü\ã±8ª\Çg=Oòª\ÓL!„\Êy$\à™©\É\É°\äŸz\Æ\Ô\î~\"Q’ô\É<~^§\ëRÆ•\Ê:ÑŒ|\ÓJp3ù’}€\Î>‡Ş¸o\ê\ndh`¸\ã\Ìrs¹½½‡SZ\Û\×\ïMªHˆ\ìò\ÈA\0}\â=‡#ğ®\Z\âA,‡h;A\ã<\Ö—C¦¶¤2¾~¿Î™\Ó:\ç\'\è\ãŸÆ‹qó™eG=:Ô£Bs\'“n®\Üj O>¤õ4û‰|\Ç>€\à\njsŒsÚ-c%ş•<¯’z/\\w¤a€g\ïriœ„ô$\äf¡\Ãùül\Ù\Â\É\0\â\ìŒzú‘\ì=~•OH²ûT†I8‚!ºB{ı=\ë¥\Ñ\í\Úúü\İ2\â$b^˜?_\éYI\ØÖš:6\Ùmm£Š>O­^\Ç\0\Ó!Œ\0;\åSc5ú¿µ/ò\'\á5.Á\Æ~¼ö©h¤3aü\é\Û:\Ó\Æ)’\ÍHX²€=N+>Vö’@S©\éP¸9\ëT&ñ\rœ\'\r(\Ïò¢\Û\Äs8`=MK¥!{D\Èu{O62\à`ûW«Ç²C‘\È\'5\ê7“[B\àƒš\à¼Ce\å¹q\È# Ö´dÓ³3¨®®j\ÚO.a\è\Ü\Zµ¸\Å0\î\äUMGL*\Ó\È\n+õ8Áµ\Ô\Îer\Û\ã‡(\Ü\ç¦+\Ğ|­!\Ò>eFÇ¨ü\ç^um\"\ì(\ã#÷­?\ß}ƒSM\Ç(\Çi>\ß\ãKbz†Et½f¦¬õf¶\nO=·ù­oó\ÅZ\Ô\ËaÂŒ\Òqõ¥¦\Ñü©(¡‚š\åEò¤¸¢\åGó¢\ã\×Ş“ô¥ÿ\0\"\â€Ÿj)x¢]?´g§½v#Œò¤ô£Û¥!4\Éb÷¨¤#¶)ÿ\0çšğKúŒs\ëLCwùh\Î\Çÿ\0\á\\\á¸û\×=7c\ïú\àş«{#J|\ØÇ®ıx\ë\\\îµ+X\éğ \0”p{Ÿğ\Î+9\èi«œN¿u\æ\İ2©;Pm\0ö\çù“Y\Ò\"\Ç\0~\ç\0{ı)\×|\Ì[‘š‚\êR\é\Zt\n0q\\\Û\êu%b±ı\áû£’*IŠ\Å\0Q÷&„À öóUe—\Ìr!\éT†GÖ¯YÇ’I\àc9ôª‘‚\î_AW¤*‹\Ì2}¨óe=\Õzg½6C\æ>N‚G$}\ê\è\Ñ\åò\ãbG™ %P`Ÿ\Çùş~õ-¤4¯±a/’;h\í#\á2‡û\Õ\Õéšµœq\ì¨\0\Ûük\nK.\çP\îq\Ç8ÿ\0\ëS¤ğä±$\ï\Î;ı+7$\Í\"¤\â+øe\Æ\×RCšµ\æ¸kx®-p	\É‚8®¢\Âé¤„n98Á÷¬İº\ZÅ¾¦°#¯\çP\Ü\\,HXœô\èùJı	”ğÁ÷›‘­¯ª15o\Ü!)mò¯MÇœ\×?%\æ©Áó\n“3\Ít2EUY”w\íQ‰˜¨:gj§dC§}Y•oá‹›\ZGò\Éõ\æ´ƒe\0ºÁ¦?úõ£\Îø&[ßµ\\IncM\åTJGø\ÒsšN&\"&­¢Ióa\Ï$s¨¥½–=NÀºõOj\è\âš;˜\Ë.H\èA\Åg\ßi±G™#lt?Z\Ç\Ú]\êZ…•7º‹d\î=0)‘ó?ºH«º”a/2NsÚ³\íÿ\0\Ö?wGX\Üã’³±<G.p3ò“\Ûÿ\0\×VOÏ†^\nõöªo\Üv\Ï\Ób)	‰\È\Æ\çHRğ6°o-„nÙ’?”\çŒğ1øG\á]ô2e­x_†5&°\Ö$…n8\Ü3şE{Np³@s#ô\Å	\ÛBZ\êig¥µ1:g¯­?ò\â´%\nM’HR\ÒQü¨\ÔQE!‡ø÷£ŸÆƒ=hşT?\n)8¢X\Â=¿­4½\é3G­v£ˆ=z\â\ÔgŠJL\Ó%‹PJ\â2IéŒ“S\Õ\rX”²m¿yˆPx\ã\é’\n\\‚1ş‹%\Ãpòó\Ù}>ÿ\0\Z\ä<Q7\Ü\r÷T“‘ß©\çó®¶\ã\Ìò\Ê| 0ÀQ\Î?Æ¸_†\0±e\Æ\ĞpµeSczkS‘;\ÏrÇ€;\Ó.\Ë;I\Éò§\Ã&&x\0w\ïUneó$\'¶z\×9\ÒG,¸s\×Ò ô¤s“Jƒ$zf„ZµË·© $›Ö‡8Uz¾ô \á÷\rŒµm·\ÌRF\áú\×Am/\ÙÈ–OšfçµKHµQša’\Ô\ÉR\æ\æf\Ú0„ö¨z—\r¨õe.^{…Q\Ğ(\ãfkûm‹û\ì9\çqõ¬‰­b–\Ê8£‡Ë•8,y\İõ÷\ïR\Ú\é3É±¤Á\0Xœ.síœ=jZ‰i³@;J™C¸g‚;Ô¶\Í\Â7\à\çŞ§xd–C.Ø¡$Œ„g·ùúUK¤ÿ\0I>ğ<‘Ş¥¢\î\Ù\×\Ù?˜=r*-i zõ\Í3L“ô«Z´fXW\Óa%fo¡\ÍK\Z\Å‘\Ï<õZ\Ş\ÖÔ‘¦ºXØ©1¢¶3\Çsıj&\í†6@1\ĞTY+c^½G¬\ZB’rV8\×K‚\Z›;³»“¼©\ç<ôô­{1wm§\Ç%½ÔŸh,sAù\è~Õºšrœ¤2Z·Ó£ò¨Á÷¢uV\Ö3T­\Ô\Î\Ónn]\Ë\ÏF\ç‚GCõÿ\0\Z\Û\ŞÚ‘\Æ@\ÈqS¥ºöP ©\Ä[P¢¹®\æ\ëka\âKb—R7¾\áùˆ5\Ï\ï\Ù0|pO\"»\ß\Ùf2ãªx\ë\ßü:\á®\"\ÂsŠ\î£+\Äâª¬\ËrÆ®¯F\0ı*$ÜŸ2ô\Ï5-·\ïl\İ?‰áŠ‹Ñº\Ôu­,\ÛË’¬œ:\í=¿ú\Õ\ë\Ş\ÕV\ê\Ú5İ€Ã…<c¾\Ğ\çS^1¿Ë8\à÷#½u¾\Ö\Â\ê%\ÜLR\á9şT\ã\İÒ‡òïšwª6WK4!ğ@aœõ\ç\ëW‚9÷i\Ü\Ëaııi\Ãò¦ÒÖ€¿Ö—Òš)\Ô\0\ê;RR\Ña 4*( aE\'\ÔRŸşTŸ­†»<={\Ò~”RøÓ°úœ\Õk\Ğ$\n§¨9Ò¬}OÁ\è:\Ğ%¹™\æ6òÍ´Æ‹œóÖ¸O\É,\É\"66\Ä\0,9\ä‘À÷\Çj\ì5{‘b02\îwı~ƒ¯\á^u\â`\\\â\Ê\ÓsB–œ\ï~\íùæ°¨t\ÓZ\ÜÂ¸—…\äp*«¹\çßŸZ{ğy\ëP—ÿ\0\ëV:©#8úÿ\0*Š»ÿ\0\ÕE‚Åı	\ïRB\ZY2@\éU{dı*Í‘ıüc¶\áœQ`:\ëVòs\Æ1Z\Öö\0sP\Ø\ã\é€kn\Ş?z\â¹\æ\İô:)­\nb\ÉF2ªH\Ï5*[7\Ğg<U\ág\'¥HaÀ¨Išú^%~µ™qÏ™5«s1\ĞVt¸<u\æª\ì\Î\ÆÎ÷¶d‹Ìs\È#¦`\"Œr9­\Í\ß õjÊ¡\Ñ\rŒ\ãk‚Nq˜=\ê\ä…@$šˆ>\ã5“\Ø|½J¥6gÊ–0O®*×•Ó¸§±Æ­‚A|SŸ:T©\Ç\åQK\ëßµa\"¬sş …d³›>›=«\Íä·2öZô\ßœi7¡ù\ãŠó¸L’)•\àúÿ\0*\ê\Ã\ìrb¥K\'ò¦\\ğ¼©\âYd?\Âx\íQ°\ØH\ês\ÅO\'\ïQe\ÆXqş\Î+¤\ç\"Ù–#¯¦+gN	-©pU€ö\É\Ç>Àş’ƒ‘\íZzhÈ’<\à1?\çüñS=#¹\é^	\Õ\Ú[e†C’£qÿ\0\ëÿ\0\Z\íP¯\Ğı+\Ê<=3Et3\Æ\âXõ\Ç\èAü\ë\Õ-dó!¸É¢›¾„TV\ÕúÓ©¸ÿ\0\"Z³1Ãµ(üş”\Êp÷¤©i8¥¿aü\èıh¢Ãš)ÖŠ\0\æóG¥Ÿ¯Ö»¬y\àM\'ù\âƒ\Û\ë\Í7\×ò¦ õ\'õ¨f~v\'!\èj7ñ\Û(y\çŒ.§ûQCdùd/R¹\ç^ÿ\0€®.\ë&0Bª(\0¾¾\æ»\Æ\ß\Úp¯$\'\Æ	\'ù\àš\å¯HŠ\æ\è[ƒš\å¨õ±\ÛMhb¿_S\ïL\ÇNõ`¦2OÒ™\Û=‡J\ÌĞct\êjx\í¾¸‘\ç×M]·Á$õ\n:\ÕN\ç\ä!@À5-¡Tuõ\È\çò¨®d\' \Ï•7!y\Å=LË…\ì0+£µ^Ò¹PÑ£z\Ç5\ÓC&@ô®Z\Ìê§ª. €\ïI#¨\'\Î#N¸â³¥•¦\'$…\'€;\Ö|\Æü¤z\ÒòÀŠ£n›\Ï\'5fh\×µrGœ=*Óº3kSb\Ã ;ŸJÕ‹/€:Í±– 9f¯=\äq&G8\ç>•”Ñ¼vX\\’½Gb++Í–ğœ\Zµı«$‡\åC\Äñš„ƒ#–n¬rk%¡C¢\Ôy\Ã\ØñW£¹WMd\ËOLú\Z‰.$·|?\r]Å¥Î„=ù¿Ò³£º\È9©\Ä\ÙQú\ÖR(\Çñ)Í€‹¼²ıs\\ôgv }û\×O\ã\Ëù-m­|–Ã™wy\ìk’ó\íV²´ü\Í\æÇ´\0]¯Ÿ\×o\å]¸xû·8q\Ö\Ä/û\Ì2HÉ©­v¼%^\ÇÒ¡#ö<{Š|G\Ür+sœyúö­=;ı`\î\Îù\éT½z\Õı8\à\Ç#Š‰lZ\Ü\è´t?jNÁe*{v\rş?­zm‰`¦6û\Ë\È=3\Ûüık\Ëô\Í\ÃSU=CA\ÄW§Å‡—“\Ôwÿ\0?ıjŠ{„ö4GOj_Jˆ\ŞüûT€ôô­Ì‡Ó…6\Í}iÃ§¥6”R\Ô‘G\éE\0.3E\'4P3›şt´”\Ó]\Èó€ş”\ï\éÚ—ùSI>\Ø\íM\0’=9\Æ}9¦gzR¶q×Œöâ£‘\Ô!,pS\éOQ_\âi„sÆŒ<¬«7Lß—?pWd^ù¯A\×\ï…\Ñx#ÉF$a\Ğı?\Ïjó»\Ïõ\Î\È\Ï÷®J‹S¶–\Å9H¨I\ÉRŸ¿\ëŠh¼•™©\"\0‰\îx«q\r–Ç±cŠ«Ÿ@\äg9«$ô_O\çT€«*`¯4c\åö©%Öšq\åŸN”\é¼=u›m…°P\àŠê­¦$v¯<\Ğ\ï7X\á\å$öÿ\0?Ö»»|­\Æzc½sVSªŒ¬¬[’Vw\nx\é«9Ç¥Z1)‡8şu©Û´.\Í2ƒ\Ï«\nz»6i—C\Ç\éQ\É\n¿A‘Ö°´ç¹º3 ™¼\È\È\Ú\0n_ñ­\á¢\êI1Œ)a·v\àzı=\ëwM£%5{6>8¥X\É\ì	\Æ*\ìqL\àö\àş5^\ÏI\Ô&€MÜ¤œ\0y\ëZ–~\Ô/\áß¸D¸À\Ï$\Ô8š¦—R-€\0IP=ø¦=\ÄQõ‘AúŠÑ³ğœ“YI$\Ë($*Ÿo_Æ¡\Ôt Œ\ä•X˜¶{Ÿş·øT*wcu º™SjÖˆBù\ÈXŒ€sUşÔ·±ˆ\îzb³®![«õktQ(@}z\ÖÍ²\Ã\ã$òM9ÁAwW¡d\Ó8«ÑŒ\0\r=#\éü\é\Ç	\íŠ\æl\Ñ3€ø….n­£„>•\Î\'\î\í¡\Î\Ğ[/~›Iük ñ\Ê\êItˆ¥[\Ø\ãVö\Úù\0\ç¦qùW9ò›–#\î\à/\ç^•5\Ë:£¼™lsnø\Æ:jvõ\ÆI§GÍ·¾E*&¿L\Z¢	\ã9=AW-O—:ú§ñªq”z¾\Õn3‡ó“\Æ;T3H%©Ùª\Â\İ\Øn>ü\nôm4\æ8×±\çüÿ\0+Î­5wÁ\Úr¤§ÿ\0\\W¡i\\B[³a¨§¸L\×P0GANqÛµ \è)}}+s\ã·ju0S\è°¥<Tb)\0ú)¢–‹š)?\Z(\ÍRş½õÄ¡$ñ]\Ûp\éAü²:Š9\ZNz\×5&:zû\Õh!9\èH¬Z\à\Ä<…$3òI\ãüñøÖ«ğ¯\\š\æu\Ëõ·Ide\'\0÷=±ø\â¢r².»9\ß\ß\Åej\"˜J\Çs0\ï\ÇüûW\åu\ëW¦-;\ÜHr/¯¿Ò«\Ü\æ\Ğ+–N\çlU‘P¾¹¥\Ç\ãJ{ú\æğÓ½IB\'\ß\'·Z”?>\ÜTC¿sOè¹¦€”\à\ÆO¡T=§^*hğ\è\Ê	=\Å1£\á\Ïa¥vº¢·¶\Â7 JƒÖ¸Í™\'±\ë\ÍYK³§^¤\Öû‚u\Ş\\ÿ\0‘ø\Z‰Ç™Y£o\'™B~`?:«xt$=ê–™ªGul“F\İzJ½+\ç,:\Î+™G•<\×1£-€©\ÚÁ·]Fâ•‰\í\Ä\èÀ(\Ë\ÈOn\çX\Â$“Ğõ\"Z°#¸­\ÕN\à\é\Æn\ì\ît\İsOx\äd™Q\äõ«V~#\ÓÀlÜ ùˆÁ w==ºt®\Ş\İxÜ¹¢´cµ³]•Ù‡@8\ÏÖ•\Ó)PK©º|ceQ˜n%H\ã<\ç+ò[IÑ§|Áõ÷<tô¨|¦\Èò\Ó\0‘œv«1[ÿ\0\ÏFÏ ö¬eR\ÆÊŒ£l\ì…\ÂpO«f/œS\ÇAı)\Û8$\×<¦Ş¬c2\0õ\ÅcøT]3L’BxÀªSŠÑ¸•bFv *Œ’{W˜x§WmORQÏ’™\Ú=}\éÒ‡<Œ\êO•iòù’,R?\r¾V-\Ğ6Ó´psùJ„Æ¨\í·$d€HÁ?­-‹¤iqº-\Ï*…ŒŸ\áù\È÷ øšP¦y\"$(9\Ç=°¯Gcƒq\"\èW·~5(¿L\Ó\"OŒ\äÀt>´ŠH±N‚Ÿƒ‚{Jl}	\ï\0«\0,úc$T2–†å›™’Ü«ÀÀ\Ï÷ı+\Ñ4y3j™ã‚+\Ëô\É9y\È\È¾\Õ\è^\Z¹ûD\r\çaÜ¬y\Ï>£‘\Çó\ÍL7	\ìu ÿ\0‘KŞ C\Æ}ªD9\Çn\äV\æ(”S¦ƒGÖşy§\Ôt \âÇƒø\Ò\æ›\ïK@¢›\Í\æsTµW\Ùm\Ñ|À	ôÿ\0<U\ÂzUmFİ®¬¤~ş7/l°\ägÛ¥v³nGı×™\Øôö« ü™S’G~õ›¦],\ÖÁs’	RX(Ñ¾A\Êö^”\Ó\Ğmj-Ô¿¸n\ì\0W›ø\Æû\í:˜¶‡\"b;vıxü\ë¹Õ¯¢µ²–M\Ø}¤l<d\ã·\ã^\\ò}¦i$s‡‘³1ş{V5e\ĞÖŒz„1„@\Ì>P8N\ã\äôö«wR\ì@£®0*|ƒŞ°GI	\äŸ@*9:~8©N\0$ñP¿<ö4ÀH\ÎI\íj~\Ş\âª\Åß·j—\Ì\é\ëh@In\äIø÷§:yr0\ê:‚*!\×#­LNF{Š\0µ§B×—?,8Xİ°£$ü¿\Ï?\ç\İV\Û\É\Ó\ì1\"º²³Á\Êü\Ø\çò=j¬R\É‚X]£‘O§}+¡–\Ê_h]\ÄX\İX\ÊZXW\î˜Ê¼{§q>\İ;²^†‡&xw€\Ù\\òµ\×Y\Ü	)9ô®?CÀ™—§5¾¢!×•‘\éYM#XJ\ÆÁN}½ª\Ä=¿­Wµ™fŒ\ÌU”JÁ}I\Î\Ş2}j\ÌaqƒÏ¥C%ñõ«ñ\Ûp01\ëH\Ö\äh?ıtÿ\0(9\æ%N}*a Œu\íXÌµ°G5Ä:zÓ¦¸XP’p\0\êx®cR\Ôd¹&8Nõo_¥gk…Êºö¦n­¡b\"_¼Ã¿°®.ò3%\à\Ç\È\í]\Ä*ˆNH\0dš\ç®&\Ø\å\Ç$t¿Zì¢’Zµ\ÉBx\ËğXğ«Œ\ã\ëM<€;O–h\Ìp${‹*\îv<e_Ë§\áÛ¥D\ã:fºrTû‡œ{Ò§oZg&3x©#Œñ\Ç8¤R,¡\äv«\É\Ç\0g\Õ^˜=ˆ\ã5$_|`\ä„TÖ·¼J‡kÃŒq\ÛŞ½@†(m£(1+\Ïl%\\€ü`‚¡\Ïÿ\0Z»-UHÏ“1R§•#·×Ÿ\åùT\ÃIö;\ÏE9=¹©“óª1^A.z˜\è2qV£•@?0ÀI®ƒ\rK\"–£GŒt=\éÿ\0\ç¥&1iE\'ò¢\ÇfL\Í-\0?š)¹¢˜ô9¯Zi~¾\İ\éO<úTgùWmU·\Æg½²B\ê\Ç2\Ä?\àC\ß\Ûú\Ò[x–\Î\æ0*$¹ÁG;XVñ\ÜAô\î:\×=­xr¤iDHN:ü¿J‰]l\\Z–\æŠ5XfŒ\Åo*¸\Î6¯9l\ã\Ãù\×*b1\r\Ó0\Û\éõ®†òÁ´ $‡\ç·\ë\\\å\ì\Ì]•dc“\\\Òm½N¨$–…¤óúw¨óşzPã“¢˜O_Ò‘M\ç$€v “\ßŞ\Ûõ \ÔÀ‡9ü©qßµ\ïZp\Î\ßl\Ñ`c\ã9 {U‘\Ó\ØUT\ë\éWcC\è8¦0AÖ†‘­]\è7¦\æÑ“s)B®+\ÏO®#°\ëTyŒñ\ØSd\ê;j=M\r7\ç¹\Î9#$Š\é¡¹\Æ\rrúDŸ\éJ¹Á&º¨zLuõ¬ª	º\Ù÷®vHô­K;…”sŸÖªÊœgb ²\Ğ6\Ó\é\Ô\Z\Ä\Ú:$.Š´“c\ÏEys¡b:dsŸÂ¦Ò.8\ëŒVm›D\Ş/sQ\Ü_G%›\0v=\ë%¼”€`=\Í<Yÿ\0\Ì]‡<ö¬Y¡\ÍÄ·¤“•ˆr\×\ëUDc\éÚ®K‘\ëÚ«\ÜI\äÚ»ô*§\æœQ,çµ»ó#\å¸\ÜÃ·ù\ëùV\r\Ç\îÁ\Ç,SZb6“tŸ\ÄÄ‚\ë\Óğª×°\0a\Ü\à\×]=49¦¯©^\İŒ÷\ëõ§“‡\'¸\àŸóÖŸn?w‚˜=z\ç\ëÿ\0\ê­L	r0®I÷âœ½r1M“’8ÀªH\Æq\Û\ÛÖ“d@\êqÒ–€}q\Í@N\Ç¤ò¥JŸ^0jJ-\Ç/–A\è	\ëZ\Ö\×C\nc\ÍÔŒ?Z\ÃOºA\î03[\Zd|61\Ç?Ê¡\é©K]\Í\ë+Û™‡ÍµvòIÀa×¯<Š\İÓ¯:\à#œô<Ã¿Z\ç¡\r*%IC‚A?\ëøV½´^l!\ãºŒN¯J#&\Èi#°·q$a³\Ç\\1VGjÀ\Ğ\î¼\Ğc\èW~H\ãñşuº\ç\Ğ\Ö×¹\ê?JL\Òş´\Æ;\ßÒŠm.zPñE%€\æ\ÍDxqùÔ´\Çõük¼ó\Ã<‘\Ğb¨\ßJ¨„4˜ô?\×Û¯\åV¤|!\'3š\ã¼K«d}š\ã;K\éúgü*dì‹Œn\Ì\ÍsUk«’”Rpß \ãğ®Z\ã\ï“\Ô÷>µ§\'u!G,‹\éøğ>••p\ß9\îGz\ãn\î\çtU‘ZCøúcµEÏµ<òs\Ô\ÓOó ƒ$\Ô\ÓÔŸS\Å;Âš{úŠ`§¾8§D:÷ö4\Ô\çı\êD Jƒg\áV\"pŠ€œ¸ô#‘ÒŒ”>Ù§°É	\ÏN\Ô\ì\Çn8¨³Ÿj‘0>„v¤cû»øÿ\0\Ş\0Wm\áOCÒ¸¸Q^\ê3\ï“]‘%\0#\'k:†”\Ñt§¨\éQù{ \íVb ıi“\'\á\é\\÷6µ‰a<zû\Z¹\éŸÊ¨\Û\ç¿<\Õ\Ô‘¨‘H—*¡ö¨œõõ?­I³9şµƒ¯\ã\Ô3D\ÊrIô\éš\É\Ö%g†;hòS€Gÿ\0<V´§\0ö\É=+\"ö­d¹\áb\\(=³ş#4ºƒd&\Åa€®0p\0¬Y<°¨;€Hô®šû¯|\ãúW5ªü\î;–9\ì:q[\ÓÕ˜\ÔØ©ú=)\Ğó\ì>ü\ÒD‡‘\íŒQ\ØpxúV\ç8\ï_qÁ£ø\0\ßÚœFGZAGC\ëHb¸\Ş¸ü©¨[88#¦E?\Çašaöõ\Å\0Y·<úVÎ™s:‘\×\ë¸<5^ŠFˆƒœ`ğEK]›:\á\ĞÊ£ °?Lóõ\éø\ÖÎœ\ê›\İyV\'\0\à\ç¥r6w\Ìc ¶s\Ğzÿ\0\á[º,¬@ˆ\äôú~=\ê¶€\Íûıµ\\pm#\×üò\Z\èc<şÚ²\ì!¸\0q\Î:¿€g=ø\ç5²2ešpû¾´Às\íõ§S\ê2)?-4RQE†s]¨\Ï$g·J\\\ÒW y¦n«(Š½>üÿ\0‘^{«\\y·®T\à*\à°\ã>½?\n\í<Q;GfJ.X)\Ç\çŸñ¯>½@\'…xÁ ½ù÷<š\ç­.‡UÔ†[Ÿİ’¼dŠ\Ï<£1\ë\ØU«#^™a’jƒ\Ë\àúc5\ÎtlU¨\ïA¯ \æœ“\ëš$\ãøü\é\Î@¨õ©¿Ò˜G\çL@isùóŞœ½G\Ó4\0o9Æ¦“\Ôdwª„õşU<o˜\È<‘ÓšM€©\'J•#\ß8ªş½©Ñ“¼u\ç¥E\Ûs‡\àõ»\r*C$\Ø\ÏcŠ\â\ã8q¹\ä\n\ëô_õdÀ0µ•M®mOsr\é\Î(˜\åBÃ¿Ò¦#zzóÖ¹®jCnG>õ£¾†³@(x\é\ëV£˜¦?•\r\Å\ßÒ “¿§QHn3\Û’\Åf\ÊH¥tr\á‡˜ú(ÿ\0ñªºP.&ğ|\Â\0üªI‰0\È\Ù\æV€xÀ\ïn§ñ£L<\\/B²“¯?•Z\ÕX÷\Èûù\×7}\Ä\áOE8®“S\è‹İ˜gß­s\×\Ã}Ô§¨ZÚ‘Œö „to~ô\×NOc3O·ÿ\0R}G?J–Hƒ¡#†ñ[¶cb$Ü\İiGÏ‚ ‘œ\Ô\Â5t/Q\Ê{õ\éH\Æp9Á÷©¹VŒûôª\Æ7G#\\ğ\Õd?^€;S.‘¸`z=\é¦Iœğ*\Är\0Ÿ\'<š©$¸Á\êzNI…÷¦Ğ¯coM\Ú\ä†é‘[7¿a¼\Û#`‚^‡üş?J\ä\"™¶‚»€¨5f\æ\Ş7¶qß¦+\'nŠO¹\é¿h¹¸L’´h9\Ùşgü+V\Î\Ë\ÌE3,\Ã$™	?k€\Ó<A\0¹Xu²DÀb2\Ôg¯\×ÿ\0­]¾•d’BZ±®IV@FG\àz~}*“d»t5|›ˆ~d°=A%³ùÿ\0B*\äR—pÁj„3Km Š\ç”c…”\0??óş5#x\İj‘,—õ§S(\íT!Ù¢Š(œ\ÎFOÒš_\0ú‘\Å£=1œŒ\â»\Ï8¥¨\Û«g\\\à\ã Ÿóô¯0ºGµ¹š\Î~£\î±=9ÿ\0\"½:ş\äE\ì\0$±ÀÇ¿\ĞWšø’\â+«À\è9–<güúšçªµ:\è\ìc\Ë7ğ\ã¿óH’¶\0==)|±Õº\ã5úø¬loqò>8\í\ê*794\Ãùb˜OÓµ7üş½€§‚«gœõ\ÍL‡(} 	“”öÁ8¦?B*XÊ“ô”9\îO€)ºv\çšıjÜ±p;’*£‚\ã@q*\æXi&şš¦§®z|v\Ò\Ü‹»op(*Å˜÷\\\İ3 ùz\àqŠ\ì4\\l·`\â8\ï\Ï\çŞ±´\İ9m g“†\0ñş>\ç+¡\ÒcX\ã¸\È8ÿ\0?ZÂ£\ìkM\Z»0Ö•7qùTG¯½*Fsø\Ö£g\è(\èzU”\ÇN´™H„\Z]™\É?½;\Ê\ç\ÛùT8MMŠ\Ğ\ÊC\çppB\ÆX\ã·Aş5\0ÿ\0C¿9ÿ\0W/\ÊI\ìÀ\ä~g¯µXÓ†&d=R5Cúÿ\0õ\é\×\ë.\åaGN”\â¬\r•¯\Ğ~\ìöİŸÖ¹»ƒó\Ïë¸Œş&·o$–‰g\Ë\"œ‡ş¾\â°\å*L¸\åK+¢†e{R7²ôcò«q\Ş÷\"³#.pk@»¥A9<š\ÒFk\Ès\Ã\×iÁõõ¨e|\00Cw#ñ\ëWR|±ú\àqK-¨\Ù\È\ÆF*.‹\å¹IG<ŒgŠ{6Ù³\Ã/\"¬=“D›×Œú\æ«Fy#ğ#¥T]È”lgŒú\çŒ\ÓÛ\Óª{˜°ür3\ÍV\ÄV†L”JÈ‡“\ëM3`=E\ä¡\Ç4\ÉP§;\Ñ`¹f9C‘»;\Z\ì¼7\âË\ät\å]¬@÷÷®<`~F§VB1A\ê;Rq\ì	÷=\ÂÆš-“\ÈF	 ñŞ®\Ù\ÌÀ\ä\çi\ÚóŸLıx¯=ğ¯‹£;m5\Ãpª\í\ĞûzôP0W À=\È÷ı%t=¥¼z\Óı*¼gzt©\Î=*®!Ù¢‡¥X`\ÔR‘ƒ\Ü\Í<¾Nk\Ä\Zª\é\ÖR1p$`B¨\ê[Ó­w7evpE]\Ø\È\×õx¡GyV3¶(\Ç;\Ü½ô^Ÿ‡Ò¸e2¹y>ñ9\Í>öö[—\Û!F\ÕöPu\äŸJä”®vB6DŸ1°\íQ¾\ÜúT\Ä\á2zµVg\ë\Ç>õ%|¹bšı=\Ç\\S\Ó8,y=½©1¼~<“@c\0ş´ø\Î?J$@\ß\éM¨\ï\Î(bÿ\0\éJ$\Ôò)²G°\ã¶:Ğ”e$8\ÏSÒ¡‘€z±\äJ|`c\É\êjÁ„$ \ã\æ\'½!\îV^d‹¿¡#Šé¢·Š8B¯@A8\0gš‡EÓ¥’mŒŒŒÿ\0Z\Ü\ZsI\ï\æf\0¨\à¨½«6Í£#z\ÜO\Æ<µ<üg\Ğ{u<úzğum¾Hò’ÄüªÄšrG6xŒú‡<{ñV¡·1FNõ”™i$=`v•:O ”F*tˆÔ•bQ\Èõô§\0´À1L.GN¾µ%t$1/8\â£p\0Ï¥!•¿JŒ»`§5ZXnP¶EK\Ù\ÇbIŸÿ\0®§”{\éU¹K¥“¢\äƒ\î?ú\ÜU\ç‹#ğ©+\ÔÉ¿ı\ät#¦k¸O»\É\Çj\ê\ï-¾C\Üñ\\\Ì\Éû\Ãõ V°fSFI¼ôúö­«ü\ë ?ˆ6Ö²&O\Ş\Ù=\rm\è§÷a{y‚´›\Ò\ä\ÓZ–-vœ\çiŸş®G\áD\ÄùşGP§w\çüóO¼­\æ2/B\Ù#Ò›/½\Ï.W#5…\ît=\nÚ\â\ÃUnX\ãµe	7\"œ‘Á«0’r:éš­k.\Ó\Ğğy\é[\ÅY³•\ÙrhüÀ¶z\Õ	8A\ÍhCÔ¡\äcz©u\Ç-3+Df\ÈRfÙ§½V z`\0ey\Èô¤\ì;‘úS°‰cpx<sO=I\èj\Ï\è*O¿y\Ïl\Ñ\Ø{k¿ğ7‹q2\é\×ò¯\ÄR\Çû§\Øúı?<\ädt\í\ÍM…H \äÚŒ“\è¤\0ô\è*A\íÛ­s^\×ÿ\0¶ôA\æsq	&Ns\Ç~¼şFº@z\Ô\í¡D{QMP)q(†2O%Fq\ï^i\â;¦¹tü¬ŒR/p:·\ã]—ˆoZd\ÅAa€IÇ·\é\×üšó½j\én&(\ÙDP¨Qÿ\0\çúWEYt9\èÇ©˜Fó\è\ëH‘õ©P¨<nô\âı\Æ\0¯­`t¹8=€}j±Ãœv©%œ÷\ç“Ò£‚OQ\Ğ\Ğsô·JT\ÇaH9\'Âœx\ã½\0C)\ÎGn•c\çûT’ú…Œzô`Ç¼P0j0›*[fó\È#š’Hø$t0\Ô,“ªõ\É\n·{ş±cÊŒ;UK$S1bq´˜©£,\Å\Æ[s`ZL¥\Ø\î4\Ø|«;q\ë\éô\Í_$Œƒ9&¡µ¸h\ÕS‚€¤`¯Ö¦#\Í%„“\ë\\ò:#µ‡ óc\É\åqÀ5b\Ù÷ r\Ø’A\Ï$sõÁ?ˆ\ëÖ¢H°8ö¢=\Ñ\ÈFx?6	\Æ:Ï¦\0ô4„Ë¡\×#&¥Ls\éP¡ÿ\0\ëÔ¢\â>}½j3jœô¦b‹\Z\\®bü©¦<\Ã Uœõé‡¡§bngF€H7©8 ó\Ûÿ\0\ÕV£\ïr\ëÁ\'¸ÿ\09ıj7O¾1\Îr­M/(%C‚\Í\î?ú\İj\Z(©xvB\İ\Éb¹›\è„n¤r\à\â\íúğk¥¹ur‚zó\Ïù\ìyô¬]I	¶\ã`\éW	j\æ\r\Ìd|\Ü\äf´ô<;•\ês’*•\ÊoL\ã5k@“ºŒe†æ´Ÿ\ÂD>#t\Û}©\Ï¬g\'<\ç\×ô¬­Tµƒ§\ä\å\'òEu\"¯œd\Z\â|[~%x\à^~föÿ\0=YRM¬¬`J\ì\î\ÎNKæ˜2;\ßÖ&F\\ö ±õÔ[š¾ğ˜sZl\Î9V\çüı9¨bq\"¤|\Ïs1ş}hœ™BqéŠ‡=*Á%{\ã\"«¿\ê3M \àg¡\íR#ş<ñQ‡ÚcÛµ0/M\Z˜Q\×;[\â¢C€=ùûy¾Gø\\tô5şO=)\×|?\Ö?³|C\Z;\Ç\î˜§\ëø×µ\r¹ö\Æs_7\Ù\Ê\Ö÷	\"}\å!ük\è-2\éo4øf\ïPxúf¥\î‡¿•ÀEXñ9·²’G{‹†\à18U\à§\ç\\L’³x\É\Ínxeò-\â$Br£¸=?ˆü>•\Ïs\ëÚ´›»\"\Z\"D\r!õa\Ğ\"rFq“UP°\Ç8úSœ\äzúT–#’\ä\Ğw¤\åÓ\î\Ğù\éL2p~şô\0ø\Æz\ÒÉ€S”‘ƒÀ\é\ëŠ$CÏ±\æ€#ši\ëÊ€\ïŸ\Æ{“@!Ø¹\çRy\ÛÁ8\æ£tù®*\àúz\ĞÀ){\Çv\Ími±š\Õ{\î‘\Î+\r>ÿ\0\ë\Ít~?h½<…_j™l\\w:Ù­¼À?’aÀa\ß\ë\íRÚ\à˜p\Ê{ğ©‚d\Ó\ÃÊºE\àH6?ñ•`l‹Yüó\Å1\Î\ÇW?w$1\ÆpÁüG\'ğ´Ÿ7¨÷\íO\ê<ñŠÉ†\îAVV‚ qÏ¸ô©Gj‚\ßnÀh*\0 g\éÏ¹\ëÇ¯•`Q°\â8)@ü\Í \è?\ÎiÂ‚†Ö“ô\çÿ\0&™\Øı8¤Y?\Ö\ÄôşTBø„)şŠS\Ë\Ü\Z€€‘\é\Æ9¬\Ş\å\"İ½\Ç\Ìœ€N\ê=;r?:§yx\åùs€p~+IÑ¼®He\Ï·SÇ¶sTe|$\ã¥)#˜›(€\0gÃ£TŒ7!†r{S5(ü¬¯pG>•Z\Ê_³j¹ã‘œ\Ö\é]l\Î\ÛU¿\Â\ÊI˜\áUN­y•\Í\Ó\\\Îó?.ä±­k\Ú3,PœBƒ\â>¿‡ø\ÖúÖ´\ãdc96\Å;{q\Å\'\éIN}j\É‘ßõn\ß\çG\ì@\ÈG¿§<\Õ\Û#Ä™ã©©`·\"<H:ò;\Õy$\"¬\ã|ş\È\Ïôª\Ó\ÌxÀ\Í8ƒxşt\Üÿ\0…8=3Ş™\ë\íU ‡G!C\è3Ò¦|0\èy¨Jr1\Ô\n‘–¢\É#\Øòk\Úü\rx.tpÄ•Ny\Æ8üÿ\0ú\Õ\âp‚ù\ä/|š\ì|\r\âE\Òu%µ¸‹Y\ÈR\Äğ§×ÇR\×PLõıÿ\0SEH£#\å\Æ(¥p¹óU\åôš•\ÓM9ÌHúcô\0UYcò\È\'ô¦d‡yô©\åJ€ÿ\0:\n¶$Wş!ßš\r5\Î)\ï\ß\éù\ÑaJrıx¥>4±\ä\çŠf\Â_\ß8Ç­O½W°\0z÷>Ô²lõ©FÑ»#!†2{Uy\à\090A\ç\ß=)˜Ã2:ı(ñùt§?\ßL}h\Â\0Pú‘ÒªH˜\Ïlœb§ó0=sD\Ñl@\ç®86Q½ø\Å]²\Ôd\Óg†xO òñz§ú²qÁ\"‹’¼\Ğ\n\çªi·\Ñ_Ú¤ğ£‘\Ü}}Á©/#&1\ê¬?øf¼û\Ãz\ÛiW#q>CH¾²>•\è†X®m‘\á`\Ê\Ä0#Ea8´\îm	!ı‡~)©\×\ĞûT\ŞYÀ\ãŒSBu\íYš\è–\íù\àH\099ã¿¯°\íÈ²ÿ\0®ª¸ «¼„0#?‘©ƒ\'o*NFx\ë\éôôúS¹+r\È\í\éAÿ\08¨ƒ~Ÿ¾‹—`\'ó¤4\Âø\ÏÒ£ó\n›…†¿Võ\ï\ïU\0b\ê¸b3’Go¯±\àq\ëR\Ë&7x\Ç\å—#\æc€}¿.‡ú~R?!e<·€?*Î4Ó€£\0u>½ª\ì\Ò`Ns\ëY——m™8f÷\Çÿ\0\\Ò®Æš$cjEeºr§*wÿ\0õõ¬\Ã\ÔCŒ\Ó\ï/‚oƒ#G\\z~5R97œ\çŸzê‚²8\æ\î\ÊR\îF±¦\Ô÷C÷\ç¿B=û\ÕÒ¶‰½N¤şT£©õ§¸ƒÒ¯B<¸N=\ê¤c\çéš¹p\á \ã\ÓJ–8‘D\êI\ê0*£œ¹\ì<Õ‡;-Tt$“U¶7q€zf„SÀ÷¦€{õ\ïN\à‘“\ßÓ¿w‚Ilı?úõBZQ\ÇÖ—·CKüóH¡\éüªhßŸ×š€v\ãš\ßğ¶&¯x$‘Hµˆ‚\Í\Ów|¯ù÷‰5v8«³\Öü\'©È\Z²K\×\ß*\Æ>b¹;{~Cğ¢¯i¶!,\×z@ö¢°\çf¼¨ù\Ô \Ï4„cğô¦ü\Èy\í\Ôt§p\ã\Ôö5\Òd,@—Ï©\äS\î\0÷4[Œ8\ã¡\ä\Z.Ÿ$zh\èh2\àõŸ­;˜õ\Æg“\íNr§\n\Ç9ú\Ò\é´\Û~ö8ª²?_\\\Ô\âpN2¸\ê*¤€\äñ\ÎqŠhC\ÍNO\Ê=\0\ÅVõúsS!ı\ÉÏ¦(D=óN–MñäœƒÀ¨sòc¡¥“¢­D\â1\ÏSš‚^d>ŸÊ¦wÀÓµC\Üı{\Ó@<ö=«s@ñšk¬–{ryªõ\éş‚{R\ÏøP\Õ÷´\îf³ºŠú’	ĞŒ‚?¯½JS8\äšVµw¤É¾\ÚBTòÖ»½#\ÆVW\Èå…¼½\Ã}\Óô?\ãX:}Q¬jw:,MDm€|\Ä)\Úr\Ç9Ÿ#ŸN½©ğ\ËÀ<n¬‡£)\È?J{¢‰;H#nOnŸQ\Îzj9K\æ[‘¾\áÓ‘J;ÔÓ¶*3µ3“\Ågfh¤†¿8÷¨ˆ\ë\Øz\ÓÌ«‘\ÏV\ëQ¶·O\ŞNŠO@[ıi(É‡:D3\äöU$“\×ó\ç­\\b\ÄA‚Cd~ĞœŸÆ±\"\×m\ã†[˜\äwû03 \Î8\\û\Ç\åXş.\å<¨TEqMh©·¡¢7õZ4ri po¯øW-ª\ê¬\ä…lŸQşz\Ö|·\ÌrweV<\ÕG“\Ì$““\êkZt\ìg*\è?\Ì\ëÜŸ^õ-³\á‡qU}zš.üñZ\Ø\Êä·£÷€ö b«õúÕ›”ùó\Óú\ÕaB(£?Ÿjÿ\0®“š¡G\×\Ğv©d“\'o^\æ C\Í;şZPRµ†\Êù~A\íşNiI=sN8\Éõ=\é„uştĞ„\ÏJqıi R\Õn!@§sÏ¨¤\éJ$\02x\Òv\Z\'µ†K›˜\áwH\Ä\0şµ{„tÈ­`×¨\\³üF¹/\è\Â\ß\íw+‰\äü#üMwÿ\0?Ò¸jURšŠ:U>X]@m¼(\âŠ?\ÏZ+¤\ç<›\Å~¶¸…\ï,qˆ¹*\çS[\Él\å$R¬=xü«Û¯SÌ²OFR+Ï®l¢¼B³&Nx#ŒVÕ½\ÆeE¹-NN\ÖF»<ô4³¿¶pz\Õ\ë\â\ÕÌ‘259\ã¨B\àuZ›§±§-‚\İò\äÇ¯Q\Ó4@>§\ëD¼@(ö\×2[6\àx\î­]V\×8\Ü0Ş‡\Ö_ğT\ç\ì4fò\Ğ±¯\ÔU7sŞ™–\äd\Ğ9\ë\Í+,@?•>N$<c\n.\Â\ŞôË“û\ãFz\Ğ\0üûd\ÔcŒ\Ğ9úg¸ª\Äô÷£M/\èhş´X¡ğO8£Ö“ğ\â‹j\Şş\â\Ù\ÃA3¡‚­Š\Ñ(Õ\í’Aœ\ã¿\ç\ïX Sÿ\0Â‹\Õ\ë#\Ô\"9m®JAqÊ¨0vö#§bü¸T$\Ôß­Û\è8\ÇÓŠu¾\íG\Ãs@ldóÔ‚\0°ó\îLc[¯lc\îjl»¥\Éu;™¿\Ö\\J\ßV&«Y\È\Ë\ÏS\ÍGø÷©\ì­Zòòt\Æù(\ÉÀ¹öõ4ô@Z™\Ö\ÛJ5\Ød¸c#œ¨\0\Ø<3\ÔU…\ÆG>µgQ¹[›\É=\â;cW9*ƒ€@À\íL†EŒö õŠFCÊ\Øÿ\0\ëU£\n\ÈIŒdg \ëU\Üc?®xª@2§„®x*rG¯oğ¨l~„\àş‡Ş˜+„WHäµ@ğ}óZV¥d€¯^0sş~•J\â-{J”2?CHh\ç\Ôs\Í;ˆ\Æ)\ÎIšg\é\Ü\Z|c~GC\ß=\é1ëƒœ\à\à\ÓzvdƒÒ™““\éŞ€t¥®)^zÓ1 ’N\0\é\ŞÀ€u÷®\Ï\Âşò\Â\ŞŞ¯\Ï÷£C\Û\Üû\Òxs\ÂşVÛ½A~~±\Ä{{Ÿğ®´qô\ì=+‡_\ì\Ä\ì£F\Şô…~‡ò­O\Ç\Ï\ç\Ï\áYñ\×\"¶ü6˜O±?\ÈW-fki¥\âŠO\Çô¢½C\Ï\Ô\åe\æ6r1\\110H\ÇNõ\Şúöú\×z5…!\Åm‰\Ù36\í\Ä3\ïØƒ\\Ÿˆ,ş\Ïu¼#‚+«…øzU]n\Ë\íZ{`|\Ê2\0\í\\Q“L\íqº8Ç²–8Ä e¡\ã\ëU\Ü\àŸN¸­K	‰­\Ü\à\î\ÆnqVn4˜üğ¯”IU‡c[§©—/c	ş;\Í$Ñ€\Ù^GqW¯´ß±\È6K¸‘‘ŒTDÈƒ¸\Çj»“n\åC\Øt=\éz~t \Í+ûv E¨]|‚=óQÜœ Œ\æ£Y8ô©_\çŒ¤p{Ğ€„R“õ\ÚQj„(ü\éÃµ7<Röşt\Äõştÿ\0U\êW\0õ£&óšo4\\f–‰|¶\Z¬2É·\Ê\'d™]À+øs\ĞTz­‹iÚÅ©\Î#o•ˆÁe\ÆT\ã=Á\ã=G5K§Ö·5!öı\×RR\ZhÇ‘sŒ–8û¬x\èWÿ\0=ú€bzÖ•şe{|c\'d~Lm´ı}¶	\Ô­f£¾kWU\İeae§\Z0g•JC¸¢ªşf>¿^‚şÔ£¯µ¿¯z\0TvŒ‚\èA©M×š1\"‚GF\ïø\Õn!@<zcÒ’j\ëÒ?Z==h{Na²A\É$dSî¶¾r¬2*3\å¸ÿ\0h€*À\É	\á”\î\\÷\ç=@¥\é\éC\à\Ò\È\'°Ÿ\ãù\Õh!¿­\'\Ü £;S\ÎH¦\ãŸnù©\Â\\[J\0¸Œ«Œ|\é\Æ~´\Óm?»•H=3\Æ>µ=\×yiª?k\ÚøZ\Ûx2H\ì3\Ğ\03Y\Êj&Ğ¦\äbE¦\Ï)\Âc\ìA\Åtş\Ò`±\Ä\ÓDòO\Ğ^\é\ï\ïùVİ…½¤a ‰Tcœ¿Z¾@\èö®J•\Û\ÑT\è(\êÆ‡c\Ô`š	\çÚq\é\Î)¾•\Æ\î\Í\Ğ‘õ®›\Ã\Ñ\â2\Ş\Øú÷®gp;“\é]~—f÷«|:¼®aˆzX\ÒŞŠ3Ez\'§*\Õ\Ä\ß\ÈJ\çşº\Z(­±;#7\Ä\ÇÁ\Ğ}*køõ—\éEÁ\Ôô\Çmÿ\0!\'ÿ\0®¿û5t7\ßz\Ó\êh¢º:™-Œ\Ícıbı*\Ïú±ô¢Š¤DŠ\Ò†Š*ˆUˆÿ\0ÕŸ­P€†—ÖŠ*„©\Ã\îš( AŞ”t¢Š\0^ß…\'ñ\ÑEõ»cÿ\0\"¦©ÿ\0]cştQ@ŒEû\Ë[^.ÿ\0‘’÷Sÿ\0@Z( 1N=MP¥ \èh¢’ŠO\âQ@\É\áûñÿ\0¼*\ëÿ\0\ÈIÿ\0\İÒŠ*zV\ãø¾µø\ÑE@)¯ŞŠ(`tz?ú˜ş•¿EúQEq\Ö;¨\Zıóô©\ÇZ(®N§P\ãı)Ÿ\Âh¢ Hırı­všgüƒÒŠ+£\r¹ÍˆØ·EWq\Èÿ\Ù','2025-02-27 04:33:36','female'),('80ba0d30-e019-11ef-a1d1-005056c00001','80b844be-e019-11ef-a1d1-005056c00001','Mihret','Edini','nurse','medical','mahider@gmail.com','0900130082','Part-time','2024-12-31',0,2000.00,'night','650e8400-e29b-41d4-a716-446655440003','Addis Ababa','0900130082',_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0\0ÿ\á\0.Exif\0\0MM\0*\0\0\0\0@\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0ÿ\Û\0C\0\n	\n		\n$ &%# #\"(-90(*6+\"#2D26;=@@@&0FKE>J9?@=ÿ\Û\0C\r=)#)==================================================ÿÀ\0\Ó\Ú\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rğbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0\Í$Ñ“\Å\æŠò\Îñ‡\ë@¥\"St\ÍH	õ¨\ã©EH\n	¥É¤\ê@.M.M6Š\0vM.M%-\04¹4”¸¤“FM&8¥\ï@M4b’˜M5\ät\çñ\Å0\Í\ë\Å;É·úš`”g\0ş•˜‡«d^Ô†Q\ëùS\å–|\ÒzŠ†Iˆ Æ£¼\â«\Í.	 Ğ•\Âö.}¤õ\Ç×”\ÈG<b«€v?Â©I~rQ#ù\Õ(6K•1r I=i\É~©×¥cù§\Ê.äœm^*³\ŞE\ZC~\è\â¯\ÙÜs§*ÿ\02·4ñr\ØùA#¹ô®Gû[c‚2\ç¾\ê±¸rC>=ˆ¤\é>\ÃS]Î›\Î$ó\ÓÖ—\Ì9\ëùV,:ª\È‰ó\Î*Ğ™ß”*ø8\íY¸Xµ#AÜ•V\äô\ç½ š@@8É‰\0€{’8¤•‚\å´?  “ƒLÀ\0ô4\â}\r+PO\ìšbv§\Ò\0É£&ŠmšLšm:€ši&M bd\ÒfƒE\04h Süš2i( É¦\ä\Ò\ÑLÉ£&’Š\02hÉ¤¢€ša&i†€\"$Ó²i1ÖL\îi){\Ğh†’@$u(¨ÓµH)\0ú)>\nZ@%-P\Ò\Ò\np4\0„pi\âx\ÅA$¾X\çR@\ÉI\ã5\Ê}*”Ú‹r}¬\éo¥|ñ_›¥i6C’F±¸\\ü\Íøf«\Éssóøô¬9oT\ä1R\Ş\Ü\ÕCt½}Mj©\æt©|ƒ#r‘\ê)şr¾0\Ãğ®a.QqP=EIú6\îR}\éû{C£{ƒ;¹\ã·™-\ç\ï	\'\ä?Zªu&(C’{ŠËšó\0óœ”\ãJ\ÏR\\ï±«5\ãHr¤„4Ô—?ÅŞ²E\Ó?N\é\Â\ç8=l¢‘l\Õó@\'œQJKŸ@{\n«ö™M)‘\ÜrF1M0%&I\0Œ(\ÆI\Æ*W¡g¡\âš\ä¸\È\Èt¨¶78-ÏµP\ä8z\Z»\r\ãGónb:z\ÖY‡C¨ 	#\Èß‘õ¤\â\à¤\Ö\ÇK®\èü7¹\íW!½\àœ9\ã \ë\\šI”Áb~ù©á•£#Aõ\Ídè§±¤j>§`%`:†#Ò§IAÁÇ¨®^+ùrˆ,8\ïøÖ­½\Ò\È\0c´ş•„©´h¦™®Œ\rø\Z’³c¼1’²|\Ã\ÔU¨®øV*\ÍÅš&‹›\é@\"Š‘…:Š)\0SqN¦\Ğ\ZZ)´\0P( S\ê(¢€\n(¦\ĞES(¢Œ\Ğ\Za§ši \Í:ŒS°)€\ŞôQE!Œ PiE1%<S@§R©\ÔÁKH\0Sé‚(`-¢@	ŠBBu¥\'šÏ¾¹\Ùò!Ë€vªJ\ânÄ·©?7OJÇ¹º39\Ü[‘x\ÏÖ\ä³\åÜ’\Ù\ê{UK™#*¤³Ãµm®†mšR‚Œ`(¬û‹\à\0sı\0¥˜\ä…\ÜYğ)n3\Ëz1])XÉ»•œŒüõ¦Xt^=MX“@\ï\ëU_\ïg‰«H–\Ä3gƒÂ„v$\ã9¦oL«Ÿ­4»pN=08§a\\™%`üô\ïP‘½\Ëtj\Ì0‰\\\ä\çŒ\Ğbo0§¡ü\ér²+rq× §\0A\É<\ç¿©#Ï¨\êj¹”ƒÀâ˜‹õÂ‚ß…N0AÊŒöªQË\ìl\Z±sŸ3¾x\Å–ãŒ¸\èŞœcT\'$~\'sF0<À}³ŒÔ…\Õñ’}9\Å;\n\ãq¹Ç˜G¿\\\Ó\r©9!ş”÷@ù\n9>¼Ur`€cE‡q\ÖA\È\0÷\â˜7¡úv«\Ø$\í\Å9d$\èô\â	\È8&sß¥\\ŠFòNW\Ğöª Bø\0\í>†¤18\ë×¨©qOq§\ØÔ†ğ ºt9\æ­\ÄQÀ?u»kH–^TG¥H’‘Ê’¸\ê\"°•>Æ±Ÿsz;§Œ€\ãƒÑ‡CWbH2+D,ò¼d\ZÒŠU0Ÿ}¿\áXJ\Ö2F(¨a˜8÷\î\rMÖ²z\Z¦Ó66M\"€”Q@ C¨¢Š`\Úu\0\Ú(¢€ŠZC@i¦œi¦˜	N\æ›K\Í\07½ôP1¦KJ( ©*1RT€‚–Šp ”QJ:P\Æ”¸\é\Õk‰V4&šWb^Ü˜`Œ\0¬\ÈÁ/\æHN	\È¿ıj	39g(\ésP\Ít±’rF\0¼c\Ñ6-\Õ\ÃÀ#\0ö\íY2J\ÓHU~U\éIy& ¡9\ì)À,q³nGõ®˜Á#\î1#T±ÀI\êj¬·\r’#‰¢IL¼\à*	tóÖ®\Ä\Üd‡\å\Ë>\æ÷\íP”\'—8ô\ÍY¶\0\ät&£1\äÜ\ç5B+ñü4 g©ü¼\ä3@\0s\Éô\Å\0Z¶‹ |Ãrz\Ó\ä\ä³Ojµd\"òK¿\Û\"«\İ:\Ù#ŞµK\èg\ÈwœÇ©¨° òqıjm/9<œv¤’\İb9ù»(\æ¨D9Q9÷§‹ƒ\Æ@8õ¤Ø€ü\Ù-\è;R‚¨zs\í\Å±b9œùcŸÂ­Ç·vJ¿J\ÏûF:\0¨ \Ş8)üI\Í1\Z¿»9Á\ç\×Ò£’ÜO ÷¬¡s!û\ÎpO®*x\ïU;³fâ–£\Ğ|¶\Ìú•	%8\èj\Üwñ¿z{Ä’ƒ\é‘@\Ò\\\à?>†¥I¢œCL’Ù†pp8¨\ÒB¿)\Ï^‡µ\0fÑ‡cŞ¦wh\Îøÿ\0Y °Á\'#µY·¹Pp\Ã+ĞŒÔ´ReÁ,o‚\0ê§š±­<·=9‘Y\ÒGÂ¶Pò	©bŸa\Ç‚k7“5\í\ï›xV\'w|\ÖÅ½\ÊÊƒŸ˜u\Î\È\Ü÷Vªxn$‰Á$q¸w¬\'Næ‘‹4U;kÁ!Á?[ŠÁÅ£d\î-R\Z@\'jQF)EM§Sh\0¢Š)€Si\Ô\Ú\0))i(\r6œi´À)i)\Ü\Ğ}\è¥\ïEN’œ(\áRSµ>¤EZ(¦d“\íü\è\0‘À¬\ë‡’9?Zµq ŒOMb\İ\\oÀ\ÎO=«Zq¹•‡\Ü\\„Œ\ì¦3\éYg\'\æ9$ğ=ÿ\0ú\Ôù&W*Œ\Î\ÚznŒùwqŠ\ì„lsÉ\ã\Ë@\ÌN\âyZ@d\ÎXm\ÏÖ¬0grN1œ’z\nO*\"r\í\Ç^8\Å^„‘\í\Z±©=©\Â`±\Ï \Ñ$À@¿V<Uv-\ÎzhB\Ípˆz:bª\Ét™\Î\Şµ+’z&;z\Ó|¡\İ3ŸS@€\\©=	ö\éR‚#vfÔ¶Qó`ãŠ¿o8\È7Px\Å&\ìRW$¶Ş g)\ã¾)$¶ûD\äö=;\Õ\Ãl˜\ÄmÛ\ëI´ƒY†xÁ¨\æ[–¢ö(F\\ n\Ï<T?c`Nı\ÌORJ\è!\Óy2)\0ş5`Y¢“µ7m`TûDW³{œœ–ù8HAÔ‘É¨M´œ\à=k¬û¸8Œ\ç»K’©–`OrW´H=›g\",¥ ³g\0S~\ÄÀsÁ®©ô\æ\0ğß$ºc\n¡\ë\ÈS\çDû&rR[\ì#9\éœzÓ’Í¶y›&q‘\ÅnM§\ç\å\Ù\ïŒ\ÕYl\ÛT9±\â©I	Á™\áÿ\0ÄŠP\í\à÷õ§In\è\n\í\0:¯$eSœr=\ÈjÆŒW(\n\Ø\Ïbi“Z³\Ñò{ƒY\é)ŒÃŠ·oz\Ø=(µ‚\ä(\í!¿\éS¢,ƒ+\ÃNõ;ùwqÀsÀ5_cBpG õ\é1¢õ½¿\ÚaÙ»\çAx\ÅB\âKrUùZb;!¦w(\äô\áq\æ¯\È=jM\r2\Ä2\à`\î\ÚzJµ›>÷>ısTPÀ<>7ÁÁ\ëõ©j\ãF¬sœq…\'‚;VÍµ\ÂÈ€óW;À\â6\ÄúUÈ¥hH’;5s\Î°‘\Ğ\ÑP[M\æ \ç*z\çj\Æ\ËP R\Z¥ \nm:›LAIŠZ)\0Si\Ô\Ú`”´PM4Ó%\Í7ÖŠ\0gz)q\Í\0\Úp))\â\êh§R\áKH)Ç\ï@\r\'<Æ‡\"1KŒU;Û€Ÿ ?3töªŠ»°›±Búä»•­c\İ\\–|`pO{)\äUA?{–?¥v\Â)#R»\Ê\ÂÄ‘“M9.¿1S ½W¸˜9ò\Ğ\r«\×Ş¥óDP©\à?lö­+\à\r\Ã\ì\æ©\Ë3\Í&G`)	–\æPœI5n+U;±Œe­1LnPñ\ĞZ<µ„eÀgnvƒŸÎ¦w\ÇÍ€	\à\Ç\åTä¡\Âõ=I¦K#¹G`)\'9?x9\ÏV\Æj\äQd‚ª\Í\îy¤İ†•Å†8\0ı{VŒVe\Ï\Ş\ã<*k+l\Å>Õ¯\rª¿&°•CxS¹Z\Ú\È\'RO¥h\Ãj„«\ë\ÜU˜­U\0\åãš´–Àr¤\ãŞ¹\å+*	\Ò\Ù@”\Ù-°2˜\ÏL\n¾\ç?ÖšñÁ\Û“*È¢‘Sp:TR§ª‘ZA  Û©\íŸZ¥\"leùLp0Gza‹=wö­9mx\Ü\0\È3Ö H\İ\ÇøŠ|\Âq(Kl%\ê?•Sš\Èò\0\çù\ÖĞŒyú\äT2¦Oó¦¦\Ñ.	œ\ìºqş\êóß­S›Jc‘Û¨\âºw\ÔÂ ’5~\0ú\æ­Td:h\ãn4\ã\Î\äu\Íg½»Dr2Ò»i­£\êW­f_Y«ôfµK˜ÊŒ(\æt\0c§\ëWc‘fLÿ\0Öª\ÒÛH\Î\ÓÖ›’P}+K\ÜÉ«L[1$}:U\åE\Æğ\\j¹or¤leO\\\ÔWQ’(Ã‚?\ÏZ\"i\Â7~‡Ö¬\ä¯qY\Ú7$g\ÏÒ´\í\æó‘s\Ôw¤\Ğ\Ñ<o‚9^µz;•—\Ç5œ#ƒŸ¯½X(y‘\äÖ¡«”™­gpÑ‘ƒœqÖµ\ã›8\È\àúW7\Ø\Ãzñ[V2‰S\ät®j‘¶¦°w/eN6ôò* €z0ô§‚ysX\Z¢Ş—\0”\Úu6€\n(¢˜†\ÑE\0†›N4”\0”´”´ozZJZ\01N”¢‡\nx¦OQK\Ğ{\Ğ*)$\ÆpJ¸l2\æ\ã\Ë\ïX÷¯\å’X\å\È\ìzT\×W\n\\¶~\ïNõ,†g\É9ç¯­uRŒ\ØÀåºŠeÔ‹oKfFÚ¤r±¡,\Ü/\ëY72y¿0û\Äô®“\Ñ\ÈË–\ãı\ê@ZL–\Æ\ä\ÕHÏ´\0Æ¬9P\08Ú¿­\0OoŒ‚Wjö3\î}ª\Ä\Ò	\Â7\Z«l\æl\àS\ëR;¨8{°\ì)ˆ‚]±¡fİ¸;\ãÿ\0¯T\È=ó–\èj±s·y\\\îU\äŸSNµ…¥;ÛœóI»*\â\ÚÚ´„rzŸJŞµ°c\îŞµ\r­¶\Ìt\Ëv«¡³·=ú\Ö&tÓ¦†CfF\0\'¨\Åi\Åj¨´B˜\Ëc\ØSŒß­s¶\ÙÒ’C£F=\êT§ZTL˜şµ(O–\Èş‚“gJ±²“a W*˜ñ\×ğ§Æœ3øÔ¥?\Î)S¥9ıj-˜<U¼Jc¦ú\ÔJHI\ç¢x@Á\Å_)Q¼`ñ(¸rEÁ f«y+œ\ã\ëZ__Ê£0\ã\èiŠ\Æ[ÛA\Æ­SšØ€q\Èô­y!;úUi###§bZ9‹\ë.	ß¥dÈG§\"ºÛˆ\È\ÉÁ#¸\ëXw°©%r9\Åt\ÂW9ªC©ŸğÀ\0OQV_pboÒ©>c|5n\ŞU”ln‡‚=+S\ÜXùÁ7CU¡”\Æù\íœZN<°\Ñ\È2¤\ã\éY\ÒG‰÷÷ \r8\ä cR\Ã!GŒõ“k)§\â+O>r\ïJVp Œ‚GQ\ïW,\î<·¼Vt2¬•<\ã”C1«p\ë\È#½g(\İfu°\È$\â¦ŸqY\ZuÉ™\0\è\Ë\ëŞµ\ÏÖ¸\å3x»¢lP(?ZN\Õ…6EHih AM§Q@\Æ\ZJSŠJ`%-%;Š\0ozZLsJ)\0KE-\0(\Í<SE§ù\æ€O8\íT/e\çbOS\éVneò£ }\ìVÔ­*s\æ7_jÚœnÈ”¬Cs*¹Ú¤^	õª\ê\0z\Ò\Ç\'9ú\Ó.b°y\ï]qVV9Û¾¥+™¼\Éö/AÖ©ƒû\â\Äw\Æ=)¹\ÆI<“š–nqÓŸ­Y$\É# -À-\íQùu %V\"’Y\ä\ã<Ô¹@9\å†\0©·«\0ƒÀ\Ïù\ë@9\Üx,\Ç5#×¾	§Dzó×Ú„Kµ\È\0wü\ëB\Î‘Œ÷8\ÅR„y³öEl[E\æ:\áQ\ÍgQ›S‰¥cn\î\Çµ\ã@üªµªa\0ÿ\0Ö« 1€¥r7vu\ÅXš uöñV#\ÓÖ£‹•¥XAQr‡ ü\êdN:Æ˜1ş5*`ı) b\Ã\ëF?Ï­<õ\éùPPöi\Ù	Ç·\âh\Ç\Óğ©q\Ãò\Í7ƒœqJÁq˜£·J~\ÏÆÖ‘œ\Z\ÅNA\ÅDh™\íQ:ûw«$c8æ™iRDª\Ò «n¿?w5^aÁ¡¥4A>£µb\Ş[+\ç‘\Ç¸\îS­S¸@ù8«‹h‰+œ…\Ì[\ã5SıT€\ç¾3[º¸ œwâ±¥)ôæº¢\îI«2y\0‘2:9\æªIP¯F^†œ%1€rv=©\Ò|ø9\0\ÕgÉ”!\Ç\\óZsc½~µ^d±\ë\íQB\æ9\0>¼\ZcZC\å\È&Sz\ã½:]¹˜È¨\á‘dŒ\ÆzõBsºEK¡cu°\Ì:{\×Gm2\Ë\áÖ¸\ØØ¤€gt­‹\Æ“ò“ƒXT‡TitHùÇ¯zw5d=O# \åG¨®V\ê(\éM¤0¢Š)ˆ)´\ê(†’”\ÒP0¥¤4´X¢›\ëN¤ÒŠJQ@ œ‘@\æª]\\\È“\ÅTUİ„İŠ—W*x^\æ²F‘\Ë’\Ç<Ô³8’C\ÉÁ<\æ¡\âGùF@\é\ï]ŠFw$\0F*†§\"¤qÆ¸,NZ­\ÊF0xp\í#–õ8ô­Q‰\0$ñ\ÎjI—\0PynOµ$h@-\ïL˜\ï \Ïjb\ny\ÒdıÁ\ØU\Ìù#h½n	ş\èÿ\0\Zd#•œ“\éQ\Ë&\ÚA\àZA\Ğq\àpK\Â\ßZ©r=MYy\0.sÀ›\ZF…š@\0Ì’r}« ±„$`s\êO­g\é–\Ø@\ì\æ\îkz\Ş.œ~U\ËR]ºq\êZ†3€1\ÇZ´3Ç¿¥68ø:X3t‡F*tÏ°\0S1Œw©Pô\0\ä\Î:õ©Gÿ\09¤AÇ¿¯LSÀ\Ç™\ÅPÖ©4€‘œw£9\ÏZwƒ§JQŒbOÆ—Ö™\"ñŠCÔÔ´\0\Ò*:\Ô\ïQ>z\Ğ2#M8\ç)\ç4\Ã\×ğ\Å+¾:w\íPK\é\ÛŞ¬\É\Ş¸ªò\ë@™N`¤zU	‚ŸBkB@sU¤N\rZ%˜\×Q\ï\r¨°\æMGN\âºK”ı\rd\ß[ğHG¬´0œo©†H\ÊÃƒÁ \0Œ\ä¨ü\Å%\Ğ\Øz\ÔH\à\ã=ns²Áé Œz­\"\Õ$raÊı)Hÿ\0>”¶\r\É-¤<q\Êõ«3a6Ì½GZÏ‰ü§ö\'š\ĞM²!C×¨¡‚!Àu<Aô«ò0M\ÙÁš©nv;D{ôö©O-ö™À5-h3¨\Óo2€1\Ï\Z\Ô3\\­«²rC\Èô®’\Öe’\Å\\•#forlò>½iÆ›\éN¬M\ÑE\0Si\Ô\ÓLBRR\ÒP0¥¤¥æ˜†÷¥´ê‘‡¥/ù\n	\Å0	dFOµb\\Ü\ä“\ÔUJç ô\ä\ÖI%\É-ŒÕ½8õfRdo \éİ¹>\Õ$n25X#I&{{T\ÎU0=5Ó±\å{‰7†c\Â\ã³J6ü•=ªı\éÀ\n:ô5_œ\0¼c“T‰±€\ÜF3À\0\Û$„Àäš’YXF}[LŠ}ˆ\Ê\Ç&˜‰²FUN\Æ	^R¯ 0‹À\ÍM6L‡°AP QóŸ¯z@H00{h\éÖ»\È\'\×J\Ö&’M\Ø\É\è=«¨\Óm\Ô İ‚qÚ³›²4§²åºšÖŒ`UXS\\«‘»³¶*È·MX@}ª(P ©\Ğã ¨±Bn½M\ZN´G\ÎqR€;u¦\r€OòiÜŠQšx\Æ)\ØW\">Çš:u§\àwíƒ­>P¹3Ò”g¿JP\'\ÔSı3M!23J)ı(\ÓBõ4\Â?ú\Õ!ú\Óp\Îh°È³‘\È\æ£\Ç_z˜Šø¥aÜŒŒæ ’<Õ‡\Î2¼\Ô\ÓÈ¦™œ\éœ\ÕYÖ› j¬¨3\Å4I“s 9k6T\àı+vT¾µ—unA>‡‘V™-\Õ\ä!ò¸\êr+\'”8=\rt·\Ğü…×ªóXwñ!×¡­\ã+£–jÌ®\àû\Ë\È÷§£\ï@{ãšƒ;§#€x\éV\Ì\É0±\í\éV\íœ\àg‡CÏ½S$8şU4%·\ä\É\ÏzO7\Ë0`0CR\È	O\ÏŞ’Dó!˜¦\Û\È6\Øö¤Æ‹\ÖÒ‘\"œœ”\Öİ¬o \Éù3Çµsñt÷Ö­”¾`¹\ã±¨´¹pz!\Ô0\èy§\Õ[92»U\è*\İqµfn„4\ÓN¦šC\nm:›@‚’”\Òb˜Ä§~t\Úw\0ÁÖM\ïN¤1jeŒ\ç Tp\re_\ÌO\np£ƒ\ïWvKv)\\\Êdr3óU.	8\0ü\ê\Ç2“Áf«F\âI\ÆşFk®(Á²kh›\Ë\ày§KÃŒ9\ÍH\n¸=¹â ˜\í0*„P˜4‡<–\'©¨\îul\á–<\ãü÷§LY\İ{œ\àUK\ç;\Ìyû~µh†W.\\€{\n»n\ï$\à*\íB¾@:u«`\ì\äcXñ\ïM‰Äœ§94\à2@=\Í2€÷#ø\Ç\Î ¤\ÊH¹l	`Œñ]EŒEcÚ°t\Ø|\ÉxQú\×Om•\ÏQ\ßDt\ÓVWe´\0\ëV­ş¯òª«\É\0V•²\0=«“,Æ€R‚$Š£s{_/˜£±\ç¥g¾«|C(÷À¦ \Ø9£¡IA\àu©‹\Ø\äûs\\\á\Ö\âŒ}\ì\0>ñ8 ÿ\0„\Â\Úˆ\Î\âÃ“•j›d:‰x”ğ;Wÿ\0	ŒXX\î#*S\â\Å(2\í\Ç?*ô«ölj¿\"‡EpT‘\È\í\\t^(>×œ©\ìÀp*ü:ûFşL\î	<«¨\ê)84R¨™¿\å\à\0©\Å	\ÅUµ¾I\0!²z\àsš½Y1\Û4¹J½Èœc›=\Í\\(\'<œqQ\0¤‚y\Ç<Qa&@S\ÛÖƒ\ìjI0y3\ĞSI\0zRh«•\Üü\ê7ô©ˆ\'½A$ŠˆY¸\0õ4¹Gq˜\àb˜~£\ßFûZ‚\×\å\Î\æ=\0¬k¯E(ŠZC\Ø\Z¥\Èu:\Ç#5^Lr+šÿ\0„–\\“#|\Äp€g\èüU17ø\ÍW³d{Dj\Ì1Ue\Óğ¨¿¶­.+2ƒ\èE@uI J„út£•¡ó§ÔŠh•ò§¸Á¬\Û|\Æ\é\×oJè‹¬™ ZÊ½M’gµPÑ™\ÏS™õ\èsI\Ôv«‘›#£Uqœ‘\ëÒ·9\Ù(Ã¦;\ÔğÜ§\ÜUh‰Ï¸5j41\ÌøXw ¼ góŠ¬~I7„æ§‹£8\ÆEDüd„ñ\íI«\ÜU«Z9[•›(Aô=*\Ğr’n=	\Íg%tR\Ğ\ê!oIõŠ\Ò8>µƒbÀ \\\àõ³	\Ìc\é\\“V7‹%¦Ó»SMdXQE4\ĞIJi)€”´†–˜†ÿ\0§S1\Í:È®dò\â>§X’\æI¶\Ãqô­\é\Ì#†k,“36>fùŸÖ·¦´3“+\İH¾`Tûƒôø‘2~ót¨\"FšA“\íVş\áÁQ…\×M¬ŒwbKˆÀÁ\Ï>\ÕVc\æ§SŒâ¤–Lx\Ür¦”	óÀ&…\Üo±S\ÈÊœzË—–$òO$šÓ¸˜ˆ\ÑS\î†\ŞA\ïŠÊ›©?\Ş9\â©\Ç[G¼’:\ãŞ§›qŒF;\n‚`F \â¦NgRA\à\ä\Õq@ƒ¤·ùÜŸ|S¤~]½h±\ÇÖ¢[Í½6<c\ë\ÍnB\çÖ³¬£µ¨…S“Ûš\æn\ìêˆ¹\0gÓ“š£¨\ë\Ë1A¸çŒƒŒ\Ömö¦\Ò?“,IÁ\ÅY²\Ğ&º\n\Ò9\0ö8ªPKVK›z\"{›—ß¸*ƒÂ“ÖtEşerU®\ÇN\Ñm,€Ê†p>ñæ´‘!La@ª\ç]©·¹\æW\Zf§ÿ\0-˜c¿5\n[\ËjC4@8\ät¯W)˜\Ê)¸ª·ZuµÀı\äJß…R¨K¤y\Âo€W¸\ÅC$mŞ„ğ{Wu&ƒi“„\àğ9\éT¦\Ğƒ\Û=\èöˆ^Íœ´DHv¶Fz0\íWb—a\\Ÿ”\á±\Æ?úÆ®ÿ\0a\Ë€®\ÖQÁŸ&\Ü0ä­>tÁA£_C¹)21?/Cšè„¦\'?\İ\'#=«”±cÇ‚+ty³N„œ\"Œ}j4Š±¹mrH\0¨\äw¤w\è:\Õhœ‚9#ŠŸ\æ ñÛ’j¹iYH\ç$z \Ó<\Îzb–\à\àz§4¸C\Îx\ÅCe’\éQ\Ü3Œó\\Şµ«6Ã³\îôš¬\Ò\ì2r8 w¬‹¤{\ÜR»GLõ5¬İ™M½‘•sx\ÓMó1\'9\'=*p‰ó÷\'°ÿ\0\Z¹“\"I—÷\éSÇ¢9r\í\ÆNqZó¤a\ì\Û1\äv?(S“\êjg\0“\Øfº\È|<\ÎqZ6ş¶@\ËJ=ª+\Ù30\Ì_\00QÔi\ßg¹„ıGZôt\Òm¢ÿ\0–j\nI,\â#\îøTûQûyüWSÃ€Û€÷«Oz²¦\×\ë\Ô\Z\é\æ\Ó-\äB6ƒ\êMs·ú8‡,…€\êZ#$É”\\L›\Ô\ã#\îö¬ù2}*ğ‘ø\\ôª9ü+Td\ÄC‚w\â´\0Y€]NEgE‡\ÊÖ®Ÿ‰#\Úp20½1\Ã(G\0ıŞ•4¡s\ïŸ­V–6\É\ìF*P\ä 2@\àúŠ\0{Ç„3ÁÁ©ú°G=3IÁŒ0\Ã£G`G¦x\rj\Ù8\Ç^WŸ¥n\Ø\ÊdC¹®n\É\×\í%I\áºVÅŒ‚)\ÌGğ®jˆ\Ö\Ø\ê)\ÔÁ\ĞR\×;6\nL\Ò\ÓM \nJZCL¥\â›KŠ\0?¥#¸ßµ3Q\Êv\rÇ¨\â®Ë¸›™û«Ïµf\Í\'\03\Æ:\Ô\Ò\Ì]¦l\ã=E@€It£şY§\'Şº\à¬a&On\Z‘\Æ+œ€\0ûÜ’{Ğ¿swƒµE#\ã{vŠÑ‘­Ó—•@\ì01N˜ş\ì.s\Æj,g\ç’iÒ¹\'ğ¥±I\\¥6NA=ª›œ\Ø\Í[¹Œgj\0ˆnv¹*™Á gH†\é¾h”z\åM\"c\Ï\Ç4\Û4/<…z`‘ı)a\'{©<©Áª\\#c«zU­*\ä{\Õ;ƒû\Ğ VÎ‹\à€TM\Ù\ZSWfÍ¼x#\ØT:•\Ód[Á\ì>fª\Öñ\Z=©l,L’\ß%˜\çÕ‚ijÎ†›\Ñ¢Œ‰$\É=I#­t\èV$\0`bªGˆ\Óò¦ùŒMK“e\Æ	R@{ş50\ëY\ŞpŒv÷¨N¦¹Ú€±ôÔ—±´\èqJ\ï \Î\Ó\í\Åb\Çuq!Â€¹õ\æ¦qt#\İ\ç»U$\Ù\r–$”‚Z\åÉ¬{™¥G?¿lŸz®.\îA8u|v<fF\È\Ûy)RQŠË‹Q.v¸\Ú\İÁ«1Ê¯\Ğşt¬\Ğ\ÓL¼\n’Eh\ÛH>¹ı+$Á®\Å!©m¢¬™­°9Ÿ”\äU\à\å\Ó³\"”\àU\è¤\0qM2\Zd\'\0¦².$\ê+Jñ\Æ=+œ½¸!\Î\r±½„Ü¼\äsMFLy\È\0U3sÁõ§Å—Á$óZjM‘i@$asV£…I\ÕCp|sM³I-BŒğ\ÎqšV¸\\\Ö\ë2i\Û1Y\Èn\Üq1õ\È\\b¡¸–\æ?ùn\Ù÷Á¦\à%#MÜŒŒğ;\Ô/*y¬ƒ©\\\0\íp;)WPG\ï†ô<TÙ•Ìº–¤,	#¥Sº\Ğ\äf¤3]\ä\ê)\ÇBefWS„Es¸s“Š¡\×#€A\â·5d&a\ï\ÅaI‘‘\é\ÅuE\İrVdq—<q“ŠÒ±>T\Íôn~•—\È ûÖ‹¹\ÌRñ’0qTJ,^B7Éƒ\ĞqŠ\Ü\É\ÆÓƒô©\ãq&T’Y½j0T\Ğ\ç\î5\Ã\r>\à—µWôN*KÆ§¸5,h¹Œ\Äù\äœVÌ3\ê;`šÁ \çÓŠØ°“Í³T<\ç\å&±¨ºšE2o[±5f\é³ü†6\ê¼V‡¥r5fo†–Š‘¤¥4”\0”\êCK\Å0!\Ëdß“U\ï\äò\á<óŒ©«’I\ï\Ådê³”r?\Z\Ò\n\ìM\Ùa\Û#ü\Ø\ÍK\ZŒV\ãÒˆ\"\Ê\r\Äd\ÄS\Æ\ç“h\Æ3ƒ]‘9\Øøvp=NO¶*µ\Ñg„¨ nlqRM/—¼\ã¨\'\È\0ÿ\0¨ö\æ†$BGs\Û \àÓ¤QÏµWp\Ât\Ü1\ÆAb]ÀS\ÅLº¥;“óLcL¾B	éšµq’÷\æªA#•qØ‡¹rÌ´v\ì0a\Ç\"™gq×€I©m\ãd¶2dòJl93\àUt\'©ZS›’;t\Úb€^•\ÌÄe\Ö{]]¨\Ä(½cWd¨÷/E˜@#ßšØ·EéŠ¥g\ã¾*ä„x¥s¶t¤òO¥Fó,HOµB.6d+3R¾À8\é\éBM•tµ&’\á®	gl\'e­C6¥š\r\ì¢Š\çn59\ß*¹\Çl\n¨-\în$eb$\Öñ¦–\ç<ª·¢6¥ñ‹\Ä\à@˜\0\Ôpêº¾ª.\å·ód\İ|\×\ÚxŒt\Éö¬\é4\Ç2&<)n§Å£^\ÆdT”Æ§v3Ï±\Åj”L[›µ\ë\çpo\ÇÖ¾¤\Ø\r<,ª\ß\Ä8¬Ø´K˜Fö\029®–\ÎñM\Ş\â\Ï\Ì@1“Ş¥¤\\\\Ğ‘¼W !€\î;U\È\ã)9b}=+\ì\äM#Û¤±‚rªqZ67SÅ´\Î\ã®5“VZ\Å÷4LnpAúUûY2ƒ\'†¢$y{£V Œb¤²N2EdõF«sRß¦	«¡ğeÛ¹ó8û¢¯\ïT!´V½“ƒJ\æ/\ä\ä\×Gt‚s\\Ş¥‘WÈ–\Æ`vy‚\æ´p\Ñ\Æ\0\rŸnõN\Å¼\ç­jj7‘YA\È%ñŠ\×K‘Ğ®–\ç!\æ;ˆ\äx^\çZ²± ³o“\ãœUs=\îKË²2pUM?Vµ\ÓÎŸ\Ø\Ã!™[.]qº´Iu2œš\Ñ\0ñEı\ì\ævo’¨7óš\Ê\ŞHvHS\È\Å2\Şb\Â\è\İi\æH$*T4m‚\ãB*’Y\İFX´O×85¥£c\årúknù,¿‡Jµ£\È8c\ØñL³û °‘n\Ç\ï[ \ÆqX“F\ÂBSyA\Ó\"¦\É\èW3GS×–\0-¹OF\î*\È|òZ\äa¹–2N=\rl\Ù^Œ`š‡\Z—Ğ“QLŒú\Ö\âlr{‘]\åeŒóÛX—\ÈJgÒª¡5S)r*ôd_=TdUÇ|U½\çZ³X†ll#\×9«\è$‘\ã$\rÀ‘š¡	\ê?ºx­|s/\0‘\ëB0\ÆRdËš2Jj°N#9\Î2@öª\Äa\Í&4H¾1\×=+GJ”\çojÊ·|‚¾†­\Ø\È\ÑÏŒ÷\Åg5¡QgG1\\˜nMjƒ•²2B§£Zv¯›pO®µrMu7‹%¢Š+\"ÆšJSE0\Ò\Ò\Z^(	u®s÷òù¹\0õ<Öµ\ÄÁ\ã\ïY2\Û\ä†ay5\ÑMYÜ™\ìGcM\Çğ-¾7–\êG95	v–M¿À¼T·¶¶¼p\Äg5Ğ•ŒB\âO:÷\Ê\rò©\îh¸}\îp8\'¥S·\Üd\Şs¸Ä\Õh\à€:~”0D7»ƒ\ÎWš°dg\n}W½T˜\ã$c*{U˜¾t`1òŒı)=Š\ä2c\Ïj¢y \ãµhJƒx$\ç\"©\ÉÇ®)\Å\è\'¹z\Ö?9\n–\Çƒ0£5%®8<t\ëPj.RQ\Ü\à{UÔƒNı\ä\ã¾Mu¶\é\È•\Ë\è\é™\Óu\Ö\É\É5g©\ÑEhjZ ü8«O#‚\Ã>õºp*\â\Ç\\·:¬fKj\Ç<ŸÆ©K¤, ™	>‚ºA=¹¤6\ã¸ÏµR“[	¤÷9X´ˆ\í\Ú?*¿•\æµe\Ó\Øü\Â0>§”ñ{ğª\ço¨¹\èF4\ÅyC\ì(Àt§\"!ù°\Ã9\0g4\ás³‚ñ\Ó|\Ã )?AT¤\ÉqEw²QF\İò8\ÅBm\ã\'<Õƒq4™\Â\ã\êi¾K?\ß|aE\ßR’H«±c>¤ö«Qñ‚UG \ÅK \'\ä\\ÿ\0´j\ÒX”Á\'5.I-\Ê\é ŸZ±Ø€õ!ˆ€\0\éŞ•\"<T\\\Ñ!aN\ç<Õ€05\0\ëO\É#Ö\ÆH©b±/\â\Î\ï¥m¸&³/GSUD‘\Îü\ÑLpA­˜^„\r2+Áš¡4}iö\Ù \à÷µ£3K¡q\â¶\å@ ôÀ\éR¤h\ãU²q\Ó\Ô*\ã\æıjC¡\ïO˜|£ÍªlmªzcU	l›ƒ&n*\ï›2P‘\ê9¦}¨ó;r(\æb\åFa\ÒW`ù@ ñŠm*2œŞ•ª÷\0sŞª¼\'Y‰ô£‰Áü\ÚBŒ\à}1M‡N`¹Á\âºa4™\"0£\Ü\ÓÅ«E÷†j½£Øf¯tb%›t,Mg\ß\ÄF\äö®h±’+ù3\Î)\Å\İÜ‰++¶17\ãV½G4d\\·¦sRzWC9Ğ¶øFzšÑ…Ç–¨z¦Tû\Ödë›¢¯[“\Ëc‚2(Õº	-f¬`±Z>œ÷bo&?\å¤dTQ€rU8Ç­c`w\ëSFY$\ç\ïš‹coÜ¼9©e\á÷c¶~µE#¥¶Ä°‡±šĞ³?;!¬­L¦\Ó\ÎáŠ¿˜\ï\09\Î0A\ï\\’Z´o¡£\íM#š:’?\Zubh6™O¦\Ò\r/ô†–˜ù›\Ì\É$|¼\n¯¿b1cÓ€)F,}I^D;\Ã8ô®¸¤e!ö\Ä\ÊFFsTµk\Ñ,\Æ5ûª9©\înM±\ÆŒ0:V]¼m,\ß7;I­—s\'Ø³h øœd\Ôñ³q=GJ‰–@\0\àU ôÀ¤\ÆQ|\å½ÛŠš\ÅÇœ\Ëı\å \Óf\Â\îp)–¸\èŸZ7@´d¯’û\'ª\È68\ÇF9õq\ÇP;\Õg\åõ?JQch·nT \Ç\×5[RÇ’1\Î[­Ols1N *­ø8\0ñ‡\éWÔ…3\ænô8\Ö\Û0+˜\Ñ\ç\ß&º›q\\Õ§U¡«l2hF=ê…©­ñ\Å`tÆœ\n›Ê¢!œqSâ„€€  ¨d\ï\Å])Q¼J,{\ÆNIÛŠ„\Ä}¿*\Ò0Ÿ\Ä\Ó·?Öª\í‘G\ì\Å\Ï==©ñ\Ù)<Š¿\å\Ôl \Ñv4ˆ„JjI\0¦<ñQ:r3R4Š\Ùn1\ïS\0§\ì	\É\ÅW–^ R¸\rs“R $T	\Î*\Â\'\0æ¡$Ö³o”5¦zd\Õ;”\'4Ğš0\ÜpF)‘ez±qFsŠ¯Ï½kº2\êhÛ “ƒSıœ•°<c¥iF2E\ìZÔ§\å¿­\'•ÁùzÖ——Ò(zb—3‘›öe=T~Tñn£8Aùb¯ˆ€\æ—`¢\ì,Š;pPÿ\0…A,`\äzt«ò¡\Èô^D\'¸\Ñ-u¬MF.=y®aœ\ÖM\ì9¶ƒ\ÔÂ¢\Ğ\ãob\"e\'¿Â˜ü«CR‹(XuS\ÍT]	ö®”\îF¬È†D‘“Ñ¸«Q\æ9\0şpj-Ÿ»STÕ¸cIa-sƒLCpü½1P\ÈZ9œt=\èrIVGZmÁ\ÉG\ïŒzr~lğG5+º¸Œñò®;\Õxd(ÿ\0u†3\éS$j\\\Î\Üb¤h\Õ\Ó	p\éÁ­K‡\Ù<2öõõ¬k	6H°<\Ö\İ\È&\Ôw\nwjæ¨¬Í£±¢„>w©\rAo\Ì*\àõ\êL}+šKSTôM\ïJi´†–’—B9“™Sœc*¨ÉôÚ½«fO.\Äe\Øğ*¤¤Æ„Œ\ÜzWdWS)>†mü‚[’2H^ô\è\Ã$\'\0\ï<ı)©ù‹¸\'\'€8\ÍZ%P€y\Ï-\Û¡˜ûX\Øc\ÔsRH\æ9ì¸ª\Şn&D\Ï\Ş\äó\ÅN\ì\Ï68 ŒñE‚\å+\Çi=‰&›|\ìc¶EM2|„úR[òñ\ç1š’–¥­›\Ép2*Œ¾½²GÒ´ŒxœxÛ*¥\ÔK~ñ\Èµ%¸\Ş\Ã#}’+g¯š8\ïf¡ß€¤úÕ›\Âdƒv3ƒ“\íZ¢Î‰÷\Èô5\Ô\ÛW\'¡¾f?Z\ë­ø\"¹«nu\Ñ\ØÒ„\0­_‡‘T-ù\Åh\Ä+r\ÜG©C’j©Ğ€;\Ó@<ÿ\0ú\é¸\Ï5 \\õ\éÖ¤ôı*¬+Ø‡\Ô`T\â<\Ó^-ŸSNÀš+½)y=\êb‡Î‡•\"‰©±W\ì0[3ü\ê9<¸\ÜFG5Æ¢@ùON˜¬›‹‰.$\0“\Í\Ï`W\êY¸¼W8Zƒ$¹\ä·À\Ò[¦d9\êMNƒeˆÓ€jtJ\0j•#\'šFGVD\ëZ3•ZHÈ¦®d]D5ˆùŠcŠ\é.€\äzóX³D<\ÌÖ‘2‘¡§H®€\Z×‰®^\Z\Ú`y\ÚMt¶r‡Aœt©k©Qe€”©\Ñ”\Ç\í\ÇzV*\ålRSë•)X.G\"\ç<UI“\0ñW$ªÒ	ªBfT£­Q¸B;Ö¤\È\Î?\nÌ¸\àÖ‘3‘\Î\ê1¨\ÏÈ¬l\áQŠ\èu 0x÷\ÍsR=\ë¢;SVdˆFS=ø5f\Ìó#\î§$Vy“O¿¡\ÂH®9¹d9Ä„sÁ¥”ğ1\ÈŸp™Á\á†i¯òKc¡\ç˜\Ø|½õf\"\ÒFp9^j®òƒof\ã\éV¬²’\ì\ã\Ğ2İ»\âBA\ê2+¡‰\Ökb?\Ù\ÍsXhg\Ã\rl\ØJ\r³\ê1XT]M Í›,‹T\Ó51\äTVüAz\í©Er=\Í\Ö\Ãs\×=E \éN#\Òv#ŸL¥¦1ş³Ÿ\áZ§u\É#<\Îj\éË€\n3’k:\é\Ã\Ü¤•^~µ\è%ds7vE•Bù²‚Kv\Æ1M›¸\é´dš¬\\d\Äf©\"[%G/0~ùü…h&\Ó$|õk4’ÀÀ<â­£“\09\æ3œ{Q\ĞH–\ãiAs\Æ)¶\é„\ÙÀ\éQ\Â|\È\ä>‡&­C—µ\Æ*Y¢/¼^ZE&\Ş¨^¦ò21\Îj&\é-cN~P0*¦¢¸\è@\'Ö¥nSzò\'\0\äsSFşe³©\Ï#\ë”â¡·;\ÔóZ“ho‹À¤ûWgoœƒ\\5‰\ê£Ğ¶+¸¶? ÷¬+-NŠCR#¡<Yq­_µ+™£©\ZF\Âz`T‘@5AR\ÆüMm;*µşB¨F\äj²’„÷\ïZE£9\'Ğ¸ñ„\0ñAU&—\0\ïM–\äv\0q\ëÖ¨\ÜLO~j›]¾£¤¸ôªsLH<\Ô3\\‘Fj(³1\ïŠ\É\êk°\Üòjq¾bÇ±\ÅhT¡\çœOÙ§ ô<\Ñm4õ»4ğ6Up0j#©Eù\Ø\ïPjÍŸh™3\îpi(\È\ÖFS€zV¥Ÿ2ŒŠ\æşÔ²}\Æ\àúU»{“Ğš¥£!\ê¬o_}Ÿg\îqøV4Ï³\Ô\ã6{ñT¯.\0CT\İ\ÉZhUº”c“YÏ†5\Í\Ö\\\äñP‹\èü´\\úf©-\Ùi\ã9«v$ \İ8ªhWLçŠ“Ns!vw8­\Üi\êt¶÷#¥[ó\Çb=+\r$1‘\ÏZĞ¶˜8\ëR‹-?…C&r*Bx\ëL$R`ˆß¡úUY3ƒVda\Ïz¬ıñBR˜b²\î…jL*Î¼\Ç¤L\ä`\ê\\!>\ÕË¹SŸS]6¦p\éŠ\å\Ş\åô®˜lqT\ÜB>@}*\ÚcC“òš¯\0ú\ç\ëS\Ây)\ÔµQ\×1“´€x,9p\Ê9\Ü1O@\Æ2Œr\Ê8¦C\à\Î;w dŒ\ì\Æ=\ÅX·Ä…}A\àô90-÷Xc§J#\0;ƒŠC\'º|\Ì3éŠ¿¤É’TŸcT.c;	ô?M§>\Éõ\ëY\ÔWEGFu\è\ÅÇ¥<qP\Æ?v¥I\éR#‚=û\×:Si3À \ÓA\íR1Ô´\ÚZ\0\æ%+’*¤ˆ¨t\ÜsV.d+µBiG g`f½r²¥\É\'\'\å\êj\Ëzğ=©.\\¹\Ú;š€\núV„Œó9\n8«\0ùaTÿ\0ò}*+x\É\Î8\\dû\Ó]\Û$\ÃRcD\Ö\çcºva\È\éW¬\ß÷8\î¹<V}©\ÌÀ·L`\Ô\Ñ\ÈcG ó´õ©)3¥ÒŠ\Ëe&~ú¨uO‘’8\ÎA\Òho”‘‡F\àÕ‹—>K!*sInSw0f€OB95Pu#¸9§4a\à/\Åg\ÈHl\à\Ó\Äù/c~€°\Ívö§\ä\\w®&Aœ\ês]•‹\æ\Ú#\ê£5]R5££fœd\äcñ­jËˆ\â¯\Å&^+™£©3MF*@zU8ä©„´\ËHô¦@3U¼ÁMyj™,’õ\æ¨\Ü\\c¡¦\Ü\\„\î*¬(\×OşÀ<ŸZ‰m\ák§\Ü\ßpÎ´£ˆ À\n\"c@\0\è*_­&\Ãq …#¨\ßÚ‹‘\Ç±ªû\ãò¦z‡:,š9³0qÒ’m\Îó%¢\nŞ t­÷EôE\É\âŸ3+Ø²[Z\Î\Ã9%µ\ÔñI\å\\®ta\Ğ\ÖÁ¶g\éTnm\åL»½*Ó¾\æo\Èy½Á\Åd\êÚ¯–02\Îx\n;\Ñ3\Ï\Î\"lı)X³¿™\"ü\Ç×µ=«2>\ÍuzwL\ÅTôQ\Æ*\ä61B˜òƒ?©¯\ä€1Œ~yc<\nm…‘F;7\0N\Ôş\è«ğ ˆ^\0\éNA)\à\Ô7r’%}>9LDr@4\ØğE)©¹Fœ3dÓ‹\æ²\ã˜\Æpsƒ\ĞÕ¡.q@\"Ã:şu^C\éŠµ8£`dµ—t{VŒÏŠËº|ƒW9Z±\"6\'Ò¹«n\\Ù®ƒX B\Ã=kÏ—9=²+ª;U>\"tŒùÃ3Šu¸	!oS­I\Z\ä\Ç\"ˆ\ã\àzn\ëTAa\ä\ÈN\å\àuZ7\Æ8 ñ\íIq BÃ \àTnAù\ÇCI®Àa\ëÈ¨Á>paßš•Ï™=˜qU\ã\És\íÒ€/\É(0Ÿ\ï\0*Kd\Æt\ÍUùo‘Ú®\Û\rğ\\dqQ-ŠGKdù„j²PpG¨i²O¥_®hÎˆ\ìE \ì\â›Sr‚–›N¦#ˆ¹“\Ìq\ÏAT®@\åV\å\0H û\Õ\â\íW fU$g© ’IÔ‰\Ğ\Zrg9õ« ·mƒ~Q­BH9Ï¯4ø\Ûd\'ı¦\ÍC/\æzE\0Xˆc¿z@Ió?!š#‰\ê4H1»€T•\Ğ\Ü\Ñ\åióü\Ë 8«R–y·6¸\È÷¬m6bU\Ï€E]û@“¹c\ÜR+ ·}–a\İAT¤\ÜøS¸ddUùP0ş÷9¨\á‹}²>>dùh\Ü™špPd`ô®¯H|\ÙFx®jhñ3€r	\È#µtz!ÿ\0E\Ğ\Öu65§¹¬™À\éSE\'5c#¥\Æ\rsø\å<f§f¨¡\é\éS\ïŠL˜\Èy¨&¹4\Ùãš®‘›©±ƒ±zû\ÓCƒ\Ş>y\ç“\ëZğF±\0 pE\Z,@(§£ñ\éC\É\äûT¤ŒT\0Ò—ÀúÔ±ŠOz8\ëM\Ï\Ò\åq\É\×\Zÿ\0¥0{ş\ã,}7\nnc?\Ä?:,\ÂÄ±šWMø¡\"09÷©Ll³†­&‰²+<#¸qU\äŒß¥_\ç<\ÔA\Éj¦T£Ÿ¥BGqÚ¬\ÊñÀzT;\Ğ\\Ph`9ı\è\ß\Û\'\È~\ë\ni’1šv\'T:9y©·µGõ\"\Ë\Ø\Òhi–4\Ñ!Œ…\'Æ£ò}¨?½ i5¹É¦¦\îœñJ\à“@\îA+\åk2\àõ­x\Íf\Í\ÉúUD\ÎL\çõ¯õ-ùV-†E\ÈEnkŸ\ê\Ï?ızÀ³\'\íQĞœ\×T68§ñ\Æ#ó\ßS¢A\äO9\È\ç\á\ÔysMó\Ë\'n\Ô\Ñ,Í¹q\Ê\çœ\Ób#OLp})·€y\İğFj1 \È§J`‹ğc(\ß\ÃM’;ö¦¡ù\ç­;~x\Ï%F~\Ì	\êx5n\Ù\È*3ÁZ¨Ô{æ§‹¨ö\àT\Èh\èôÁ²§\ê+AjÍ°?tz­i\Æ*\ã\æñ\ØSMõ¥\íEfX”\êCK\Å14„O\\qYw»ŸZÑ3õ=«>^d8ık\ĞG,ˆ\Ğ\ëÒ¤D\à(9°«F1å™°Q\Ó\×5d•d;2?„p(‹‰‰\Æ}1\ß{\í\íŠ~v!s× ¤Áÿ\0xTt\ê}\é\Å3‚{óõ¨­\Ï\Î\Û&¦C÷A\èÀœÔ‹D–I„,N\Z•\ärOp\ç5Ëv“Œ\ã\éQ\ä&	=\èBY1\çŸ\çPEtĞ‘ƒò·jf\Ş_J­q!Àö9¤69$o´\Ìy\ç­uZ+\æ\îk\çR;œ\n\éô	Œƒ\Ø\ÔTZ\ZRz4C\å\â¤xş\\\Ôv¤*\èN1\\N®…h¹e5\\ƒÆ®D42¢/\ÙÄƒ\éM¶@™®j\ìj8ª\è\'`~´\\c%>X4Ä¹\Ï\åN½\åA=`^\êş[ùQ\ä°\ì*¢®\Én\ÇGö”ˆ|\Ì?:©6±dH5\ËKs{p	P¹4[\Ø\ŞLx\ê	\ä¨kU·\Í\çÕ™ñ¦}¹Ÿ¹>µ^\"S€%9=ˆ­Hü9(Œ±“<zbŸºU\Ú*¥\Ë>*N\ÙÁÿ\0õTñh³‰0\Ì0zñVfğüñÂ²†]¬x4iĞ­{•\ÒV<n#•§mz¢¼§ŸQÒ³“Gº=[Û¥G-…\ÜOƒ8\î9ªº%«õ.\ßÜ˜œ„’8\â±å¹’KV\Î\åó˜˜œ\â 67\\Ÿ(­Kh¤¬·+¼­\×\Õi%“¡«/cy“ò¨õÉ¨Æ›<„\î\ì(\ĞN\é^iS¹\éRşTÀ\'?Z³s£\Ê#\ÜÒŸjÊ¸²¸Œ¦\ÇV-\ëÚš³3wfš_o\Ï<Š‘.wô®~t]şN\ã#½J’\\Dû›p\éCb.\Ö\æğrkF\Ìğp$`“Ú³lAšÕ¯[!\'³Y=\n££ˆ\Ç\ĞştÇ\0Ö•¼;-¹‘“U&¨LÑ£*\ã€Mf‘œš¿xx#Ö©òô\íZD\ÆG7¯=\ë\Ã\åI\è§5¥\â		\'>µnû	a\ØWZøN)=Mw—`“òò>•\Ì<“\ÆwUieÃ¡\ë‘\Í8òÁ¿\Ä2\à\î\n}±U\Ó ­M\Õ9\êO\Z!\'Š\0µ\Ü ÿ\0	È©#rG=)“\ÎGl“H:ŸÎ¤e\è“\Ì\Âú\n·>•RØŒ§¸\"¯D3j\íA©‘H\Û\Ó9\n}jSñ¬m!òƒÒ¶#\èA\í\\sÑ›\Ç`4vP:Ve;›N\æ˜,¥J•¯^µ—/`õ\"´¶€„ÿ\003Y\Î¹S\Ø\ZôQ\ÈÉ‘0T	\ëVn‘c³@26~˜¨c LñK,‚C\Zº¹À \ÎO~\Şô\é?º¿­\0|üsƒšy9\íLC\á#aõ50Á#•\ns\ßÖ¤\ã\æ\ÇJ’º†\r˜#<’j¼\Øz\Ô\Ù?c$t\0z\Ôw6±\ä¸ ]şA\ë\Ğ\Ò\æB[û¼\ZLo÷H˜“	\æ‹\n\â	`N\å9½ LrG¯=k^ş†­h·M\àR~V¢J\èqvg¢Y\È\nŠ\ÓNƒÒ°¬d\àsÖ¶\"z\ã’\Ôï‹¸³!\Æ}\r>\İú\n‘\Æô¨£B*JLÔˆŠŠ\é68qô4\Ûg\êyG˜˜\íI¡õ*L‰\\\å\î\Ñ\Ï\ç \àGZ\è†y_J’4WXpzUÁÙ’Ñe\n\ÜON0\×_u¢\Ûùj`Œ)Q÷«¸µkk‘$}\ç\ÖZ\êöo¥guQ\Z\á‹bºt’9\êsE¦¶2n4\ém’9€\Ê\ç’;VÁI\r˜eQÀ\ÉÀ\ëRG\"\\[Sº7\\ƒ\ëVa F\Ğb±µ™^Ù»7\ĞË²¶7NH\à´\ë\Ûimñœ”\Ï\íZ6Acy\0\0d\æ®^$of\Æ\î„SW\Ünµ¥\äSÓ´…x“	\ä\Æ)º˜!ŒºÀkb\Øj;b‹€{b®\×2u\îsšU‹_Hd\Ç\ÊT÷úP–O¼~µ­`‹kj¡F†\rm‘Ó‘G\"µú‡¶nW\èqvöM{#*®œ3\Z¯}b\Ö\ÓÆ¨2®qô®²\ÊHfq€ª\Ø>\ä\Õ9„ou2†\n\ÙÁ¤\Õ\Í=»¾›\Z“C§†\Æ_ „ú<’A–lJX\ì+²\Õ\åYk‚r@¬-nğX\Ù\É8PHQœfˆ®\äûgk#2ö\Él„a!†\rS1+‚\Ì:b‘\î\ŞñÄ¯\Â\íÀ$EŸ“\Âö÷¡´¶6„Z\ßRå…¾\Ä\0t\'¥mE÷D#¦¨Øœf¶\íŸÕ‹Õh:LÇ¥c\Ş?ZÔº}€\×?s).Ni$6\Ê7’j¬Ï²Ú­‘\Üõ5&ú{\Ö\Ñ]d\ìKZ”¼\ä{\Örp¯ZŸP—Ìºlt\\œôô®¥¢8›»&\å\È\Ø\é$”_º¼z`8÷\éL\äş&\Éz€GQÚ‘	\Èô™=}zS\ãÀ\ïv (>C\Ï8\Å$C;¿J;úS\í†ÿ\0\ÄÔŒš\Ìùr)\Ç\İ9­H¶ı–B=IúV[‘\í\ZÒ…Á\ÓöóóqQ-Š‰¥¢‚€ƒ\éš\ÚNA\Íeidc\àfµ#ûµ\É=[7ˆ^Ô‚”\Ò\Z‚‚\Å34¹ \æ\äó½j›Ÿ\Ş\è*\Ë\ÊJ\Ğù\ÕB~­z(\äd\ÑIÈ¤w\É\Ğ\ÔqŸŸúT¡\È\È\Î3L±Á#µ4søT\Ø }j2\0\íùP‚„?¥¹w\æ)\é\ÊwTIÁ\Çbpi¸\î*CM”“dğj7r‘¯ªœ}hx\Ù@\ÉŠ\0­¿|’SQ¦9\É8œ™>¼\ÔH\ä9õDd”¨£”\Ç a\ÔjBH88¨_¯½0¹\İi7^d1¸<]¼™\Åp>½Áò‰\éÈ®\Ê\Î`@®Z‘³;iJ\è\ÜC)vóU\âñVC\æ±5z<TjÕ¹¤R \î2:µ!Nr:i\×	\Î}(C‘\ìhA\"£óúŠÇ¼µI£h\ß%¶q[¸\â³\î£;½Z\Ö,I\ëc˜\Ôn5{d%Ô¿eUÀ\Ø\ÇÖ·´\Zµ–—7ó\Ë*ªÿ\0\Şú\Ô2\"j7·RWûªr]ô¢¨\×\Ó<Pö³\Ï&¡¹£”†]£\î{}*\å\ï\íÍ¡û¼²\É\ĞTUFq—tOBsŠ–\Ç\Ãö\ÓBTHJB°=hI™8\Å?yXß³ñf4î¼Š)0#¸5lë–„m$‡¸\é¼*^mª\èWÔŒT^–ùZ&\Ï`qT/g\Ô\î­u»;«X	\ãmÀ\ç8¥šş0…‹¨\êN+Ï“\ÂWDB½ğ3Q\\øbğ\'2«\ã \ÓW%Ó‡s¤>0\Ó#3BnV2­\Ë7F÷¬x\ê\Ú\ßoöwúL€äŠ+9ü-+Ç¾i\Ù<\â¨G¢¬d‡Á\\ñô5m\ËT\Óøu,\Í\ã««¨¤X€Œœ\Ô÷O6£:\Ërt£¥U\Æ8\\£Š³$À\0j†ú#XRKY@B8©b\Ë\Ê\0\è:\Õ@\ì\äœ\æ´-“`\Ô49\Î\î\ÆÍ€\Éğ­|ycŠ\Ë\ÒFü“\ØÖ¤²\éPI™©\\`y\è+Ü¹«Z•\Æù\nû\Õ1\ĞÕ¥¡-\Üd€kŸ\Ö.Dp9\ÏjØº—\0J\ã5Û¿1\Ä@÷É­©££²±’Iw$÷9¥zš:\ZU \Ö\Ç9!\ïG^(\éœ\Ğ?úôT\èG¥Xˆaú\n>øıqVŠ\Ğr{T±¡	==¹÷©m²˜ö\ne\È\'Ö¬B	œZCC®NH>ø©`<\È\Õz`\æ¨^ ¯ú\Õ\İ0\áòzQ=Š\æİ˜1\Â\Äv&´!“÷##’;\Õ8N\Ë_v\äş5u?Õ\í\\’fñ \rœQš’€\Ò\ÓI¥\Í\0pn#,¼0õ\ïTI\ì:\æ­É“ÇŠ¯\'<v\Íz\'!r„SV\ÂŠ\Şø5Q\Ç#\Ó5\Ë\Ì?/q‘C\ÆpON2*R{V•›«\ÆÑ²å“Ÿ¨ÿ\0\ëUƒG¸c\îŸÎ\ÆF{~\"¡“‡>¹§’8#8?¥6NGxS!r@\Ï\0ñN¶rq>µILûÓ£\ëœóÚ\\k‚HóP9\Ä\Äö&¯º	9\ÆªS \Øppi j\Ã\ÜÊœq\Æ*¹<‘\éR\Ç\Æ9\È5ˆA\'\Ô\ÓD±öÓµ¼\ÂE\ìk¶\Òï„±«\Ã\n\á\0\Íjh÷\Ío0\ÈO\Õ#tkNvv=\Ú|â¯¤•\Î\Ø\İn¶!“ ¹\ë\\Xì‹¹~9©\â“¨SE!9\ã¥C-3QÀ’?­W)ò·LñS\ÂAQ4c¤†\È\é’D%Niœ‘\ÜSÁÁ«Ø“\ê\ÎµXNµ½,+ >•Ÿ5™\ç­;\îkc\"N1W!ó!¸vB}8\ÍUD18ô­»9 xÀp>¾•V\ìSi­U\Êo{z„\ê\Äv#9©¿¶$xÈ’ßœu¯=”ŒH9\îj¤¶ª\Ú\ãù\Ó\Õ¸S—Bªj·#şY®LšI5+§ùW<p*Cn¡İ3A@K\äõ9¢\î\Ú4©§{\Î\É,Äù5ƒ‚:Õ©%L¿·³\î.@R-^\æ\Î\ÉY\æ|g\ëU†d|ñN!¥?=#\Æ\æ™\ÏRV&¶ŒdqÀ«`ãŠŠ$\ØIŒ¸´™‚}Mı(m€Z[ë‚¨y\íIlDV\Ê=«+U¹\à€k;]—{#>iZY\Éü)!\ÔQdş5\í\ÈD<ö­bº7Ô¡ªŞ¬Q6Oj\ã&”\Í3;w5X½7m\å™]VG,\åv->:g¥Hƒ4\Ézø\Ğ:¶}8§£¢œù›@\éÖ‘DÖ°‡#ŸzuÀóß¥\\¶‰R\Är\Ü\æ¨\Ü\îO¾&cr¦­`#†÷ª€~ùlÕ©2^ù d!”(=¹«\Úw\Ş\æ³\Ó%	ô­Hb1Z‚:k)½‰­œ*‚®¤\Ãôª(	\ØsŠp$q\\\ÏSd]óE7\ÍL\Èi¦SI ¹{\Ì\ï0z\Öy”\Ñ\ç\Zvœ›’ùª\íœÖŒ°ğ{*ñU\Ü\ã§»NfU~@\ëúV¥¨e\ØÀ\ïTDzµ«cxT9\Æi¶	!h¦Œû\à\ÒL‹4dƒó/zS\æA–Pr¸ªÒ—…\Õÿ\0¼2G­!•£$f6­!\ïŒ\äUÙ£[„ƒ\ç^x\î*›‘\æ`ği¢X\ØÊ¾A\à‘Ú“\r\ãÔŸrS†œû#·Z`O€\ã=~t\\[`9S×•D8)œr§Ò­\Å.ü«u\0úÔ½µ\Ğ\Î\Ú\Ãq\Ó*}i³g`<{ƒZD+Œ)<qŒTO\0w/AƒM14fœv\ã\Ø\Ó\íÁy€´ëˆŒx8\â™	\Ù =³U\ĞKs©\Óo\Z\"ºÿ\0:\é¬\î\à\äb¹ñ‡_¼£8õ­]:ó \ÎB\rsM_TuA\ÛFuˆI¥\Éª\Û\\	¯5;“\×Ò°h\İ3V\ÊLŒgš½€\éX–R\á\ÅlFù¶+r¼±\à\äSG\ëVe\ç_fh¸€8\Î\r#€z\Ò\ÎH¤óT€¯,!şµUÑ¢&¯¾;\ÔO=\rZe)´V7€u\àw\æ {\çô©\Ş\×9\äTbocUqó®\Äoz\Ø<ğz\Óğ¸=3Sı\\~t\ä\Ó\ÔuùÒ¸{E\Ø\Îóûg4Ÿg.~lÖ·\Ø\Õü)’ u\Ø\Î1ˆ\Æ\0¤>sŞ­<t‰;\Ø\Åİ½DŠt)¾q\íJ\àKoÁ,jn;\åœ$`Â°/&2IŒ÷«w—8²|Ì¹bi\Å&M$¡­szÆ¥´S–<U\İJøE$ñŠ\ä\î&i\ä.}x­\á¬\æ©.ˆŒ’I\'©¢Š+C!Ñƒš²@\0QI\n3Šò\àRcB\Ş\0\î§%º	’qÚ¤Š1™=B\äSE\'4\ĞRØ\â<\nÍòO\åV®sÑ£š¨\ç\ä-IÀ€H\Î~•3¿A\ëP/\ßùœ\ĞÀ»d†R©ØMm¾‘Æ½­e\é(H\İ\é\ÍjÂ„\å\ÏV8„÷5‰¥ŒgÖ”\Æ(C„J\×>·6!x\é]JM0‘T“\Ñ¥7oÖ\Î)»…;1]…¨ğ£œz\Öm\ÈCƒ…«\ï©ya9+€=\ê-6\Û\í³\íp6(\ÜI®»˜X -\Ø`Ÿ\â==+@¿“T\\œğE\\š\ÍC½IÂ\ëôªSH\Ñ\ácù\ÓJg]\ìGv1\ëP9‡\\ò¸\"–\âTöy w5I$#{t$\æ‹b\ÖVG\Ğ\ã¯Z[è•ˆtlg\ëL”\0;ñNó·Ãµ†y\àúST‘€}84ó“=\Ç›J·^ÆŸ\0)\ïòš\0ˆ\îG×j\Ì2\ï\èpıÇ­Fb\ß~µö\ê=;\Ò\Ü65REr3 ñŠO0\ÆJ°ùO=\ê„w\ÜyşõYyI@qx=hµ‡{š\ÕdŒ•\é\è{VQ¢$\ß úÖ¼3‘œt=\é²\Ç£\ĞúzRN\Ú0µõE»ö#§’·H¿tõöªº`hóƒ‘È­¡’<Ec\'fotKazx\â¶\ã”Hƒ\é\\–\Z\Îm­¤ğkf\Êóô©jú£D\í£5b“Ë”\nÛ·—zk,nE^±¹\ìMf\Ñi›§;x¨±\ÔQ \éOs¸t©,ˆ¡JiN8>3ŠhhLv+ºgü)6“ëš·´zQ\åg‚©14g¼g<sM\Ú\Ãó­o\éŞ˜mú\Õ]Š\Å2\ZF}jÙŠ¦\Å+\ÅGCŠ…\ã«n1Q¾9¥qr”:M›\0\'½M&\r2b\0\ĞS¸X¯)\Çq\Zg¶)\ä“To\î&\Ü\àµQW3n\Åk«‚\ìFj„\×\"4<ãŠi¾bsXÚ•\éÁŒOZ\Ş19\å\"­ıÑ¸”Œü¢ªQEk±ƒw\nt`–\È&¬\ÛFö\éCIŒ!\Çğ\ÒÁË®z“Cò\0d\ä\Ñ`{\nE‚tW<2š…	w\ìŒ\Ğd\ß?˜:c l\ß\ï\Å\0X¼s•\Õ\\œ\ã\ĞqK+—@OZŒ“Ò€¸ô\àjq\å\é€ÿ\0*|C|ƒ\Ü\â“N‹ƒ\ê9­\0b©\ÛüˆµO\æ\ÒT\\µ`\ê%¡t?\Ó&*§i3\ZµA\"]f\Ë2ŠŒ\Ü\n¬I4•¢¤‘£\'3f“Í¨ipiû4/h\ÌİŒ~g\ã½liƒN\íªG\'k\å28\ãÚ®}¥‚qÀô®c¥š‚Ey\ç;\Øm\àgh¬[\ë¥ò\'œ(=\é\ïqö{v\\ü\Ï÷˜\ßızÉš\à\\H©\ÑŸ¥R%J\ç’I\äš$ \ìÇ§5¹.}:\nPr„zŠb,I\È#€\ã>Á¨PğW¿Qš~ğH\ç†\Ğ¡÷€\Şf\ä©\èÜj‡zò?Z˜|ã´i‰€=\Æq\ëT\î#h¦ €x#Š½.\ã¼\İ\ÆTŸ¥:\âql%\Í!³/ƒ\ÇZtr\ìùNpi	À#‚\éQ\äœS;¸\'\å?NØ¥K“À9\ã½B~\àÁ\æ˜I#=\éX.nXL$uÁùºfºG\Çô®?Nù\ÊA\Ç<\×af\ê@\éù\Ö5™½\'tI-º\ÍVC\éY\È\Ïk&\Ç\à\Ö\Ğ”Ë‹U¸M¤t\è}+4\ìj\ÕÄ¶¹\Èğjh\ç1Kx5C\ÙÉ²AÁ\è}jôR+¦3O@W:k+ \è9\íZH\áÓ­r÷M€zz\Öõ\Ğ|sYµcD\îiƒO\0Ulô5b\'Š‹˜£­H™ö ¦9\êH\ã<\ÅZ@\Ú°÷¦<mÁ«%1şz\ÓŸÎ®\ÄÜ¬\éòZ¬õxAªrjZ-2¬‡œT2\n´\êMTg>\Õey;b«\Ë&O\áV¥\ág\Ë j\Ò3“°\É$}9®zö\çÌóÀ\àU\ÍJğ\"“X2Íœ\ÖğV\Ôåœ¯ “LNqXs1i˜ûÖ£œ\Ö\\\ß\ë›\ë[#¢Šri>4$U\ÈS\êN*\Æ*t}ˆy\çRcB\ÌAp¢Œ}j,\íB\Ç\Ó€œ\'½!;‡^	\Í$@D1ö\İÈ¨H ‘\ïS\ïÿ\0FE=TñM>¾´\0\Åù\Î=ª<ƒR	¦gŠ\0rTÖ£}ÊŒ\ã&¡ô§E»;ƒ`ö¦#ª Prs†šğ¸÷¬Xui­\ÎdzÖµ¶§À \Z\Ú-´ú9t¥«.Šã·¶*BœõjÌ–šŠ\\P0j@&\äx§\àÓ¶S°=i\Ø.`ñiP¶KÉœõ!c\Ücœ\ÔRÌ©\ÆztÃ¹\Ş2\âV|Œ\äõ8\íTI\Øx\åˆ\äÔ®\æLóQTŒ\Ø\ÓH\ÎCÁ¥4¾X\ë\ëÒ¨ Œ\îõ÷§ú=E9\è\È?yG\çM|qH¡\ÅÁE<e:to\È=9¨ş\\•ö\â–#ó`ı\r\0k\Å {)bo\á`\ëS\Ùl{i#n2x5J\Ûòœ|\Ã4\ëipQsÀm§Ú\ÊwVşL„f©‚2I\èMk\êHOÍA\Ú}\ë!Áô! ŸÊ˜9\È=\êHP?\Zo\Ë\ÏlSö¹Aõ®²\ÆC°ø\×%ƒ\Øõ®“N\ìu½k*ˆÖ›¶‡C8\Ç~\Õc`\àû\Õ[b®\ZĞ`Š\ægR*Mj“! ƒ\ĞúV<±Ka&Lg¡®\ã\Ùô5°¬¨UÀ úĞ£*)–T\0\ÜU«[Æ·+;\ZÏ¹Ó¥³rğe“9Ç¥\\,\Ãkü­\é\Óz2v;[Õ•0H«i.\Îs\\u½\ãÚ¿\'rúÕ·m~² !\ãÖ¥®Å§\Üè¡¸WjW˜Ea\Çr \ç<\Z›\í*z6i&\ÑN\Ì\Ò{‚q\Ï•»š£ç”…\Î3ù\Õ]ŠÈºf\'ñ¦şµWó†zşU\ÌFNišOÊ«HT\Í5\î\êj\Å\Êúô¡+ƒc.¦ùqšÆ½½X$\ãÒ‹ıESw#=…s·—põ¬bs\Î}Û›–šBÄMW\ç<\Ğ5 CZ\\\Ê\ÄX\êk*S™\Ó5±(\ÂaX¤’\Äúš¸™\ÌJ’1\ÍGR!À\ÍQ\à\ã®s\Æy\êj sƒN$€[ò¤1®\ß\Â:´\nˆô§!4\År\Ğ?»¹©1òŒ\Ô` Ô™\Ì wiGL\Ø©0Fi¯\ë@\r#·­=1L¤OÒ˜‹\éÏ¶bFz\Z{\é³$~| \í\Ï\ïU@#¥i\ØkgCË¹Ú©2Z ·\Ôdˆ\í˜zšÑ\éeôª÷0\Åzw[\ã\è*‰Š[g\î1\ëMI¡5sc>”ğk>\Úğ>\È\İV²G5¬e}Ìœ{A§Tù©rj\È1&v\èÀƒÚ©‘Ô¦¦‘\Êq’G½B\ï\\)¬Œ\İ\é”óŒÑVI?\Zp)@\ëúR8\Æ\0üM\0\0A\é|„f”}Îœö§Œ8 \à\ÒÀ\ç¿j\'\'­;c#€G¶}iû0\äuÈ 	‘\ÊBŒ*sL/‰:7\"Ã½B\\\äzP‡œ&¶\ç9\èMgN˜~jX€+“ƒÈ¢@9\ê;ú\Ò\Ø{‹k\ã=1QH73:S\Úşµ¿$\Ì­0±|°·4\éHLúu¬>8­m5ğJğ­D\Õ\ÑTôgSjxt5«=kN“€§§O¥lEÚ¹%¹\Ù\\\0\Ú\İ*\'a\ã¥M?…<¢¿Š’\Êe\ê*…æ”“|É…~¹¯,l\â¡Áôâ‹Š\×9·Š\âØ•uÜ¾½i\"˜¡-{©®†H\Õ\Æ¨\\é‘¾J\r­\íV™-Å©°\áø«‘\ê*@\çõ¬y-g‡#n\åõ<\Ôrve>\ÕZ1]£¥\ã\Í(¾¿s&\á\Ôp\Çñ¨\Íì¾´\ÒfuBøzş´~;°\ÅrFúoZc\ÜM\'W4ùP¹Î\çV‰8\Ü?X÷š»>B=k9Áü}MFERI\ÛbK+JI&£\Å;\ÔñÛ“‚iÜ‹\Ç5)\0U„ˆ\nd‚‹‰«n!o¥a\Ö\Í\é\Ä.=«\Zµ\ÆS\Ü^”ñ\Î?*eY‰—½¸½\ê™g\Üñ\éQ\Èù\Å:B_ü©€r(H\àf•1‘K\'ABõŸ$m©\ÈrqŸ¥3ûb\äı8¤1NFy €A\'­=“\Î;S{\â€#8\è_$Œõ¤t¦\ÇòI\ÏJd–²9\ß(;	\Å\'~;Š3À\Õ!3¤\Ñ\ìV\É9\Í]¾Ó¢˜—ñ¬­&ü\0#c\Ïj\è\ÕÓ“Á\Æ^Zµ´ÄŒ\à\rOgy¿	\'^•¿{gÑ‘€=ë˜º¶kyQA¦„k\Ï+KóúU;\Âß» 5©ùU©\ârñB\İÌª0J®ÿ\0xQEs›~Ô‰ıh¢˜‡´†Š(Qõ§\Ãş¸}(¢€ÿ\0|Òõƒ\éE\r\'ú\ÓUj( LzwúS‡Uú\ÑE&4Mmş³şQ\Íş±¾´QH¤\ëøVş°}(¢”¶*%Sõ­¸~\åW,·;#±z/¹R\í\éE™ ½A¨]@qE€„i¤J(ª\"u\è*…Â®>\èü¨¢©Ì«…\è:\ÕW(¢­\Ä\Ú=)˜\æŠ*‘,GT/ED±b?\áW#Q@‰@•V\ëEDL\Ë\Ô?ÕšÉ¢Š\Ş;ó\ÜYş;bŠ)’ˆ[¯\áH:\Z( ?DúP;QE!“z\Ò\Ç÷¿\Z( d\Ëş°ı)v£Š( B?\İ÷¢ŠhL•z¯ÒŸ/z(ªBC{\×]§|Ğ¦\îx¢Šb-ºŒt\íX\ZºŒ(¢pñ7µ\ÑÇ-xj(ª@ÿ\Ù','2025-02-27 05:14:58','female'),('9d72994a-e00f-11ef-a1d1-005056c00001','9d6f7f00-e00f-11ef-a1d1-005056c00001','Muluken','Tilahun','doctor','administrative','muluken.inbox@gmail.com','0900130082','Part-time','2025-01-05',0,2000.00,'day',NULL,'Addis Ababa','0913313103',NULL,'2025-02-27 04:33:51','male'),('bc1e5a81-d7d6-11ef-9523-005056c00001','bc1deb04-d7d6-11ef-9523-005056c00001','Derartu','Haile','doctor','medical','123456@gmail.com','123456','Full-time','2025-01-02',0,2000.00,'day',NULL,'123456','123456',NULL,'2025-03-02 23:43:09','female'),('c8485251-f794-11ef-a0cb-005056c00001','c846cbc3-f794-11ef-a0cb-005056c00001','Abel','Mohammed','labTech','medical','abel.inbo@gmail.com','0963524145','Part-time','2025-03-02',0,20000.00,'day','650e8400-e29b-41d4-a716-446655440003','Nifas Silk Lafto','0900130082',NULL,'2025-03-02 23:43:17','male'),('cc44f676-e01b-11ef-a1d1-005056c00001','cc43f355-e01b-11ef-a1d1-005056c00001','Almaz','Hamza','nurse','medical','almza@gmail.com','0900130059','Part-time','2025-01-31',0,3000.00,'day','650e8400-e29b-41d4-a716-446655440002','Addis Ababa','0900130082',_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0\0ÿ\á\0.Exif\0\0MM\0*\0\0\0\0@\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0ÿ\Û\0C\0\n	\n		\n$ &%# #\"(-90(*6+\"#2D26;=@@@&0FKE>J9?@=ÿ\Û\0C\r=)#)==================================================ÿÀ\0Ÿ\Ú\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rğbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0[\Í_T¶}“\ér\\!2\Ç\Ç\ëX—šº‰\íÖ2GÓŒÒ»\ÙcŞ„\í\ät=+:\âF’7Œ u\ŞÁ¬SFñdrÀ…”†’¸\ê\rVºÖ¬5[S\Ô#R˜&¯¤i(%ô,Ü†N0\n\åf\Ğ.nfi4\è\å1Â¾0G\åŞš³\ÜfEüA/\ï\n~ğj4vL‘ĞƒO¹·¸¶‰ƒF\ãP¡\\¿¥Q#\è;c\"‘Àş.ÿ\0¥8\"£\éÚœsœs\Î\ã@\\ğ}\Æ*@Š\'\Û”\Í\Z”\ÇøD_=@\ç\Ô\Ğ$;\ÏÀ\éG™ÀÀÁ_ÖG ¸úSs\É\íô B“½s\ÜSzô¥O\çA·\ãL\ĞpJAK‚?ıT \Å1ÒÏ=\é„§ú\Ò\á½8\ïš€”$ğ\ß\\ÒŒ\ãœûÓ¶¨0\É\í)À)À<\ç\0F÷‡„ÓEE\Ú3Œ\ä“Ş›, €£0=ÿ\0^¢z\æ\\{­\ØñJŒ±Xz\àR’şô„p1\Ï\çL	¢vO™#œQ\î2rzg¨\ĞvÒ¿##¡\ê=(o\Ï \è1Iµ¹\'¿^i¾\ßÖ”+`© .*‡#®kKN\ÔZ\Î\á]\Óz®H\\\ã6¦y\ÜŞ£µC€8ô5q§bş£|ú\ë\Î\åC7@\è*\ä\àŒ\Ğ\ÕL¶r1øT€—Á`QŒÖ’A{Œ |\ßxzS·0\0\0/=i¯lq\Ó=©¹\È#Ÿ~z\Ó\ày#<I5)ƒ\ÑF;Up3zSùô÷ w\0\Ç\0ƒŞœ$\Æ?úÔ u\Ï<\äZ~rT\Æ9 qŸÎ€¹$©\Ş\Ñ\äö\ç©E\Â\Ü,9$\æªeO?(\ïóKœt,3\Ó\nh–6G/\İo˜`\Z…\ì›u\ïÖ£8 an§#\Ğ\Ï,	\î\r\0#\Ã\"	\Æ3‘H§‚\è8\Å[I3÷ˆ\Ü\İóšd©€À\Ï8\í@X®ĞŒu4‡!\0÷\Í8£FÜŒ©ô\ïCŒ`Œ\í#‚{\Ğ}2?Z±\Ãp®r\È\ãª\Ø\È¸\â”\ÓÚ€¹z@²§-O8\èjœ‘˜\Û\0ñ)\É#G¤\Üµ.h¸?8ê¦÷+y\ëÒ¤\àƒ\ÎÒ£p‘ú\ÓGo\é@µE\È\æŒ¸‘\Ø\â­\Æ@\Ú8\ÅU\0ô=\êA;cŞÜ¿öş…º\0N*\Û\êbkQ\ë»iÀ#ŒV8\0|\ß)ôÁ\ëR$ O\êz\ZCL|Ñ®ğ\à7\'¡®£\Ã~.{]–WCldlW\0t®a.œ>FG©­\ì\ÖòUñ \ã\ëI¤ôa~Ç®[jEHÁˆ ‘Ö´~Ø¾ßy•¯\ß\é[­LˆÃ…nsô­¯øJfÿ\0Ÿi¿ïŠV=Hº¸DF\ÜÃ§c\\ıÎ¤ò‡†\ÅF\ã\ÃsR^\æ\Â,›ƒœ\ÍGzlô\Ëo3\å\êA\É®$­¹Ti«nVK÷7\Ã*oj%…’?˜¢D\ß0P0F~•ˆ ¼˜¡a•g«2B€8i^mË¸€\0öúŸ\åCO¨\ÎW^/±2³•\îFsŸz\æSi| ò=EkxƒQL°F\àÆ€`\n\Å}}«E¢%½@œŒq“Š›a#\æ $}\ï\Ä\Ğó\íLW$}¹9#\'Œš‰ó\Ôô\Ï\åJ\ï\Ğ÷(\ç†¸ Nÿ\0h pi\Øã¯¥&:w#­\0\'9\ìy\ÇÖ‘À\ç“J\à=:\Ğ[$ğF)Á~]\ÜdZ<\ç\'Š+cp\ät÷ @Éƒ\Ó=3Ş”˜ÿ\0ºq\êOJŒ\Èy\ÜNO9õ¦n<ñù\Ğ\æ@sˆş˜l\â£2)\0m\ä{\Ôy\É\é\íO\É*{.y\Ï9 \0\Ç}\é@n}H\ÏÒ‘r8ô(r0zq\íHD\'\0’O\ĞPNz~4„{úr(\è{f˜\Çc\Ø\ZNs\Ç~´§9\ÉÏ½;®;qÁ \àu•œúSÁnB€¼riœdc8÷ B„\È\É\ás\×ÖŸ›\0`‚üğ\êF1ô¦\ì%ñ\Ó\'¿j\01€3Ñ»Ò’Tq\Æ½)Ã¸\ç\n£­5òNx”3œğ8ô\ïMù}	§(\àzÿ\0:sG÷NF òO©\Êñ;‘M\Û\Øi\Ø\ìÀ D…\Ç \0\Î¨Ì„\ã \0\äI†ûß­!’:f€$\âOA\ë\Å,d£\é°d*<p´¥ˆùG#\Üu h”J\Ë($zS\Â,¤p3À\ÅWz\ã¿4½:~´˜)L©RAÁ\ìi\É#.Z6\Ï†ü\r$R\Ãc§ ´\á²\îV…\0+”\Æ@\Ê7%IûµªŒ\í\'­<Œ\ä\à9¥I€$ \ã#ÿ\0­@mÀ\ÉsH11Á\çÒŸ(}Å°W\'œ)‚\Û~\ïRJ\0›\Ê3\îGÿ\0Z—\É+Á\Èb8\Ï¡E,\rNG ó­Y\Ãq„$FÀ\ç:ş_ıj¥ı\á$ı\ã\×\ßÿ\0¯Pr	È«ó[6\ÍÀn#¸\ä7ÿ\0^ª¸}Ş sš‹0SĞ­DKs\ÔS\áÈ‘3\ÔgŠˆš\0µkr#}¬†\à’3Š’TŠ)şL´G‘¸`\ÕH\é\ë\ÍNfy\æm\Ø\ã)X\î\\š\ÕD	4d2¿`zT\Ì\Ö\ç8\È\Ï=¨\éE©‹o9\àÕ»4ImJŒ\'’GJ¾\Ã&¸[„EÀ‘xV?¶¯?\ç£~UJ\â\Õ\íH\Ü\ÃÑ³j\Ş\Ãó .z\Ñ2\Ş^+ Hb\èXñUµ[28\äµ«\È\Ãk6s‚k€\'\\Ó­œ<²¤M÷•Z\Ì\Ì\Ò>\ZF\'=I\ëSÊ6t]Gdİ¶K$«/j­q\â[\é`ñ\ÈV4=:~xâ²£&\ï´b:(4\×ur\Åb€U\0\Ş<\Ì\ç99$\Ô}#ğ\ÅHü1\ÅD:A@»Rs\é\Å4„\Ğ¾i£9\Í/=3L’D#ø¸™9Àšˆòzv÷§“„\0}\ã\éÚ‚ƒ’n´ds\Ç~ÆÀŒ2ñQ=i\0ñ…2O8¤a»’H\È\ïŞ™qO\È\Ø8\ä\Zb\åõ?Ji9õ¥Á\ïÀ£ô ×Nw\È\0pAI\×\0rMM@Ÿ§V=\0<¸\Ëó1À>”–ÿ\0\ë9\ãQ$Šò\0F,$‡À‚˜Œÿ\0=*.Où\ëSc$úôÍ™\'o^\à\Ğg`n4©´}\ã¸{S\âÀL\ícƒ\íAM¹¦x \0Œğ8\Î1À¨\äa\Î\àÕ„ñóQN#(9Qµ›®Gù\Å*\Ù\åºsR<Œ	ùyô©<•\Ï#n¥G*a\×?\ÅÁ\Í$\"ğ§ŒœÊš6±?(¿5!cœ‚1\Ç\ÅDŸ|ôz\Ğ!Dd\ç\àf¬Ä‚X\Îx\ç¿úÙ¤€’FH9\íõ§.!«p\ÊAÿ\0?C@\Êl¦2Uu4\ÂÇ \àzUË¸˜€\ç%€\çüú\Õ\"9úPK\Ğ\\–\Ç\'™\íGnJN‚—#Û­\0\'ùR¾\Õ)\0!~„ğúı*3Œ÷\Í\0\0õ§ Ïµ7ğü\éPg\'œ“@\É\Ó\Ã÷8ªh¤Y0¬\0\ìOò?•S\'©¨«H\â^\Ê\àpÃ¿Ö–Djs•!×“ƒ\Éÿ\0\ëÿ\0j¬‘ó.@\Ç<~µa‘LEy>‡\ë\èjB\ZP“\Ğÿ\0 ,P%‘\É^£8\ÍU|\î\È$uŠY˜€p@\Ä\ç\Û<\n\0—\Ë`r	ô\È\ïÿ\0Ö¥¥²s\îi‰”\ÚryúT\Æ,?Q’2\èh\âG„IŒõ¢‰bl3¡\ÎÓ†_\ëB\ÆDgø\\\'†÷”¨pC§A\è}Gÿ\0[ò G(Ï˜q\ßŞ«“š»\"//\Üa‚ª…\Î\áŒPüñJ3\Ø~T\ŞI¥\É\í‘@÷,d€v±dT 1=ş(vLdm#¥\0\\Kö{q\à:™\íQyv¿\Şj‹,\îH*x\ÏLRe½ÿ\0*qeº–\àŸ2W~;š‹y\àúpy¨³Oö\â‹\n÷“R ¸\ïJŒm\Üw1\Æ;\nW$\à…¤I#;±\Ï\Ş94Ş†”\ß\ç\éLM‹\Ô{ŠLšAš=\èS—\'\ßÖş†ƒ\Û\é@gO¨\æ—\Ğ\ÈÎ¡G½?\0ÇOz…NA<°\Ï4\Ï,zñFóœÓS\ßò8 z\ròÿ\0\ÏJpN09\çµ/\Ê@O¡4…ó.h\r\0¡\êHÀ>´\Â}(f\Î\0$Ó¢‰¤>\İ\Î3@˜F…ø^3\Æiò0<µ9şñf•\ÈA\Ç3Ö \ê3h\0ö©px¦v\È\íÖœ€ö\ìr(]˜r\İ@4£›=zRHv9\\\ç¹>¦–<‡€´” 9ø‡ O¯\áMÁÁy\ì\Ø\Æ~¾ô\ï-€\ä`\ãÿ\0\Zœ\Är0TñŸó\ë@\rL \0pI\ãš.$%x\ró\Øÿ\0$RDc®T\äf–f2B\Øe[Ÿó \ï4§<uúZ[¨\Ç\0†\r\ÔuüjºHC\äş?Ò¦–}\à«6ƒü\äP\ĞqŒr\Ù\ëP˜Ø¾Ğ¤¶{´ä¹;ğs\ë\Æ*2Xu\ãŸÎ€-Z}\é#r7?\Ú\äŠ.P‡R\Ù—;OùúŠ¯\ì˜7 )v\ä‰Qöö<{c­B]8\0UˆWò§çš‘e”}\Ögó¨\\r\Üw\Í\0\Æ\à“ŠwQ‚x“\Æ9À\\s¸‘Ûµˆ\ÎN	\ëœñM$ß(\í\Íö´\0œö\İùÔ€8Œğ\İy\Í3q\è2\01ş¹\í@ù±’s\ÇB3S’\Ç#\rW$‚vœTö\Í¶\×ùsÑ»f‚®Hc\Ùpq‚zõªi†C“\Ã3Ÿş¿½Û°!\Ó\È\é\Ôş¿ó¤óDˆ2§x`{\ĞÀ‚\á`*FŞ¡\0—\0\ã\Ó#š•ÁŞ œ£wÿ\0ú\â$[¤:t n>G\ì)b”ƒ\Ç`Ãµ:\íA”‘\Ü\ÅB\0À£}¨Aò\È c¨8û¿ıcÖš\éÀ‚:‘\Óñ¨¡—\nPö\ëôÿ\0\ë#V\"=A\èr	\Å¹üœœ0?\ç­C(\ç\à¾µbXñƒƒŸz‚Bò0	\ï@¹\ÜRäŸ­!?Z(ô\É\ã<û´\ìAc¨ô¨¹\çÚŸ»~\ê:5\0Kƒøc\éI†şıG“ûŒ\Ñ\æ7÷\ç@ô\ÎiÄ±\à~B‚½zŠLşt4÷\à{\Ğ1\Ë~t‡\'\ëŞ4‚´waG©ş\ÃIÒ€G\ĞÒ…\ÆzØŠ\'Xûpi\0\Î?JP:Œ{ÒŒ&I\ë@¬=Ì“ÀŠ‰‰&•\É<½ı©¼v w>½(\İ\è1IŠ1Ú	\Í8ƒ)V2zu\àƒq“\èh‘“\Âûw©ƒ\Ç\İ\0t‡øšjI=gÚ“¨c×¹ ,4’\ä’OJ@:g\Ó4\à	À½<\ä\Î(\0\ÇA\Û4\å%\é\Õ!\0 #’\Ã8\Å*€>c÷q\ÓÖ‚‘°×J|`J@S†ô<f£~Abs\Î;SW¯^ƒ­\Ô\Òù»ñ\'N{ˆ¨¤‹98(q¿\áI\r\Î@3ş~¢¥p#eG\'§ÿ\0Xó@\Ê\åš0À\à``ƒŞ˜K`¦N\Î*G \áN~^„\ßÖ¢9E\ã\é@†\ÆA\í\×Ş”?_¥Kò\ä0\è\Ã8ÿ\0>õr=¹¬H#\ç>«‘õF\ìx­\'÷q³n^¾\ÔIl\Øİ”p­M\Ë\äv3\Ü\ã\å€y÷«ò.\Ò÷\ÎMn@\É\ãõŒ¦OaE\î+4\'Üúƒı*9?\ÖœƒN“$\î\Æ1\×Ú™ \äc\éTHƒ=:ô¤1\é\Ôw¦ŸÊŸ_¼\İ;{\Ğ!¿1\0\Èw¤\ÅHd<…E\ÇNGZnH\ï\Å\0,q‡\'\0\êOjWuû¨@{÷¦’\0=Ñ\âh\ŞY\É ü¸\Îi£\0œŸj”@:\àsR˜DÄ›b½9S\Ç\å@\ìX·•¤Œ©\0©NxÁ\ì~‡¥DùB§ 7POFÿ\0*™“zI•\ã\Õj\ášAóµ—$z\ä:PF\Ö\äCQ9a “\ÎzúP>D\ä\Îıš$s\ÔqHbJá¶’2\nôª•j,{GµC³y8\Ç^rqŠbbFH ÷µf\'Á\0d0¥T\'8\ÇJ\'\"±#=¨Z/ò\Î3\Î;\Z«2`B¶G¸5g9B{°\çñ\Îjw{cÔŠÊ„\äs\Ø\Ò\n=iGµ€¥y­ı)px•\È\ë\Ü\ZL{\Ñ\Ènù\ÍM\äŸS@X„\çqM\äÓ°6)y\â€A\íA\"€ rNAæ‘‰\'\ĞÔ‡&z\Ğ11G#¡\æ”ö£¯aœP!Pó\ÏCÁ©\Ñ2O\â ®}8nÜ©D\È<ŒP4@F<sÉ¦\0rr:rj\Í\Ú|\îÊ¸S\È\ÍW(í€Î±G¿ó \nSqÚ•y ½ü\è$z¨)øó\íJc<`\ç=©\èƒ+\Ôu÷©°0ò„`0Ï·\áAD[ \'i<\ãµ<(OB9ÏµZA\å\ÃóT§Œı\ã\Èü*yVùH`?\Ï\æ(\È6\n2¬3ş~•\0L£g®3\ÅL$89\ÎT`æˆ†\Ä,O \ßÿ\0­@^\Ù\Å5\0!pr*\\€€ñŒ\ä{RDøp@\àrhGö\Âõõ \Âö$zRHC”P~U\Ù\0\å¹&€#qÀ\ç‚?*M½óR(\Î{zSH\éÛ¾jC°\áò\Ï\ÌVŸ„89\ä\ßıj‡¯_J\Éô\ä(\Éd\çœHNc\\ú‘K\Ç \î\ãƒÒšı\nÿ\0tö\í@\\$cœu¨òŒGBx\ïRrds\éEº\î)òƒ™\0\Å-Šµ\ÚFÕ¬8T\Ò1Á \çúb¥ò÷\È!~bÀ}\ãÿ\0\Öşt¶\é‡†$:ÿ\0UXH\Äp®Ñ†Q\É\Æp:~u\Ï)‘…K‹apULnb?\Ï\ãT¾Ç\àc\î\à¥nÆ† x\É\ëÇ½f\ÈLP\ÈÍœÁ>ı‘§1J	«˜¨£s\Ü(#Ş–;vx\ÃÁ\éB®-X\ç\æg\nŸóš\×\â(Bpp:\ÖR±\Ïs/gü\é\0\ãJÔºŒ\ì!W©\äú\àT\Â\0\0w\àgŠjZ\nT\í±ClœQ–ø÷©\Ş&•\ã\éQ\àHc¹<U\'s6š‚{t=¨8®Xõ\ÇjL\ã#Nh$õÀ\çÚ˜…I\nõÏ¶;T\ê\ÊsŒx\éÀÿ\0\n¯’9\Ç”õ\Ã}Ãµ½	\ë@lX!\Æ	\Ë7RqRFûĞ \Ü\nò½ÿ\0\n‹El£/\éJw¹T\î\æs@Ä2b@G\ÍÁ\áŒn\ë·ñD˜t$‘ƒ\Éÿ\0>´F2B‚NF	 b©2º\ãc\n\ßşº†LŒ\ë\È\"•óŒ{œ{Se<¼9 L‡¨À\ç§\\PH\ÆW€3Aˆ©={Ò„\Î©É Dñ¾\\)\íŒR\Üt\ÈÁ\È\ÏD\Í\Æ[ 4ù²V2z\ÎNs@ú‚~´JR3\È\îh$¸ @F)\İG¸\ã\ëK ËLqŠ:3Á cÁ\Ê\Æsƒšf\ßó§ü\Ùúñõ§`úÎ€#t\ëÂœšh‚@8şU!?{ßŸÊ£‚q\Ğ\Z^µÓ¼\Ä\Ş\Ø\Ú;g¨¯R$••6€8\ïPù\Ò`\ícœ\Zo\Í\È$úRy<ÆÏ¯½;i1\Óõ¦!\Ñ\à¸\äğ*Íª…xû\Ø\íUs°\Üğ*\ÌDİ‰ hPy\ê¥q\éTy¸\Ç9e\äG\Ó9$â«œô\Ï$\æ€d\Â~´sÇ¯lPpO·AJ˜=ñƒh2óœ7V÷©\ã¸V\Îñ\Ó__ó\ëT\Èuúû´\Ü¡\æ€NÅ©	1±Áø\Ï\×ßµ7\Í\ä‡š„nõ\ì3H\ã\è\ë\Í¹&xWc\Û\0g­É ıŞƒ*\"ù\Î{c§F\à	ñ@\r#a#©š3\Ôô§o™ã©¦·¹ ¡œsR¨>ü\â zS\Ôx .<¹8\çñ4îƒŸÀz\Ó§#„ñS$l\ç\ä²>ö0 Ü‹®F9\ï\Õ2B?Ÿ™½}©ñB\ÛÁ\0`¤gÿ\0\×RJñÇ…ûÏ¤ô¤\ßDZ—eyANÒªzQ!\ç°÷õ§\Î\ç<\ä})©Á88¦‰{|\ã\0\ç~\Í\ÏQŒ¬K?ˆ\Õ(‘²¼|\Ä`~5µen!Tr\Ìw6=*g++\ZR‹n\å\ë4*„¾G9lqVbBa9_™²H=½?*Š$)/À\ÎO9>ø«$ª!V=’k™ˆk¡òLƒº\àş~µ‘«H#\ÓÊ\ã#\'üı?JÖ˜J\Æ\ÇjŒ\ê{gô«^5õ\âG\0-ƒ… `\í\í\Û\è*©«³:’ĞƒM…®$RFR\"Œ~_™şU±4cg¯§lš}¾œ-¬yY20\ç=>‚Ÿ$O\æ>B;Óœ®ô8r­L«˜q™ò2Aªów‚X‘ı\ï\ÃŞµ$L\å˜\å\Ç#÷¬Ûˆe‘ß‘˜À\Ët\Ïÿ\0^ª.\äMYhS’F\Î\à \ãi\çU\Ëœ‚*Ä ò\äğsP¿QÇ½jij4‚y\Ç\å@\È\ëN\0r{gŸjP:\ägD?OJS#+Ó¿µ. ~L*\Äc‚ëŒ¨ù\Ô÷¢€!ı\Çöc\ÛüEJ0T\ä\í\è}E$\ÑlP\é\Ìy\Î\Ü\ç\Ñò9#\×<\ĞAÀ\àG\r\Æj#Ê†\î3€3\Ó\×ò¦9{r¦¥’@\Ã/\\ÿ\0œR2GCÓ¡>¾ô!$\È<õ¢@£…\êzhb$õöõ¦…üÏ—\àğ\r \0#\Çÿ\0­I€*\ä“\É\'Šy\ä|¤’\æÿ\0\Z\0j #‚I\Çò¢\\t\Ïjt`‚>™Ò›œ¹\Ü1Ÿ¯ÿ\0®€\"#^‡¿µ$_ğ\"õ9<“NŒtü\Éô D€01d\ÇZcƒ\ÇC‘OŞ‹\Î@Ç®)$\à…\è \Ğ1\è™$Šw\Ùdôÿ\0Ç©cŒzIòÿ\0µù\Ó»\çò¦\ç…=9>\Ä\â£ ‚A¤÷\àÒA#¯B)\09\ç·ñ@l\Êç¼TXú\êx¤>£¢”l\Ç_C@22A=\0\Õ*\Èpƒ¦:~5\0ô©ÜAŠ8\ê\Ò0q\è9 ?\nEÏ¦rh\äŒ`Ÿ\\S‰R\Æ\Ã4¼”<gúi\Z2yP\n\0h™²;)\'$u\î	\æŒg\éE;1ô\Ã{õ D}úÓ²9À\çŒ¨\Ï\ËV\"‰¤\ÆØ‰\É\êx \n\Ø$I\È÷«m°’\Åsı\İ\Ù53~”ˆ@ÿ\0õRu¥$“Œc¶\ë\Î;PqRFñH>\çÒ¬E\"Æ„9\ï\éI”•÷(”cz—c\ĞVD€ª£`<Š>¾´É¤Bè‡wg8\rT\ÒVL¨#„t¤“e]\"ô²+c–¨‚]÷s\×ó¤%¥%˜ó\îhÀ\ë\Ğw¡+	É²Wq\È\ç®KR\0:Ÿ©QŞ€¸\'¯RZ\Õ\ÓtÆ™\ÖGˆ\' (rI]rz¦Z`™e1$nCn1\ÉP\Í\ÎĞ¹8\íÀ«VzkÉ€\ê\0\ä`Â´’\Æ£É†$^¤…\å¿Ö¹¥;³²1\åVFdv¦2\ZA\Zdcƒÿ\0_­,o\n4‡j ,r?Nõn\å\í\á‡Ì‘#`67\àÎ±\îR\çQ˜,(À\î\å_\å\Ûş\×>¾ÿ\0€4%}\Æİ‘Nşü PO™ªO\Îÿ\0_A\ßLúU\íD1!»º\0\Ü\È2ÿ\0\riišv3yó\ró‘€¤d/\Ó=O¹­\'‡\Í\Îüp@i\Êj\ÖD(\ëvcI#\åù‚q\Ø\Õi#`‘óv8\ëÿ\0×­§·\r•\0m\Æ0J©-¾I8<|ªsŒú\ë4\Í“,a=\\œ\Ö4¨–€c†\Æù\âºˆ\Ûx\0	\íX—1ÈQÊ•\ÜN\à1Ú¶\ØË˜l;A$ö\'½B9Ÿ™y<±±\'\0l\'#Ÿ\åU¶28$\ÏÒ¶G$“¹$j¡ •\'œ\Zr¼©A‘ru\ì¥?9\ÚÀ|\äóÚ™$xm˜\ÇN\r\ì1\"\çrõ>µ`Å¼²n\0Á÷\ëQ.\Ø\rÑ»\âa*Ñ‘€Uº¯·øƒü\ê¥\Ê`r11\Û\ë\ïN‰\ÆJ‡š[Ï´\ã\æ ©>´ªş\0\ç§ˆ©¾\0œcüj¾\0b3‘ü\é\Èq“\è)’‡Œı}:\Ôy<c®z\Óú\Æs\Ô=\ê>h`P\ÎG¤^p¨Á\Ç¡§t À\â€&ß’tcÇ°¦H\à\à.?Zfr\ç¨¦ƒ\éŒP\åÈ©(ƒ\é\Í1\é9\è98©$ş bDHr\Äó\İ\Ïÿ\0Z¢8Ş¹\äMH\çfuQ\Éô¤Œ$\ã…ıh.OÃœƒ\ÛÖ¤\ÙşqQeŠ\Ç,~lQ²Oö¿*`WL`\îšYy!\\sGs\Ô\Ñ/\Üüıi\0‚LF{\ÓsœùŠNÂ\ë@‰cÊ’ŒŠšXÄ‘\áyp\Ø8\ïEVC‚#;\Í\Ël1\ç\Ó‡Ğ„\Æ#À={óÒ£b[Ü“Jrr*O§\çLLw@~õ=²e%lı\ÕÉ¨\0út«V\ß-¬\Ì@;¸ ha  _\á#;\Ô ‘’N\é\íRo\ÏRŒ\Õ.\ÎoNô“ ¡\'†<;\ÓQÀúšN¤Ó¾)O\Ï÷x\Ô\Ğˆ\İcÿ\0*$½ß€U\È\Ç?‘õ¦òò .9¤c\É$ÀqMxı\ß_Òdqz\Z9G\'õ¦òI#ô¥/W¬\í·\à‘\Æpi7b\ã\ÊĞ£\r‚*Iy	õ\ì{VºZ¨# \í\ìMW¾¶a‰8¤)\0\ç\nWf®‘›±ƒ¼À\Ç¦<r!\Ã+\Ç ŒUñnä”2?\0“\×üú\Óğ\Ç1ùM• G\çı*®G)\Zd¾•`G’6|Û0\\&\â3\Ôg’j\×öhN‰ld·Rÿ\0J—$Ti²=2Áe¸R\àg²\Õ\×\ÚÙ¤q€H\ç‚sŠ©¤E\ÔaŒj¯)\"ü\ëz\Ş\ÙP|»N0GO§ó\æ¹\êI¶uB)-	!‰@;°\ÇP1Ÿ\ÄÔ’ZŒ™&;\ÕR	ş\'úTñF\Ø.0pT©\Zƒ¼¸-Œ\Ğ ÷©@Ù›œg˜Û„ª00\0\ÛôÀ\ëşG­IöTŒ‡Qœs´sŸñ>\ç\éW°	H\Ç\æœ#\'m\'\ÔSl\nNŸ\'\Ê3ı\Ü÷£\ì\ÊS\ä÷\'8«‚\Ü!Á\rĞ1\íô¥òğ{q\Ó5,fk\Û\0p\0ç‘ƒTå„Œ\ç\Ô\çüûV¬ÁA\0/‘\ÇNa€À\ç=³\Å$\Æb\\\Â;{\Ö-\ì@œzó‚:\Z\è\î€\í\ë\éÒ±\îc\Ïlñ\íZE’\Õ\Ì	\"d\Ìl¹\ÇFX |«g+\Ü\ZÕ”rsßƒÕŸ2o$‘ƒ\êG_şµn™„‘M\Æ\ĞJ\ç\ïT€\å\ÆzÒ’D(I‚qƒH‡¡\Â2hŒZ,\Ä1€N/\Ğ\ÕY3’\ç©w«X 9\åGoz­.	;qÁÈ L@H!†>SÛ½Iq\Ä\'®A\çŞ¢8ÿ\0hâ¥¸p R;ˆ\ÍĞ«O<ƒI\Îõ?(#üd”®rG®9¦Hœ”\Î{\ÓO\\ş4ö\à;gó¨\Ïj\0y>ü¦•\Ïøzh\Ïqô¤<f€9ÿ\0\ë\ÓI\Í/¥\'z\0’<*\ÆOJ_0Œ{S3ü©@Ï¿=»\Ğ–=rI« yh\ä\02\Ã\×\ĞS\0X†÷9o\îúÑ–\',Ibxÿ\0ıjI\äœm<\×ıaV<\Ù?\ç¬‘ª„€\n€:\àõ¦ù‡\Ğ\Ğc©ô\Æi\åºg¿4˜\Â‹Ö›)\Ğ\Ğ	\äıhÁô¤¥\ä\Ğ \æœI\È9\éI‚1\íÖ\Ğ\0NM\Å\0s“A\ê=hÃˆ³ÜjmşX ö=M1Q\Ù\É4\ÙH\Éõ {\r\É\'ò\éK’À|Spi\é\Æ\ßZ	%Š1À>¸>\Ô\âŠE\0ò}iñ\à[\0zqš›÷Q¦\æ\íü ò\Ş\ßJ\n*¼då±„üQm$n=\0\ã\Ûÿ\0¯W™\ç ¡{/ÿ\0^«\È\å\ÈP6ªğ_òh„\ë\Çÿ\0Zô3Œ\áGAÔ¦¤·‡{€H\×-\Øj7b\Û[“ƒŒúVµµ±L`d÷Œ\Ñm\0\0q\Ôb´cŒ\00?c)\\\ë„DN$\ÇÍ¹’\Í\Ãc9®KH\Æ\êHş´\×\Èu|©e `u4“WFm­»9h@ò\Ô\àpIş•f;R\âpzƒ\Ï\á\ìi,\ãh\äIØ°v>;\Óò?Îµ\ã‡÷û\Ñ~d^q\ïÿ\0\ê¦İ˜¢´+CÃ§\Ê\Ç>˜\íZ\Öv\0C\æeI#$Œÿ\0úª;d[™«£ƒŒg\×ñ­+8N\r\Ç\'G§½b\åsU¡H\Ûÿ\0gjB\âˆŠ\å•G_ÿ\0W5·d›\Éb\Üd\í¸ÿ\0&¡–0™ \é\ê:ş•f\Ö?)\Ö1Ñ†\áİ¿Â“w\Ü[£Mƒ$ñß¶jA1‘\îjH\Ó9©dzv\ÍRZ\Ù\0Lc“Lx™\Éùˆó\Æ*\É\0s\Ğö\Å0=ûŠ,	‘<`¦;}zSvds\éÔµ)õ\ì{S6H \íõ¤2œˆ \íÚ©Ê™\ÆGÖ¯\ÜFJu\"ªLC‚py#FLÃ¾:ô+.\ê>O½l\Üg§ ëµq²pFG|UE˜P\ä3c<`QYÒŒc#{V\í\Ì`d¨ö².#Fë€¹5¬Yœ‘C\å\' 1=0J„€=:š’IC×±íš¬ò—=mšM<\Å\Éô#HGF1Ö£O‚{úT¸ùú\ã&¨±‚IQŠ.‹«\ÙEK’˜8\ä•\í\Ï$\äzPŒ\0¹\é¸Ê£\êELc<‡ ñŠo–FIv\éL‘²\à~&›JA$\Òt\íù\Ğ!{gŞ¹¥\äcœŠNh§u¤¥rS\éÁ¦\Ğ±úóR&6`òj>üÓ»sš\0\\’G€)\å¶/¦3L „\Î~cM\Æq\Èúf‡<Rş>Ÿ­ÿ\09¤„\ï~X¢£1³@$T¸^Olb¤M¼\ì@\ãq=iÙ›\0¶ƒ¹¦£§Ö¦w99>üT`¨\Ë7\'øT\Ğ>\à\ç©\è=)– ~t¸\ÎX÷\ï\ëHzb€\ß/AÒŒOl\Ò\àcüŠ’6	“\ÕøÀô B“\å&\Ã÷‰\Éö¨\\\íJN_\Û=M799õ=((Á\ã­=\ŞıqL\ã\Óœ¼®(&ğ;”p4¾nò\È\'>ôÏ”‚xõ©<µ\à‡\àõ 2d`œ\çq=(Dôü\ÍJc\à`/<\à®?ZA\n˜¤Æ•\Ø\Ìe€\Ú;\nĞ³„={\Õh\á;\Çõ&µ¬\â\îô\Íe7¡½5©n\0?ú\Õd\028\Ïnøª\Ò\Ü\Ål˜$<…õª\ß\Ú\Êüf\0tU$Š\ÍE³W4·4\âzq\×Ò\å\ïC\Ær0Œ\ÖIÖg\n\Ş\Ì\â§Mld`·œœS\äböˆ»mn\0([r6\åÁ\ã«ö9\êü·¤ñ¹}k2+ø¤F“»h8ı*Í¶«n\à	•\ä63õ\Æ)J-I\Ñ\Ä;(\Ç\\*\Ì ‡lA¬´\ÔbÀo9Z,\à¸+õj\ßQˆÜ´LË•‹W¦—Ò²\åf—E÷\0G&\âº•ol¿*\ä(L1œÁU†;öık*ò\éR	’A‚\êUGL\çüşµz\ÖFT·\İP?LÑ²\ÔÖk\á2GS\ÎEJ8\è@À\ÏÖ©\ÛI\ÕNW\Üş½]ñ\Æ}*“%¡\nw\'§=3šŒƒ\ÇÓ:TÃ¸\Ï9\éMqœÀ}1L|_zdƒ=:}*bTõa×±\Îi¤®K³¢‚·QY÷ˆ\Ú“:Ö„²(²ñ\Û9ª\èY”\Üõ˜©e#:dnHSŸ¯ZË¹vş\ëaz\ã;V¬®w€sœ`\äc5NPF8`@>”\Ó(Å›h\'\æ\\g\éŠÉ¸pòp\Ù \ã­m\Ë%™‰İœc¦+*X\Î	\nK1À8õ­c¡2M˜E$²ñQNÜ¿\'Â´.£`ÿ\0*œ\ç$\Ã\ßñ¦&9\íÁ\ç¥kÍ¦‡?\"OR©·\0|\ÙNi\É\Æ\î¸\å»T|\ã€\Å\äŸZqµO\Ìi¦CŞ„oP6\å\ç®;UG# \ã\ÃÒ¬qü‚*¼¨Q\È÷\Çê“¹-X\\‡\Ï$w9¤2c\åq8\íPŸÿ\0UN¡HN pVÿ\0­QƒbŒ?)*pCO;_ô\éL#\ë@‡\ã#\è}i¤cS\Ğ\ä`úb“€Z4g¡\èi:­K\å’°\âšGC\ê?:\0@:\æœp3¸\ÆjXñ\Ë``u\Ü2y\É\0\Ü\ç9 gg¼s@Ò\n\ç.I\ï\Í%£Š\\\Ğ1\Û×\î¯J{\Ü6\0P\0\Æ3\ëQˆÿ\0vX\ç9Àƒ\äÿ\0*\0\\>ƒÖŒl9%X\ã\ëŠ<ú\Ò{R\0bwy4ƒ#ŸÊ”‘\îOL\ÒgÓ\ëL\È\èsôŒûSˆRû~B\0}G\åIšNÿ\0Îß­\0=ÿ\01R\á@À\ë\éPnúÒ‡=(\ÉF?N\æ¤F\Ç^Ç­WGÿ\0Z¤\È|p3Œt kRxÂœñ\äÒ§H›\'\nÇ¸šªIû\Äc\ÔÔ±ü˜$’3\ÔsRõ);‘	\êF;w§M©,I\å\Ç\Ë\ÉTå˜”!œœ\äñøTI\È@\Û\Û””V\ì·7²òKpO$3pFp)9c g\îñWb\Ó$@\Î8#œVŠiXN\Ò\0>\î9¢\é‘½N˜¿¿9¥DSÇ˜|õ\Ğÿ\0a¬‡vü’8b2?ñª M\É\Ü€\ÑÌƒÙ´g#¸%Va´œa¹©…\Ìñ…ÿ\0vx €\Ãõ©_H‘\ç\àı}DöN™\n7.8§tÃ–H\Ş\êD$qƒsÿ\0\Öö9ö«ıœ©sû\Èø,\Ş_¯¨¬ô‰“<n^§‘ÿ\0\×ñsFN:Š–“)9#¥7¾o\Ùşbv°V`rYqAù}kj\Æÿ\0Ìa‰UÀ<ô\ÄEp\Ñn\\’2;¼?Î¶,&w2<<{	¦9ÿ\0\ëVRŠ6Œ®v¶¾k\Î\Ïk^)‰À\ç8\çÚ¹M7q*¬N\àqŸ\\\nè¡—øˆ\Æ8¬6e—Ë€X\à‹\ÇÒ±pql•ÿ\0\Ë”\à`†?\Ï5W©\Ø\ã­&@\É<\ç®;\ÓI‰\Î*¬²„e¹#\'(¸XK¢»ÀpTqŸóÖªK\åùŠ¸\0u$óôªZ•ñŠGq\Æ\Âœ{\àş@ş•J\ëQ	¼ ¹\å‡8\Óğ\Ï\çE›\ì^‘#rKô$\àgÂ¨\Ë\r\Â2$¨31ÁB:ş5œú\â\É$aT±\0q\Éö\0şdRC«°\ÃNX€…\èÿ\0¯Šµ.tEu$ñ“‘.ğ8aœÊ©IpL$}Ó9b\ãXs»p	,zş]\ë<_\ÛÆ…³p0\ãùU¨;lKš\î2Ig\ä;€\É\'¿\áU\Ú]Ä°\Ú!Goÿ\0U]7ğ?>B\Æ?*£5\ÓNUÔl\Õ$\ÑI“$J€*A\î*7d|ğqœŒôÔ™!°ÇŒ\ç9§›0\ì­=3E˜\îš(Hœ:g¡\É/95rHóÓ€NFzñUqŒœôô«L\ÊHö¡ùNNy&£\É,I9\'½+\çõ \Ôf¬É€=s\Ğõ ‚1\èzZ?\Î)\ÉıŞ ö4rmô\àŒ\ZB	üi\àª²˜\Å\rÓ§a@\Éc\0`GCş}úSf\Ër t\ä{ñ¥·c\'‡\ã\èi÷	‘½z¯oj.A‘Ó¸¤\É1‘\Õ.Fq\Ï\\ö4“¡6\Ü)\è°ğy\èsÒ“<Ô‡\×ó¥\Ï<û\Ğ \É\ÏJ^}©¼õ£ŸZ\0š\ç\æ}Ã„==©‘\ÆN8üEX1¯a¸c ô\Í\0pI%W²ô\Äl‚03\×•GÖ&s–<ö¦÷y¤ \éM\éO=)§ ¦ Ò—>\è4”J;i½\0%§P“?*˜ø\ÅB‚¬\à~c5-—* $Ó¥O(Xa=±Kn™9ü¨ºŒ\Ü]\Ô\rª9\ÇÔ§©£VEtH¹\Ç<ƒW,£%Ê€¹\Î6±\àû{f­\Ãg‡iB	\ê;‹f„\n\ÙÊ¶>÷±÷şt9\'¡J\rjiÛ¤¶\Ø\r:c?#d¨ş¢µ¡*\èY\0¹\È\ç5‹g|`*\Èè»—\0Ÿ¯\à=+J;¨+ò’rTŒÿ\0]c+õ:\"•‹¢1\Ó#O8©„1¾F\È\Ç³ş\Õv\0\ÜÔ±_\Ä$¼ŒŒƒƒPib\ß\Øxõ\\ci*Î’¤p£§b´\í\î\"”\0$BÃœR<(6Uø\Îis4.Tr\ï¥—\å\ç \íP;fH\í\È\ÅusX63€O|v¬¹¡)’:wªU¹1R\Èdo*ñ‘V\íƒBŠ„*\È\Ï\ÃœúÕ‚<u\è\È\é€F;ö£œD]8–c÷º`c½ƒ \ÎÁ\Ï¬93Œ=EkÛ•\Æs\Ûó¬\ÛÔ«hi£\åôdSÄƒ\è@\ã\â«Dø\Ç98\é\ëRôz`\Ğ+y3œ÷&³®.6n\\\à\ãŸz³(;\Ï¶k>Q¿;²q\Æ3š.1oôÎ»À8 ¹ÿ\0æ°µ)Z)„D+>\\s\ßŸøVıòf<\0N^Ed^\Û	§$õÀ##Şµƒ]I”_C*`Q\Èq1‘À\çùóL7…À’F\Ï<m\çŸş½^¸¶iX\ÙL\äñÖ¡¸±g\Ï\ÊzŸAú\Ö\ÊH\ÉÁ™D—¶õ!z3/O ¨örJ“Œú\â´SMc…,À‚güš’=G;›wTg\êOOÖ©I¸6c¼lmÀ@9¨°0p÷¸®‹şøˆ\ä6H\ÎîŠ¿\âi¯\áô?x\àöU?ÖtÍœ\î\0\ç#=x¦\å‡9?n>Š*ö\'“T\î,%Aœ\î\Û\ÇL\ÑÌ„éµ«*\ÇrÁˆ\'‚0iH8c\Ç@½DÛ”ü\ãô\È\Æ*h¤2N\0^@ÿ\0úôüÄôei\0\Ï\é\Í#…=±ƒ\Õ<±{w¨>lc×­4\îKVZp‚3\ÇQ\íGü­\ÔÆ—¯ `wöÿ\0\ëSÀ\0y\ã$SñÀ#¹úR@\Ï88\ÍFN÷ œc ÷â¬¤™rq\È÷¨PH<(\çŞŸ‚#•\0¨I\Ç\nN|T¨‚M\Ñ7zq\Ğú}*\ä9\'¸Á\Å=\ÉFy\ãôt¼´gœ\í=\r0ƒŸLU\é@À,	\rÁü÷¨$ˆ\Æø?u¾\ë\Ôˆx8#ò£\ĞS’=\ä\íÿ\0v%½\Z€Ô°3\Ø#½@ò±\äœ÷©\Ó#n\î@8ÿ\0\Z¬F~(&sÁ\ï\éNÁ\Îº)\âNAú`û\Ò‡ ¦šszb˜i¡1Gz;f…È¥\'ò	š))h)h\Í\0s@ dûñVq¼ş•\n\' U¸c\'v¨“5‚¹<C~Z–8öe±ó1\ïNŠ>‡Ú¦òş˜¬\Û7Hz?LÖ’\áÁBœ|\Ã¸À\ëÚ yr9$ñI{ Œ˜ü¢\í#¨şÿ\0\×\éZ0\Íÿ\0Xê£¯\ÌsXşka[G\ŞO­O\Ù\'9ÿ\0>¢‡‚•uco˜Àñ˜şub\åG“9\î@\0\Ö1¼œ—‚{õ\ÅXò!4‡\Î@»S=zŸf\Ëö‹¹¿\í¨fG\Ç>lY˜\íV\á1ló e\ØOß‰²\×\Óñ¬=7Q7.XJ>o˜!8À\'ñÀ\'ñ«\Ë3Bb•.‡i—>õ\r\rI3t\\6\0|õSœ\Õ[˜\ÖL•\Û\îª	~Ğ³\×ıh\áO\Ôv>ı*ß˜‡y©±[r¡Byü\r10	\Ç\ç\ëV¯c9\ÈıqU\0\é\ì{SH.h[\ã#\0JØ³$`\Ö%«ó´ğT\ÖÕ¨$Ÿ~”˜\Z‘y©°Ş„ó\Í2\Üe#ƒ\ØT§\ïŒÒ±J\Ó:ò0zdJ¡p\à{ğqŞ®]A=Kt\Íe\\8ó£57-\"¥\Ê7\ÌFx³¦\Ëõü*ì¯\Ç$\Ï­A\å\ï<Œ¼\Õ!•DLp9\Æ:\ã5$Ve\Î0psW#…r:ŸQœ\Õ\ØbT@=ğ;\Õ\\–Q¶Ó” ,\Î*è±ˆc \Ç‘œ\Ô\ÆUM\Ã#\å=sŠ¬÷\Âe\àòKŠd\Ú\â\Ë\Z§y<ú\ãÿ\0\×T&Œ“ü<\ãjK…$•*NzƒÖª\È\å\É\éŒğ:Ñ¨\Ò)I\Z¾[o\'ŒU&„l ’A\ãµ^–Á\Ï9SdA3œÓ»E8\İ\ÅıœC%NH\ã’•gFLnqƒŞº[ôùc€¾†¹\ë¸ü¹¹#çŒ\ÖğwGH\Ù\İ\\\0d8\Ï¡ªG‚kBd\È:‘Œú\Ö|œ9\ÍZ3˜\àI¤\Ôø_?!ş.2@	8\"¤N ‚sš£4KƒŒôôÛœT±‘\È\çi\Ëz­>\ä\àÀ§¾\Ì±§½Wï¸°ştğI\Ï$\àw\íH\ä`gx õ¥\ßÁ\\÷À>µÀç§µ=H‘	\Ú7(\ëš`9dl\ÎO§µK÷\á(F[†j©$8õ©ƒ\åÁ\Ï s@ \êÀ\àSı¢o\ï-Wp#>ÇœzSş\Ğ\ß\äP2E9Œ0<\ç\åU\ÜnsÇ¥Lp\0qœ\n\Î&>™ LOoÆ”8\êjG\nøe\ã\'‘Qgö4€N¹ü\é´\âyş^Ô¤óv\êE1\r£šLu£­?\Z`\Ñ\íR&×Œƒ\Ã‡Ö€œRŒdz@H\È\ëK\äP2\Ì#\'5§oz\Õd\'\'×¥j[FD`½Me6t\ÓZw•d&HO#=:Ry+(\0ô<U¸Ğ€K`\ãx¬®mb„\Çfr8\è\0\ïY’\È9l‡ü+J\ê6–n3Â¯p?úõ—qlÃ£p;qW\Îı\è—\È\ã1MK/\Èö©n3†\İ\Ï|VÎ›\nUÂ†\è8\â´M\ÚM\\\Äò\å,|\îcŒµ!¶ty#,Dş[\çO^•³¯\ék4WH@\î³1X2¾\â\Û~P\Ç<UhM™¡Ÿuöo´Eq&\ÂF\×Âœt\ëz}j(õ+¨\ÉFs\Ãe:Ÿóüª;+ùl‘\Òx\Ú\Ä(%‡\\g¨\ÏN+k\Ãö2k\ZÄ—$5œ\"aG\Ğ~´‡+³Ö£•S“\ÏRNsõ­K9LD`“cŸ»ÿ\0\Öş_J‚û\ÂK1\rm”lŸ•GüzÄ†ò\çG¹(²y\Ñ)\åH?\Èô¬eê˜\Ô{3­¹s\"s\È\'‘Y\Ò9‰	# r@\ïZ¶2A©\Ù  )*O*Â¨\Ë.ó“Ûš\Ëm\ÍwB\ØHeEr0§Ò·l¤m™rk$\0˜\Ï\Ó«j€\0H\ïQ&RFÍ¼˜@Y°¸\ê{Ô’:\ã¨\ç§R\Ş^|¼q\ÜU—9N„J–ôµ*\\\ÃŞ²nK~=«F\á\Øg¡\î;Vm\ÇL§ô¤‹Z\Ç$“\È\í\Í$›c@<\äv©\í\É\ØGBy\ÎzU\Ù7\Ù©\éZE÷\İò«œ\ç8©¢ô¼¤I#dV!’\Ï\áYr\ÌÄ‘’\Ğ~g·\áKounQJ£pU\Èş¤U¨’\ÚF³„\áÍ£‘Ğ™d€,l—§ù\Õay‘\Âş`Ty\0$v\ê)fq{ ºM\ÌPœ$\ã§\ëT\âÁIu$v\ç8ˆ\ÄG|QQÉ‚®Jö\É\È4·\É	;”-VóH\'\ÔÙ–š&ñ!\ç†FZ–I@Lœš¦î¤Œ§¡\ÅKˆÈ“¦:Aÿ\0\ëûS°®W™ã¸Œ¸\Î:\ÖM\ê	@ ‚\Ê:úÖ‡š)\Æñ\Æ\Ñ\ÜzcP?»@\ÆOj\Ò:TW*\É!@\×oZ£.G\'Œ\Õ\é¢`\n…\ëÁ\Íg”\È\äıj¬s\Îû1 {iø\Çƒ\'\äM…OR{\æšpA\É\êy5Fc¢\îs\ÔbšI\È8\Ï|\Zv@\n\0ç¸¦·$N˜\ï@\r=;c±4ˆs‘HzûS`÷\â€\ì:h^7g#·jNN~”ª0sÖ€R	V\Æ1\Í( ú`\Ó	\'é” Ç§J\0–A½?Z‡cz\ZP\ç‘Ò“ŸOÖ€\'\0’G3Á\Î*)G\Î\ßZ±\Ï\Ë÷H\ãÚ£q’O©\Éö¤2\ä~t?­!\ïJZ4õ\Í;ªg±8£§ô¤\'€SÏ­óÖƒ×‚(\Çù\0†€~`iH>”m\Å\0ù³\ïO„\r\äö™\Ø\Ôö\èO\ã\Åµfœg`úV”\\ô\è>µZ\İ\0\0~z(\Õ•\Ï&vAY\Är0œ\ç­Y\ä\áqÀ\äã¿·õ¨b\Úf\0õ\Æ@l`dg•\Í,P9yú\Z­ql3œ:{\Ö\ÂE!.YT\á\0õ \Ú\ï#\Ü\n¥!4aEl7\äObqV\Ò\Ìı\å,ON?\Î*ô–j¤T‘\Â\è€pFG8£˜J6*\Ë;µ©¶œ4°‘\È#ò¬£¡Û–\0K$|ò¤g¾w¦T\í=ñÖ¢ò˜“¶6\äsÖ…6†é§¹œ·c3´ªÜŒ ş]+£´†\æ\Æ\Ì[Y\É¼M\Ë\\œıOZ£S€.=N«\ĞÙ³\à3;„/©¡É±ªi}ò7G«<mŒpqÆ£:\ÓG#%ü¹—–g\İõ=\ëj\Ú\ÉS9NOP9?>Q±za$§üO3Ae\ÑÕ…¤\Ú<’$nÎ¤rzf¬>\Ñ\Ë\ÉµY¸%ßI9b«„X·0å›Ÿ­Kwe%dJ9‘~R\ÛNKzV«—@\Ä0ïµŸn#RN8\ç¥jZº”\Ê\ÛN	õ¨h¥¡r\Ş,m,K\ê1Vd8>• ¼³\rÃ•=©\î\äğW°5,\ë­\Üç•F~jüÑºLXÑ±û§¿\â+>CûÂ˜#ƒ\ëB5œ\\–\ïæ¹kW\Şv†K)8\'°­\ë§sjDeƒ)\È#­`\á\á\ŞF\ç 7\rŸ­kN\İH•\Ö\Æ/•¨^\Ü\Ú\Ì\í\ÉŒU{\Ëy\íg1\ÌÌ’,¡}Æº¨fk#\Z\Ïd\é´a™N\à\ß\çÓš\Êñ\"E,‘\İ\Û0t#\r\á>õÔš\èsMH\ÇO)@i\æ\Æ\êq³\r\îl\ã\ßb\â\Ö{hR\é.RM¯…ò\Ü¼gv@˜¬ùps\Æz\n½e©´^\\S*½²’Z&P\çq\Ô\ãn\ÕZê®G§r0<\Æ\Úy;\'\ëWa¿†A\Ã,Q¯U-–oóúÕJ·¿\ÖM8JmcQ\ÌÀI\Üc=¹\ã½E¬h\Ñ\Ç16\àFÀd\ã€hqL¨\ÊH_´\Ç3™n9\È\Æ*A.P«u\è3Ş°–im\Øƒ\ÆGız/2\än\êN+7lj«_r\ÔĞ¦>ñ\0Gÿ\0Z *J\\\'\Ë\è\äV\âG‘®\î™\ÍHö@·29¨\0\nI\Ûpjú£\\\É-ô5\\Œdø\nØ¸¶Qœ3REd\ÉòdqœÖ‘w1¨š\Üa\'9ô\à\â…Á<É¦œpIü=)rqŒ|½q\ëVg\Ôw?ğ.¹¤\Ìi¹\ï}(PIÏ¾ 	ylÇ¶)$ÀLçŠ›\Ë¡ô#Ÿó\ïU\ÎşÃ© \0g\é\Ï4\ã\Ê{šjw\Çzt`ñ\Ï|\ĞozPz‘Ûš:’{u¦Œ\àûš\0RN:\Z0\ÔAvæ•ô 	r#CwIôÿ\0?Ê—8$\Üÿ\0]G+™e‹y\'ŒÓ†)ıŞ†Ê˜9õ\æ™\éS|¥0Oÿ\0Z¢Á\ç\ëŠ\0~7ÇŸJ†¦GcH\àõ¦!¸Sc“Òš;S³\×Ò€A\ÏZj§½ Ÿ­ƒ\ÍZ²#\Ø\Õn£9«¶	Á&¥½Š»F¬(K¡ì¼Ÿz²N\ÌüGÚ£€=qŠ<	Áb3Š\çlë…¨c,z€ML2\ß4hYƒ±\àÿ\0U,ciéŠ·\Z(!{\ã=1ŠÍ²\Ò‘’#ƒŠ–4G8°88\íKx$(\àòI=j[ke‹snc“\ß57+”T·Ÿ”‘ù\ÒM!H\Ô|\Í\Ôõ«>b\Æ\ê¬[-ÀÀ\ÍNa\É@\ÏlóŠwŠŸg;”\09Ï­<Y¡\ê7 tg\Ë\É““\×*BDd\è P˜Ê±Ø¦Fò;U¤¶U\0\0¸=*p=\×Ş‘\İ@?ıjw±;‘>#\èj¡päƒ“rzõ\êÔ’ƒ’p2xõ¬ûƒÁ\Ï5\r¶RV)Éƒ\Ôğ94È€vˆ\ç\ß×d± .1ŸJGrc…4†ZG\0B08õ«v¼T*3\ĞzVLN\Æaı\Õæ´­¡.q\æ\Ãüõ¡\è4j\Û\Æ#L³n|rÇ½9\Ë¤c<b¡¶\"f,;1\ê)òg5$Œ@\Î:‘YóD\Ãq9\à\äô©d”¤Œ“’=(ó‹’n\Â>S\Ó4¬:‚;œ\Ó\ã…yR¿)ê¹¥(*H<\Z²ˆ¯Œp\İy\âšvW2nm§¶\'a-u\'8ªc\ì²&…T°\ä\ru0\ã\Üz¡s¤E1$(©ø~ª}‰\Ófs—:ŸpK£:’	 \r¿Ê¨Iá¸¢r\ÆW1H9®†M*h³‡\ã¦\×\ä~\ãŠAn\é‚ñŸf#?\ç5jmhC¦¨†\ÛU¶°²[{]Š¼’O,kşk›\Ç%”¨\'Š\Ş\Ñ\àf>3‚:\çÿ\0\ÕUÅ±Œ¶~enx\"Ÿ;a\ì\Ò\èr­nÀ…d\È\'$T\Ğ\é\ÑõòòG<ö­©-A \ã \ã=¨\"À\ë\ëG9<Š\äVö\ê\0!@8\ë\ëM–<\Ë\èM^AÀsTÜ¹šU`6m#½M\îU¬P‘\Ë!°J’G=«\nQ{’k¤e\Ó\Í\Üğ\Äs\Ôæ¶¦÷0¬¬‘\î§\ïc&GZ$öMjs Rs´±\êsÀ«á˜‚‘ò\æ›2\ß*u#¹ÿ\0\ëSf¸ò Âı(\Z<™W\êO­B8C\Ï$óO(_<aGs\Å4sÂ\ï@1\0<`õ+‚™ô\ÆI»\Í P9\Î2N?ı@u§I,q\Ê¯$u”Xûz\n\0\"µ\Ì`\Ì\ŞZ±ùW3}§¹ªœs\î8©Œ>\â\\\äóšˆóí“Ÿ¥\0(\éÓ¯\Óq\î)\ÃlúdR\ìOù\è?*\0T\äƒ\é\Í8\ä>ş€õ¦‚y\ê?*s@pz@†œdç¹¥ ú\Zi©@ù8\è4\0÷¦Œ2>¤ÓƒõRH0A¦c\î(\Zp#÷¤zP 8\ï@§8\Çõ¦úP2A\Ï´l‡\ëŠ\Îéƒ‘\Íh\Ù“Óœ\ÔKcXni¡ù\ÂûdÕ›t\Ä\ÆC\ÎF\Ñ\íT£\êO·ZĞ·ñ\ê8¬ÒÀ$}r=ªÕ¼E36KŸoj§Q ^r5v)`\'Ş³‘¢.\"¶0¤n\'95<‘9\á$\0}\é¶q·B\Ù$\ägµ\\@¸=†q’zÔ\ã#ˆ\å~f!F{Õ°ü}*,1#i!A\ç¥ó\à/\ÉcÚ69ğƒ\'<\ÔeFıù%»{S‚>÷$\î1ŒQ“\ÎI\0w€B‚qƒ?F}>¹ q•n{j;„yc\Ø—“\ÉQ(\Üv .óÁ\Î:Š¥q\ÉdÁÂŒ’MhH1s\Çz\ÎÒ‡r¥Fp­\0gI?{\î\ç8\ÈI#=})n.0î‹\ÕPG .\ç–\Ï\0U¤&Ë£H\ä+«À\ÇsZúu¼‰–‘\Ë;\ã Ú¨i\á\Î\âK‘“š\è-xÊ‘·i\è9©{\Øf(ò‡j€LñQº6	\ã=+R\ŞSvÈ¨®¡À\ás8\íI\Æ\Ê\àÙƒpA\Ç c­SÚ²eO‚;\ZÓ¼‡w\0	¬!|;¤©¥jU\Ë&\"L’\ÂE\Ã\ÃjØ±%X}\Ğ\0\'¸ªğ€Cr9l‚*Å¬\"é± ®sŸÆ²Ğ\ËA\Ï9\0´õA’0\İy\Ñy†6Á•†üıªB\ì’´ğ}4\Ú!«Œp›FwuTOn§¸\îq\Å_q»<sÚ˜è§§Lwª¸¶2e¶_\á?J«qe\æ\ã9\ã\ĞóW\î!s \Æv\ç=h’?n@\íE\ìQ”ö\Ë\n=0	æ«º.q\Ğö½^º/ƒ\ÕU®­÷ùm³;O¡ıji‰¢¬¸Ï§I\Ü\êéš½r0}8>µBl‘õfª:’ô+JH‚±\ÇLsš\ç¯f<ñœœ•¼bd@»\ÎÀƒt\Ú¯º)\îs\Ö\Õ\"¿–\Ù\ÏOÂ§GX¿\Ûn\Ş\Õ4\Ó\ëŞµ9¶,;³Œ“œõ¤y\Î\â08ö¦–\Äc\Ü~t\Ô~ƒş8 Z`Ë±õnŸ•(!P1P«GB\Õ˜¨;L\Õœ¹%·Z\0˜\\9\É*\í+\Ç`j!\Ï\0g\Ò\0]À\0~=ª\ÈM‘\ä8½ÿ\0\Ö\\Œœu$ó\êh(>nyw©‘º`~_ıza#\äzşz\ĞX9>˜\äR|¾Ÿ­>L.Œ§\×ÿ\0\ÕL\ÏÒ€üŠ:şúT·(\ázg& ´€Q\ß\ÜÓ¼\Ï\İ\àznx\Å\0š\0CŒ¿\áNt¸¨\Ï{Ò\\f˜xúR\Åş°g§z;õ”\è@ó€\íG@KQ\Æ3\æm)²!C´şr(X\î`:t¨n‡FJ”õ4q²¹q´®zš½l\nd\ÇTšL+ƒ#=3L\ÉûL‡\0ÇJ–\î\ìTU¬\Ë\èzŠĞ†C Œ±Á>•89\èjı®	,G\'Ÿ¥e#x—\Ñ\ÌA\Ï^H«‘\Â$98U\àôªa»/8úÖŒ$pIú\ÖMš\"òI„\ïÉ©mË¾K°ù@«&\×&<\à89\Å[·ˆDƒq(\È\'¹©(¶8ù~i\îp„òq\éMB\Ù ‚=3ŞG \0\ï\Í\0A%Áx3\Z3—8\ÆqŠeÕ³Lcer¥x\é‘ø{û\Õİ€dŒ{š\Î\ç>‚lB#òĞ…l\ã\ç8\î}9©±28\à\æ¡x\É\ÉI\í1ş­;Ê·v0\ÚN=\ë>õü˜¡Àµ§,+³=\Ç\"¹ıNS\ç¬y\Â–ö%¨6V†İŸ,y$\ä\â¦\æ1\È@\àb­Ûˆ‚‡<R^M„\àğj«\êf‹t“y»[n\rtq:¦<Wg0G\Ì`m>\İkr+®8ôæ”»¢U\Ù\Ô\ÛÜ¨@8\çGjV”\Åd\ÒG‚\Ê>¹¬kk\Ó\æ»Ú¯E\ålúô¤¥}r\Ù\İ‘ä¸²ó&L1Ş³®-C¸ ry\àÖ…\Í\æğ@\È•^\"² óÒ§g¡¢ó)[n†O-²A<{Öª!C\Ç\Ôñœ\Õk‹qå‚‡§ \Õv3\æ\Ø\ÈÚ\\”ı\Â\ã<zó@\'€¥¹9\ã4ñBYG\à{\Ó\"¸\Ü\ÈF\ŞH#¥‡˜ÂœsÀ½#ÌˆBA8ô\"œc.\çqû\Ç\å\Ç¨d·y0¡\Æ:dP\"gAÓ¶;ñP\É<{b”F\æ=“•<õÿ\0—„ÁùF3CŒ°¬‘ô\àúöª²Ä¨\nµ n\"##8İ·¦1U®0x#Œd\Z\â2#;°N9\Åd\ÜÄ£\È\é[só tojÊ¹2:\Z\Ö:\Ì\ç\Ç<gµ…t\ÒY€=s[y\'$ŒgšÂ”\åØœ\ã<b·†\ç=W¢!8$c§µ5À\ÆqŠSŸJP3Á­v®3¨\Óõ¥\ŞF\Ñ\ÈÀ\Ï8¤<w\ïF<u\ï\ïL–#9~½@;PŠ\\ŒuşT\09ş´õùGS@XcU.¯S¾¿\áRÉ‚\Ã\0|ª=>•d¿{ı*I.y)‚Ç€GEú{\Ğ1·\Ó\Ëş0y¢ÿ\0‰ª\áÁ\É ;3L9\'ùši=»PM\Ç`“\ëI‘J‡o\ÍøRq\ë@\Ë/™	\ÇQP1\î)òrG\Óÿ\0õ©ğ?h\Î\0\"ı\Æµ+ã\0\à\ĞH\Ã(\í\Ï4\Üqô\î)\ÈpE!\ÓA\Øûõ©­ørO¥B9\àşuj\Øf3õ©{vj\ÛÅ‹3\êy\éY7#ƒ\è\rj\nCÇ¦k6\à\æ2}O5sy\ìkh¥J\ãx\îyªw\0‹ù³\Ç\Ìxšt†)¢lğF\r-\ÎÓ¨JA\ã9æ˜©¡\íùÖ³”ö>µ›yõ\íW­À!@wÓ½f\ÍbjD\ç¿»\ÕÈ\Â8\ã€=\ê„$\äg¿^Õ£Œôk&j‹•\'\ÆIô«QÉ¾a\èGªQ\äLXŸ`sWcA\É÷©(¸y\àq»¡©@\àœçœŠ†7\ä\Ğr}\ê\\\ädg\Ô\Òb¿={Œ\àÑ’>lªr\Ã\Í$aˆù€RF9\ÅKò\Ğs\Î2h(TL\'ñ·\Óÿ\0\ÕO(¯N¸\Å5\0\Î;zu\â¤;Fb:TC)]\0“Œc¥q²Jò\\\É\ç(\ê+´¸%\Ğı2=ÿ\0ıU\Çk‘5µÈ”c\Æ\ÒGjh:\Ü\Ş<P’£ \Èµ\Ê\\\ë\ÆBL\Äı\Ğ8®”H’¦2Z\Ì\Ôôu•·@#$c8­)´¤Ô‹k\İd!r¸ ıå®‰u%’5tl«;\×šM\ÂH7/JÔ±ˆ\Û|»¸nª{UME\ìE\'=™\Ğ[ŞÜ¹«†ô \ßÀ8\îzV<hÀŒ\ëœ\Õ=u\å’Ä¤d\ã?6;\Ö1Šn\Æ\îM+—oüUmn6£ù¯\Ü(\éø\Ôzo‹¢’`®­N2y¹\àyX\0\åZ¶º;’¥”€9\é[8A+Bs“¿C\Ñ~Ò—6\Çkãš»¤#=™\Î\× Z\ç,•AÀ\ï“]>’1	\ç9Ç¥sX\èz\"\èC\Ï?QP\Ü\ïÊ…Sµ‡,?‡ÿ\0\ÕV\Â8\Çlô\Å7\å\è9\'œ\Z,M\Ê\Ğ\ÆÁX’\Ê3Ÿ\äS¤‹\ÍB1\0§~\0<r\íLtÄ™U\'ssƒŒR°\îW\Ã\"Œ0\çi\ÅW2°p¦2Œ\æ®ùk\æ3rI\à\æ™,jFI\Æ9Ï¥\r\å)O\ÊFO_­@\åpzò:\Z³2(\É‚*¼\\ƒ¸\åz\âóóc¨<dc5xpHö\ãŞ¶nypºs\ÎköL–+\Ï;rF1ZGq3&\å\Ê#\Û&±Šğ\àkSQp~DVqdô=+¦;\Ó\ÕØªGJ\à\Ó\È\Æi¤€	­‰óÒ—G#$ô¦¦€I=zwª3\ÓsùÒœI\àq\ëM’iuúp(.\Ä €F0)v1\ß4\Şqô4g\îzP\nOZ_¥s\í@€ı¨\çÒ“$õ£#Ş€&~\İ*>¸úÓŸ¯\' ¦\çÿ\0­IS¹pqŒzÓŠ‚?CM\Zpüi‚F?”õ7–_3\Øúÿ\0õ\ê&SA\ê(£’8«\ÖÑŸ/©\éT9­W\Ü1ıÓœŠ™l]=Ë‘J¦\r\Ø\Æ\rSºŒÀô\İV\äŒ#’=9ª\×9HIş÷5\ÖcbŠ@‚A¢•}\É\'¿&´\"\n,\Ğ`|\ÃH¦Ëœc¨\Í»¬•‹‘sWm¤À\ã¯óªq}«P§\ç$qP\Í\"h\Ä\á\È\äúUø]†s\Ü\Öe¿×®jün\nuÁ\ÏPk6§	şÂ­\Â~v9üûVh\Ü~F\Ü*İ¬…\Éö8\Åf\Æ_Hr\Ã=*À<ß¯Z7\ëŒõÁ\È\éR£‘ƒùJ–4XG\ëÛ=\éù\é×ƒ‘š€\ÏsRdq¸ût l“$ƒƒ¥!Á\Ï\'\0})™À\ê\ÇZd’ô$vµP¬2\âE\çJÇ¾‡\íW^†´\æ\Ëğz\ç$T\İ\ç9\ãœRÌ¾Š\È\ä\Æ\Å9\ÏZ·mlø\nHô\É\æµ^,Onõ\\qœóŠi°Z\rûL\Ø\È8\ÍGŒºG~µ=ºaóÜpzÖšd\ÆT®A\â•\ì3™Íƒùdw\Ç¯I¢£ÀU€\éÀ«ñØ¶õl.\Üõõ«WËŒ8>\Ô6\Ğ\îsQ\èq -´¼q\Æj¬\×Q\Ç6\Ç^TcÉ­\Í\äd=qŞ¢K¤pûy4”ŸP~E}*\'¼9]‘)\ÎS]U´b?ON;\Ö}¬k\àÊ´\"‘N~˜\â\îK»-‚O8\Î{Ñ…O¦8\ç¥1$8>qšœ‚1ŒûS&ÂI9\ä\ã\é \àA8\È3NŸ¨T 6N\â1œŒzR\ÅÄ€\É\ä‚Oj€¦Ä‚>\é©\Î8\ä\Ô/Œ8\Ç\'½&4E!\àğ+:T¹pzy«²C6>R?\Z¥66Ÿ~1´‹E)œ~¸ú\Ö\î\ìzÖµ\É\ê2+\"ğò{â´,ÀÔœ—\0;œ\Õ\"Ÿ¼}€ô«7ß½•ıB–„¦\â9ô®¨\è9]·b³’I\ÇBi²€ \0~µ6\0r:b«\É\ËñúÕ£)h†€y§\âi8ÿ\0\Z~69İŸ¡\ïTJ™ıhÁ\'ŠS“œÑ“\ï\ĞP\Æ8\r\ĞóŠn9Á\ãŞšI=zúšx`Sr;ô\0Ã‘ÁF\nsq\ë\Øú\ÓGL{\æ€”§ÎŠ	Mÿ\0•%(\ä\Ğ0>ŸO&NHpMA\Æy\ïJ„\Çôa\Í&Rbbô\"§”,±ÁC\ã†­A6\ç\nÄ‚z\Zl2mÊ“òŸ^Ô€„©A>•j\ÆP’{Šd¹?Q\Ç<\Ô\"B\Å\r].\Ì\Ù;¦p:\×Ú¡¿\Æ\Ø\ÔzñVmöù\0ƒ’FN*¼±‡t\'sø\ÖKFn\ÕÑ¡o	ò#§j«z›.c\ÇqŒ\Ö\í¼;-# VV¯·\í0\íEJwf’Z\r„3\Ïz¶„d\ÕxFF=ª\Ì@dRcŠ,¦A:şUn#\È\éŒtõª€zu<\Ôñ1\ê?J†Z4C³`ñëŠ»nv\Ç\Îk2\Â\0Oz·˜Ï­f\ÊF¼gx\àóùb¥†xôªQI\ÆG~½óV¼\Î?¥ $/\×<\â3\æ\ïõ\ç\ë;Ó\Ï\\{b•†K’{ñŒŠBüd·\å\Ûÿ\0¯L\ßôö¦pG9\ï\íLß9\î}ª\às\é\ĞT¤‚#5NIòvG’X\àP\0\î ü\ÏZ†I³óÀ^Ã’j)$ò\í\í€zSMÏ•\ÔSI.\ä\É3	@õ«\É5\Ä@H\Êvª(Œz~cŒT\é+ \Æ\ì{\ZJ\Ğ\Ó\Z”Åˆ8\äŠª÷ÿ\0hB©2‡¦\Ç*¸ù‘K})¢f\08\ÏACWŠEd#•\0®\ŞpzŠ³\Ü\É\ÇZŠ@²rx~Ô‰+D@*6¦¥ hĞv>ôón²M¬X:t õ¨\áq\ÔA\äU„“8#¡‰&G\ÇSÏ¥Jó;Tÿ\0…8¹Àü©ˆ°3×†¨Ü\ä’|\Ór00p•&ğx>™Ày9Nü÷ªò\Ëó…9 œn©\\\ç†\éĞ•^B@\Å&†i1\ç\æ¨\Îüzz•4²€üóY\Ò\Ë\Ósu<PQ\Ò)ü\rb]>À\Ç=N~µ¥pøn¬]JB!>\ã¬¤\É\Ù‘üùvş#\ÅZŒ¯’zT\ÊH€)\ÂC°ö>•»0Z\Ï/#ÀªDó\Í\\‘‚@\Äõc\ÅS=sŠ\Ò\'=M\ì=p u\éšR\äN3L\ÎO={R¾y¦EÃŒÒ™	\àp=#)\Ïq‘\ÍM1~¢“š_q@\r\Å)\Ç$r3È¦õ\äq\ëJ1\éÚŠS cšf\Ã\è*Tlø#ş}h>9 qõ£i\íKƒús@\0“\ÓÖ‚¥[t\ã\èŒõ\ì)p@\Î=)\0\ä!£*MDyÏ¯qNGÁ\éÁ\àŠ$\\a‡ ñL\06F}¹¦ş¾”Á¤\ãğ öWXC§½_ˆ¬—±ñ”@\ãX9çµ4W2Ã‚§Œ÷¨”/ª4…KhÎ¾[\Å	´w9úVıÀ’d\è\ÕEµ)œcŒ\ÔFy•˜’sS\Zmj\Í\'Y5dtp\äÕ˜\Î\ç¾qUa\'Œæ¬Y\È\Ö%Œğ?ıu <cş•\ZOÖ¤Nú\Ô2‹8Ï§\éV£•_¡\åx>\ÕD@õ5b£;q\Ï\'©hhÓ„\ä8\È&¬\Æüa\Æj”/ŒŸAS¤˜<s“\ÍAEN8Ö¥`~^˜ª\ê\ç\ë\Ïjqr\ç\é@‰‹3\Ï8ãšIv\0\èy¨\ä™y<úVm\ÕòÆ‡‘×±\ëBW\ì\×02¼sÚ²&¾ö&s\ë\ëTnµ6“ >|wªOrII\È9âµŒ;‚h\Õ2\à±9#8\Í[µ”dg®3Z\Å‡\ãôÿ\0\ëTÿ\0o\ãkgi\ÈÇ¥UŠZœ¼úQ»\ãi\É`8¬q©)\Ür1·#Ú¦·½ºbrvö\æ¦\Í“4<Æb8\Îj\ÌNd€\ÏaTf¿qƒ\ã\0õ\ÅI\àŠ4œhh\Zhµ\"¶qÓ­DehñEW\ZŠŒ\ä\ç<ğj¬·^l‡\å¹n#^ŠÀŒg#5§™\0ŒŒ\æ¹{{¥I”dr2zV\ì2Œ€\äd÷¬Ú³%š(s\ßğ§1\Ç\×4Ø±€“Œæ”‘\Ø\ãğ $I\í\ĞP\Ç\Ğu5\êzŒšNF@=²3Ş\É%“ƒ³Ue—¼w\É\éR¾a»óT¥\ê1Œ”\r\"	œ\àd÷\çFw\Ç8\èj\Ì\ï\Î?Y\Óƒ\î{\ÓHeK—\'9\îk\"\èù“óÁ<Ö•Ã˜\éÖ²\Ìm-\ÑøF~•¼t3›¾„²•8\ãšÈ–B\\…\îy«W;“=}*¨@&­he7­ˆn‡\Ï8üª¯=ª{‡\ß!ô\íQu­–ˆå–¬N?Zqlt\Ï=\Í2”ü)’.I\Ï\éo¥¯\ãK&3\ÇB8 \ë\Å\çŞ´¸#\ë@Ã¿¿¥.[¿¥23ŸÖ€‚¢›Ï½<ô:\Òq\í@‡µ\"\É\Ï#õ¦”\Æ©c±8\Í\0†H1Ó¡ı)ä‘†H§0*Ã§zA,\ÎG€ˆõÏ­&O+Ûµ)\Çù\Í \ëô\è¹?3H)Oµ ¦H\ï\æE!\è§ZBsN<g¡\ãš0Ò£\ëF\ïaùRùÓÊ˜Rl9İ€1Zõ¬½:@Ö¨?»ZI?kš[°wH°9éŒŸÖ¦0y¦§ô\Í<pO\éPX\äúŠ±U={\ÕXñ\Èô\ÏÒ¤‰\Ï Ÿ—¨•,\ÑIğœ}*\ÊH\ĞòN:U(¤ ux©\Ç#ôæ¡”X†\éd,\ä©ÁÀ\éR»õÀ=2W·C#\ÔçŠ‘\ÉÀ#§½\nW÷­*¸İ+™¼½\ìÇ“\×Şº+\ØY\ÆTdƒ’Me\Şi1]F–-ÔÙ­)Û¨¥{h`=\Ë\ëÒ·A9<£Ú´`\Ğ\ÖGÉ‘€Q“\ÆsMºğ\Ü\Çq€U\àƒ\ßÿ\0¯[¦‰P–\é’I$`\Z\×\Ót¥¸µY\\ƒ»°5™‡z\Ò\Êz“Z6º>¥n\Ù\ï\ÖÜ•R@4›HµN«Fšh6\Ärª8\Éùˆªo¦4:\Ìvp»ªù&B3œsÊ,µñº‚°>oşµA¶»mª›Ï–i¶\ì\İ!Ê²úœRºJ‹©±/‡®¥@\ÆYW“•U[\í\"\â\Î\Í\ç3*3‚¸\Í\\¶\×50¹Ò˜\ç‚c™pSj:”—V\Â5±Ÿ@b\ÅF\Ñô\Ï4h+\Õ\Ú\Ç#!š<3ƒ³9lj\ÄwŠc\n¸\ëzb­_>Qóğ g\Ì\Åö¥œùh\à1\èA¦\ÒcS–\Í\Zò^lsƒßŠ×°Õ€@\0}Oz\æn-®ylx\É\ÅW\êHñ¹XzŒT¸]	Í§fz}¾¤²\"‘À\Î\r^3\é\ÍpzMô»8V)œ“ó\Åu\Ösy±„c·9®y+­¹y\Ïñƒ\ëQ\ï\É;{f”¿Ÿ­3 dwG¥H\Æ\Èù\Æ3\ÓNgÁ?ZšG\ç¦1\Îj¤ÄH\îpMŒ«!\ŞNx\íõª’u9\ëŒ\n¶ÿ\0LúUiG\'¡ô\íT™·<ú\Ó4\Ëo5%õ\Î:ùö8õ©4\ÉUlÀ\ÏRMk²!j\Ì\ë\ënN+&g1¡õ+¡½uÁ\äW3{ \'`\ëkZwfU\ì•\Ñ[9$“\É4g¦\r.zV\Ö8\î)\É?†i3ÚŸ\ê1L ƒ\Ï^ô\0”¼”\ìi>¿¥8sq\Ø\Ğ!c\0ƒ\ì3õ¤?Ï)\ÄÁú\Ó(cB\îu4üŒü½)\0\àc‚OZ’¾r\î+|¦‚\î\0\ëƒ\ëF\Øÿ\0º*\"ÿ\0XA\Ï#­}œû\Ğ4Bñô\\u\éŠ`8B;©\éO†Q€œŒ\ÒJós\Ç\éRw\àñŒ`J®„\Æ\ä~T±‘‘“\ÔsQHFòG­\0)\Ãgh\éÉ¤# ‘\×Ò„\É4§€Xc$\ã\ÜPi\0\âœNB¨\'×µ4ñ\Å1\0\êJ\ÆsßŠ:`\Ò\Z\0L`óE9ˆ!¼:\Óh©¤\Ë÷“ñ­¸@\É\é\ÇJ\æ,¥ò®ö\Î\rtQ? ú\ÖU·:¨»¢\è8\â¥BH\0\ã¦*¨9‡z–3ƒ\í\éX›’ñƒ\Ç4!!Á\n@O9\Î(\çŠ@ZŒüÇ·¯¥\\ˆ\äG\ÍYÑ¹\Ï^1\Í[øëƒ=\ê\Ñmœ\Z”c#ŸqUc‘Ny\ÉSÏµXF\0\é\ØúR(I\"LäŒ“\É&«\ÉÁ\n=ğ*\Ù\Æ5ZS³\'3\ÎhN\Â \Ì0õ«a€¤üªrq\Îj„Û§šš\Ú\åd\á\íš\Ñ;•ZKe–Mò\rŠ\Ç Â¦Åœ£?tv§F\êº3Ç­hÛº€p~ñ\äŠ\r”\ÚØ¦–2‰“hl7©\ÍO%«¤n@\È^¤v«¨\á\ä\'°PJ$\ÛöfÁ\Ã2“‘EŠU—3Õˆ\Î\ÂGS\ÇJY,¶!\0r\åZ™A\ÉU\ïŞ‰0Q@Á\0t\éE‡\íYÏ¥«2u\0´ß²©ö®0r­wE!†8#;\Z¦\\‰¡\0t4\"%;™[©\0\Ï;\ÕO\ì\å\È,¨#­iHW!v\ÇÒ¤ŠÍŒ‘\Åm¾\åK;!›‚(\ç®0Ml\Ú\Ä#s† g¤†\Ü`’¯=ª\Äp¨\Æ7\'=\ë);\êC\Ğq\Ç=I\Ï9¨\É,9?Îœù\çs\Ğ\Ô2ŸZ@†JG9=NHôª’„€3RHüó\ÎzsP¾\ä\äûP†4¡Á\'©•V—qøš²\Ç\ä<ö\ÅS¹8¯J¥«\Ø\Ä\Õdòá‘‰\çk\ÛW–‚2*ö»p<¥ŒIÉ¬\Z\ë§\ã©\ÇR£RÑ—®5G˜`æ¨’I\É<šJ+T’\Ø\ÂSrwl)hô£I B¡Á\ãŸÊ¦™ƒ¾\ì¸\íQ*\çŸòiXH\ÇSÒ­†S“ö\Ç4\Üw)\ÃŞdÊŒr=ıª=»H[°ô¡\ÛB£§,l\r\Ã ğ0yŒ9ÁÀ\Î)‡€ëš™\âh\Æy)Ù‡ù\ëM90Ÿc\×\09>fñü_0>•/˜?\Úÿ\0¾ª—\İ<~4˜4	O¡§‡b|u\çÒ¡\èi\È\äG\Ğû\Ò\ÇÚ‚2Œ{ƒšW@€\à’§€hŒo zš\0rFU	>ŸÎ¢n¸\ï\ëV.X¨©\Çz…c\ÉÁ=XúP°\à±\çT“š–iC\à ! ¨©‰‡µR¶8úPz\ÒR\ÒP ·§\Üù°€O+Á¬J±i9†`sòõ¥%tiN\\¬\é£s\Ç÷ô«)\Û\Ü}+6)w\ãò=\ê\är\Ç\ë\\\íqw,Gù4\Í3=ÿ\0:	`:ãŠ›L>\Õf2Frú\ÕJ\İ\Ù\ãÌƒJ²	\ã¦	\æ“CE\ÈH `¸\ïS¤‡§¡ª@}½jpOúõ¬\Ú\Zd¥\ä.¡@\ÛŞŸ\"	”\Ä>¹©F\'ù\ZE%@2N¹ªn9ÊüVÌ°‡N™ş•Ÿ5“\ÈN)§am±w\Ï=j·¯€8\í\Åg\ä\0ÿ\0Ê¢ò‹\äc‘\ÇJ»¦R›GE®©œ°\Çnj_\í…tÛ1+”–\ÚQ¬Fz\nH’\å?ˆúSù•Îº£±\Z\Äaö“÷†\0<Ô‡UWM öúW‹€G\Ì\Äâ¦ŒMüN\ŞÔ¶e\Ø\é\ä¿DNX\0O>õŸ5\ËLøNƒ¡ªp¦H,;óZ1[±\Æø¨l¸D\É\ÎsŞ­$y1\è4\äˆ\Í=~g•ƒ`=Á©~b:EC“’9\ÂñR\É\ç\ëL–0¸\é\Øs\ÍU˜\È\É\æ¬9\0xª²@!„øp*<EÀ=3ù\Ó$rZc3õü\ë6öQ\ë\Û&¬\Í.\0\ä~uƒ¬]ˆa`>û\n\Ò»3œ¬®ajWh»ftp*¡ ±$\ç­Ú•‘\ç\É\İ\ÜJ(¢‚Cš~	N\Üúšh\ïN@\Ç/\ÊÀ\ÇÖ‘¸\Ç=OÖ“Œş4\ã\ßƒ\ÔP2<\àñÖ¤Â¶\nğ\Ù\å}~”\Ï\×Òœş4S\Ôıy¥N;\ãh\'y9\ç\Ü\ÓFNzıE.\Ã((À1\ÎrA\ä\ZIa\Ø\ÅH3œı\rV\\†\È\ÏCW!+pQùd\0†\îWŒ„~sƒòœœUÏ³\'üğ_û\ì\Õw|Â¯•#‚\İF}\êo\Şy\ïª\0¡‚{\Ñ\Îid ô¤O\åH’Rr«\İI4ûr#&C”g½Eƒ÷‰œI!\ÊS\ë@\Ä.K–\'Ô…\ÎÍ \àgŸzmÀCE´§RQÖ‰E.)(P(¢€4¬.	Oğ÷õ­ˆ\ädÓŠÁÓ\ïˆõ¡†3ƒ\Ó5”Ö§M6\ìj‡zqR\â©$ €A\ä*dñ\È\ä`\ÖMX\İ2\ÑuA“ÏµXL\à½UC\×ß¯½OŒ\ØzÔ´2\ÒC\ïR§×¿z‚ô«(3Œc¨<\Ô1Lü\Õ`\Ç\ç®*$@G¯f4\èH÷©)\n#§\åJa\Ş9<z\Zš4\ç§J°‘{}x\éR\Ê\Ğ\Ì{<\àmÀ=\r\'\ØH\'jğ+hC‘¥y\Í(·ı}£\ì›Ç‘œŒsH,A`9\×D–c¯lsšÙ†1\Ï\\E=Esšû<c½*H¬‡R nÕºl\Æs\ÇLt Û€ŸnÔ\Çs:D\Ş3j°!\Ç\0qV¼®™\é\ì(ò\Ï<\Ğ*ºc·J„ü\r[`{ú\Õy1œ€õ .C\É9ü©\Ü\ì\İşE0ñŒ’@9\ãµúóƒ\Ôû\Ó’?¡\Î=*´‡‚x\äÓ¤|g3€*´’Œô\éB\0‘\Ç>\İj	¥œ\Ód”sŠ¡4ÜœzqT¢+\Øm\ÕÂ¢3À\ç\Õ\É_\İ©\Ëg*8sV¿.L({üÆ²Oj\ì§+³†µK» £Qš\ĞÀJ)h\Çz\0COO¸i”\ä\è~´?zS\Õ~©½Xği\Ì2wg¾(\Ğizt=M\'CK´\09\ä\Ô®H\'üh|dĞ¸?ız\0RKrr}\ÍJ	û\İ3Á\"™°—8=~´±?–\ÇpÊ\nú\Ğ­\ë(\Î$xÿ\0{\ß\ëG\Ù\ØıMD\Ü\ÙRp=¾´\ï—Õ¿\ïªU$gŠ•3Á<\æ›a\ÎOAN”úq\éHCÁ\àt“®}\é\0õ¥\Ï\á@\r¤§R\Z\0LRS©´\ÄP( ¦šZ1@„¥¢ƒ@,.—ßŠ\Ó)É¬x&C\èkw¸5\ÜŞ©‡1œ»\Ûf9#ßŒTE5	\Ìg<\íşU®j›F²I\Ó\éS[–1c”oº=+6\ã<‘ù\ÕØ¦\äsRÕ‹N\æ¤o\Ğ/çŠµ\äu\àzVtRòGcÒ®Dø\èzšÉ¢\îhFƒ\Ôg¯j4ªq¾?•]ŒŒnµ#¹2G\ÎsV#8\èsš¬×­XR{r1‘R÷)C¯Ó½H1ƒ\×ğ\íP‚¥sÊ¥\ì>”\Ä\Çgs\íOó1üò)pzSN=y­&\'M\ÇL\ïšdR+’¡²À\à\ãµJxÇ¦z\Ğ2.zóÀ\æ˜\äw©9\ê \ç=»ŠLd\É\ç<\â py\ã9ú\Ô\Äô÷\àUi\×¤Q\ã\'¶:t¨$|cô©$cğ\ÍU–A‚x\é@\r™À\Ç\çTd—ƒ\è)n%½³Y—@½óô­\"®&\ìI-\ÆÎ¸õúV=\í\Ód(s\ËT’JÒ’8\'“\ëP\\§ú¸\í[E$\Ìf\ÛL\Â$’I94”R\àWI\Â%RP!EQ@Â”u\ãÒŒšP:\Ğ¦9\'°\âŸ*ÀmaŒúR!<¡\ï\È4\Ñ\ÎG§\"ƒ(FÁ\äzô‡nG‘\ëN$t\íIŒğ~¢€ŒŒƒ\ĞsH:P¤‚O\çR¦\Ğ\á€\È^£Ö€\Z\ÛŞ¬Ä ”7Lö5W“ÓŸ¥:9\Z\'\Êõ\ÇC\Ír\ÖÇ„\í‘O\\n\ç\éFÁÿ\0=şıÔ‘]¤£v¶9¡ÿ\0\ë\Òÿ\0£úûù@\È$#Q\î}ª¹|Ÿ\åR»‚6ƒ\ÇRjŒv„Ø¥óõ¤\ÏZNœ\ĞzSŠ==\éqH¿pŸB)sI€”\Úu%1\0\ïM§\Ò{\ĞE8t¦H ’–Š	\Ã­t1\ä…>\Õ\Ïñ\Åtø0\ÆsÚ³©±½.¨]œñ\×5‰œú÷©ñH\à¯j\Î\æ­cn*\Ì7À\ÏNµ©‚AT9(G\éOF-¸¦\é\Ïlz\Õ\Ø\å\Â`nE`\Ãr2qZ\Üô\Éüj\Z4M3r²z«±\Ê\Äg§ƒ\Ãõ«\Ñ\Üğ\í\Øw¬\ÜM6\ÑÁA“S£‘x¬ˆ®O×¥ZŠaÀ\ÉúT4R5#“§¸\çb7\0c9\Åe\Å6>˜\Ï=\êx\æ\'? ±{\à­(\0\àuÀ\Æj°˜#¤ö8È¦+£c\Î\0Iõ¥9Ò«¤\Ë\ëƒ\éJò\äpF(®\ãñ5’>˜¤s\Ğµ’\0¿Æ“\Ç~>•VG\ädû\Z|2y÷\ÍT’A\ß\ë\Í\"†M(9T.n:\ãñ¢\æ\ä\à÷¬{‹®¼õ9«Œn\'+^\\úŸşµgÒœÿ\0§liNNp*x\â\0gñ\"µ\Ñ«\"€¨/3öY>•uºUº@`{”\âõ–Œ\æñA¥\äRdw®£\ÏÖŠ0iOc‘@	@¢@8pÒ’•9\'\Ó\Ğ“¨\Ïğœ\Ò\ã0\è9ü)\Ès\Ü\n’<\ÜgP1˜ŠönA=©½	<~”ó\Î\á\Ü¥?aš4¹>ğÎ€\Zª0[\0©\Ğ0¸Ûƒõ=icÁt$ôô¥$_\\u ¼$a”®\È\0\æ˜wtaŸ­M\åû ò3\Æ*/,®1\ê2h| XrF{Šw\ÙÏ¿\æ*2@\à9\ÇÒøü¨HP9\ç \ä\ÔDdÕ²M\ìa˜‘J«ØšA\Ò\Ã\\Q\ê)\Ç¤Si€¸}\Í-€ö z\Ğ‘M4£Šz‰\Î)\Ç\îQ\Æ)@\æ:S\r8R‚i€”Q@\æ‚B·¬Nl\Ğú\n\Â\Ç5±¥œ\Ûc\Ğ\ÔOcZORøû¿\ãN##§\"‘=ıj\\dqø\Ö\'REir?*§,ds\ÛÖ´8<~uX§?\Ï4\ÓE•,w½ø\í\íK$#’?*‡IÏ¥V\älh\Ås\ïÚ­\År{®\rb\"¦oğâ¥¢\ã.\çA\×#šĞŠ\ä¡\Ís1\Ü\ç\éùU„¹)÷I¬\ÜM™.y\ÇP*\Ê\Üq\ë\\\ìWÀğz\ÕÄ¸cYµb\îmƒ:zÔ¿i\é–=8¬QpÃ¡\ë\Ï5*\\‘\ÔR°\Z\â\ã9\ä~”ø\æ$s×©9¬±r¼Œi~\Ô€h°\ZbfÁ\ÉÏ½C%\È\ä\çÿ\0¯Y­{Á\ç\Ç^•^K\àKdE›\Z\Ük2\æôª“_œ\Z\ÏyK¹\ä“ÓŠ¸Ã¸›±-\Å\Æòpjº!\Éøœ#$‚J·#=\ÎqW¢Ø›\\‰!8\Çnø©ü°\0T\â=i¥?,f¡²\Ò+<\Õ[‘ò7®*ë¼}*´‰Iô\âª$\É™\ê~´˜=ió|³¿Ö£\ä\×b<\ç£\n(£Ú¦”c<ö \0$şô\ì„>c\È”Ü“\É\èqI}M \Ç\ãNM²!\ê\çŞ™üú\Ğ:ıh\Ä\Ñyd\é¹süB›ùS9^À÷ÿ\0=)c\É–OÌ¼¡ş”›C\'Ë™\Ş\ßÖ€%{œF—=½¿\ng˜G\Ê\ë•é»¡©a•¤ô‹ˆ÷şñ9L|\Ôƒ¨\È;°{õÀû¤Œõ¤?#~ Ò¹\İ÷±œph\Ñ\ïúRñ\ëJŠMŸZ@]¿ºŸ\İ\\Ÿj¨>N*±s“3\Ï[©ş^\Ô\r\É99&›Š‘Á4\êzP\":&œ\à”Dz\01Ò‡Ş”Z\î\n\0—\'\ëšŞ¤ÿ\0\Ğˆ)ŠkÒ¹\'¤\ïLšQA§`÷ ‘;Ö®•÷}ò+$rkCJr\'#\ÔT\É]\ZSvhÙ%{T\Ê=JŠ FHüª\Äx$v5\Î\Î\Ä!E#­A$G®*\é@9¨=\é\\Aü?•G$@\ãÖ®\ÉSU\İ§OÖ­2\Z)”\ê\r7\Ë>œö«n›ø<¿Z\0\àrªÜ–W,ÀóŸ¡\â¤K¬uü)ş[t\êcŞ¢0x û\Z,]ç‘†«\Ş0Á9¬\Ã;şbœ`Ÿ\Ä\Òi2”š7#Ô½MNšŠûk\ß/\0sÏ¦iÁ\å÷üª\\-N\ÇDuõJcß‚x$š\Æw\rôœ!•\ÎIz\\‰\Ú3BK\â8\'ğ& 7EóÕ¾œT)jO%}¹5d[`Ÿ^”Y »c2\Ï\í\ß¥q\Ç$ğ)ñÅ“À\çÒ­\Å1\Ï\'¹â¥²’‘ƒ\ÜzsŠ°€`psJG\ÓúSü²œu8¨l¤¬3fx=…4\Ç\Ôò\0«IŒş”\×\ã§*n3:P\àvª³1Ú´%Lÿ\0\n§.\nš¸±3•\Ô¥\ãûò*­hjñ\âuo\ï\n¢1]‘wHóª+I¡0Mw “Mª p\éH¼\Ói\ÂL@9\ï@	\Ô´¡A<øñK°ƒş\Ç4J#\È\Éü)ıi0*\0(ùA©|\Â$ßP;TX\ÏNM\Æ¨\äz\Ğ\äyr§*ÃŠ‘\Ë<üÃ¥F˜	±±\ë\×\àN\ÒAñ@É…ªIl\İ\Ôñ·ÿ\0¬j0p{U\È\æ\È%²r½û\Z¨\à‚($Œpó¹oAMLø\\\ä\ÔÙ·õ? 	‡$ÿ\0xb«\ãŸjšgs´\Õrı‡J\0ò\Ô\äBO5}j]üd\Ğ2~´±‚\ã“Jˆd×­Nc(\àÆ€XHÇ¡¦•ı\Ù\ã‘Ö®\Üc\Ë\0sQ¤{\áv\ÆM3z6iIÈ¥\ïƒM=\Å‰A¢œG˜\r£9¤¢O¼jÍ“\ì¼OBqP \Í>3\åÎ„v4™QÑ£¤ˆõ«	‚G­UˆóŸ^j\Ì}«šGlK\Ïâ‚ƒ·ZPZ]ı;\ÔÜ¢9õª²\'\éúUîœµ±õ=4\Ä\Ì÷=©@ßœœÀ\" Á>\ÔF;ûñ\ÕW&Á\å\àt\Üw¦˜Á\ã=;U¤\Æ9\ãğ\ëK³<ñŸ~ô®RE?³ûG\Ùı1W„}È¥ò¿\É\ÅÃ²(%¿Q\ê0q\ÍO²ƒÀ\'üb®T‡ \ç¥M-õ¤\ä5¶$t\'5 ·\Ç$g\ëW.œä´ó \Ï85<Ã±HDFHú\n_+\ç\ç*ç—\ã0(òñ\Ğ\0}»\Òr)\"¨AÀğ«1§#\ß\ÔR¤|‚G\áVR.}½jn;\rœd\àö©×œ\nvÁ\ĞR$g\ã¦1Sp!º1ú\Ó%ñ\Î*\ÑO—%Oòªò`^i¥*c<õêŒ¨3Zô5BA\É\0q\ÜÖ‘15˜ó\n¸5Šk¦¿ˆKl\ë\í‘\\\Ù\Åu\ÓwV8k«J\ädqš)\Ø?Zmh`.\ÏZLv¥ñFö È¥Aó\ä\Ósô§)\Í‚\çÛ ¤\Çó p¤÷?¥ <Š\0T\È­h\Æ\r?\ïÊ€\Üò?„ŒÚ¥Œ©ƒŒTQ“˜\ÍJz†\ï’( \Î~¼Qü\ÜûqR0}&üıOZ\0ˆ\ä\çĞš<¿óš6e\Èô8\ëR\ì_j@0ÿ\0©¹¨sR»q\íQ‘—À¦Š¹4óœ\ÜÑ³f)9sÖ\Û¿\n·${\Èäœ‘\éT\â8\Çp:\ÔñL|\í\äp:P4[–08=qT$˜Å¹W¸§]^™\â©$ó@›óM4¼“IŠb\np\Í!\ÇS\Â„\ĞG­–’LÒŒ\ïÆ\Å,c.)o\ÂxR9«‘*…›ş\é·5z>®ynu\Å\èZB*~½*¬f¬\'¥C4@q\íQI0G~\Õgƒ\Ûó¨\ÜJW3e>„\Z$\ÈÕ©c\è}\ê9«[Ô‘üqK°ö=i\È9\íÒ¥€\Z–\ÊCy\ìN\n~‡\éOÀ=¿¥8#d5IhXÀ\ï“ıj\Ä`3\ëM\0`c\'úT±ñ<Ô¶Q îŠ»\ã©8Û\ZxF$œô\í@\r)ƒ¥\'–\Üğ\0ö=j\Â(üûš]‹‘\Ô\ãÖ\"\0zúš›f8\'Lö=}*@œ\Õ-€À‡¨?ızyşµ ¡\Ó$P\Ó\'òªò#x\ÅZp:œT.zû\Ğ4Q”0*”\É\ÇZÔ–3ı~µNh\Ç8üj¢Á™²‚¤u®Z\æ?.\å\Ó]t£ƒô®sW„\Çs¿³\n\é¤õ±ËˆZ\\\Î\àÑ³ÿ\0\×J@Ò®\éA•\ĞqŒc¹9Á ŒR\æ€4\ä\í\ïM\ÎF?*Aøbƒ)ƒ\Ô\ãÈ¤\0\ã8\â€0z÷\è(9ç§Ş‡ÀÀ{ûSGPF}h\Ì1\äí P\Ã\çÀõ§\Çj¿xS;;q@ú0F@\ÅB\09\ëOw\ß!Àş”\İ\ŞY8ıi\0½°09Á\â“\'ûÂeòÇ¸\â“\æô C_¨5$[FI\ê\ËbœG\é@\nNI\'¿Jxw¤\Èq“Ú¤&ñÀ\îh\çu…\0g\Õr\ädRË„ùGQÁ5Bh˜=h\Û\ÆMJ€}\ßÎšz\às\Ía¹\0\Znß—q©»cq\ÇÁ\04Š›f!÷¨€©Á\ßV‚)òFTô\Ç)\Ñ<7\ç@ˆ²iñœ\Zi9gÙ±|\Â¡\ÅiFx5¥\Éò0ô9­x±´z\Ö3\Ü\ê¦\î‘a©S“P\'\ŞïŠœÕ“6EÀ{S\\p\Í\0ö§HeG\ÎNj™9\Z±(¨€\ÈşµI’>03j`À\r$|\Ä{Õ‘\Z‘ò\îÒ¥±¤@€‘€9\ÍL’Aó\éJ!9$À\ç=\êTŒcŸ¨À¨l¤\"Fp1ş2\')ñ\Æ\ndµ*Dy\Æ=\ênQcœcğ©\ãN\ç¿LqJ-ñ\É\Ç_L\Ô\É\ZŒt\Ïz.\Ë$c$½)\Ñ\ÆG^G¸\éV\0_Aõ¤\èr\r+‚s:g?ZP>”œrG\çN’O~´\0\à3Ú’}±ô§„hÀ\çßŠ@BP\ã\Óú\ÔD`3\Ø{Õ“\ØzS\\t\Ç\\b•3Ÿ\ç\íT\î#\Ù\Û9\ä{V„€Ÿ\åõª’§Zh™S“‘\Íd\ê–\Şl$wŠŞ™?‹\Íf\İ&A>õ¬%fg5uc’\èaßš’\ß\0•\ìj}J\Ø\ÆLŠ>V<ûU(\ÉŠ\íN\ê\çŸ%gfO*cû\Õ#¹|ƒÚ£¦&\0ƒšw89u¦Œ’)\İ¯€X\ÆM)t\â“$?,S÷’@\ÇN(<ŸJ·[‚–\0\à÷¨„]ò=O\ÅJ%şüŠy\ïŸÿ\0]1¡epŠó\ÆóøT2ş\ìĞµJ[\Ëùˆˆ\È£üj¼²Á\0ô¤kˆTt=i‡$\Ø÷£’)\È@;I\àŸÊ	\í\ê(\çÖƒ”\î\ê:\Òo4\0¨\njRƒ ‡Ÿ¥3¦@6\é\ÔP\í\í\Ñ\æ\äü§šµu\"EHÀ\É*šƒÇŠI]°fCœšc\0œqš‚8ó\êkn\ÃIYcL~f\é@\Ås\ëWm\íU\ã\Î:~u~\æ\Å#Bğ\'[ü‡`zP3o$	o\ãT@!}\Ï´u7W˜/Š¡\É9\æ€r\r¿\ï\íV%‡(UC\Å.\Éœ›\ÇaU\\l\ãô©\â¸\Ç|T¸rM\0´\Ã\Ô\Òõ P\İ0\á\ÜzŒ\Ö\ÔGšÂ°8¹?JÚ„“NõMÎŠOB\Ø$€{\Ô\È8\ïP§LT©1Y³tL‚¤\Æ•F;\Z—?/L\Ô1•\æıj‡ızAA\à\Ôdc5H,,}G¥[Ğ“íŠ¯\ÆF~\Õe„g=ªd4<c§\Ü\ÔññŒB*„G·a:€;Š†R%B2#(\ÇQLŒg\n˜!Ï°%\0×°¥öÁi<ŒSÀ<dP!F8ö ŒdŠp<\àƒœv üı)\0\Ìg<sŞ¤#§JH\Æ?’\rK\Ôz\n\0@2	$QƒÒ—\Ã=©@\ÆsÒ)\îJ…\Æz°ø\0\ã½FW?ıj`Wdút\çÚª¸9\'¨\ì=*\áA\×Ò ¸Šc3\î>•4_!Ö´‰×Š¦ñ“\×Qbf$°¬‘†A\â°o,š$Pš\ên#\Î:UY¡)Á\ÍtBvg=JjH\å²Nh½^¹°hId_OJ­å›²±5ĞÖ‡#‹N\Ìhï±A•¸<\08`u\Éü(ğÇšË°b{\àc4&yş™ ƒÔÒğF\09\ÎGz\0”‘O=Ï½7\0Í¾´ø£ò\ç¼\ß\ä\Ôr“ô\0ô lI\Ì\éÑN\Ïja0G\ã@\æ—f{@„\0\äü\ËÏ½7\Ôf‚y>ô‡®}i#\ê	$°\éŠf}…ÊŠ\0³s†@8\é)€“Šš\Ä\Øb}9¤¸·ki¸\Î3Á¤\â\\…L’\İ\ÏjeÀa0W#­:)n\'òGy\'™ <\ç\×Ö–\ìB\Øß½tú<^d ”=ÿ\0Ï¥qö²”;F85\Ü\è\à[Ú©‚;R{\ê\Ö7‘Ö¹\éHŠC¹\Åt²;˜\Ôšå¯³;œRˆ\ÙVñ‚Ç«*·–#Lş5|Å”\Çn	ªW\'\Ê|g+Š¡\í†\ßNk*O¿úU\ß8¤D)\à\Õû\æ€`3ÚŠQ\íVcq\È<\Ğ\"\0œ};\Ò8\àøÖ„¶ê–Œ\àc$TpPr3h}8~øŸAŠÙ‡§\ãYZr™»\ç©¥g=ÎŠz\"\Úõ2^µ\ng½N¼“ôÁ‰²$CÁ=ı*dpj\Ï\éR§pjYB8À\È\àTNsV=úTG\ãµ\0ö=3Ö­G¼ú€*¨>»f¬DJuó¥!¢\Ğ\çõ<`Ÿ¡\ë\ïP¡Á\ç5<n\á\ë\Åf\ÊD\ÉBzT€p~^‡\Ò.q\Ó&¥\Â÷\'ğ\íH«†1\Ó´üŞ”&8\Æ:ğM8\çš(\0ô¥\Ç<ô \ÇÔŠ@B\èF*`´gù\ã½(œb€z{\Ò\Ó9\Å=h ö\ë@¿Îœ\Ô\Ø\äsLp:\nr¾\ÏÖ ‘#×½Zt<\Ó^<ôr‹\Å\éÚªK2z\Ó({\âªÌ€gzı)¡÷1ôª¤uÈ­+„=\ê®ÁZ¦+%Œ\îx¬\ë9\\’£işu½,yqÁ5X\Ä_¿A\È\Æ*\Ô\Ú\Ø\ÎPOs™š\ÚHI\Ü2=E@zbºi-ò:f¨M§+\ä\í\Ú}s[Fi\îsJ‹\èc:|hS\æ?t=\êÌ–FN\Ò\rA\"I†Ç­hšfN-n‰\éÿ\0×¦HAÁ÷¨\Ğõ¯j3‘ø\Ğ+\"¦óšP(;\nN¿…:›‚M1\n3Ç¥;+\ïMÁP3R\Ôl–8n£Şº[¯¬®O \ZÉµ¶/·øG&¶lÑ‰…ò7«T±£˜º·6²4<7­S/‘ƒ\ÕzWC«Z™f*Aó:‚k‘Z9\n°ùÁ¦\'¸\Èn\àó]\æ“*½´mŸº9ÁrZ\ê<=x¢2‡%ºI\ì4o\İ89ÀÀ<qš\æ\ï¿w0±\ÏJØ¼¹Ç“•À\ïYVøº¼\Ü\Ã(8¤Š.KmöošpN3\\\ã\ì“;>µ·©\Ş\â1.|¼`\×3#—s\é)¡1$ÀÊƒŸz`L÷©V&~€\Õ\èl\ÕÓœ‚:ñL›#*8?M¦rs\Å,¶l\\\í\éREb\å8\ÎH\Í\0Xšs\n´-POZ¥%±\0\ä\ãmZ}6\â8DŠÜqUK&A\ä\ç4n\Æ=‘‚{š½\ç\ëP\Å—\Z¯ ©\ãƒ\ÜV2gLU’E¸úRiˆôğ~lÒ³5CÓƒ\ÍN¸9=±Põ\éÛ®jh\ÆpEK)‘\ÅD\ã$úªP?ZB<r)\\d@sœcõ2t\ë\éM\Îq=*H\Ç^üqš\"`yGµXŒ\çƒüª\Æ@ z\â¬G„µ›,1Ÿ»\È{Õ€\äö\ãùUqÀ\rÇ¡©·#\Ğ\çš@H\0\àu\ÈŸ“À\Ï_Ni ¨\í*Dùı±@\0\Ïs\íÚœF?ˆ~ \ä})A<ò?\Z¸„sš@qÒœHÁ\Ï4ˆ3h\ä\Í.¯”¸#ñ§\0;P!ƒ“ÀÀ˜cÁçš›Æ˜ù\Ï<\ĞG¨À\íHü1Ö¤8\çzaƒ\Ü\Ğg\èxª·0z\æ®H9=ê³ \çú\Ğ4f¼`j¼ô«ò\ÆpzsUöy\êj®ö¨ä„œ‘Ö¬\ì\Éşt¡:\æš\Ğ\çŒq‘ƒPIúÎµ|¥ ñQ½²¸û¢©H–Œy\"#ƒ\íQ<(xa\İ:\ÖÉ¶\\\ÍGöbN\Ş\ê?:µ\"\\L)t\Åoº˜ª“iTt®›\ì\ìF¥0\ÛR¨Ñ›¤™\Éy\ŞZf\Î1Şº—³\ÏU\Ï\áU_I…òö­D\Ì\İ\Ğ\ç\n6qŠR1\Óó­¹4r€’HNM6PN\ŞGlñT¤™“¦\×C:\Ãõ©\ÚXú¡\çÓšg—õüª®G+:6&\ŞN	\ï\×¿-‹\Ég•ÀuÖ¹;+×°R\Ê}kz\×\\2\Ì0vx9\íR\Ó\Z$“e÷“¸l•xa\ëX\Zı²\Û\İF@\át²\É\ê¼c¨\É5\â7\\Û)¡³\"úÔ®4\Í:\ì\Ù\Îı\Ş\â·.fx\à\Ú\æ5…}\n\Ç!\Ù\Ó\ÓÒ\âjÚ›º’\ß\"ª\àzâ´¬R4µ\n¤n#ó®-$d<\ZÑ²\Ô\å…\É\ê1¥&2}^\áK˜—ªMPŠ##Ú–g3L\Òw&­X„\à1~”\ÃrÍ¼-8\\ç¡«QBK’Fó«Ğ„xÁÊ½©²\Ë#M+•c*X±9	õ\Å^\Óe1’\å#:U33š·k{‚Y‡\'¦	-JQ\ßÂƒ\Ğ\Ö<\Ö\Æ+¥1	ù€9©/\ï\ZgÜ£kß½%®\éNöÏ·½\'¢**ìœI\é\Í8\éJƒ¥bö:1¦K°Ÿ\é\ïQD{\Z°qŸJ–Z\È\é\Ô\ÔÑ¸\ãµ0ZA?JCEÁ\Î\nô§Ÿò*8‰\ÎzŠ›*\ç¡\ÍC)ãœŸZ‘>Lg v§:¼şt©ƒ\Ôı)\\c\ĞŒtö«	8\È\Ï\åU\Ğr;`õ¬ğs\Ï?–i2‰\Â¥Œ\Øpj\Èõúµ:\ÉõMH\nv-Œ\ç\éR9\Å ?\İ8ö#4 ƒÁ\ç\×4\0ô\Ï\ç\ëNô\éI\Ç9\Ç>”e{š\02	\ê)Tša@:}M\0 Ÿ¦)1#ä´\'\Ü÷\ë\Îi\È\Æ0ixô\ÇÖ™#\ÆzfŸsúRğ1õ÷¥Ù‘\ÉÀ DO\Ç_¥0§¯\'·µLq’qQ¾zgšŠ\Î3œz\ÔeFj\Î\0&˜\éƒ\É\à\Ò\Z(ÊG¾j£\ÇóŸÒ´\İ\Î*¬‘’xZiŒª’M§¬y|cô¥\ØOÿ\0U;\\§aÖ”§ \â¦\Ù\Óó ¥üsM0\à\Üt5lGÀ\ÏZvÀIúqEÀ¢c\ß\Æ0Ã¯ùô¤ı\ê\ë\ÄB\äpÀñšh\É\ëN\àRx\Ç@*$8\ç­^Á\áp­P{\ÓLv(Kj®„0\ã¯Z­%¼xÁ\Î\à1ƒŞµqv¦½º\È(2§#JV%£\éÀòz\Ô\ß\ì¤ş\âşu¶b—\Ødb“\Ë_Füª¹™<¨\å,\âûRl	’:š&Ó§·%“\'Ş¯\è¨BHÊ¹#¡«·R¤V®g\Æ¦kª\ç®Q¶¸Œ€ı6®	5‰z%¿\áO­Cut\ÆF~L\àb’\Ú\×x\Ü\Ù$16\'\Úe\ä\ä\åMX·Ó®/\È\à\àûV®¢\ï\ÙO\ã]­²[ \n1\É\Å&\ì	\\\ä\äğ\ãGg\ã3T¦·Kxv©\Éõ®“Z¿T>X<ŸÒ¹\Ùd$g4\'q\Ù\ÆzU\Û[/6ûˆ9ª\ÃjH?*¿o/”A\è„s\ïLDGÎ„‘¾•\ßN2¬\ãW\Ş\åQ\È•5Q\ãk‰­\0@/qœ¯&´-uXcŒ\îU\Ü8æ Mi9\ç§,z*\ì%ø>”¥Y.Z\æ\ç\ä\îxµ­\ã Òª[i\ËÅ½:V’\'j\Êr\èoN6Wb8\àP\Æ)\ÄSÀ¬\ÍGE\Ğ{U€cš…\ëÒ¦Œ{š–R‚O#ŠLt©6zzõ¦\È\ã\ëH	\ár¹\Ï5ey\éU\×\ĞÕ¨Ç¾GµK)#ñšA\í*Nq\Ç_\çHw€~Š1Ø’	«	ñP\ägô©c\ç;Hõ\ëIŒQ\ÅJ‡gNÿ\0@\n÷\ÉÁ©#u p9ü*X\"x\älóúµ)!ûz\Ô  \Ç\'\0şT\ì©ô#\Ü\Ğ\È@ö”&\âNq\ë\éQ	x\ïÈ§‰={u8 ,IÓ¦A4›ó\Îriaç©§G¸óŒz\Ğ€\ä‚	côğ\0¦ñy\íŞ¥\Ã\Ç\'Ş‚X¹“\Éô¥\ê8ö¤»€	Zv1Á\êzP!¾ s\î*2™Á\éÚ¦Á\0SH\ÎFhŒŸ\ëL z\n±\ßÒ˜S§@Ê¥3Q”<Œt«~Y<ûTe=\nr¦Ã»Ş›Œ§L\Z°\à’1\éL\0dzf€ \0tÁ©6Ş¤(	\â”&{‘@\'ÛƒO\ã®½J\0À‡AŒ~´\ÈöôQ\ì\Ï÷I\Ï\Ğ\Ô\Ù\ÇšyLq\ÏCŠ`W’ sõ¦„<\àV“ lqÖ“\0À`zS\í\È~G\âj_,\ç\îòzT\è1\É<Ğœ\ç{P&\Ê\æ\ß$~y§}ŸŞ¦‘\Âiiöü\è\ÎnÁ­„’©\Ï5\Ì\ë:›\ŞHbFXëŠµ{=\Ä&(Ç—9Á\Æk.\Ö\ØI\'\àö\æ»\Ò\êy\Ï\Èu…‡\Ú\\¼Ÿ,K\Ï=\ëJ˜]ˆ\Ç#¨©\í­Ì¯Œ*ò}ë –\Ö+{2\0Àq\íCv\ZAñEkœœV%\î¯)c\Î:ŒU_2I\'d\ÉÛ•y\íU)·SJ\É\æu„—\Ó›\'¹¦\\\é¥/6\'oJ\ê,£\Âck>\å6j§÷¢\ác™{V7~^9\Í>\ê\ŞXp¬¥\\p´Æ¶¯b6jÁFG\Å;Š\Æ-\Ä @÷\éSC\Å:‚§¸­+[y\0\"\0>´:½¸&@w‡h¸\ìJ\ï\nF6·zŠ\âdDÂ€XŠ‚K•”|\ßz™E\Î\ã\Ô\ÔIØ¸E¶,q÷=\êtJxJx¬›:±‰óŠ!\Ç\á\Í(@\\š\ëHcp1S§lw¡o\çRFœ\äıj[)\ÏZn0\İ*\Æ3\Å1\ã\0Bi\\\Ğrpzš±Àú\Õp„t«Ç¿ZLh´€\ã§9§”öÁFzmÏ¾jtÁŒ*E(\äE(‰A\ã8\Ïj›g^”˜):qE\ÂÀF\'MI\å2=ñÒ–>NsÀíµ0>ƒğ4†0D3ò°\éNHTœ•ù³Ş¥\Ş:t=\Î)\Ø\ŞOô ÔŒ!şz>Qœr{´ıƒ=ı\é8z2F\Ç!{cšDv\É\Å8¦ps\Î;w¦ıxô dˆON\Şõ(\ÜA û\n‰\nŸ|SÁJ3úS¾jh\ÏsR÷<šbcpzt4~¢—š^:*,\ZG\éM Ÿ\çRƒ°¦ô™¥`¹§¡÷\â£)“\ÉÀ«œ\éP’wu\í@\Ñ\n	\ç½BC\Æ0*cĞ“Ö£À\ÆrO·J\n\ZŸM…¨\É\æ˜>Nø\Ï4\à}@\ã¥\0œsŸÒš®x£\Ì#=:\n‹9$”Á\'¯ù¤$q\Õ²\Ó×­F%qŸÖ˜o\ì;=©\Èq\Îx\éU>\Ğ$ó\Ó\Ãr£øöXW4<\Å\ï\éM{¥A\×µ.¦£!r\Ì}*©š\âã\r;04.5$ByÉª\ßÚ«\ê*d:s9òj\çörúÊ®\ÎcS1\åFŸ\\U½\Ö(¬\ÚB£{p=ª\Úi;\à’W\ê¼äŠ‚\İ\Õ-\Ø€§\0Wm\Ï8±¦B¡\İ\Ç56¥¹\Ğ.zşµ„Š$ñšœ!¸¹9PqI\îQŸ&šbe\äÒ©/\"÷\Úpkz\åÚ”Àq\í\\\í³˜\ïX×¥Qi\å	À#Y7\î¢ü`Œ‘Z\ÑD$AÁ\ÏSX\×\í„8\Æ9¡3­¶ı²A!r3W~\Ğ\Ò\â%#nzúU-Z†ô•\àŠ\ÓÓ¢Œ@¸\ÓbEø­\Õ#\æ\ÇZ‚ş\åa„\Æ\ÛZB0;\â™5\ÊÛ©ËŸCÒ©¤m#†rI\'<\Ör’FÑƒ{•\â·,w\Í]\Æ=*X\â\Æ)û+&\Í\â’V\"\ÙùÓ‚p}jBœ{\Ó@ dH‡®;Ò;w©v68¤<\ã×¥\0Œg\é\ë\éV£ŒcŸJ†!×Š¹\Z:`ûÔ±¡¨‹Á\äR8\ïÁõcg\0\ã¥$‘ƒŠ‘”œuö\ä\âˆÁ#½Nñ°çŒ‘ŒS\ëÁ\Îi°-\Ã\ï×§Ö®F¾\êŒ]²=óš»cœŒ\à\Ô2‰\çSJñŒGAÛ­I…N\ÄRŒt\'<zu¤2€t<zô©pGS\×Ó½;gR\ìp=~”ò\İ4ş£‘\ÓŞ—“\Ôu¦\ã§®3@1\Û;\ã¯JLc9æ—œ1\Í4q\ëÒ€“rGsŞŒ7\ã\íHF_¥Iõ÷ A\ÔÒ\0\ã¯\\R¦9?<z(%Š?\Îi\Ø\êsM\Ê\äÿ\0J‹ÜŸÂ˜‡õ£*˜9\ä\Ô&\ås…\Èµ”ó7µ^Lô\Çø\ÓsŸªşr À\ÆiD„p¢•\Â\Ã\Üü\\\ÔNU3¸å©p£=\ÏN;T2u\äš\Ñ+¹~z\ÔÜ¨\'\éU\È\é=ª6ºPI,=±ÚŠ.\ÇO\ÏÒšÒŒuõ5™.¤;U^ı\ÉùsÏ¥;¬e<÷\æ˜÷*£\Ó\èk\'\í¶qŸniR)e#qa\ÕVË’^®8ª¯z\Ç;EH–,™-œ:–;5\à‘Ç¥\Z¥?2Yã¦Ÿ‹É‚\ì\Ç=±Öµ¡²NAŠ´ô#€)_°XËNQ€«ózb¯E`·$œœ\Õø\á\0\ÅN‘\Æ3Š.Ø›*\Çj djo%j}ƒŸJ~Á\éHW1^Ù¼¶Lò\Ã¹Y\Û]It\ÎEw%‰ô\â¹]j\058\Ï1Á®ØyFr\rt6€1\Í\ÈM­\ê÷ÒºkiGFhc%’1$gò®nmš«r3€+u\îJ#`}+:\Ê\Ş\îr}) /\Åó/5—1©+0y­£GlV.¥…º¸)Dl\Í\Õbk«\Í\Ã\î¯Z´&Q\0óÖ™“ó(\ï\ÅK¸\ãŞ¢S¶ˆÖ;\ê\È\ã‡<œ\äõ\ÍYH±Š•\"•J‘ô\éX9\\\èJ\Ä[1ENPHc\â’c \ØM©Â>•\Ï4\Ó\"£ \ç\Ğz\Ô\Ûr3L*xª,=³Wc#­V·?J¹\ã3š†Pñ’zv ƒLt¥\Ør9§\ã±Š±^A’*\êô«öÀ¨Œc8õ¦QŸ\ĞUø°9\ëôª{p\àzš¹n\0â¥”‘qN\ÃŞ—c\'¿µ¯§\Û\ëúR,7·\'¡¥\ìF;ö©„\'®zQä¹”0Lƒ\r\É\Å3\Ôsšœ÷¨ü²s\ÏÒ€bqô\ãšaÀS\é\ïN;¹\é\ÅDIü\è;ÿ\0…:9\0\0g¿9¨=é¼§”‹>pBOlñ\ÏJiº=úc¾j·\'ÓŠa$\Ş=\èÇ§Nø¨ğg\É\ïŞ@\ÏÁnÉ¦\ìÁ Šab3prs¸Ÿj\r\Æ\ÎqÇ­;c´`Tf\Ó,Ù¢Ã°×¼À8\ÆO\ãP¦\'’I\éÉ©²ƒ\Ğt¡-C¶8\É\ïF‚±]\î_¶j\'’RN8\É\æ´\Ôd¯ËŸSNû*ªMXv2vJıI\Å(µbNsõ5¬ ùwt\ÎJ¶jgÁ$pjwŒqg\Ëq>µ(³S\0>€V¢[I$dr=\éD;<ph¸hQÈ¦1;ôô‹’B½\ê\äQ1\';B“*X\áÃh\éH\nB#O$ô«‰o‚8_n\Õ0ˆ\åRˆ½q@›\"KpNO¥L#Q\Ø\àqO\ØG§Òx÷ Wc†0{q@#­7?…?†h\îOµ;ŠŒ†\ç‚3Šv\Ã\í@ÿ\Ù','2025-03-02 23:43:24','male'),('cdc6c59d-e020-11ef-a1d1-005056c00001','cdc4f8a7-e020-11ef-a1d1-005056c00001','Almaz','Hamza','doctor','medical','uiare@gmail.com','0900258963','Part-time','2024-02-06',0,5000.00,'day','650e8400-e29b-41d4-a716-446655440002','Addis Ababa','0900130082',NULL,'2025-03-02 23:43:31','female'),('db6f12f8-f2be-11ef-8b3a-005056c00001','db6db3d6-f2be-11ef-8b3a-005056c00001','Zelalem','Amare','doctor','medical','zelalem@gmail.com','0900130082','Full-time','2025-02-12',0,3000.00,'day','650e8400-e29b-41d4-a716-446655440002','Nifas Silk Lafto','0900130082',NULL,'2025-03-02 23:43:43','male'),('e40a03a1-e013-11ef-a1d1-005056c00001','e4086171-e013-11ef-a1d1-005056c00001','Melate','Eshetu','admin','administrative','hilcoe@gmail.com','0900130085','Full-time','2025-01-18',0,3000.00,'night',NULL,'Addis Ababa','0985856978',NULL,'2025-03-02 23:43:49','female'),('f3a57ee1-d7d6-11ef-9523-005056c00001','f3a56945-d7d6-11ef-9523-005056c00001','Samrawit','Eshetu','doctor','medical','samreawi@gmail.com','0913008256','Part-time','2025-01-17',0,2000.00,'day',NULL,'Nifas Silk Lafto','09110802451',NULL,'2025-03-02 23:44:04','female');
/*!40000 ALTER TABLE `organization_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `id` char(36) NOT NULL,
  `user_id` char(36) DEFAULT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` char(10) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `marital_status` varchar(20) NOT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `nationality` varchar(50) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `profile_picture` blob,
  `is_active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `app_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `patient_chk_1` CHECK ((`gender` in (_utf8mb4'Male',_utf8mb4'Female')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES ('190a4330-d5d9-11ef-9523-005056c00001','1907d2e1-d5d9-11ef-9523-005056c00001','Girma','Meskel','2222-02-12','female','0900130082','married','J','j',NULL,_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0\0ÿ\á\0.Exif\0\0MM\0*\0\0\0\0@\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0ÿ\Û\0C\0\n	\n		\n$ &%# #\"(-90(*6+\"#2D26;=@@@&0FKE>J9?@=ÿ\Û\0C\r=)#)==================================================ÿÀ\0„„\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rğbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0¨—´•\Í\ì&)1O¤¤1 Râ–ŠL\â”\n8S¸)@¥´ c@¢Š)0IN¤9¦!´´R\ÓBbRóEC5\äV\Øó$U¦M%£šËº×­¡„È¤\ÈÁ\0ôü\êˆñb\í?º?LÓ³&\é-r’x¶GC²\\ô$æ£\Å8‚·¶1N\Ì9‘\×æ–¹øInH.[@\É“V\í<R²ü²D\ã ƒÖ¥¦4\Ñ\Ñ\Òb±Ç‰l¹Ì¥}F•\\·\Õmn\ÕÌ§\êqü\è³Cºe\Ê^´\ĞA\î1N\Í!‰HiÙ¤ \ÒS©(1IŠu\0\ÑÖ¤\ÊQ@˜§ñM\ë@†bœ)qH(M\Å>@\0¸¢–€¸¥\ìR¸\rS¨\Å;\Ğ\r¢ŸŠ(”\ÜS¨ \ÒR\Ğh´b”S±HÓ… Si\Ô\Ú^hi´\Ñ@&)i\"\Æ	b\0$“BqT\îµ[k0|\É>`8Q\ÎkVñ+\Ãg‘“‚õ\Í<²¼\Åİ‹>rI9«Q¾\ä9v:™¼S†#gŠ\ç.¯&¹˜¼[<Œœ\Õb\ç#§®Gz	\0öÀªI\"[l‘9İzOşµ\'–\0%O‘Œ\Ó\ís\ÉÉ¥2c\â´ÀT\àŒ÷\ìGZh;ºö&•\Ülwp\'4Ó‡=q@‰<Î½3ô\ëH	\Æ29\Å1§§§&”–\Ş7g‘‘@\nCdu\É\ç\ëOI\ÇR3\È\é2!Œg4È¤ ò2=\Í5ô\İj[Iù\É\'~lWIˆ,\åÀóW\'\Ôb¸W™d$„T\áA\àS¢\Ï\'=y©i1©4zJH¯‚¤FA4\ê\á\ì5[›\\\ÜTµ\Ğ\Ùø’\Ú\ã\n\ê\È\çñ¨i¢Ô“6)1H’¬ˆ=§ŠE\r¢Š(1F\Êp¥ `\Ğ)ôP!„R\n’šRbŸM¡ú(NhO¢—¥ ”\n9§\nb¸˜¢–Š\0ƒšJ“\Üu ŠL\Z\\R´i\Û(\ÙLŠ1N\Å ŠZ1E0\no­;=\ë\\Õ–\ÆØª\æ°À\éB\×@nÄº–±o`‡q\ÏE¹=G[¹º,¤ì‰†Bõ›q3\Ü\ÈK³3ÔšŒ\î\é\ÏŒö­HÉ¶À“\ï€r8\éJ$\ç8=\Å3«€\ìp;Ó”dıMQ!\Çœg¥9\Â\àgò8§ı‰$(Àœ\ÓJCĞ•\ë@\rpz\äŠg\äqOx\ÆO\Î<Œt¦\ìd\È=Gl\ç4\0³€Á\ãRÇ·a\ÈlIRGr0{\ã\â‹\Ó<ƒ@¦Ş»\ZX¶óœs3Nò@?)\à”\èP\ï#×­\01\ÉÁü†\'\Í\È ú“Š’H‚`d\ç©j?/\äg\ÉÀ8<ÿ\0Ÿz\0t[rWŒ†°¡+\Ï’B‡\ç\\æ¦“\"b\Ù&€\äd8\ägƒ\Û4\ï0\Ç (Ì£•	\'Û\ãš\\’;d\r\0kiš´¶\Ó;4\Ça Œ\æºM/_Šÿ\0\ä \Ç(t÷®#\0Œ¯N\ã)ñ–ˆ¬Š\ÄH§\"¥¤\ÊM£\Ò\Æ)Ef\é\âú\Í}\ï\â†´\Ğ\Z\ËcU¨‚ŸENi¼Ô‚ŒQqXebœ(`†\ÑN\"›Š`Š)ø ¤¦b†\r( \Òb›@˜»\Å4R°1N\â£\Å/4¬ø¤ S©ƒŒQE\0ƒQE\0”TWklò¹Â¨\É4e-_WÁ\ne|\Ò25\Ã\İ]Iu9’b[w4\Û\ë×ºº’V<±\ã5]g“\Åh•Œ›¸÷\ëÀ\ã b£.A=v†\Ç\'œv\Ï9¥Ou2ª$’Vb7d\Æ@ Æ‚bØ€x\Ïz7—Â…œSxrFp\çŠ\0—8\Ï,9\Å/•jYKd\ZG¸\áB\ã\n1‚3M‘\ÏRx y*\é–, ŸzY,A\È\ã¿úô¨\ì\à\ç\æŒc8¢;Wr\Ç\ĞdZ.–\ãQoa\0T!\Ç\İ\ÏB\\~8\'$gtiÒ’ió‚jc¥2WqqSÎ‘\\\ëc0’~n‘ƒŠlr„pp¤c½jÉ¦¶Áµ\rS¸°`I\nqŒ\à”)&\'…»Ç˜H\Ã\rWx•	\\ŒI©\ÄRyj¼\í=hòYÁ >aY•Ny\'·j_õƒ9\ç8\ÅHm¾\âr\0\ß%€\ÇË’p2:Sº0+üxO\0g4\Ì*œŒ\ã¨\ç5+€™ú;T|tÀÁ\îEÁ\ÆI\Æ)Ï€F$u#½D…zw=ı)Ns\Çnõ .h\éÚ”–2Sò“ó(\ï]İ…\ìW¶\Ë,-•?¥y˜û„ƒœV·‡/\Ú\Æ÷aa\åHpsQ%sH\Ê\Úñ¤\Å58È©x¬\ÍR\Òs@i8ƒIŠb(\Åœ)!±»\r5 ¥\Å120*AIKŠ\0N)=iM6‹…ƒS¨ v ¥\â“Ö”t @)sM§PR\Ñ\Í-AE¥¤W\'\â\ë\æ%-Œcs\n\êfEc\Ğšó­bó\íwò8 ®p\r\\·\"oKø÷…(	“‘\Æ;\Z8\é\Ø4¡NHÀ\é\ïZ${‡œR§9ô\éH\' óVM¹\àpF3‘\Î)^\ÃJ\åm‡\'{T‘\Ä\Ù\r“\í\ÏJÓµÒ¥~JÁ§¡\0\É\È9¢F‘¤\Ù\Ï%¬™\'g\âFj\í®œd\ä\àpk¤†\Ê(\Ó}ˆ©’$AÀ¬]n\Æñ –¬Å·Ò”g\r´·PFsZ0\Ø\Ç\Z¸t$f®\ìü*TŒ\Önm\în©¤U©üJ¤Ó’\Ô0;UÄŒ\ç“N\Æ=y©\æer\"«Â¸húb«I§G\Ø\0sÁ­2?Jc¡÷\Å>f	ô2”˜9Q\ï\ÅB4\Õ\Ûò\ã®µmöü\éRö\Æ3È£\Ú2}’1ÿ\0²—’wQQM¤®	ş!\ÈÀ­²9#µFù9§\Ï!:h\å®4¡-ƒÀ¬É­Ø€\003]¤°«‚+*\ê\ÈsÀã±­¡S¹…J+¡\Ì\ã\Ë\ëŠNF}k^k@ùzUY¬Š—8ke$\ÎwŠƒ;;fÀ\à÷\ä\Zg)‘\Î3Ò”\äúúsTI\×øoV ·‘¾uROZ\éS8¯/µ\Å:6H*r\í^›c ¸³\ÖRV\Ô\Ò.ú\â”\nv(â¤±¤QŠZAEÀ1E8Q@\0¥\Í„M	‹š¤	K@!\r&)ih”R\ÑHE;µ \Z`&)ih \0bŠ)i\0”S°*9b˜ôQ\Í09\ïjfE´dor}q®8\Ï­jWF\êşYñ;\â«\ï\0sÒ´Š²1“»!	ô©Bt\ÆpFI\Æ1M$rq\éW-¢/ @8\Î:i·`Š»%·µ2\'Ê¹\É\àõ­c¦®`@‰©ì¬„ r?Æ´’5ñ\Ï~kšuC²4µcDj Œ{S—?…8vg4ğ3Â²f\éXf\â¥H³CBõ©Ö¤i\rH\çRñ\Çz’:~:ş¼R*\Ä.A§\ì\0ô\ÍM\åûsK\ås\Ïj\0‹ks\Ó4ÒŸYÚ¸¦ùy \n\à\×\ß,`ô\æ¬y{3\îsÈ¦x \n² \ç\ÏZˆµmÒ¢1}E1X¦\àóÒ«\Ë|\Õ\Ç\ï\ìzTOZ¤\Éh\Ï6\ãœæ –\Ü`Œ\n\ÓtZ‰\ã÷¢f.\'1yfÉ“\ïÁ«8\äd{õº«¨”©\Èâ¹»¨¼¹\ë\Ğ\×E9]Yœµ!gtW,}ò8®\Ó\Âz\ÃJ´„f5À\É\ä\×P;z\Õ\í\èY_$Œ3‚})\É]fzvsMÁ¨\í\åYc¤aGz›Š\Ä\Üf(\ê()9¥¢˜‚”IH)€\âh¤4™¤Ş¸Sy£š`¢’Š\0\\TdÔ¼RqHŒ\Ó\Å\'\á@¥§P\Õbe·\Ó\årÀc&¯Š\ÉñÙ’o+´I\íÿ\0\×\Íq=>”‡rFpNA4ÀG^\ãµ4õ\í\Ï#\ì9kcTÛŒ÷\ÍjX${úñAB8™À\'\"µ¬¢üÍxz\Z\ÓZšöı\0•pcR\"N1V\ã\è|q\\¬îˆ£©~T\Å;Ú¡š!Á\'×§$b‘R †\äCS\"tü…,x\ã\Ô\ÔÈƒ\ĞúœĞ6F:\à.”\ï(ÿ\0x\à€T\Â#ø£\Å/•ù÷\ÅU…r\0\0\Ï‚Ç¨©\nvÏ±É£\Ë\ã<P=\È<ô¨Š};U’ƒ¹¦l©°ğÄŸJG¦«nzc4apzt Ÿ\"uöª\Î:ÖŒ\Ø8\ÇZ¨\è	¦„\Ñ\\â£‘CëŠ˜\àTmŒJ´\Ì\Ú(Ks\íY\Z•˜\ØI8\à[\ÒƒY×‘™†9\íZ\ÅÙ˜\Í]Ï–S9\è;R\ä‚=*kˆ\Ú7=zƒÚ«‚G+¡jr=ó\Â×†\ëM\nz\Çò\â·q\\¿ƒfW‚Hû«d\nê¸¬¥¹¬uCh§S1H¡)h¢	IN\Å(€’¥\Å4\Óƒ\ZJZ`QE š u \Å/Jx¢€J)\Ç\Ñ@\Ås\Ş/*4£’ya€+ \Ís4•…¬qmc“\ïT·¶8 >\ÍO9\0À\ÆM@\0\ÇSŒñ\Õa\0Áò9­L<!½\Û8­f–2N\ß_J\ÉLˆòG\'\ïW¡—îª“´ôæ²š¹µ7fn\Â\é\ÜÕ¸ó‘\éTmNüÛ­_ \\\×4Ø“<T»­5©†3ú\â \Ô`A\ï‘\×*ñÉ¤$sNNIô\\’9=1€Õ„-\Î1\Æ}j¼hr\áV8\ë\ÎxÁ¦“‚ÜŒ:)y\ã§ò¨†ryúSøõ>\Ô\îHü@\Ï=q\ëšO¯N\Ô\áĞŠ\0k\Ç©\Í3NMJ?úÆ¢ò)Ds\Ï\\gŠg?HùÇ¹\ïPş8¤Ÿ‘ª\ï\Õ4»*	3Œ\İi¡2#ÊšGó\äÓ¹\â£õô5H–G/|\ãB^\ã¯\Ëı*”½\rZ3g=~…$\'\ÛG§ĞšÖ¿A°·rp+!ó\Ğt\êtÁ\İU™\Ôø+t\Ø\ÚW\à\ÙDz«¡\è\É]\è\ÅD÷.(\Å\Z’†\àQŠp¢€P)E-0E\Ó@„À¢E0ER\0¥’)€œRfƒšAHhu‚Š2¹¯\íûdK\àWQ\\¿Œœ4<·ª;Š{^[Ç¸\Î*h¶œŒFrOZ„q\ßğ©\íÁ\ÉÊœ\ĞñZ3µ-$gh\Ïn\0\ëÿ\0Ö§··&`¼\àrsÚ’ñ†=»W-¹˜:œõ¬\ä\Í\á³R\İ0:\ç5v3Ub\è3\Ô\Ôñ\ãŠ\ågdU‹#ùT¿\ÂjºÈ©\ã\È=ªK¹(\ß w©2TS>\\˜\Øf¦\×ñ¤4IGğ«?Ltõ¨ÁQ\Çò\íS!SùP€`c¯ôüT¢0zS„\'Şš\Ñ\0Ï©¤\éøv«.¾”W^˜\Å1dóQœş=\êÈ„Ÿ\åš<ƒ\éJÌ«¢‘\ßŞ˜G\åÚ­\ÉBj»ƒ\Æ8Á©cEy#$\Z…\â85{o€`\Ğ-©# ¸ª\î1µ¡.Ú§.9À\â­2Z)9#5ZLó\éVfB>•_$¥hŒ™Ÿz€\ÆOµ„\ãGzWIr?v}1\\\ä„eş¿•oLå¬µ6<\'ÿ\0!o¢\â»\ä¯;ğ\Æ\ï\íµ9ÁÏ½z\ZŠ\'¸SzŠJ)¹\ëRPñKMJ)\0RŠJu1\r \æ—4h¢F( ¢—S,\ÓÁ¦bœ)\0\ì\nm.i94LÓ³MÁ§Hbf¹ŸE›X\åî­ŒWSŠ\Åñ(\ÙR».â£UÈ–¨ó\Ô#Œ\ç\ØÕ¨s\æã‘€HªiqÖ­Åy9ƒ\ëZ½Q’Ü¿_\ä\çs\ëZVv\ì>f\ï\éT,\È2\0>\è\àk~\Ü\Æq\\\Õ´:\éE=E\İ\ß5\"d{\Òyg\'?…9öÆ„’0I5‘¾\Äğ\àúf¤šH\á\Év\äEdı¾P·$ğŒ\Õ2.eròn\à\çb®0\î\Ès\ìY/‚¸\ÉA\Î\äÿ\0€§]yù›hô\Åeˆ¤Á_$rA\ëPJ“&[\ÉpÀg8\Íh£\'9-\Ô\Ö\× Võ\Â\ÕÈµ¤\É$zù\×\Z÷M\Îb;‰\àô\ÅF.ó»>ôù\"J©$zM¶«¿ò\ĞgĞ¿Ÿz½ö‚A\ÚG\áÚ¼\Ê\Ö\æDqµ\Û#\ßü\æº}+S’L©?69\Ïoşµg(¥±´&\Ş\çR’(<I\è\rL.yS\ïX²L3òñÚŸı9t5•\ì\Í\íusXÊ™À\à˜=i¯\"\à\ãñ&³’L{}jI.ÓƒÀ\r‡(ù¥©\ãµR’\é\îF@\â«]]g\'\nk\"\æè™œdò@\Èÿ\0=\èJâ”¬w\ÔT!c\Ğ‡Œ\Õ	µhÿ\0¼2:óšÂº\Ôvf0x\Îp9¬\é/›#¦\Ü\ädt­•4sº­\êª9\ÃZ\ïÛ’3´úÿ\0*Á{#\ç\nÄŒp1BGq#€®z\Z¿f‘Ÿµ“5N¦™\èq\ÜœT™W@\êA+0\ØJ\à\î\nÎ§¶\ßn0\àmµ-.…)>¥‰Q½®Z\ç>{úfº\ÌŸB3\\­À\ÍËœUKvEm‘\Ğx6\Üı±\å#\åh>†»`+\ÃZq³°R\Ã\çq¸\äcº)\Éİ“d7šZ\\R\àÔ” ¢“šZ`>ƒŠAECiE%:€N\ìQŠ7Š(¢P\r8ŠŒf†=‡\ZQKE )2( \Ó\àES\Ô\âó¬¤NNT*È¡\Ğ9\èE4ò—O*GVŒ\Õ$oòv\ÏP}*÷ˆí…¾§\'O˜\îÀª\ãGJ\ÔÃ©©§œ}k¥„W3¤ÿ\0¯±5\Ô\Æ:n+–®\çm\r…\çÚ¡¸\È;G5o­3\å=GCÒ²Zjn\ÕÄ‚\Ù\Ş\ë\ëV\Ò$\à•¸8\ÍB’\nY/b	vP¹4œ\ÊQE¯)rPTt\È\Çò©D@‚\n{cük=J\æèŸ²@Y3÷\Ü\íü\n³\r•ü\Î\âKø\á\Û\ÉP¸\Ç\ç\ÛŞ©&È“Šu¦A2Ê¼v\ÇOğ¬k\Í\ÆIQ\ĞZWV7q}\ÍD\Èzm?ç¨¬ùe¿‹;$\ï\È\Û\íUi.¤^/¡M#0‘\çFñœ\Õ\Ëk„RJ\à1\Í@/•Èx\Ê98?—Z`¨\â“o©I.†\Ä7‘“\ÓÓ½_Š]\ã\Ü\ZÅ·ƒÚ´\íƒ1ŒVOsd´.ù¥=> \Ô3KÁç zT\æ\Ş@3‘Œt5J\ã c<P\ÆP–Rw¯<óTn0I\É\ëS\\Lk:K‘\É=*\ãs)$\Ä6\Ë+ü‹Ï­X‡AYXó\èj;Qs6hª„\ãsÿ\0kv\ßJ¼‰ôF¤g\î\àÎ´´Œ½Ò¬Z<õjO¸\ÍN-£NŠª=†*)~\Ùv\Ş+‘\×\0\åU^ö\îùˆ²QòŸş½KR\îZ\å]¯ÿ\0w§AT\îm•\ã<Št7ñLÜ†<b•\ä\Îi&\ÓI¢•°>X\Ïn+-Œº\ÒDYqÆºTL\èyª\Z-±—Ä²9±j\è¦÷g%E²;HÀ\0T‚£\ÖOºÀ‘\ÔœTÀP\r;Š‰óNJ!üS)\Ô\n4¸4\áKŠ\0–ŸŠi \Í\Ú)€”S±E\"¤J˜ c1@©N) R\0\â\â”\Óx bŠ\ËtQ\ÍHzjÀ\Õï®’\á\Ñ\Ê1ş 3Q6\Ò\ĞÒ”›odSñF‘,ÀÜ ù”r+•…1»r+\Ò\ìn\Z\â\0—H70Á\ã­rúş‚¶d\ÍeŒ„\ç\é\Õ{0­E%\Í;K\íxÀ\èk«t\é\\Î‹n†@\×N1¸Ò«¸\èè‡œR\Ø.{S\ã\çğ\éV>]`\ÙÒ—S2IDhqŒö¬Ç’-\æ[\éPrÒ¶n-Z\\\íÀ\È\ì+\çE2É†rNzgqJú™É»hK­w}˜´\È>\ï%\É\éÚ¹\éµ©o\Ìw\×R¢\Ú\ìƒ8\íÓ½u\Ú*M¤¢º0ù•\ÆQÒ³5­\ß\Ş\É=šyF_™œó\ìEosT„ÙŸ\å\Û}ª\í\íµIá·-Ğ´ –•ğ\Ş:kwLğö«s£C¨[\\y\Üd\Äõˆ½y€r9\Åw\ÖZ\ä¶:T6–¶j‘Æ»C;\ç?•S”I…9\îrt‚\éS)\å\\cğş•£enLjwnRv\î\'§Ö¤˜}²a%ÍŒ’r\åsÿ\0\ê¦XYOc$›]”¶\ßÎ°•’º:c½‰~\Î\"™“\Ğ\æ´lf³´—Dş5¥eœ\àu¬\çD–5H_#\Í`\ê9\äsÒ¶\Î|³\È\Èõ¬+ôm\çô£p±ösu9NŠI¢\ê\Æ6\r;ÿ\0\nzÓ’F¶º\ØñŸJ³•\Ç\Ú^wH.›pf8\Åm+•&RJšö\Ş*¹ıO\ĞV\\Áu¦\\Mu}po·¨H\0á—¿#¡\è&úk‹²¸³…\ãu\Úv6\rp÷>¹GhYv\ç€{~U\Ñ‘\Ë8M™v²\\\Ëu	pû¶ON\ßÊ·/¢\Ôô|}§÷\Ğ\Ãg$TzN™&~—ù†>UAÀ\'ñ­MV\æ\ëTB¶$Â£4¥(°„$µ0\Òõ&e‘2OQŞ¶-‰”\íŠ\È\ZQø<æ¶¬\â0\Æ|VSµ´5§\ÌŞ¤†1Q\è1*j·N\ä*–Á8«©\Ü\Æû$hØ©\'3I;&‹Q¼“45V\Ş\Ú`Ápx\ÇjÚ†A,*ÿ\0\Ş®\Ş\×xW“%‹\â»{<}–0;.1N…Yh™! N¤­ S€ b—4\0\Z@\â”\Ôt\ÄI¸RdSy¤\Å\0:(¥\Å\0%Q@\r\"¢rjSQ\ã­\r<TiR\nHdoM\ç\Í4P6}kX\Ô\ß\È\Ì>\èÀ­‡\ÆÁ\ÏC*œ–\íöò½ˆ\İõ¬*=QÙ‡WL·…x\Ç\Ì9Ò³õ2·š|€J\ã†µ«$0ŠÂ’óÎº‘vR2\0\ïY\Å\İ\Ü\ÒiZ\Æ6J\Ät\ã¹“\í“\éT4\è\Ö)&Àş*¼5¬\İ\İ\Îzj\É\"\Ì «I\Î>ö*¤Cüj\ä]údô“7B\ì8<UIl˜’À€@\È&µ¢Œ°\n°-\Æ:Ÿj4sBYa%]PPqOûpO\î@MnIj3ş­~¸¨şÊÿ\0Õ®O$\â­\Ó0\Ş\é\Ü#\Ø\"fš–\×7–£»9\Çò­\ï)S8\0\ïŠiBHÀüj®‘*-³6‹©,\İI5%\Æ8D\Î1\É5y\ã÷=I¨|±’}k9O±¤i\ÛVVŠ9\Å]„\0\Ô\\&=)cr\Ğ\Z\ËZ\Z‡=ˆ¬«\è^+M$sùUK±”8uC\æ\Ü<e±M·,Skg#¡­]q\Ã\Õ]	\ìO¢v2j\á%¼\àn…ó\ìGZ‰\î.£À‘\à¸V²G”\är;\Ò8\Êó\Ó Us!4\Ìcx\ß\İ_\Ë\ß5¤8QÏ·5°cˆv‚{)Ÿf]\ä¦W\'µ&ÁE³8Z¶rÀ\ç\Üb¤(ò­…»úwªòE\É©½\Çk-\nœ\ìüj[ku›~s‚1M)€jÅ\0\Ü\Z¶ô\";\ØÏ’\ÊF£€ùÀ®†\×ş=ûVu\Ô_\éªŞ‹’+RÀ«§Üš\ïD‰1\Å3jN\Õ­zÃ§Tc4\áHæ’Š=h¸…¥À¦ŒÓ©ŒZL\Ñ\Í7šqx¢“P1¦’”J1\Í\00w©(\0R)X6\ÒSriÙ ¿\Ü4\ìoÔ†;D))\Öd\É:nÙ¥cUXwº\"ºˆœæ¡“M(l\İ4‡$úS¾Ú¢ğ+œ`\àƒZ\Òm.[ƒ‘Y%do\'­E\â÷ò/c\È¥KQÔŠMK	©û2\â–:\Õ\ê®`´v-ÅŒÕ¸p\Ô\Õ8A\È<\äU¸\ë&kFdg5y\çµgÃİº\Õ\Øùø\æ„6c ëš¬CsÀÈ«˜\àú\0¥ò‰\âª\ìE·ir2A>•\"[ñ\Å]\Ï ¦I¶4%ˆ\ç¯=iz‡¡I\ã\ÆH\éœ\Z\ÑS$‘šŠóRT \ê8\É5%\0¶Kz–ŠL|®¹\Ïj#‘\Ó›$,vŒM^†\ß\0z‘C\Ğ\Ù$Q\áE2=\riCPq\íP\\\Û6¨©±W\ès\×#\Ë=ñUC\äsZñ1ú\ÕAm¾GQŞ´[5©~\ÕÁ\0À\ÕÏ³©³¬³}\rj\Ä\ãÓ½O[¶!û2ó‘\Ô}(òqW‚qƒ€qQ¼xüó@X©$cJÏš0	\ÇsZRgµF\ã> \â3>@9–r\İóÛ¥:L\à\Ô6À=\Èµ¢\Õ-$‹\×\Ï:8\Æ?\Z\Ò\â³\Îß·Æ ’#\ã&¯ŠÖ\Æ5Ÿ½ai™\æ\Í ¡ˆ¢\Å\0SMŠ8¦ƒA¤ŒR&jAŠhb€*^)´E-«œP	¥\"œ3J{\Ğ1Jh¸\æŒ\Ğs“II\î5°f¢wh¤‚Z3‡QüKÿ\0Ö©)¢O*@\Üm<\ZŠŠ\èÚŒ­\"®­b·\è—smbsJe½µ…ˆ”(\ät§I¶œIú¦9*9\ÅiF‘\\!\ì1\È5†\È\ê\ÜÀ\ÔdYDs¯F\Zd\'8©5(R1Ç¡²*µ¹\ã\éZ­Qƒ\ÒF”DqV\â=y¬ø\Í]„ı+mh\Ä~AÓõj_\Ç5ŸO~@\Æ3W­\Ü=zTÜ»b\ÛÕ€\É<T»\Âg“Ô“Ò³¤!Ğ®\â¤£µ+\Üq·?\\U&&‰\å¹ƒŠ\Ä\Ôo™şE\'ŸJ’\ê\à\àò8\éœUtidzg©\âš\Ô…|r‹İMmZ\Çsc<Œ\â²õZ\"$Lü§8\Îk*\ãZ¹‹J©#M6›Ø•$¯s·0\Ä9\Ş\æ\ÉEp\ã+\ë|,öE‡÷ƒV½\æ\ŞZ6\';ŠN\r+\Øqœ[µ\Îò\ÎXeJe\Õ\ÌD++ñ°nj\æøl8aŠgk•^÷\å\Ö\âB£Ö–+a\Z`\ã½sW^!KWh\àYI\Ç\0~5\0ñ¡¿\n„õ5|\Ä9«›ò³Í¹z“\Î*ı½\ÑÀõ¬\ï\Ú\ç#Ô\Î*\ìs?¥K]\ËO±¼%\ë\ï\ß¥.Æ³\â˜`sëµ ~¿1<c©l»—¹\à\Õ+‚pJ°\îy\çƒTer3œ;Ğ„ö*Ëšm’/˜\îÀ\áNA¤•\Æ\r-\â’sò\îÀµ²Z\í\êX±s,‚CÔŒ“Zb©\Ù\07\ãqWkds\Ôw´fŠCVf(zCŠhœE\0(\Å.)¢–€)\ÔÔ§P\æŒ\Óih9¢–Š\0‹ŠR* jMüPdâ¾šFi¥a‰ÖŠ@i\Ù\0\ÃLp#±©\r6€\Õ’Ê¯C\ëW~X\Ğú‘À\ê s\Ïl\à\Õ\ØQ8r\ÄñÀ=«šj\Ì\í¦\îŒ}JÔ¤%Û¹\Ï5\é[ú´ˆm˜q\íXqƒ\ïU¡Vw&ô«I\ÎyªÂ™©eÅšp\Ê=\ê\ÚKÖ²¡p*Ï›Y3TË†Sƒë¸¨d˜€xSPù£‘\ÅAspcŒô\Éh\Ôw\"¸˜\È\á}jİ´d!ô5Ÿo\É\'œ\Z\ÒÈŠ>zU\ìM\î8\È$Lu>˜\éYsh°H\åùV\'<VõL\ã¿#ËJõ\Îi¦\Ö\Âi=\Ê#IŒ\\:÷)·:!•	t\ÅZy•\ã›\×Ú¬\Û\ã\Éc¹±ŒõªMõ!¥\Ğ\ÄIn¡\Ìr#1(\\\\€2ƒ\×Ş·¬Â°qsÁ#4ùbŒ†\Æ…=7¶±\Ê\Çf±òƒ€qÖ²¬„elâ´¦·>cœ½ªˆ\ï>¸¡\Èiµ·Š.©\êjé±‘Ò©\Æ\á*\ìR«Y»š&­`b=;\Õ:L}ES•9\Ş3y¤\Ğ\äsCW\ì]yHóÚª\Í)¤2zß­Blcš·m ÷\É\'Ş¨“\Èô«qJ¾Lh¤#\0Z\êe}u4,“÷;¿¼sV©q„ş\è\Å-l´V9[»lZm:’™\"\n)i(ÂƒIE\0*\Óé‚–€IšJ(h¤¢€\"¢š\r;4†7šM:ŒP84`\Ô\ÃƒŠ\0‹’¥¦Pi0\È>V`=3N£‡÷\Z“[2´±	_-\ìy¬ô@“ş\é\Ål•twG\Üf¥\Å[B£&Ş¬x}#sK8©@9\íŒVê£A#Ò¥Bx¨Ÿ#\éštyõ\à\Ô2\Ñ/\Ô%<Ù€\Ï§“\Æh3N8\îE\Âô|\ç¨¨„\Í6\î\èz{\ÔfK’…¾U\ë\Û!¹··O—‡­]®Bz–b…ŸB\ãqŠÈ‹9ÀV|º”’g“A\ÅU{¡Œ–QÛ“T ú\Í-ˆ\æ·\ç\äf=‰\ÍXG·\Ã\æ\'U#®{\ÍxÀfrò2\ÍlY\İ!€ıÓ‡9ª\åHfú|»sŸ&F@8\Ú\Ã?Ê¡y ‡;¤21\ê\İF‰\Ç\Ş\ÎOBM\Ò\åˆ;sE\ïm‘3\İ+¹\Âp}\èûÛ”ŸZ«²!œÈ¸\ÇRØ¨\Ì\Ês±ƒpH9£‘0\æk¡u\íA£`\İÀ©ù²[L\äg€M$s0\Ã+S\Ìw2¦xİŒb§–Ä¹_cB2%Nq’)\Ñ\ÆcŠ‚\Ìô8«qÇˆRr*Z±qw*J@\ÍV\äæ¦›û”\Ã\Ó\'§µ8‰\îDˆd™û\Ä[ğ[E\Ş#]ø\ëŠÈ°Ì½A\Ù~c[\àV\ĞZµ%­„¤¥\"’¬\Ì\\\ÒRRf“Æ’“4”\Æ\ênh C©À\Ô`\Ò\æšüÑš4o§`$\Íh¢À%6ŸLæ¤¡â”š@\r.) !$Ñ¼Óˆ¦\ì4À\\\Òf—b\0¥¤\Å8PŠ\Í\Ô\ã?+ö«Š¥©&`üi=‡\Ê6\ïV‡MgDûñÁ«±¹#ñ®y+pz\nùæ˜‡­Jq¶  \ïİŸ ¨44­±‘\È\ë\Å:\å\ngƒ\ÍT¶”¡Œµz\\IsK¨\Ş\Ç7«™m\ã.‘³„Yö1^\ß\ŞGUQ \Ü7÷®º(ƒ¸\îT\çTw\Øq4@Hm®ŠmZ\Ì\ç’m\èÄƒ\Âw]»Hù‚È¿J\Ü>\n´–òÆ£h9`kõ-HY\í.U9\ë¿¯ş½\\¾ñ®¡m5Ÿ“§±X‰GÍ¸w\n½¾¦©\Æ\ïFú\èuZ‡-n¬•jG´lt[;[\à¦`œu®r\ç\â\r¡µo\ì\Û;«‰q€$MŠ¾¥i[x\ÏK–&à¤¥r\ÈQ†õ¡$¦o¥k‰{\à\í>\æòò•Ÿ˜/¦4K­„1Û E\àu\ïø\Ö49\Óã¿†=\ìa`wË\Óëš¶ş2\ĞÀ\ÏöŒG\ÙAo\åM4ô	*šnAe\á›K?;\äV,p23Y’hvv6{\Ğa·’ÇµV»øŠ\é4\Ëş\í‹\í${ŒVšÆ¯©A$WW*\É/˜\çn\î\â¦\È\Ò1¨úş¥Y¼p\Û\âVe\ÜI\ã¿Sšm”7OxŒÊ£h\ç±s‘Ã±\Ü\äq\Æ1şb\Êß•ô6’°\Ü\Zz±\Ñ\'“\ß\ânµ;Ÿ.½À§2z`p	^\å\Î9\ï\Íbõ4…O˜\ÈI\Æ;RÉ‘ô\Æ)S\ëQ\Ê\äñ\ÜôÒ¹-\Ø\Ğ\Ñb9’S\Ó\î\çZ•\r”?fµD?{5)®˜«#N\î\ài¦”\Ó\r\0„¤¤&›E‚\â\æŒ\Ò\0ÇµH-\ØÓ°®3p¤\ßV‹\Zp°ji\n\åL\Ò\ä\Õô°ö©“NºSHW36n\Õ:Y±õ­ˆlTb­%°©Ø›˜aoCEt¿g_J(°\\\äø¦ñM\Í(5™©(£\Ì\Ò\ï¥a\Ü]´¤i\à\Ó›)qN¦\äP+‰Š\0¥È¥\0bª\ê)›W=\Ç5r£¹u´ƒ\ÕMT	\ês2Œ\Ã8\'š±o/¢‘\ïQ#˜\ßğk\rÕ¥£4‡À¦ğ?\nŠ9?*Rù>\Õ\r\Z&K\ÇLg5¡o) †\Ç>½\ë/Nyj\ŞF\àt\ç&“CLÕ‡¹\äm#8§Kx\Ë.C\Ğw¨8\È<qš$\è8\ÏqM1Z\æb`;mûÀ\ç­!G‘ß®i.-\ÕÉ‘~÷zj\09‘\ÔV‰¦\\´,\Û\Å$e\äŒ°Ág5f\Æx·´\ÖH\Í\É$tü\êK¢ dŠ¼\æ#Ÿ»Ó“V“4|¯u÷¢\Z|N\Ïıœ„·8\' vª\ÓEfó4\ÙÂ„ƒŸ•Y1Eóv\â“÷<ırZ5%F½™‘4\"B[\0z1Tn?v\n\É<[3J¡HÊ1ƒX·…I,\\\áA\ëJö\Ü%$–Š\ÅX„’\Èwv85­\Ø\Óh\ÇNIBß»t©|Ã‚3É¨n\æ\Ì|Ò€LªHI<÷\àR\Í)¨G$ZV’@úU6\Ü\Ü\Ş#ä’}j¦\ÈE\Éf8\0WKef-mBå­iõ1©;+8¦O~ô‘Û¼§€kk÷\"$\Òg\è\riÅ¥\â«q\é\Ê;S°¹ŒdµsS%‰ô­¤µZ[¨£”WfDv>\Õf;QZ^R\ÒùcÒ…r¢[\np·Z´c¤\Û@EJ\"üR\â„ Dğ5©\04À8¢\åš(…4ƒ5&)\Ø‘°\ÊLT˜E€m.i( céŠQHh\0i\Ã4-<B4\ì|‡\Ó\à)ø G#ƒÎŸ\İ$ô\â™4g9«\é\å\ês}\Ãù\ÓN?+£:\ãªED”ƒƒÖ§ñP\Ë~¢ R„†¡«\ê$\ÚÑš	ƒ\ëVb\â©\Ç\"\ã¾«1:ú\Ô4h™¥°ÔŠ•$ €qU#~ŸÊ§Ä†\Ï8\àPRepıY¨h>†t\çŞ›*I;\×+=áˆ“ƒ‘ĞƒM:\Ò\ÅÔ°ô<-\Ï\0\Õ9l\är~_¨õ­…y\"\Ïöúö‘¹õÖƒ\ç–\Î8\ÅTû¹\áW\Û9§.*u;‹D+\çjú“œRFŒr\Ò±æ–\Ì1sSùXô\Î8¨l5{‘ò½i²“´q*QÁ\Éüj¼®®8#¥–W.iF\0&›‘øRI(}*\ìE\ìjh‘¬—&C\ÎÑ\í]-€+ğ\Ş|É³\í]M‘‰\'vş•\Ñ¡\ÉQ\ê\Ø3[¥iEn±€*Ï–»FASĞƒši\ÕZ\Æw¸ƒQE0\nZAE\0;4æ›Š1@9¨·š“µ3`\æ€\r\æœ	æ›Š|}\è\0\Zx\Ôe0M8P€—Ì¢£\æŠ\0\ã)sHi+#aÙ¥¦Šu\ÉÁ£48\æI\î48QE\Ä8T‚¢ğM\0J\r={\Ô)šj‰g7®G@7÷“\'ùUxù\Åix†1˜\ê\rgDğzW=EfuQwB<`\çÚ¨\ÜD{uƒZcüj9c=*±£W3!˜¡\Ú\Ù\ã¨5u%WN\â 	#¯cŠd2œ\àõşuvORkFm[\Ìy\ä\nÑ„üƒ8ùkIOU\ë\éZ6\×A»©â¥¢“6\Óks\éNqUm\æÀ\éÜ‘V…\ÈÇ¸\ì;\ÔX\Õ2xí—“\Æ=\r(\ã\Î\íµ”ñ‚pI\ÏZj!p\Ù-“Ğšµ±7$C “Mx\ã\ç×©57“Œm ó““P¾FGŠ\äEö\Ïj€§OÖ§|c\'5’$c9\ë\×-\åyO\\c¨Lz\ã¬\Ë\'|pj„²rz\âª(\În\Ãz}j\'æƒ»8\îi\ŞY“Ö´z­MmO)&oq[\àH:Š\Ã\Òq†Œ\ä$©=ÿ\0ú\ã®+F rs\Ô[\Ç\áG4—¼\Ë\Ñ_\\[\çË‘°z€sWb×¥F¬q\Åg¤b¤H\é\Ü,¸µX%À%ûŠ¶’G [\èsXE\ÅY\ÜñŒƒ\ê)’ÕŒ\n\\\Z\ÎF•3‡n;\Z³\Ëc\çQõXV\'\æŠT–7öÏ­H#SŒø\ZV<\ĞsSù`R\áiˆ¯ŠPNj-OJ_$\Z\0‹ƒBcœ\Ô\Â#N\æ€\"Ü¾†Š—É¢€8:9§\nk\ÖF\ÃA\àE0N bP(\Å-\n)h ¹¤«Il±i·÷;¼¨†UGøSJ\àİˆ£\ÉÀ“\ĞUÈ¬§|\åv/r\ÜV>*SŸ%#·L\à°\ëùšuö½-\Ä&7n\ÏVÿ\0C’KPQob-~\êu‚/åœ³ú\Ö|}¹\â¢ ş9©¢\ÇknúTÕ•‰@\é\ÜzÓˆY9\Ü9„\Ú1×“Rösš\Î\æ¶(\\[ğ}¹¬\Éb98\È÷®€¦;\â³\î-\É=Á\ì=jÓ±\r\\\ËIHÀl\äw«p\Üß¯¹¨f„\ç¿\ÔTrd‘W£3\Õ½\âOQÒ¬}¥¹\é´ñ‘Ú¹¸nZ>™#9úU\Ø\î\Ô\ä\î\ç¸‹S[3j+\â‹÷¸=úÔ¿jø¸\'$g­s\æ\á\å:cE*\\I\ÉÀ\Çq\éG+27\Å\è\çs\Å4\İAaY	rÃ¸¦=\É\Æ\0\ë\×&•˜s#F[µ\'<\çŸZ¦÷%ş¤gª…Ø¹\ÏBx\éP™NH\Ï\'©5J7%\ÎÅ—”Œü\ß1<sPI>¤\Ô!\Ë÷9õ«!ü}jôDj\ØôN;Ó¶zõ\ÇOJz¡£œš‹–•‰¬.@Ÿ\ì,¿\ë~tp	!‡Ò·\áO64”©R\ß+©\Ã?¡ü«ŒÔ\\¡™Z6\Ü:Š\ít	¢¾«z·BU\Ü¦\Æq\Èü«¢›º±\ËQYÜ·\\U\Ë{“\éO¶·møa\È85»*`\â­\"[2\âÓ‚u©\Ò\ÙE_òøÿ\0\Z<º¢JF\Ùhû=^ò\èò(CÈ£\ÊúñW\ÌT\Ó\0SQüDıy§‰GFSõcÊ¨\ÌGš,‘\â=g\ĞñO\çµU0Òñôc\ØóE€µ\ÍŞ™\Ë¾ƒ¢¬\ÆROºF}:PHÌµ1CE\0y\ß4œÔ»)6V&\äx£üQŠ\0m&\rHR”‰ ñHJ§\\U¨¬g›\0÷5dh+\Öff>ƒŠ`gYƒ{x–ñı\æ<œg£\ãô\ÉTù­­MŠÌ‡D\Üuª¾;µ7\Z¸Àÿ\0VUÿ\0ñê¦¬®Jw’G–hºg–‚Y²ò„óŠÕ‘\0üx¥¶ B)\Î3Ÿj\är»;c‘\\§\'•$kŞ•\Óô§\Æ*[¹iXcÓšpõıhA\È<ûŠ”t\ã½Iv¾HÀ?\\æ¢–!ƒÆ®$jø\ã\æ\ÄF@\'=@#4\\M2\Å\× z§-¹ä¯§<\ÖÌŠ\Ø9SÇ¥W1#\ç\r\èERd4b›1Lù‡\Øñ[/kœ\á—>„T&\Ìó”?PjÔˆp3’ğ&7nR=Fjd¾^Î¼úœb¥’Û®:ûŠ¨l²~\è\ä\Õ)&K‹Eµy\\ŸCL7‡\Õ@5_\ì\0gi\éjaÖĞ¹Xÿ\05NNKdv >€Â!9÷©£ˆwÀ\ïJ\ãQ]\É8«‘§\r,q®8\É8©0\Ï\ÜcµCf‰EFF	\æ¬q\î\Ìş42•\èùö\'¶|/4±Z‡û˜­\ßi¸C†QüC³®c\ß\ã§5g\ÃR­¾¥4jZ€¹[·\àkjo[UZ\\ô\ëh”•‘z0\É5¢‰\Åfh^\ÍŠ³(\ÚYO¶x\ìzÖ²\×A\Ê0¡÷¤\Ùõ©x9ÿ\0\Z8ü( :S±Ö°sI\Óñ¦b•\'Z1Öl¦”6)	ŒTF!V±M\Å\0Vò©…«{)<°ht\ê1¹¸÷¢œ\Ğòh 48Ò‚“a5lBOj±²\Ã5™©™öY·,v,{ÖªEú\Ô\Ñ\Â;RcFtZ`ş\"jõ¾™\Z`\í\ç\Ô\Õ\è\âU„ŒS°\\®\"TQHŸ)\ÏnN3Uœ„ €‚hBòFj’\æ\Ú;›Y!‘AI«QÒ”Ò§NEha±\ãò\Ù>Ÿ{qi&wBûs\ê=ƒF\Ó]´¿-\â\ÔcN\î\å\Ç\è¥s>P<\×\rHò\ÈôiËš(«°Ó‘*scG—Ö³f©D÷0\í\Å1\Çz‘ÿ\0\nE!6‘\ÏQ\Ó\×\Â:zûÕ€”»ô> Ò¸\ìTdÆ«Iüõ\È\îiyc‘\È\ÏNj?(gñ§{\Êfyd}\ïÎ\åœ}óƒ\Ó<Ö„ëš‚KQ\Éó\ÜSLV*I\Ï \ç®EFmÀ\ÎT{\àU“\'\á\ë\Ïó¦\á¹\î3\Øÿ\0…;Š\ÅCn§8VúS\r¸ÁùE\\!‡c\Ü\æ›\å¶?‡ò§q4Tx5,q/l~Y©E»pI\çÖ¬Gl\Óùf†Á\"—\ëÔƒv{rjÁ@>Ş”\Üc4®UˆH9=})»1\ëø\Ó\È\'\è5&\Êw%¢¼‰û·÷6+C\â„·EŒ¼{ñ\ÏoÏµı)º/|K\ÙeŠ9BL§\0N;Ö”Ş¨Ê¢Ñ¥	cyùD1\Üco\èzÖº\ZÄ³3%\ë	\áUvPw¤›Õ¿>„f¶#5\Øp’ñ\Ïc\íKšE\íN\æ\0\ïM8ü)ô‡ñ ¡\ÇcÒ¥ƒúS¢$ƒ\íLCñM\"–Š\0f)¦¥¦P)EÒ\Ğ\Ğ!0(¥¢˜\Îj02~µ\"\ÑEblN•<`QE1#«¥Sº\ZÎºÿ\0V\ÔQI\îR\Ø\ÙBJz‘š±J(­µc¸\ÓnU­ ×—\Ûÿ\0«\ÇQ\\Ø\Ñ×…Ù sH\0ıh¢¹\Äµ$tQIŒ”SÀ9¢ŠCEPp\ïQ\È\0\É\0fŠ(\ïP².OúQE4&4ªóÀ¥¾”QT!\rÇ­ISE†„“¡¨%\ãõ¢Š25\ïR\ßZ(ª/\Ü5w>$E™\Ó\Ëf\Ú\Ã#4QZS\İ\ÕøY\ŞZœjŠ ^T\0:v­¸è¢»ÀN)\âŠ)\r\ßO­R@´\Ôû\íE\Ä>Š( ›E\0\ßğ¥\ì(¢˜\r$\æŠ( gÿ\Ù',1),('27fa02aa-b5a4-11ef-970a-005056c00001','550e8400-e29b-41d4-a716-446655440001','Eden','Dereje','2002-05-11','Female','0912 345 678','Single','Senior Accountant','Ethiopia',NULL,NULL,1),('27fa1576-b5a4-11ef-970a-005056c00001','550e8400-e29b-41d4-a716-446655440003','Abel','Birhanu','1999-05-11','Male','0912 345 678','Single','Forex Trader','Ethiopia',NULL,NULL,1),('4a8f2b6c-d845-11ef-b188-005056c00001','4a8d34ed-d845-11ef-b188-005056c00001','Selamit','Gebremeskel','3333-03-23','female','0900130082','single','yuyyu','hhhhh',NULL,NULL,1),('6c002f6e-d582-11ef-9523-005056c00001','6bff076f-d582-11ef-9523-005056c00001','John','Doe','1985-07-15','Male','+1234567890','Single','Software Engineer','USA',NULL,NULL,1),('8c939d8c-f6cd-11ef-8b3a-005056c00001','8c9202c1-f6cd-11ef-8b3a-005056c00001','Marselas','Eshetu','2025-02-26','female','0963524112','married','House Wife','Canada','jjeej@gmail.com',NULL,0),('91750c0b-f6c3-11ef-8b3a-005056c00001',NULL,'Mihret','Tilahun','2025-03-25','male','0900130056','married','Engineer','Ethiopia','mihret@gmil.co',NULL,1),('a6b6de77-f6c2-11ef-8b3a-005056c00001',NULL,'Meseret','Defar','2025-03-01','female','0913665698','married','Accountant','Ethiopia','meseret.inbox@gmail.com',_binary 'data:image/jpeg;base64,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',1),('c4d4e549-d582-11ef-9523-005056c00001','c4d29db6-d582-11ef-9523-005056c00001','John','Doe','1985-07-15','Male','+1234567890','Single','Software Engineer','USA',NULL,NULL,0),('cfb2590f-d5d6-11ef-9523-005056c00001','cfb11070-d5d6-11ef-9523-005056c00001','Edini ','Amare','2025-01-07','male','0900130082','single','Job','Ethio',NULL,NULL,0),('d1119ee1-f6cb-11ef-8b3a-005056c00001','d10db9b4-f6cb-11ef-8b3a-005056c00001','Zufan','Alemseged','2000-03-06','Female','0913133103','Single','Neurologist','American','zufan.inbox@gmail.com',NULL,0),('f5deec2a-d79a-11ef-9523-005056c00001','f5db8f2b-d79a-11ef-9523-005056c00001','Mihret','Tilahun','2025-01-08','male','0900130082','married','Engineer','Ethiopian',NULL,NULL,0),('fb752087-f6c2-11ef-8b3a-005056c00001',NULL,'Tesfaye','Girma','2025-03-21','male','0900130085','married','Engineer','Ethiopia','dddddffh@gmail.com',_binary 'data:image/jpeg;base64,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',1);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_diagnosis`
--

DROP TABLE IF EXISTS `patient_diagnosis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_diagnosis` (
  `id` char(36) NOT NULL,
  `patient_id` char(36) NOT NULL,
  `doctor_id` char(36) DEFAULT NULL,
  `diagnosis_code` varchar(20) DEFAULT NULL,
  `diagnosis_date` date NOT NULL,
  `status` varchar(20) NOT NULL,
  `notes` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `final_diagnosis` text,
  PRIMARY KEY (`id`),
  KEY `patient_id` (`patient_id`),
  KEY `doctor_id` (`doctor_id`),
  CONSTRAINT `diagnosis_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`),
  CONSTRAINT `diagnosis_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `organization_staff` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_diagnosis`
--

LOCK TABLES `patient_diagnosis` WRITE;
/*!40000 ALTER TABLE `patient_diagnosis` DISABLE KEYS */;
INSERT INTO `patient_diagnosis` VALUES ('483d4891-f79c-11ef-a0cb-005056c00001','4a8f2b6c-d845-11ef-b188-005056c00001','650e8400-e29b-41d4-a716-446655440001','DX-483d594e','2025-03-02','active',NULL,'2025-03-02 22:26:47','2025-03-02 22:26:47',NULL),('5f5d768b-f6e3-11ef-8b3a-005056c00001','190a4330-d5d9-11ef-9523-005056c00001','36374a0f-e026-11ef-a1d1-005056c00001','DX-5f5d8c33','2025-03-02','active',NULL,'2025-03-02 00:23:08','2025-03-02 00:23:08',NULL),('61241fe2-f70c-11ef-a0cb-005056c00001','27fa02aa-b5a4-11ef-970a-005056c00001','650e8400-e29b-41d4-a716-446655440001','DX-612423bc','2025-03-02','active',NULL,'2025-03-02 05:16:41','2025-03-02 05:16:41',NULL),('6a2e6bdf-f6e3-11ef-8b3a-005056c00001','190a4330-d5d9-11ef-9523-005056c00001','36374a0f-e026-11ef-a1d1-005056c00001','DX-6a2e6c35','2025-03-02','active',NULL,'2025-03-02 00:23:27','2025-03-02 00:23:27',NULL),('847dbbf5-f6e3-11ef-8b3a-005056c00001','190a4330-d5d9-11ef-9523-005056c00001','2714d0a6-d583-11ef-9523-005056c00001','DX-847dbc6a','2025-03-02','active',NULL,'2025-03-02 00:24:11','2025-03-02 00:24:11',NULL),('ba61962e-f6e3-11ef-8b3a-005056c00001','190a4330-d5d9-11ef-9523-005056c00001','2714d0a6-d583-11ef-9523-005056c00001','DX-ba6196a4','2025-03-02','active',NULL,'2025-03-02 00:25:41','2025-03-02 00:25:41',NULL),('bd45aef0-f6df-11ef-8b3a-005056c00001','190a4330-d5d9-11ef-9523-005056c00001','1847564c-e01c-11ef-a1d1-005056c00001','DX-bd45b617','2025-03-01','active',NULL,'2025-03-01 23:57:08','2025-03-01 23:57:08',NULL),('fce0bd15-f70c-11ef-a0cb-005056c00001','27fa02aa-b5a4-11ef-970a-005056c00001','650e8400-e29b-41d4-a716-446655440001','DX-fce0bd7b','2025-03-02','completed',NULL,'2025-03-02 05:21:02','2025-03-02 15:22:40','Terminate');
/*!40000 ALTER TABLE `patient_diagnosis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_instance`
--

DROP TABLE IF EXISTS `patient_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_instance` (
  `id` char(36) NOT NULL,
  `diagnosis_id` char(36) DEFAULT NULL,
  `chief_complaints` text,
  `symptoms` text,
  `symptom_details` json DEFAULT NULL,
  `pain_details` json DEFAULT NULL,
  `duration_of_illness` varchar(50) DEFAULT NULL,
  `remedies_tried` text,
  `vitals` json DEFAULT NULL,
  `weight` decimal(4,1) NOT NULL,
  `height` decimal(4,1) NOT NULL,
  `age` int NOT NULL,
  `ongoing_medications` text,
  `lifestyle_factors` json DEFAULT NULL,
  `allergies_and_alerts` text,
  `nurses_notes` text,
  `instance_summary` text,
  PRIMARY KEY (`id`),
  KEY `diagnosis_id` (`diagnosis_id`),
  CONSTRAINT `patient_instance_ibfk_1` FOREIGN KEY (`diagnosis_id`) REFERENCES `patient_diagnosis` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_instance`
--

LOCK TABLES `patient_instance` WRITE;
/*!40000 ALTER TABLE `patient_instance` DISABLE KEYS */;
INSERT INTO `patient_instance` VALUES ('4844d7f3-f79c-11ef-a0cb-005056c00001','483d4891-f79c-11ef-a0cb-005056c00001','Patient complains of persistent headaches','Patient experiences dizziness and nausea','{\"severity\": \"moderate\", \"frequency\": \"daily\", \"symptom_start_date\": \"2022-01-15\"}','{\"type\": \"throbbing\", \"location\": \"back of the head\", \"presence\": \"constant\", \"intensity\": \"6/10\"}','Patient has been ill for the past week','Patient has tried over-the-counter painkillers','{\"heart_rate\": 80, \"blood_pressure\": \"120/80\", \"respiratory_rate\": 16}',65.0,170.0,-1308,'Patient takes daily vitamins','{\"tobacco_use\": \"Never smoked\", \"alcohol_consumption\": \"Occasional social drinker\", \"caffeine_consumption\": \"2 cups of coffee per day\"}','Patient is allergic to penicillin','Patient appears fatigued and anxious','Patient presents with chronic headaches and associated symptoms, ongoing treatment with over-the-counter medications has been ineffective'),('5f63cdb3-f6e3-11ef-8b3a-005056c00001','5f5d768b-f6e3-11ef-8b3a-005056c00001','Patient complains of persistent headaches','Headaches, fatigue, dizziness','{\"severity\": \"moderate\", \"frequency\": \"daily\", \"symptom_start_date\": \"2 weeks ago\"}','{\"type\": \"dull ache\", \"location\": \"head\", \"presence\": \"present\", \"intensity\": \"5/10\"}','Patient has been feeling unwell for the past month','Patient has tried over-the-counter painkillers','{\"heart_rate\": 80, \"blood_pressure\": \"120/80\", \"respiratory_rate\": 16}',70.0,170.0,-196,'None','{\"tobacco_use\": \"never\", \"alcohol_consumption\": \"occasional\", \"caffeine_consumption\": \"daily\"}','Patient is allergic to penicillin','Patient appears fatigued and slightly pale','Patient presents with persistent headaches, fatigue, and dizziness, symptoms started 2 weeks ago and have been moderate in severity. Vitals are within normal range, patient denies any ongoing medications, lifestyle factors include occasional alcohol consumption and daily caffeine intake. Patient is allergic to penicillin.'),('61264410-f70c-11ef-a0cb-005056c00001','61241fe2-f70c-11ef-a0cb-005056c00001','Experiencing chest pain','Shortness of breath and dizziness','{\"severity\": \"moderate\", \"frequency\": \"daily\", \"symptom_start_date\": \"2 weeks ago\"}','{\"type\": \"sharp\", \"location\": \"chest\", \"presence\": \"constant\", \"intensity\": \"6/10\"}','Has been feeling unwell for a month','Used over-the-counter painkillers','{\"heart_rate\": 80, \"blood_pressure\": \"120/80\", \"respiratory_rate\": 18}',70.0,165.0,22,'None','{\"tobacco_use\": \"non-smoker\", \"alcohol_consumption\": \"occasional\", \"caffeine_consumption\": \"daily\"}','Allergic to penicillin','Patient appears anxious and restless','Patient presenting with chest pain and shortness of breath, experiencing moderate symptoms for the past 2 weeks. Vital signs stable, no ongoing medications, allergic to penicillin.'),('6a2ef116-f6e3-11ef-8b3a-005056c00001','6a2e6bdf-f6e3-11ef-8b3a-005056c00001','Patient complains of persistent headaches','Headaches, fatigue, dizziness','{\"severity\": \"moderate\", \"frequency\": \"daily\", \"symptom_start_date\": \"2 weeks ago\"}','{\"type\": \"dull ache\", \"location\": \"head\", \"presence\": \"present\", \"intensity\": \"5/10\"}','Patient has been feeling unwell for the past month','Patient has tried over-the-counter painkillers','{\"heart_rate\": 80, \"blood_pressure\": \"120/80\", \"respiratory_rate\": 16}',70.0,170.0,-196,'None','{\"tobacco_use\": \"never\", \"alcohol_consumption\": \"occasional\", \"caffeine_consumption\": \"daily\"}','Patient is allergic to penicillin','Patient appears fatigued and slightly pale','Patient presents with persistent headaches, fatigue, and dizziness, symptoms started 2 weeks ago and have been moderate in severity. Vitals are within normal range, patient denies any ongoing medications, lifestyle factors include occasional alcohol consumption and daily caffeine intake. Patient is allergic to penicillin.'),('847f920e-f6e3-11ef-8b3a-005056c00001','847dbbf5-f6e3-11ef-8b3a-005056c00001','Headache and fatigue','Dizziness and loss of appetite','{\"severity\": \"moderate\", \"frequency\": \"daily\", \"symptom_start_date\": \"2022-01-15\"}','{\"type\": \"throbbing\", \"location\": \"head\", \"presence\": true, \"intensity\": \"6/10\"}','Symptoms started a week ago','Over-the-counter painkillers','{\"heart_rate\": 80, \"blood_pressure\": \"120/80\", \"respiratory_rate\": 16}',70.0,170.0,-196,'None','{\"tobacco_use\": false, \"alcohol_consumption\": \"occasional\", \"caffeine_consumption\": \"daily\"}','No known allergies','Patient seems fatigued and complains of persistent headache','Patient presenting with headache, dizziness, and fatigue. Pain intensity 6/10 located in the head. Vitals stable with occasional alcohol consumption and daily caffeine intake. No known allergies.'),('ba61d8f0-f6e3-11ef-8b3a-005056c00001','ba61962e-f6e3-11ef-8b3a-005056c00001','Headache and fatigue','Dizziness and loss of appetite','{\"severity\": \"moderate\", \"frequency\": \"daily\", \"symptom_start_date\": \"2022-01-15\"}','{\"type\": \"throbbing\", \"location\": \"head\", \"presence\": true, \"intensity\": \"6/10\"}','Symptoms started a week ago','Over-the-counter painkillers','{\"heart_rate\": 80, \"blood_pressure\": \"120/80\", \"respiratory_rate\": 16}',70.0,170.0,-196,'None','{\"tobacco_use\": false, \"alcohol_consumption\": \"occasional\", \"caffeine_consumption\": \"daily\"}','No known allergies','Patient seems fatigued and complains of persistent headache','Patient presenting with headache, dizziness, and fatigue. Pain intensity 6/10 located in the head. Vitals stable with occasional alcohol consumption and daily caffeine intake. No known allergies.'),('bd4f6d81-f6df-11ef-8b3a-005056c00001','bd45aef0-f6df-11ef-8b3a-005056c00001','Patient complains of persistent headache','Patient experiences dizziness and fatigue','{\"severity\": \"moderate\", \"frequency\": \"daily\", \"symptom_start_date\": \"2022-05-15\"}','{\"type\": \"dull\", \"location\": \"temples\", \"presence\": \"present\", \"intensity\": \"5/10\"}','Symptoms have been present for the past week','Patient has tried over-the-counter painkillers','{\"heart_rate\": 80, \"blood_pressure\": \"120/80\", \"respiratory_rate\": 16}',70.0,170.0,-196,'Patient is taking prescribed medication for hypertension','{\"tobacco_use\": \"none\", \"alcohol_consumption\": \"occasional\", \"caffeine_consumption\": \"daily\"}','Patient is allergic to penicillin','Patient appears alert and responsive',NULL),('fce0f01f-f70c-11ef-a0cb-005056c00001','fce0bd15-f70c-11ef-a0cb-005056c00001','Patient complains of persistent abdominal pain','Experiencing nausea and vomiting','{\"severity\": \"Moderate\", \"frequency\": \"Daily\", \"symptom_start_date\": \"2021-05-10\"}','{\"type\": \"Cramping\", \"location\": \"Lower abdomen\", \"presence\": \"Constant\", \"intensity\": \"6/10\"}','Symptoms have been present for 2 weeks','Patient has tried over-the-counter pain relievers','{\"heart_rate\": 80, \"blood_pressure\": \"120/80\", \"respiratory_rate\": 16}',70.0,170.0,22,'None','{\"tobacco_use\": \"Non-smoker\", \"alcohol_consumption\": \"Occasional drinker\", \"caffeine_consumption\": \"2 cups of coffee per day\"}','Allergic to penicillin','Patient appears uncomfortable and has guarding of abdomen','Patient presenting with abdominal pain, nausea, and vomiting. In discomfort for the past 2 weeks. No relief from over-the-counter medications. Vital signs stable.');
/*!40000 ALTER TABLE `patient_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_prescriptions`
--

DROP TABLE IF EXISTS `patient_prescriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_prescriptions` (
  `id` char(36) NOT NULL,
  `diagnosis_id` char(36) NOT NULL,
  `medication` varchar(500) DEFAULT NULL,
  `dosage` varchar(100) NOT NULL,
  `duration` varchar(50) NOT NULL,
  `frequency` varchar(50) NOT NULL,
  `route_of_administration` enum('Oral','Injection','Topical','Intravenous','Other') NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `instructions` text,
  `prescribed_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Active','Discontinued','Completed') DEFAULT 'Active',
  PRIMARY KEY (`id`),
  KEY `diagnosis_id` (`diagnosis_id`),
  CONSTRAINT `patient_prescriptions_ibfk_1` FOREIGN KEY (`diagnosis_id`) REFERENCES `patient_diagnosis` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_prescriptions`
--

LOCK TABLES `patient_prescriptions` WRITE;
/*!40000 ALTER TABLE `patient_prescriptions` DISABLE KEYS */;
INSERT INTO `patient_prescriptions` VALUES ('4cf09ab0-662e-4140-89de-252a37c0b255','61241fe2-f70c-11ef-a0cb-005056c00001','Paracetamol','5mg','7 days','1-2 times daily','Oral','2025-03-02','2025-03-02','swallow','2025-03-03 00:11:42','2025-03-03 00:11:42','Active'),('6dee4586-8d05-4590-92ee-a0459a13dd8d','483d4891-f79c-11ef-a0cb-005056c00001','Paracetamol','5mg','7 days','2 times a day','Oral','2025-03-03','2025-03-13','instruction','2025-03-03 10:28:48','2025-03-03 10:28:48','Active');
/*!40000 ALTER TABLE `patient_prescriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_recommendations`
--

DROP TABLE IF EXISTS `patient_recommendations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_recommendations` (
  `id` char(36) NOT NULL,
  `diagnosis_id` char(36) NOT NULL,
  `recommendation_type` varchar(255) DEFAULT NULL,
  `recommendation_text` text,
  `date_recommended` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `comments` text,
  PRIMARY KEY (`id`),
  KEY `diagnosis_id` (`diagnosis_id`),
  CONSTRAINT `patient_recommendations_ibfk_1` FOREIGN KEY (`diagnosis_id`) REFERENCES `patient_diagnosis` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_recommendations`
--

LOCK TABLES `patient_recommendations` WRITE;
/*!40000 ALTER TABLE `patient_recommendations` DISABLE KEYS */;
INSERT INTO `patient_recommendations` VALUES ('1e41fd12-d20b-4380-8333-8a9f7b46ec39','61241fe2-f70c-11ef-a0cb-005056c00001','Dietary','I recommend this','2025-03-02 18:12:09','2025-03-02 18:12:09','');
/*!40000 ALTER TABLE `patient_recommendations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'e-doctor'
--

--
-- Dumping routines for database 'e-doctor'
--
/*!50003 DROP FUNCTION IF EXISTS `GetPatientAgeByDiagnosis` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPatientAgeByDiagnosis`(diagnosisId CHAR(36)) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE dateOfBirth DATE;
    DECLARE age INT;

    -- Retrieve the patient's date of birth using the diagnosis ID
    SELECT p.date_of_birth
    INTO dateOfBirth
    FROM diagnosis d
    INNER JOIN patient p ON d.patient_id = p.id
    WHERE d.id = diagnosisId;

    -- Calculate the age if dateOfBirth is not NULL
    IF dateOfBirth IS NOT NULL THEN
        SET age = TIMESTAMPDIFF(YEAR, dateOfBirth, CURDATE()) 
                  - IF(DATE_FORMAT(dateOfBirth, '%m-%d') > DATE_FORMAT(CURDATE(), '%m-%d'), 1, 0);
    ELSE
        SET age = NULL; -- Return NULL if the diagnosisId is not found
    END IF;

    RETURN age;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ActivatePatientById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ActivatePatientById`(IN p_patient_id CHAR(36))
BEGIN
    DECLARE v_user_id CHAR(36);

    -- Get the corresponding user_id from organization_staff
    SELECT user_id INTO v_user_id 
    FROM patient 
    WHERE id = p_patient_id;

    -- Deactivate the user in app_users
    UPDATE app_users
    SET is_active = 1
    WHERE id = v_user_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ActivateUserById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ActivateUserById`(IN p_staff_id CHAR(36))
BEGIN
    DECLARE v_user_id CHAR(36);

    -- Get the corresponding user_id from organization_staff
    SELECT user_id INTO v_user_id 
    FROM organization_staff 
    WHERE id = p_staff_id;

    -- Deactivate the user in app_users
    UPDATE app_users
    SET is_active = 1
    WHERE id = v_user_id;

    -- Deactivate the staff in organization_staff
    UPDATE organization_staff
    SET is_active = 1
    WHERE id = p_staff_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ActivePatientContextByDoctorId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ActivePatientContextByDoctorId`(IN doctorId CHAR(36))
BEGIN
    SELECT 
        p.id AS patient_id,
        p.first_name,
        p.last_name,
        p.date_of_birth,
        p.gender,
        p.phone_number,
        p.marital_status,
        p.occupation,
        p.nationality,
        p.email,
        p.profile_picture,
        p.is_active,
        pi.id AS instance_id,
        pi.chief_complaints,
        pi.symptoms,
        pi.symptom_details,
        pi.pain_details,
        pi.duration_of_illness,
        pi.remedies_tried,
        pi.vitals,
        pi.weight,
        pi.height,
        pi.age,
        pi.ongoing_medications,
        pi.lifestyle_factors,
        pi.allergies_and_alerts,
        pi.nurses_notes,
        pi.instance_summary,
        pd.id AS diagnosis_id,
        pd.doctor_id,
        pd.diagnosis_code,
        pd.diagnosis_date,
        pd.status,
        pd.notes,
        pd.created_at,
        pd.updated_at,
        pd.final_diagnosis
    FROM 
        patient p
    INNER JOIN 
        patient_diagnosis pd ON p.id = pd.patient_id
    INNER JOIN 
        patient_instance pi ON pd.id = pi.diagnosis_id
    WHERE 
        pd.doctor_id = doctorId
        AND pd.status = 'active'
    ORDER BY 
        pd.diagnosis_date ASC; -- Sort by oldest records first
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ActivePatientContextByDoctorUsername` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ActivePatientContextByDoctorUsername`(IN doctorUsername VARCHAR(100))
BEGIN
    DECLARE doctorUserId CHAR(36);

    -- Get the user_id from app_users using the username
    SELECT id INTO doctorUserId
    FROM app_users
    WHERE username = doctorUsername AND role = 'doctor';

    IF doctorUserId IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No doctor found with the given username.';
    END IF;

    -- Fetch completed patient contexts for the doctor
    SELECT 
        p.id AS patient_id,
        p.first_name,
        p.last_name,
        p.date_of_birth,
        p.gender,
        p.phone_number,
        p.marital_status,
        p.occupation,
        p.nationality,
        p.email,
        p.profile_picture,
        p.is_active,
        pi.id AS instance_id,
        pi.chief_complaints,
        pi.symptoms,
        pi.symptom_details,
        pi.pain_details,
        pi.duration_of_illness,
        pi.remedies_tried,
        pi.vitals,
        pi.weight,
        pi.height,
        pi.age,
        pi.ongoing_medications,
        pi.lifestyle_factors,
        pi.allergies_and_alerts,
        pi.nurses_notes,
        pi.instance_summary,
        pd.id AS diagnosis_id,
        pd.doctor_id,
        pd.diagnosis_code,
        pd.diagnosis_date,
        pd.status,
        pd.notes,
        pd.created_at,
        pd.updated_at,
        pd.final_diagnosis
    FROM 
        patient p
    INNER JOIN 
        patient_diagnosis pd ON p.id = pd.patient_id
    INNER JOIN 
        patient_instance pi ON pd.id = pi.diagnosis_id
    INNER JOIN 
        organization_staff os ON pd.doctor_id = os.id
    WHERE 
        os.user_id = doctorUserId
        AND pd.status = 'active'
    ORDER BY 
        pd.diagnosis_date ASC; -- Sort by oldest records first
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddOrganizationStaff` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddOrganizationStaff`(
    IN p_first_name VARCHAR(100),
    IN p_last_name VARCHAR(100),
    IN p_password_hash TEXT,
    IN p_role VARCHAR(100),
    IN p_department VARCHAR(100),
    IN p_email VARCHAR(255),
    IN p_phone_number VARCHAR(20),
    IN p_employment_type ENUM('Full-time', 'Part-time', 'Contract'),
    IN p_date_of_joining DATE,
    IN p_salary DECIMAL(10, 2),
    IN p_shift VARCHAR(50),
    IN p_gender VARCHAR(10),
    IN p_supervisor_id CHAR(36),
    IN p_address TEXT,
    IN p_emergency_contact VARCHAR(500)
)
BEGIN
    -- Declare variables for generated username and user ID
    DECLARE v_username VARCHAR(100);
    DECLARE v_user_id CHAR(36);

    -- Generate a unique username
    CALL GenerateUniqueUsername(p_first_name, p_last_name, @generated_username);
    SET v_username = @generated_username;

    -- Insert into app_users table
    INSERT INTO app_users (id, username, password_hash, role)
    VALUES (UUID(), v_username, p_password_hash, p_role);

    -- Get the ID of the newly added user
    SET v_user_id = (SELECT id FROM app_users WHERE username = v_username);

    -- Insert into organization_staff table
    INSERT INTO organization_staff (
        id,
        user_id,
        first_name,
        last_name,
        role,
        department,
        email,
        phone_number,
        employment_type,
        date_of_joining,
        is_active,
        salary,
        shift,
        supervisor_id,
        address,
        emergency_contact, gender
    )
    VALUES (
        UUID(),
        v_user_id,
        p_first_name,
        p_last_name,
        p_role,
        p_department,
        p_email,
        p_phone_number,
        p_employment_type,
        p_date_of_joining,
        TRUE, -- Default is_active to TRUE
        p_salary,
        p_shift,
        p_supervisor_id,
        p_address,
        p_emergency_contact,
        p_gender
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddPatient` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddPatient`(
    IN p_first_name VARCHAR(100),
    IN p_last_name VARCHAR(100),
    IN p_date_of_birth DATE,
    IN p_gender CHAR(10),
    IN p_phone_number VARCHAR(15),
    IN p_marital_status VARCHAR(20),
    IN p_occupation VARCHAR(100),
    IN p_nationality VARCHAR(50),
    IN p_email VARCHAR(255),
    IN hashed_pwd TEXT, -- Hashed password parameter
    IN p_profile_picture BLOB -- Accept profile picture as BLOB
)
BEGIN
    -- Declare variables for generated username and user ID
    DECLARE v_username VARCHAR(100);
    DECLARE v_user_id CHAR(36);

    -- Generate a unique username
    CALL GenerateUniqueUsername(p_first_name, p_last_name, @generated_username);
    SET v_username = @generated_username;

    -- Insert into app_users table with the provided hashed password and default role
    INSERT INTO app_users (id, username, password_hash, role)
    VALUES (
        UUID(),
        v_username,
        hashed_pwd, -- Use the provided hashed password
        'patient' -- Default role
    );

    -- Get the ID of the newly added user
    SET v_user_id = (SELECT id FROM app_users WHERE username = v_username);

    -- Insert into patient table
    INSERT INTO patient (
        id,
        user_id,
        first_name,
        last_name,
        date_of_birth,
        gender,
        phone_number,
        marital_status,
        occupation,
        nationality,
        email,
        profile_picture,
        is_active
    )
    VALUES (
        UUID(),
        v_user_id, -- Link to the newly created user
        p_first_name,
        p_last_name,
        p_date_of_birth,
        p_gender,
        p_phone_number,
        p_marital_status,
        p_occupation,
        p_nationality,
        p_email,
        p_profile_picture, -- Use BLOB directly
        TRUE -- Default is_active to TRUE
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddPatientInstance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddPatientInstance`(
    IN p_patient_id CHAR(36),
    IN p_doctor_id CHAR(36),
    IN p_diagnosis_date DATE,
    IN p_chief_complaints TEXT,
    IN p_symptoms TEXT,
    IN p_symptom_details JSON,
    IN p_pain_details JSON,
    IN p_duration_of_illness VARCHAR(50),
    IN p_remedies_tried TEXT,
    IN p_vitals JSON,
    IN p_weight DECIMAL(4,1),
    IN p_height DECIMAL(4,1),
    IN p_ongoing_medications TEXT,
    IN p_lifestyle_factors JSON,
    IN p_allergies_and_alerts TEXT,
    IN p_nurses_notes TEXT,
    IN p_instance_summary TEXT -- New parameter
)
BEGIN
    DECLARE v_diagnosis_id CHAR(36);
    DECLARE v_diagnosis_code VARCHAR(20);
    DECLARE v_age INT;

    -- Generate a new UUID for the diagnosis_id
    SET v_diagnosis_id = UUID();

    -- Generate a diagnosis_code (e.g., "DX-" + first 8 characters of UUID)
    SET v_diagnosis_code = CONCAT('DX-', LEFT(UUID(), 8));

    -- Calculate the patient's age using date_of_birth from the patient table
    SELECT TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) INTO v_age
    FROM patient
    WHERE id = p_patient_id;

    -- Insert into patient_diagnosis table
    INSERT INTO patient_diagnosis (
        id,
        patient_id,
        doctor_id,
        diagnosis_code,
        diagnosis_date,
        status
    ) VALUES (
        v_diagnosis_id,
        p_patient_id,
        p_doctor_id,
        v_diagnosis_code,
        p_diagnosis_date,
        'active'
    );

    -- Insert into patient_instance table
    INSERT INTO patient_instance (
        id,
        diagnosis_id,
        chief_complaints,
        symptoms,
        symptom_details,
        pain_details,
        duration_of_illness,
        remedies_tried,
        vitals,
        weight,
        height,
        age,
        ongoing_medications,
        lifestyle_factors,
        allergies_and_alerts,
        nurses_notes,
        instance_summary -- New column
    ) VALUES (
        UUID(), -- Generate a new UUID for the patient_instance id
        v_diagnosis_id,
        p_chief_complaints,
        p_symptoms,
        p_symptom_details,
        p_pain_details,
        p_duration_of_illness,
        p_remedies_tried,
        p_vitals,
        p_weight,
        p_height,
        v_age, -- Use the calculated age
        p_ongoing_medications,
        p_lifestyle_factors,
        p_allergies_and_alerts,
        p_nurses_notes,
        p_instance_summary -- New parameter
    );
    
    UPDATE patient
    SET is_active = 1
    WHERE id = p_patient_id;

    -- Return the diagnosis_id and generated diagnosis_code for reference
    SELECT v_diagnosis_id AS diagnosis_id, v_diagnosis_code AS diagnosis_code;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AnswerFollowUpQuestion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AnswerFollowUpQuestion`(
    IN p_id CHAR(36),
    IN p_answer TEXT
)
BEGIN
    -- Update the answer and set status to 'answered' (or 'completed')
    UPDATE follow_up_questions
    SET 
        answer = p_answer,
        status = 'answered', -- Automatically set status to 'answered'
        updated_at = CURRENT_TIMESTAMP
    WHERE id = p_id;

    -- Check if any rows were affected
    IF ROW_COUNT() = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No follow-up question found with the given ID.';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ChangeAddressOrganizationUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeAddressOrganizationUser`(
    IN p_staff_id CHAR(36),
    IN p_new_address VARCHAR(255)
)
BEGIN
    UPDATE organization_staff
    SET address = p_new_address
    WHERE id = p_staff_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ChangeDepartmentOrganizationUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeDepartmentOrganizationUser`(
    IN p_staff_id CHAR(36),
    IN p_new_department VARCHAR(50)
)
BEGIN
    UPDATE organization_staff
    SET department = p_new_department
    WHERE id = p_staff_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ChangeEmailOrganizationUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeEmailOrganizationUser`(
    IN p_staff_id CHAR(36),
    IN p_new_email VARCHAR(255)
)
BEGIN
    UPDATE organization_staff
    SET email = p_new_email
    WHERE id = p_staff_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ChangeEmailPatientUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeEmailPatientUser`(
    IN p_patient_id CHAR(36),
    IN p_new_email VARCHAR(255)
)
BEGIN
    UPDATE patient
    SET email = p_new_email
    WHERE id = p_patient_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ChangeEmergencyContactOrganizationUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeEmergencyContactOrganizationUser`(
    IN p_staff_id CHAR(36),
    IN p_new_emergency_contact VARCHAR(255)
)
BEGIN
    UPDATE organization_staff
    SET emergency_contact = p_new_emergency_contact
    WHERE id = p_staff_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ChangeEmploymentTypeOrganizationUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeEmploymentTypeOrganizationUser`(
    IN p_staff_id CHAR(36),
    IN p_new_employment_type VARCHAR(50)
)
BEGIN
    UPDATE organization_staff
    SET employment_type = p_new_employment_type
    WHERE id = p_staff_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ChangeFullNameOrganizationUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeFullNameOrganizationUser`(
    IN p_staff_id CHAR(36),
    IN p_new_first_name VARCHAR(100),
    IN p_new_last_name VARCHAR(100)
)
BEGIN
    UPDATE organization_staff
    SET first_name = p_new_first_name,
        last_name = p_new_last_name
    WHERE id = p_staff_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ChangeFullNamePatientUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeFullNamePatientUser`(
    IN p_patient_id CHAR(36),
    IN p_new_first_name VARCHAR(100),
    IN p_new_last_name VARCHAR(100)
)
BEGIN
    UPDATE patient
    SET first_name = p_new_first_name,
        last_name = p_new_last_name
    WHERE id = p_patient_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ChangeGenderOrganizationUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeGenderOrganizationUser`(
    IN p_staff_id CHAR(36),
    IN p_new_gender VARCHAR(10)
)
BEGIN
    UPDATE organization_staff
    SET gender = p_new_gender
    WHERE id = p_staff_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ChangeGenderPatientUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeGenderPatientUser`(
    IN p_patient_id CHAR(36),
    IN p_new_gender VARCHAR(10)
)
BEGIN
    UPDATE patient
    SET gender = p_new_gender
    WHERE id = p_patient_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ChangeMaritalStatusPatientUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeMaritalStatusPatientUser`(
    IN p_patient_id CHAR(36),
    IN p_new_marital_status VARCHAR(20))
BEGIN
    UPDATE patient
    SET marital_status = p_new_marital_status
    WHERE id = p_patient_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ChangeNationalityPatientUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeNationalityPatientUser`(
    IN p_patient_id CHAR(36),
    IN p_new_nationality VARCHAR(50)
)
BEGIN
    UPDATE patient
    SET nationality = p_new_nationality
    WHERE id = p_patient_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ChangeOccupationPatientUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeOccupationPatientUser`(
    IN p_patient_id CHAR(36),
    IN p_new_occupation VARCHAR(100))
BEGIN
    UPDATE patient
    SET occupation = p_new_occupation
    WHERE id = p_patient_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ChangePhoneNumberOrganizationUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangePhoneNumberOrganizationUser`(
    IN p_staff_id CHAR(36),
    IN p_new_phone_number VARCHAR(15)
)
BEGIN
    UPDATE organization_staff
    SET phone_number = p_new_phone_number
    WHERE id = p_staff_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ChangePhoneNumberPatientUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangePhoneNumberPatientUser`(
    IN p_patient_id CHAR(36),
    IN p_new_phone_number VARCHAR(15)
)
BEGIN
    UPDATE patient
    SET phone_number = p_new_phone_number
    WHERE id = p_patient_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ChangeProfilePictureOrganizationUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeProfilePictureOrganizationUser`(
    IN p_staff_id CHAR(36),
    IN p_new_profile_picture BLOB
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        -- Log the error
        GET DIAGNOSTICS CONDITION 1 @p1 = MESSAGE_TEXT;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = @p1;
    END;

    -- Update the profile picture
    UPDATE organization_staff
    SET profile_picture = p_new_profile_picture
    WHERE id = p_staff_id;

    -- Check if any rows were updated
    IF ROW_COUNT() = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No rows updated. Invalid staff_id.';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ChangeProfilePicturePatientUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeProfilePicturePatientUser`(
    IN p_patient_id CHAR(36),
    IN p_new_profile_picture BLOB
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        -- Log the error
        GET DIAGNOSTICS CONDITION 1 @p1 = MESSAGE_TEXT;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = @p1;
    END;

    -- Update the profile picture
    UPDATE patient
    SET profile_picture = p_new_profile_picture
    WHERE id = p_patient_id;

    -- Check if any rows were updated
    IF ROW_COUNT() = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No rows updated. Invalid staff_id.';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ChangeRoleOrganizationUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeRoleOrganizationUser`(
    IN p_staff_id CHAR(36),
    IN p_new_role VARCHAR(50)
)
BEGIN
    UPDATE organization_staff os
    JOIN app_users u ON os.user_id = u.id
    SET os.role = p_new_role,
        u.role = p_new_role
    WHERE os.id = p_staff_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ChangeSalaryOrganizationUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeSalaryOrganizationUser`(
    IN p_staff_id CHAR(36),
    IN p_new_salary DECIMAL(10, 2)
)
BEGIN
    UPDATE organization_staff
    SET salary = p_new_salary
    WHERE id = p_staff_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ChangeShiftOrganizationUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeShiftOrganizationUser`(
    IN p_staff_id CHAR(36),
    IN p_new_shift VARCHAR(50)
)
BEGIN
    UPDATE organization_staff
    SET shift = p_new_shift
    WHERE id = p_staff_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ChangeUsernameOrganizationUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeUsernameOrganizationUser`(
    IN p_staff_id CHAR(36),
    IN p_new_username VARCHAR(50)
)
BEGIN
    UPDATE app_users u
    JOIN organization_staff os ON u.id = os.user_id
    SET u.username = p_new_username
    WHERE os.id = p_staff_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ChangeUsernamePatientUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeUsernamePatientUser`(
    IN p_patient_id CHAR(36),
    IN p_new_username VARCHAR(50)
)
BEGIN
    UPDATE app_users u
    JOIN patient os ON u.id = os.user_id
    SET u.username = p_new_username
    WHERE os.id = p_patient_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CompletedPatientContextByDoctorId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CompletedPatientContextByDoctorId`(IN doctorId CHAR(36))
BEGIN
    SELECT 
        p.id AS patient_id,
        p.first_name,
        p.last_name,
        p.date_of_birth,
        p.gender,
        p.phone_number,
        p.marital_status,
        p.occupation,
        p.nationality,
        p.email,
        p.profile_picture,
        p.is_active,
        pi.id AS instance_id,
        pi.chief_complaints,
        pi.symptoms,
        pi.symptom_details,
        pi.pain_details,
        pi.duration_of_illness,
        pi.remedies_tried,
        pi.vitals,
        pi.weight,
        pi.height,
        pi.age,
        pi.ongoing_medications,
        pi.lifestyle_factors,
        pi.allergies_and_alerts,
        pi.nurses_notes,
        pi.instance_summary,
        pd.id AS diagnosis_id,
        pd.doctor_id,
        pd.diagnosis_code,
        pd.diagnosis_date,
        pd.status,
        pd.notes,
        pd.created_at,
        pd.updated_at,
        pd.final_diagnosis
    FROM 
        patient p
    INNER JOIN 
        patient_diagnosis pd ON p.id = pd.patient_id
    INNER JOIN 
        patient_instance pi ON pd.id = pi.diagnosis_id
    WHERE 
        pd.doctor_id = doctorId
        AND pd.status = 'completed'
    ORDER BY 
        pd.diagnosis_date DESC; -- Sort by newest records first
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CompletedPatientContextByDoctorUsername` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CompletedPatientContextByDoctorUsername`(IN doctorUsername VARCHAR(100))
BEGIN
    DECLARE doctorUserId CHAR(36);

    -- Get the user_id from app_users using the username
    SELECT id INTO doctorUserId
    FROM app_users
    WHERE username = doctorUsername AND role = 'doctor';

    IF doctorUserId IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No doctor found with the given username.';
    END IF;

    -- Fetch completed patient contexts for the doctor
    SELECT 
        p.id AS patient_id,
        p.first_name,
        p.last_name,
        p.date_of_birth,
        p.gender,
        p.phone_number,
        p.marital_status,
        p.occupation,
        p.nationality,
        p.email,
        p.profile_picture,
        p.is_active,
        pi.id AS instance_id,
        pi.chief_complaints,
        pi.symptoms,
        pi.symptom_details,
        pi.pain_details,
        pi.duration_of_illness,
        pi.remedies_tried,
        pi.vitals,
        pi.weight,
        pi.height,
        pi.age,
        pi.ongoing_medications,
        pi.lifestyle_factors,
        pi.allergies_and_alerts,
        pi.nurses_notes,
        pi.instance_summary,
        pd.id AS diagnosis_id,
        pd.doctor_id,
        pd.diagnosis_code,
        pd.diagnosis_date,
        pd.status,
        pd.notes,
        pd.created_at,
        pd.updated_at,
        pd.final_diagnosis
    FROM 
        patient p
    INNER JOIN 
        patient_diagnosis pd ON p.id = pd.patient_id
    INNER JOIN 
        patient_instance pi ON pd.id = pi.diagnosis_id
    INNER JOIN 
        organization_staff os ON pd.doctor_id = os.id
    WHERE 
        os.user_id = doctorUserId
        AND pd.status = 'active'
    ORDER BY 
        pd.diagnosis_date ASC; -- Sort by oldest records first
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeactivatePatientById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeactivatePatientById`(IN p_patient_id CHAR(36))
BEGIN
    DECLARE v_user_id CHAR(36);

    -- Get the corresponding user_id from organization_staff
    SELECT user_id INTO v_user_id 
    FROM patient 
    WHERE id = p_patient_id;

    -- Deactivate the user in app_users
    UPDATE app_users
    SET is_active = 0
    WHERE id = v_user_id;

    -- Deactivate the staff in organization_staff
    UPDATE patient
    SET is_active = 0
    WHERE id = p_patient_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeactivateUserById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeactivateUserById`(IN p_staff_id CHAR(36))
BEGIN
    DECLARE v_user_id CHAR(36);

    -- Get the corresponding user_id from organization_staff
    SELECT user_id INTO v_user_id 
    FROM organization_staff 
    WHERE id = p_staff_id;

    -- Deactivate the user in app_users
    UPDATE app_users
    SET is_active = 0
    WHERE id = v_user_id;

    -- Deactivate the staff in organization_staff
    UPDATE organization_staff
    SET is_active = 0
    WHERE id = p_staff_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GenerateUniqueUsername` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GenerateUniqueUsername`(
    IN p_first_name VARCHAR(50),
    IN p_last_name VARCHAR(50),
    OUT p_generated_username VARCHAR(100)
)
BEGIN
    DECLARE is_unique BOOLEAN DEFAULT FALSE;
    DECLARE temp_username VARCHAR(100);
    DECLARE random_suffix VARCHAR(10);

    WHILE is_unique = FALSE DO
        -- Generate a random suffix (2-digit number or random letter)
        SET random_suffix = CASE 
            WHEN RAND() < 0.5 THEN LPAD(FLOOR(RAND() * 100), 2, '0') -- Random 2-digit number
            ELSE CHAR(FLOOR(97 + (RAND() * 26)))                    -- Random lowercase letter
        END;

        -- Concatenate first name, last name, and random suffix
        SET temp_username = CONCAT(LOWER(p_first_name), '.', LOWER(p_last_name), random_suffix);

        -- Check if the generated username already exists
        IF NOT EXISTS (
            SELECT 1 FROM app_users WHERE username = temp_username
        ) THEN
            SET is_unique = TRUE;
        END IF;
    END WHILE;

    -- Set the generated unique username as the output
    SET p_generated_username = temp_username;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetActivePatientContext` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetActivePatientContext`()
BEGIN
    SELECT 
        p.id AS patient_id,
        p.first_name,
        p.last_name,
        p.date_of_birth,
        p.gender,
        p.phone_number,
        p.marital_status,
        p.occupation,
        p.nationality,
        p.email,
        p.profile_picture,
        p.is_active,
        pi.id AS instance_id,
        pi.chief_complaints,
        pi.symptoms,
        pi.symptom_details,
        pi.pain_details,
        pi.duration_of_illness,
        pi.remedies_tried,
        pi.vitals,
        pi.weight,
        pi.height,
        pi.age,
        pi.ongoing_medications,
        pi.lifestyle_factors,
        pi.allergies_and_alerts,
        pi.nurses_notes,
        pi.instance_summary,
        pd.id AS diagnosis_id,
        pd.doctor_id,
        pd.diagnosis_code,
        pd.diagnosis_date,
        pd.status,
        pd.notes,
        pd.created_at,
        pd.updated_at,
        pd.final_diagnosis
    FROM 
        patient p
    INNER JOIN 
        patient_diagnosis pd ON p.id = pd.patient_id
    INNER JOIN 
        patient_instance pi ON pd.id = pi.diagnosis_id
    WHERE 
        pd.status = 'active';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAdminUsers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAdminUsers`()
BEGIN
    -- Select the id and concatenated full name of users with the role 'admin'
    SELECT 
        id, 
        CONCAT(first_name, ' ', last_name) AS full_name
    FROM 
        organization_staff
    WHERE 
        role = 'Administrator';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllActiveOrganizationUsers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllActiveOrganizationUsers`()
BEGIN
    SELECT 
        os.id,
        os.first_name,
        os.last_name,
        os.gender,
        os.role,
        os.department,
        os.email,
        os.phone_number,
        os.employment_type,
        os.date_of_joining,
        os.is_active,
        os.salary,
        os.shift,
        os.profile_picture,
        os.supervisor_id,
        os.address,
        os.emergency_contact,
        u.username,
        u.is_active AS user_is_active,
        u.created_at
    FROM 
        organization_staff os
    JOIN 
        app_users u ON os.user_id = u.id
	WHERE os.is_active = 1;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllActivePatients` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllActivePatients`()
BEGIN
    SELECT 
        p.id,
        p.first_name,
        p.last_name,
        p.date_of_birth,
        p.gender,
        p.phone_number,
        p.marital_status,
        p.occupation,
        p.nationality,
        p.email,
        p.profile_picture,
        u.username,
        u.is_active AS user_is_active,
        u.created_at
    FROM 
        patient p
    JOIN 
        app_users u ON p.user_id = u.id
    WHERE 
        p.is_active = 1
        AND u.is_active = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllBlockedPatients` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllBlockedPatients`()
BEGIN
    SELECT 
        p.id,
        p.first_name,
        p.last_name,
        p.date_of_birth,
        p.gender,
        p.phone_number,
        p.marital_status,
        p.occupation,
        p.nationality,
        p.email,
        p.profile_picture,
        u.username,
        u.is_active AS user_is_active,
        u.created_at
    FROM 
        patient p
    JOIN 
        app_users u ON p.user_id = u.id
    WHERE 
        p.is_active = 0
        AND u.is_active = 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllInactiveOrganizationUsers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllInactiveOrganizationUsers`()
BEGIN
    SELECT 
        os.id,
        os.first_name,
        os.last_name,
        os.gender,
        os.role,
        os.department,
        os.email,
        os.phone_number,
        os.employment_type,
        os.date_of_joining,
        os.is_active,
        os.salary,
        os.shift,
        os.supervisor_id,
        os.address,
         os.profile_picture,
        os.emergency_contact,
        u.username,
        u.is_active AS user_is_active,
        u.created_at
    FROM 
        organization_staff os
    JOIN 
        app_users u ON os.user_id = u.id
	WHERE os.is_active = 0;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllInactivePatients` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllInactivePatients`()
BEGIN
    SELECT 
        p.id,
        p.first_name,
        p.last_name,
        p.date_of_birth,
        p.gender,
        p.phone_number,
        p.marital_status,
        p.occupation,
        p.nationality,
        p.email,
        p.profile_picture,
        u.username,
        u.is_active AS user_is_active,
        u.created_at
    FROM 
        patient p
    JOIN 
        app_users u ON p.user_id = u.id
    WHERE 
        p.is_active = 0
        AND u.is_active = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllPatients` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllPatients`()
BEGIN
    SELECT 
        p.id,
        p.first_name,
        p.last_name,
        p.date_of_birth,
        p.gender,
        p.phone_number,
        p.marital_status,
        p.occupation,
        p.nationality,
        p.email,
        p.profile_picture,
        u.username,
        u.is_active AS user_is_active,
        u.created_at
    FROM 
        patient p
    JOIN 
        app_users u ON p.user_id = u.id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAnsweredQuestionsByUsername` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAnsweredQuestionsByUsername`(
    IN p_username VARCHAR(100)
)
BEGIN
    -- Get answered follow-up questions for the given username where diagnosis status is active
    SELECT 
        fuq.id AS follow_up_question_id,
        fuq.category,
        fuq.question,
        fuq.answer,
        fuq.is_required,
        fuq.priority_level,
        fuq.created_at,
        fuq.updated_at,
        fuq.status
    FROM 
        follow_up_questions fuq
    INNER JOIN 
        patient_diagnosis pd ON fuq.context_id = pd.id
    INNER JOIN 
        patient p ON pd.patient_id = p.id
    INNER JOIN 
        app_users au ON p.user_id = au.id
    WHERE 
        au.username = p_username
        AND fuq.status = 'answered'
        AND pd.status = 'active';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetCompletedLaboratoryTestRequests` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetCompletedLaboratoryTestRequests`()
BEGIN
    SELECT *
    FROM laboratory_test_requests
    WHERE status = 'Completed'
    ORDER BY completed_at ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetCompletedPatientContext` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetCompletedPatientContext`()
BEGIN
    SELECT 
        p.id AS patient_id,
        p.first_name,
        p.last_name,
        p.date_of_birth,
        p.gender,
        p.phone_number,
        p.marital_status,
        p.occupation,
        p.nationality,
        p.email,
        p.profile_picture,
        p.is_active,
        pi.id AS instance_id,
        pi.chief_complaints,
        pi.symptoms,
        pi.symptom_details,
        pi.pain_details,
        pi.duration_of_illness,
        pi.remedies_tried,
        pi.vitals,
        pi.weight,
        pi.height,
        pi.age,
        pi.ongoing_medications,
        pi.lifestyle_factors,
        pi.allergies_and_alerts,
        pi.nurses_notes,
        pi.instance_summary,
        pd.id AS diagnosis_id,
        pd.doctor_id,
        pd.diagnosis_code,
        pd.diagnosis_date,
        pd.status,
        pd.notes,
        pd.created_at,
        pd.updated_at,
        pd.final_diagnosis
    FROM 
        patient p
    INNER JOIN 
        patient_diagnosis pd ON p.id = pd.patient_id
    INNER JOIN 
        patient_instance pi ON pd.id = pi.diagnosis_id
    WHERE 
        pd.status = 'completed';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetDoctorUsers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetDoctorUsers`()
BEGIN
    -- Select the id and concatenated full name of users with the role 'admin'
    SELECT 
        id, 
        CONCAT(first_name, ' ', last_name) AS full_name
    FROM 
        organization_staff
    WHERE 
        role = 'doctor';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetLaboratoryTestRequestById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetLaboratoryTestRequestById`(IN requestId CHAR(36))
BEGIN
    SELECT *
    FROM laboratory_test_requests
    WHERE id = requestId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetOrganizationUserById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetOrganizationUserById`(IN p_staff_id CHAR(36))
BEGIN
    SELECT 
        os.id AS id,
        os.first_name,
        os.last_name,
        os.role,
        os.gender,
        os.department,
        os.email,
        os.phone_number,
        os.employment_type,
        os.date_of_joining,
        os.salary,
        os.shift,
        os.supervisor_id,
        os.address,
        os.emergency_contact,
        os.profile_picture,
        u.username,
        u.is_active AS user_is_active,
        u.created_at,
        u.last_login
    FROM 
        organization_staff os
    JOIN 
        app_users u ON os.user_id = u.id
    WHERE 
        os.id = p_staff_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetPatientByID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetPatientByID`(IN p_patient_id CHAR(36))
BEGIN
    SELECT 
        p.id AS id,
        p.first_name,
        p.last_name,
        p.date_of_birth,
        p.gender,
        p.phone_number,
        p.marital_status,
        p.occupation,
        p.nationality,
        p.email,
        p.profile_picture,
        p.is_active AS patient_is_active,
        u.username,
        u.is_active AS user_is_active,
        u.created_at,
        u.last_login
    FROM 
        patient p
    JOIN 
        app_users u ON p.user_id = u.id
    WHERE 
        p.id = p_patient_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetPendingFollowUpQuestionsByUsername` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetPendingFollowUpQuestionsByUsername`(
    IN p_username VARCHAR(100)
)
BEGIN
    -- Get pending follow-up questions for the given username where diagnosis status is active
    SELECT 
        fuq.id AS follow_up_question_id,
        fuq.category,
        fuq.question,
        fuq.is_required,
        fuq.priority_level,
        fuq.created_at,
        fuq.updated_at,
        fuq.status
    FROM 
        follow_up_questions fuq
    INNER JOIN 
        patient_diagnosis pd ON fuq.context_id = pd.id
    INNER JOIN 
        patient p ON pd.patient_id = p.id
    INNER JOIN 
        app_users au ON p.user_id = au.id
    WHERE 
        au.username = p_username
        AND fuq.status = 'pending'
        AND pd.status = 'active';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetPendingLaboratoryTestRequests` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetPendingLaboratoryTestRequests`()
BEGIN
    SELECT *
    FROM laboratory_test_requests
    WHERE status = 'Pending'
    ORDER BY requested_at ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertLaboratoryReport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertLaboratoryReport`(
    IN p_request_id CHAR(36),
    IN p_username VARCHAR(100),
    IN p_result TEXT,
    IN p_comments TEXT
)
BEGIN
    DECLARE v_provider_id CHAR(36);

    -- Fetch the provider_id from app_users using the username
    SELECT id INTO v_provider_id
    FROM app_users
    WHERE username = p_username;

    -- If the username does not exist, raise an error
    IF v_provider_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Username does not exist';
    END IF;

    -- Insert the record into laboratory_reports
    INSERT INTO laboratory_reports (id, request_id, provider_id, result, comments)
    VALUES (UUID(), p_request_id, v_provider_id, p_result, p_comments);

    -- Update the status of the corresponding record in laboratory_test_requests
    UPDATE laboratory_test_requests
    SET 
        status = 'Completed',
        completed_at = NOW() -- Set the completion timestamp
    WHERE id = p_request_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insight_GetPatientCountByGender` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insight_GetPatientCountByGender`()
BEGIN
    SELECT 
        gender,
        COUNT(*) AS number_of_patients
    FROM 
        patient
    GROUP BY 
        gender;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PatientContextByDiagnosisId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PatientContextByDiagnosisId`(IN diagnosisId CHAR(36))
BEGIN
    SELECT 
        p.id AS patient_id,
        p.first_name,
        p.last_name,
        p.date_of_birth,
        p.gender,
        p.phone_number,
        p.marital_status,
        p.occupation,
        p.nationality,
        p.email,
        p.profile_picture,
        p.is_active,
        pi.id AS instance_id,
        pi.chief_complaints,
        pi.symptoms,
        pi.symptom_details,
        pi.pain_details,
        pi.duration_of_illness,
        pi.remedies_tried,
        pi.vitals,
        pi.weight,
        pi.height,
        pi.age,
        pi.ongoing_medications,
        pi.lifestyle_factors,
        pi.allergies_and_alerts,
        pi.nurses_notes,
        pi.instance_summary,
        pd.id AS diagnosis_id,
        pd.doctor_id,
        pd.diagnosis_code,
        pd.diagnosis_date,
        pd.status,
        pd.notes,
        pd.created_at,
        pd.updated_at,
        pd.final_diagnosis
    FROM 
        patient p
    INNER JOIN 
        patient_diagnosis pd ON p.id = pd.patient_id
    INNER JOIN 
        patient_instance pi ON pd.id = pi.diagnosis_id
    WHERE 
        pd.id = diagnosisId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RemovePatientProfilePicture` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RemovePatientProfilePicture`(
    IN p_patient_id CHAR(36)
)
BEGIN
    UPDATE patient
    SET profile_picture = NULL
    WHERE id = p_patient_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RemoveUserProfilePicture` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RemoveUserProfilePicture`(
    IN p_staff_id CHAR(36)
)
BEGIN
    UPDATE organization_staff
    SET profile_picture = NULL
    WHERE id = p_staff_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ResetOrgUserPwdById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ResetOrgUserPwdById`(
    IN p_organization_staff_id CHAR(36), -- ID from organization_staff table
    IN p_new_password VARCHAR(255)  -- New password to set
    )
BEGIN
    DECLARE v_user_id CHAR(36);

    -- Get the user_id from organization_staff table
    SELECT user_id INTO v_user_id
    FROM organization_staff
    WHERE id = p_organization_staff_id;

    -- Check if the user_id exists
    IF v_user_id IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'User not found in organization_staff table';
    ELSE
        -- Update the password_hash in app_users table
        UPDATE app_users
        SET password_hash = p_new_password
        WHERE id = v_user_id;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ResetPatientUserPwdById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ResetPatientUserPwdById`(
    IN p_patient_id CHAR(36), -- ID from organization_staff table
    IN p_new_password VARCHAR(255)  -- New password to set
    )
BEGIN
    DECLARE v_user_id CHAR(36);

    -- Get the user_id from organization_staff table
    SELECT user_id INTO v_user_id
    FROM patient
    WHERE id = p_patient_id;

    -- Check if the user_id exists
    IF v_user_id IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'User not found in organization_staff table';
    ELSE
        -- Update the password_hash in app_users table
        UPDATE app_users
        SET password_hash = p_new_password
        WHERE id = v_user_id;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateUserCredentials` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateUserCredentials`(
    IN p_current_username VARCHAR(100),
    IN p_new_username VARCHAR(100)
)
BEGIN
    DECLARE v_user_id CHAR(36);
    
    -- Fetch user ID
    SELECT id INTO v_user_id
    FROM app_users
    WHERE username = p_current_username;
    
    -- If no user found, exit procedure
    IF v_user_id IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'User not found';
    END IF;
    
    -- Check if the new username already exists
    IF EXISTS (SELECT 1 FROM app_users WHERE username = p_new_username) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Username already taken';
    END IF;
    
    -- Update username
    UPDATE app_users
    SET username = p_new_username
    WHERE id = v_user_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_final_diagnosis` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_final_diagnosis`(
    IN p_id CHAR(36),               -- The ID of the diagnosis record to update
    IN p_final_diagnosis TEXT        -- The final diagnosis text to set
)
BEGIN
    -- Update the final_diagnosis and set the status to 'completed'
    UPDATE patient_diagnosis
    SET 
        final_diagnosis = p_final_diagnosis,
        status = 'completed'
    WHERE id = p_id;
    
    -- Check if the row was updated
    IF ROW_COUNT() = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No record found with the specified ID';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-03 12:23:12
