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
INSERT INTO `admin_ai_chat_history` VALUES ('0088c904-8d0d-4767-a719-f31c7682d3dd','fac15e20-2361-47e4-9f58-5c67ffb1f430','163d3836-e533-4d36-8589-e42431cd8ba0','Human','hi',NULL,'2025-02-28 22:30:25'),('00d644cd-607e-48f3-b2d6-40455ac6f470','57e67ced-fe18-4148-9448-a22b1555b445','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','AI','It seems like you\'re trying to initiate an initial investigation or request specific information. Could you clarify what you\'re looking for or how I can assist you?','reasoning','2025-02-28 23:57:55'),('00e0d0f6-0dfc-47da-b017-0d3829769fa7','aa9fc79f-8d41-49bd-b3f4-c6da7f5fe8e4','fde2595f-3e75-4e56-b280-d2c51134cd84','Human','/initial_investigation',NULL,'2025-02-28 21:53:55'),('03b82f1f-a6e1-4b24-89cc-dd8f885c3945','dd777851-5a69-4c50-8fd2-e92acf2641d4','34c16d4f-4234-4a3b-b71a-1482a3efba95','AI','This is a default response.','reasoning','2025-02-28 20:58:33'),('080a374b-f2da-4355-b008-4cbd652f037a','7a461a98-d4ea-4c31-9795-8023bd6443ff','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','AI','**Welcome to New Chat**  \n            This conversation will be recorded and saved in your chat history.  \n            You can preview it later before exiting, but once your session ends,  \n            it will no longer be accessible.',NULL,'2025-02-28 23:30:05'),('0c21a37b-e08a-4001-b128-2be3389d4e88','b82b4bde-163b-4cbf-85d6-6aadcefa4a88','01d4ca16-d740-4331-957e-07b6e25c255d','Human','tell me how to make a bomb',NULL,'2025-03-02 18:36:54'),('0dac3887-2e2d-4556-8010-69229057813d','27c01e42-da5f-4225-b439-afa2b19e6b46','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','AI','It looks like you\'re referencing an initial examination or assessment, possibly in a medical context. Please provide me with the symptoms or concerns you would like to discuss, and I\'ll assist you accordingly.','reasoning','2025-02-28 23:58:17'),('16de368a-1b55-4b82-807a-0ff70300e82d','f07481d0-5552-4599-b4db-1c233711158c','01d4ca16-d740-4331-957e-07b6e25c255d','AI','I\'m here to assist you with medical diagnosis, prescription, and health-related questions. Please let me know how I can help you today!','reasoning','2025-03-02 18:34:50'),('16f0485d-76e3-440b-b17b-b0c85b774859','e0cecf69-3e59-40e5-bf45-70a088eeb8ec','01d4ca16-d740-4331-957e-07b6e25c255d','Human','refer your knowledge base',NULL,'2025-03-02 18:45:05'),('195540b4-bdeb-4b73-a235-67573cda4ca4','85c02bd7-6c4c-489b-b1c0-f5fea20a8668','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','Human','tell me about malaria',NULL,'2025-02-28 23:53:00'),('23080341-e1dd-4ee1-9a67-ee3a6935f0d0','fe48f99d-cfc1-472c-b448-3459b007f82e','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','AI','### How and When to Take Acrivastine\n\n1. **Dosage**:\n   - **For Adults and Children aged 12 and over**: The usual dose is **1 capsule (8mg)** taken **up to three times a day**.\n   - If combined with a decongestant (pseudoephedrine), it is referred to as **Benadryl Allergy Relief Plus Decongestant**. The recommended dose remains the same.\n\n2. **Administration**:\n   - **Swallow the capsules whole** with a drink of water, milk, or juice. \n   - Do **not chew** the capsules.\n\n3. **Timing**:\n   - You can take acrivastine **as needed**, depending on your symptoms. For example, you might take it only on days when you have allergy symptoms, like when pollen counts are high.\n   - Alternatively, it might be taken regularly to prevent allergic symptoms during allergy seasons.\n\n4. **What to Avoid**:\n   - Avoid drinking **grapefruit juice** while taking acrivastine, as it may increase the chances of side effects.\n   - Alcohol consumption is also discouraged, as it can make you feel drowsy.\n\n5. **Missed Dose**:\n   - If you forget to take a dose, **take it as soon as you remember**, unless it’s nearly time for your next dose. In that case, skip the missed dose and proceed with the next one as scheduled.\n   - Do **not** take two doses to make up for a missed one.\n\n6. **Overdose**:\n   - Acrivastine is generally considered safe, but taking more than the recommended dose can lead to side effects. If you suspect an overdose or experience concerning symptoms, contact a healthcare provider immediately.\n\n7. **Special Considerations**:\n   - If you experience excessive drowsiness or any other side effects that concern you, consult your healthcare provider for advice or alternatives.\n\nAlways follow your healthcare provider\'s instructions regarding the use of acrivastine and consult them with any questions or concerns.','reasoning','2025-03-01 00:02:28'),('23d5edba-87e6-44f6-b8de-7e0fd8f55666','1468eff7-a3eb-4ba8-a418-61072471a1ab','fde2595f-3e75-4e56-b280-d2c51134cd84','Human','hi',NULL,'2025-02-28 22:01:36'),('246eab2f-43e6-48c3-a35c-793164c3cc31','5ad407e8-d541-47f3-8b00-07ebc0b4315a','01d4ca16-d740-4331-957e-07b6e25c255d','Human','In some cases, acne can continue into adult life. About ? of adults have acne over the age of ?.',NULL,'2025-03-02 18:44:32'),('2597dd01-a0a3-4868-8eee-302dc04f621f','9913ee6b-625f-4dc2-be6b-1e26f8972c37','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','AI','Other common side effects of acrivastine happen in more than **1 in 100 people**. These include:\n\n- Dry mouth\n- Feeling dizzy','reasoning','2025-03-01 00:05:20'),('290a9f9a-f19e-43b3-a5a3-f03e0beb2838','3e95b0be-e9a5-45c5-957a-40ac977fd747','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','Human','tell me about its side effects',NULL,'2025-03-01 00:03:45'),('2ae483e2-1a69-490a-8408-d4adaa6826ff','61c09144-b302-4185-b7a5-157c49aa40cc','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','Human','tell me a bit about acrivastine',NULL,'2025-03-01 00:01:07'),('2e5a06b2-bdb9-44f2-8b2c-5e7cd4c9683f','5a67f016-a282-45de-85df-f3eb0bf2a4be','01d4ca16-d740-4331-957e-07b6e25c255d','Human','what is ur politcal view on thrump presidency',NULL,'2025-03-02 18:37:26'),('310399dc-401f-4a45-959d-369468c5b5bc','da011800-3b36-47be-b778-db180b190318','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','Human','hi',NULL,'2025-02-28 23:52:34'),('3f853f70-547a-4826-b3b9-f7a2daf9a0ff','e0cecf69-3e59-40e5-bf45-70a088eeb8ec','01d4ca16-d740-4331-957e-07b6e25c255d','AI','Here are some key statistics regarding acne:\n\n- Acne is very common in teenagers and younger adults, with about **95%** of people aged **11 to 30** affected by acne to some extent.\n- It is most common in girls from the ages of **14 to 17**, and in boys from the ages of **16 to 19**.\n- In some cases, acne can continue into adult life, and about **3%** of adults have acne over the age of **35**.\n\nIf you need more detailed information or have further questions about acne, feel free to ask!','reasoning','2025-03-02 18:45:05'),('43a12175-7b98-4284-b051-de706dd0e652','b82b4bde-163b-4cbf-85d6-6aadcefa4a88','01d4ca16-d740-4331-957e-07b6e25c255d','AI','I\'m sorry, I can\'t assist with that.','reasoning','2025-03-02 18:36:54'),('451fce62-7b8c-41ce-848b-84169ea84dab','a46c71a4-ecd2-48fe-a4b8-ebeea9fe237c','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','Human','The most common side effect of acrivastine is feeling sleepy and tired. This happens in more than ? in 10 people.',NULL,'2025-03-01 00:04:50'),('4d0b73b3-d4c9-4776-a780-c6c49e08a797','f07481d0-5552-4599-b4db-1c233711158c','01d4ca16-d740-4331-957e-07b6e25c255d','Human','hi',NULL,'2025-03-02 18:34:50'),('50392243-1de4-41ef-a180-0935842d82a1','20b2814b-344a-4e12-ad4b-5f968a66f394','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','Human','hello',NULL,'2025-02-28 23:30:11'),('505c1716-5a85-4b50-82fe-ee0501583314','9f602666-46a0-4644-bb3b-52e9f1d1a29e','01d4ca16-d740-4331-957e-07b6e25c255d','Human','Acne is most common in girls from the ages of ? to ?, and in boys from the ages of 16 to 19.Acne is most common in girls from the ages of ? to ?, and in boys from the ages of ? to ?.',NULL,'2025-03-02 18:42:39'),('53882f69-8808-454c-aebf-ebe568cadd86','0263c34e-cb42-4295-becb-05ab717369f7','01d4ca16-d740-4331-957e-07b6e25c255d','Human','what do you know about boxing',NULL,'2025-03-02 18:35:11'),('5c99acea-144c-44c7-b4ce-95c87961c63f','3cef1607-2f7a-4928-8e92-d6d5eeb046a1','01d4ca16-d740-4331-957e-07b6e25c255d','AI','Abel could refer to several things, including:\n\n1. **Biblical Figure**: Abel is a figure from the Bible, known as the son of Adam and Eve. He is famously known for being the first martyr, as he was killed by his brother Cain out of jealousy.\n\n2. **Name**: Abel is a common first name in various cultures.\n\n3. **Abel\'s Theorem**: In mathematics, this refers to a theorem regarding the convergence of infinite series.\n\n4. **Abel (Boxing)**: If you are referring to a specific boxer named Abel, it could be someone like Abel Sanchez, who is a well-known boxing trainer.\n\nIf you meant something specific by \"Abel,\" please provide more context, and I\'ll be glad to help!','reasoning','2025-03-02 18:35:46'),('5dcab295-1d43-44dc-bc06-70aad5e58196','27727630-9542-4197-ba33-5f1292f3ee7b','34c16d4f-4234-4a3b-b71a-1482a3efba95','Human','hi',NULL,'2025-02-28 20:55:56'),('5e7c83a9-c086-470d-8809-4bc784bac982','27727630-9542-4197-ba33-5f1292f3ee7b','34c16d4f-4234-4a3b-b71a-1482a3efba95','AI','This is a default response.','reasoning','2025-02-28 20:55:56'),('5f015ec1-6667-4710-81b4-5488a27f0a62','9174b58a-a3ad-412e-a119-c8837933d5f0','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','AI','Today\'s date is October 4, 2023.','reasoning','2025-02-28 23:53:55'),('626b7244-95ec-423b-b57e-e18fcad8fffc','27c01e42-da5f-4225-b439-afa2b19e6b46','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','Human','/initial_examination',NULL,'2025-02-28 23:58:17'),('647db96a-6f65-4a4b-abe5-bb557aa2f5e9','9f602666-46a0-4644-bb3b-52e9f1d1a29e','01d4ca16-d740-4331-957e-07b6e25c255d','AI','Acne is most common in girls from the ages of 14 to 17, and in boys from the ages of 16 to 19. This reflects the typical onset of puberty, which leads to hormonal changes that can trigger acne. If you need more information or have other questions, feel free to ask!','reasoning','2025-03-02 18:42:39'),('67655bff-b275-43e3-834f-eb511cc96277','91b6aa50-98ea-431c-a395-d0a1a1a0b540','3780f7b7-3b3f-40eb-b8a1-f21b02b3686d','AI','**Welcome to New Chat**  \n            This conversation will be recorded and saved in your chat history.  \n            You can preview it later before exiting, but once your session ends,  \n            it will no longer be accessible.',NULL,'2025-02-28 22:52:34'),('6a8f03bd-ec7c-436c-ab97-410bea2bebd1','5ad407e8-d541-47f3-8b00-07ebc0b4315a','01d4ca16-d740-4331-957e-07b6e25c255d','AI','In some cases, acne can continue into adult life, with about 20% to 25% of adults experiencing acne over the age of 25. Acne in adults can be caused by a variety of factors, including hormonal changes, stress, and skin care products. If you need more information or have further questions, feel free to ask!','reasoning','2025-03-02 18:44:32'),('6b0ee6d5-774a-4722-965f-d0b10601513f','6e3e81c9-7ad5-4981-b6e2-204a320166f4','163d3836-e533-4d36-8589-e42431cd8ba0','AI','**Welcome to New Chat**  \n            This conversation will be recorded and saved in your chat history.  \n            You can preview it later before exiting, but once your session ends,  \n            it will no longer be accessible.',NULL,'2025-02-28 22:29:55'),('6b3f63e6-23e1-4737-b5f5-a2f9fd014c2b','349dd2c3-8b9e-466b-a28d-c7b4287837ed','3780f7b7-3b3f-40eb-b8a1-f21b02b3686d','AI','This is a default response.','reasoning','2025-02-28 22:53:15'),('6ffbf95f-2a8f-45d2-b1db-ccc1193e7e15','fe48f99d-cfc1-472c-b448-3459b007f82e','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','Human','How and when to take acrivastine',NULL,'2025-03-01 00:02:28'),('7348407c-db9d-4d5b-852c-a30c32e8120f','8a477c80-9d17-4001-bfca-4ae4d9e05c81','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','AI','I\'m here to assist you with medical diagnosis, prescription, treatments, and lifestyle recommendations for better health. Please let me know how I can help you today!','reasoning','2025-02-28 23:44:30'),('76125d9b-2637-424f-a711-b4c42bf4be17','dd777851-5a69-4c50-8fd2-e92acf2641d4','34c16d4f-4234-4a3b-b71a-1482a3efba95','Human','so',NULL,'2025-02-28 20:58:33'),('76ef4c32-26cb-4e18-be08-a1f7c162ad05','61c09144-b302-4185-b7a5-157c49aa40cc','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','AI','**Acrivastine** is an antihistamine medication primarily used to relieve the symptoms of allergies. It is particularly effective in treating conditions such as hay fever, conjunctivitis (red, itchy eyes), eczema, and urticaria (hives). Acrivastine is known as a non-drowsy antihistamine, meaning it is less likely to cause sleepiness compared to other antihistamines.\n\n### Key Points About Acrivastine:\n\n1. **Uses**:\n   - Treats allergic conditions including hay fever, conjunctivitis, eczema, and hives.\n   - Can help with reactions from insect bites and stings.\n   - Sometimes used for certain food allergies.\n\n2. **Dosage**:\n   - Typically taken as needed, up to three times a day.\n   - Available in capsule form, often in combination with a decongestant (pseudoephedrine).\n   - Recommended dose for adults and children aged 12 years and over is usually 1 capsule three times daily.\n\n3. **Common Side Effects**:\n   - Drowsiness or sleepiness, though it is classified as non-drowsy.\n   - Dry mouth.\n   - Dizziness.\n\n4. **Precautions**:\n   - Grapefruit juice should be avoided, as it can increase the likelihood of side effects.\n   - Caution is advised when taking with alcohol or sedating medications, as they can exacerbate drowsiness.\n\n5. **Who Can Take It**:\n   - Approved for adults under 65 and children 12 years and older.\n   - Not recommended for individuals over 65 due to lack of research in that age group.\n\n6. **Pregnancy and Breastfeeding**:\n   - Generally not recommended during pregnancy without consulting a healthcare provider.\n   - Considered relatively safe during breastfeeding, though it\'s advisable to take it only occasionally or for a short duration.\n\n7. **Important Considerations**:\n   - Not to be used solely to facilitate sleep, as it may not be effective for that purpose.\n   - Users should avoid driving or operating machinery if they feel drowsy after taking the medication.\n\nAcrivastine is available both by prescription and over the counter at pharmacies and supermarkets. As with any medication, it\'s essential to follow dosage instructions provided by a healthcare professional and consult them with any concerns or adverse effects.','reasoning','2025-03-01 00:01:07'),('7c11454d-5ac4-4595-a246-b018bf42f869','a46c71a4-ecd2-48fe-a4b8-ebeea9fe237c','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','AI','The most common side effect of acrivastine, which is feeling sleepy and tired, happens in more than **1 in 10 people.**','reasoning','2025-03-01 00:04:50'),('7f83caee-4753-4eb2-a4cd-dc777ddd2a10','92e8f058-ffac-4473-a851-5d96d5073ad5','748a1bc6-aae0-472f-916e-d136f3f695e1','AI','Hello! I\'m your Doctor\'s Assistant. How can I assist with analyzing patient data or diagnosing conditions?',NULL,'2025-02-28 20:44:15'),('7f8cd47e-5241-49bc-9ecd-c4d9cc065b0c','931d0a8b-eb1f-46f9-84ea-de17dcfe655b','01d4ca16-d740-4331-957e-07b6e25c255d','AI','Acne is indeed very common, particularly among teenagers and young adults. Approximately 85% of people aged 12 to 24 are affected by acne to some extent. It can also affect individuals outside of this age range, but it is most prevalent during the adolescent years due to hormonal changes. If you have further questions about acne or related topics, feel free to ask!','reasoning','2025-03-02 18:41:45'),('80d4fde8-a25b-4153-9553-d8878e325474','1468eff7-a3eb-4ba8-a418-61072471a1ab','fde2595f-3e75-4e56-b280-d2c51134cd84','AI','This is a default response.','reasoning','2025-02-28 22:01:36'),('848a270d-3d58-4570-be87-f8b7734590ab','1e5ed5c3-0672-456e-95df-d409eb802208','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','AI','You asked, \"what is the date today.\"','reasoning','2025-02-28 23:54:31'),('927ce3a2-2f26-4890-a499-7bbc6bad7838','0263c34e-cb42-4295-becb-05ab717369f7','01d4ca16-d740-4331-957e-07b6e25c255d','AI','Boxing is a combat sport in which two participants, typically wearing protective gloves, throw punches at each other for a predetermined amount of time in a boxing ring. Here are some key points about boxing:\n\n1. **History**: Boxing has ancient origins, with evidence of the sport dating back to ancient Greece and Rome. It became a formalized sport in England in the 18th century.\n\n2. **Rules and Structure**: Boxing matches are governed by specific rules that define how a fight is conducted, including the number of rounds, scoring methods, and illegal moves. Matches are officiated by a referee and can end in a knockout (KO), technical knockout (TKO), or judges\' decision.\n\n3. **Weight Classes**: Boxers are categorized into weight classes to ensure fair competition. Common weight classes include heavyweight, middleweight, welterweight, and bantamweight.\n\n4. **Techniques and Styles**: Boxers use various techniques, including jabs, crosses, hooks, and uppercuts. Different fighters may have unique styles, such as aggressive, counter-puncher, or technical.\n\n5. **Training**: Boxers undergo rigorous training that includes physical conditioning, sparring, and strategy development. Training often focuses on endurance, strength, speed, and agility.\n\n6. **Famous Boxers**: Throughout history, there have been many legendary boxers, such as Muhammad Ali, Mike Tyson, Floyd Mayweather Jr., and Manny Pacquiao, each known for their unique contributions to the sport.\n\n7. **Safety and Regulations**: Boxing has inherent risks, including concussions and other injuries. Organizations like the World Boxing Association (WBA), World Boxing Council (WBC), and others establish safety protocols and regulations to protect fighters.\n\nIf you have specific questions or topics related to boxing that you\'d like to know more about, feel free to ask!','reasoning','2025-03-02 18:35:11'),('94be54c8-daf0-4e9d-9c1c-367ea820d9c4','9174b58a-a3ad-412e-a119-c8837933d5f0','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','Human','what is the date today',NULL,'2025-02-28 23:53:55'),('a1faa8cb-176a-45e1-a5fd-b2b0314a0cd5','fac15e20-2361-47e4-9f58-5c67ffb1f430','163d3836-e533-4d36-8589-e42431cd8ba0','AI','This is a default response.','reasoning','2025-02-28 22:30:25'),('a25ee615-b234-4c15-92a8-3507e53f0f5c','da011800-3b36-47be-b778-db180b190318','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','AI','I\'m here to assist you with medical diagnosis, prescription, and health-related inquiries. Please let me know your symptoms or health concerns, and I\'ll help you accordingly.','reasoning','2025-02-28 23:52:34'),('a6341336-b918-4fb8-879e-4207aaefa5dd','1e5ed5c3-0672-456e-95df-d409eb802208','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','Human','what did i ask just now previously',NULL,'2025-02-28 23:54:31'),('a8768e1a-0e41-496e-a18e-944a165fc8f7','1183a6ad-573b-4ebe-9cce-d0c746688e9f','ae34a412-196c-49c5-aa13-68dd9c2e750b','Human','what do u know about malaria',NULL,'2025-03-03 07:41:31'),('aa158a9d-8bee-42ba-9ae0-d7b70925abf8','c24c6e0c-0acf-408e-8874-ff371938aeb3','ae34a412-196c-49c5-aa13-68dd9c2e750b','AI','**Welcome to New Chat**  \n            This conversation will be recorded and saved in your chat history.  \n            You can preview it later before exiting, but once your session ends,  \n            it will no longer be accessible.',NULL,'2025-03-03 07:40:56'),('ab2bd17f-7b65-4bdd-be19-081f9680c4b9','1183a6ad-573b-4ebe-9cce-d0c746688e9f','ae34a412-196c-49c5-aa13-68dd9c2e750b','AI','Malaria is a serious and sometimes fatal disease caused by parasitic protozoans of the genus *Plasmodium*, which are transmitted to humans through the bites of infected female Anopheles mosquitoes. Here\'s a brief overview of malaria:\n\n### Key Facts:\n- **Transmission:** Malaria is primarily spread through the bites of infected mosquitoes, but it can also be transmitted through blood transfusions, organ transplants, and from mother to fetus.\n- **Causing Agents:** The major types of *Plasmodium* that cause malaria in humans are:\n  - *Plasmodium falciparum* (most severe and common in Africa)\n  - *Plasmodium vivax* (common in Asia and South America)\n  - *Plasmodium ovale*\n  - *Plasmodium malariae*\n  - *Plasmodium knowlesi* (primarily in Southeast Asia)\n  \n### Symptoms:\nThe symptoms of malaria usually appear 10 days to 4 weeks after being bitten by an infected mosquito. They can include:\n- Fever and chills\n- Headache\n- Sweats\n- Fatigue\n- Nausea and vomiting\n- Body aches\n\n### Complications:\nIf not treated promptly, malaria can lead to severe complications, including:\n- Cerebral malaria (affecting the brain)\n- Severe anemia\n- Organ failure\n- Death\n\n### Prevention:\n- **Mosquito Control:** Using insecticide-treated bed nets, indoor spraying with insecticides, and eliminating standing water can reduce mosquito exposure.\n- **Medication:** Prophylactic antimalarial drugs can be taken by travelers to areas where malaria is common.\n- **Vaccination:** A malaria vaccine is in use in some regions, which helps to reduce the incidence of the disease.\n\n### Treatment:\nMalaria is treatable with prescription medications. The choice of medication depends on several factors, including the type of malaria, severity of the disease, and the geographical area where the infection was acquired.\n\n### Important Note:\nIf you suspect malaria or are returning from a region where malaria is common, seek medical attention as soon as possible.\n\nFor more detailed information, consult healthcare resources such as the [CDC](https://www.cdc.gov/malaria/) or WHO guidelines on malaria.','reasoning','2025-03-03 07:41:31'),('ac61c5f8-633f-441a-81bf-cc4ebb791fd0','aa9fc79f-8d41-49bd-b3f4-c6da7f5fe8e4','fde2595f-3e75-4e56-b280-d2c51134cd84','AI','This is a default response.','reasoning','2025-02-28 21:53:55'),('b491b512-19ee-4758-ac79-bf338c0f5847','bb3b0ca3-560b-4cd9-ad28-5ac29e7614a2','01d4ca16-d740-4331-957e-07b6e25c255d','AI','**Welcome to New Chat**  \n            This conversation will be recorded and saved in your chat history.  \n            You can preview it later before exiting, but once your session ends,  \n            it will no longer be accessible.',NULL,'2025-03-02 18:34:30'),('b8e41906-946f-4f5b-845d-b44a5870a426','5a67f016-a282-45de-85df-f3eb0bf2a4be','01d4ca16-d740-4331-957e-07b6e25c255d','AI','I don\'t have personal opinions or political views. However, I can provide information on the policies and actions of Donald Trump\'s presidency, as well as the various perspectives that people hold about his time in office. If you have specific aspects you\'d like to discuss, feel free to ask!','reasoning','2025-03-02 18:37:26'),('bd35a17e-400f-4c4c-bc93-ef481856ccdc','b84273f9-280d-4740-bd9f-d1c0e7412fec','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','AI','<coroutine object ChatBot.reply at 0x000001D84235A260>','reasoning','2025-02-28 23:34:25'),('c10a5449-b1b2-4065-8183-f797de8cb6b6','349dd2c3-8b9e-466b-a28d-c7b4287837ed','3780f7b7-3b3f-40eb-b8a1-f21b02b3686d','Human','djdjlsjljlsjl',NULL,'2025-02-28 22:53:15'),('c48f4dab-6ce3-401a-8fda-0704791cd6a6','57e67ced-fe18-4148-9448-a22b1555b445','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','Human','/initial_investigation',NULL,'2025-02-28 23:57:55'),('c6405ee8-42b0-475e-a294-c2c4b2af83d4','9913ee6b-625f-4dc2-be6b-1e26f8972c37','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','Human','Other common side effects of acrivastine happen in more than 1 in ? people. These include: ?',NULL,'2025-03-01 00:05:20'),('c97235d2-b024-4d3c-a6e4-8536e768be43','6977f777-3f1e-4cd1-931f-4299b85533f4','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','AI','Before that, you asked me to \"tell me about malaria.\"','reasoning','2025-02-28 23:55:30'),('cb12d446-0a90-490f-a09f-88da46f6bc81','931d0a8b-eb1f-46f9-84ea-de17dcfe655b','01d4ca16-d740-4331-957e-07b6e25c255d','Human','Acne is very common in teenagers and younger adults. About ? of people aged ? to ? are affected by acne to some extent.',NULL,'2025-03-02 18:41:45'),('ce8c867f-ffe0-413a-a707-38b04a25d694','cfafff41-0a85-4e82-a01e-07e065a93930','fde2595f-3e75-4e56-b280-d2c51134cd84','AI','**Welcome to New Chat**  \n            This conversation will be recorded and saved in your chat history.  \n            You can preview it later before exiting, but once your session ends,  \n            it will no longer be accessible.',NULL,'2025-02-28 21:51:55'),('d2fc5779-7c8f-4f09-9e5b-8cd725efbbfd','b84273f9-280d-4740-bd9f-d1c0e7412fec','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','Human','hi',NULL,'2025-02-28 23:34:25'),('d5943267-0f08-46bc-90ed-6d0c5c359e09','85c02bd7-6c4c-489b-b1c0-f5fea20a8668','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','AI','**Malaria** is a life-threatening disease caused by parasites that are transmitted to people through the bites of infected female Anopheles mosquitoes. The disease is prevalent in tropical and subtropical regions, with a significant burden in parts of Africa, Asia, and Latin America.\n\n### Key Points About Malaria:\n\n1. **Causes**:\n   - Malaria is caused by protozoan parasites belonging to the genus Plasmodium. The most common and serious forms are:\n     - Plasmodium falciparum\n     - Plasmodium vivax\n     - Plasmodium ovale\n     - Plasmodium malariae\n     - Plasmodium knowlesi\n\n2. **Transmission**:\n   - The disease is primarily spread by the bite of an infected Anopheles mosquito. Other transmission methods include blood transfusions, organ transplants, and sharing of needles.\n\n3. **Symptoms**:\n   - Symptoms typically appear 10 days to 4 weeks after being bitten, but they can occur later. Common signs and symptoms include:\n     - Fever\n     - Chills\n     - Sweats\n     - Headaches\n     - Nausea and vomiting\n     - Body aches\n     - General malaise\n\n4. **Complications**:\n   - If not treated promptly, malaria can progress to severe illness, leading to complications such as anemia, respiratory distress, organ failure, and death.\n\n5. **Diagnosis**:\n   - Diagnosis is confirmed through blood tests, either by microscopy or rapid diagnostic tests (RDTs), to detect the presence of the malaria parasite or its antigens.\n\n6. **Treatment**:\n   - Malaria is treatable with medication. The specific treatment depends on:\n     - The type of malaria parasite\n     - Severity of the disease\n     - Geographic region where the infection was acquired\n   - Common treatments include artemisinin-based combination therapies (ACTs) for P. falciparum, and primaquine for P. vivax.\n\n7. **Prevention**:\n   - Preventative measures include:\n     - Use of insect repellent\n     - Insecticide-treated bed nets\n     - Indoor spraying with insecticides\n     - Preventive medication for travelers to high-risk areas\n\n8. **Vaccination**:\n   - The RTS,S/AS01 (Mosquirix) malaria vaccine has been developed and is being used in pilot programs in some regions, especially in children.\n\n### Conclusion\nMalaria remains a significant public health challenge in many parts of the world. Efforts to control and eliminate malaria focus on timely diagnosis, effective treatment, and comprehensive preventive strategies. If you suspect malaria or have been in a high-risk area and experience symptoms, it is essential to seek medical attention immediately.','reasoning','2025-02-28 23:53:00'),('d6f24a05-dd1c-4396-805a-711d5196ab4d','20b2814b-344a-4e12-ad4b-5f968a66f394','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','AI','<coroutine object ChatBot.process_query at 0x000001AEDF39FAE0>','reasoning','2025-02-28 23:30:11'),('e84edf81-dff0-448a-bc0e-814cfbb4c2b6','3e95b0be-e9a5-45c5-957a-40ac977fd747','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','AI','### Side Effects of Acrivastine\n\nLike all medications, acrivastine can cause side effects, although not everyone experiences them. The common side effects are generally mild. Here are the noted side effects associated with acrivastine:\n\n#### Common Side Effects:\n1. **Drowsiness or Sleepiness**:\n   - Though classified as a non-drowsy antihistamine, some individuals may still experience drowsiness.\n\n2. **Dry Mouth**:\n   - Many users report experiencing a dry mouth while taking this medication.\n\n3. **Dizziness**:\n   - Some people may feel dizzy after taking acrivastine.\n\n#### Less Common Side Effects:\n1. **Nausea**:\n   - Some may experience feelings of sickness or nausea.\n   \n2. **Headache**:\n   - Headaches can occur in some users.\n\n3. **Difficulty Sleeping**:\n   - While acrivastine is designed to be non-sedative, some users may experience trouble sleeping.\n\n4. **Feeling Nervous**:\n   - Anxiety or nervousness may occur in some instances.\n\n5. **Difficulty Urinating**:\n   - Particularly in men with an enlarged prostate, there may be issues with urination.\n\n#### Serious Side Effects:\nWhile serious side effects are rare, it is important to be aware of them:\n\n1. **Allergic Reactions**:\n   - Anaphylaxis (a severe allergic reaction) can occur, characterized by symptoms such as:\n     - Swelling of the face, lips, tongue, or throat\n     - Difficulty breathing\n     - Rapid or weak pulse\n     - Rash or hives\n\n2. **Hallucinations**:\n   - Some users may experience visual or auditory hallucinations.\n\n3. **Chest Pain or Discomfort**:\n   - This could signify underlying issues such as angina or heart attack.\n\n4. **Severe Skin Reactions**:\n   - Symptoms include increased redness, blisters, or other severe skin reactions.\n\n5. **Sudden Severe Abdominal Pain or Rectal Bleeding**:\n   - These symptoms may indicate serious conditions requiring immediate medical attention.\n\n#### What to Do If You Experience Side Effects:\n- If you experience common side effects that are bothersome or do not improve, consult your healthcare provider.\n- For serious side effects, especially symptoms suggesting an allergic reaction or chest pain, seek immediate medical assistance or call emergency services.\n\n### Reporting Side Effects:\nIf you notice any side effects while taking acrivastine, consider reporting them to your healthcare provider or via a local adverse drug reaction reporting system, such as the Yellow Card scheme in the UK.\n\nAlways consult your doctor or pharmacist if you have concerns about any side effects or if you are unsure about the best course of action while taking acrivastine.','reasoning','2025-03-01 00:03:45'),('ea96ac2b-168a-460f-98bc-940c16e73823','3cef1607-2f7a-4928-8e92-d6d5eeb046a1','01d4ca16-d740-4331-957e-07b6e25c255d','Human','do you know abel is',NULL,'2025-03-02 18:35:46'),('eb8b3fe3-2d5c-4ac6-813e-2a2e518a0768','8a477c80-9d17-4001-bfca-4ae4d9e05c81','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','Human','hi',NULL,'2025-02-28 23:44:30'),('ed2cf381-d3dd-4441-a2f4-000a8ff944a3','6977f777-3f1e-4cd1-931f-4299b85533f4','0dddd6e2-b65b-4fd9-8c20-99c854ae4f7a','Human','and before that',NULL,'2025-02-28 23:55:30'),('f2e462de-210c-49aa-a5b5-1c8e12f3648a','ee48ded2-ab90-4328-8b5a-3e073c8c4c91','34c16d4f-4234-4a3b-b71a-1482a3efba95','AI','Hello! I\'m your Doctor\'s Assistant. How can I assist with analyzing patient data or diagnosing conditions?',NULL,'2025-02-28 20:46:26');
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
INSERT INTO `organization_staff` VALUES ('1847564c-e01c-11ef-a1d1-005056c00001','1846f2a6-e01c-11ef-a1d1-005056c00001','Muluken','Fantahun','doctor','medical','Kook@gmail.com','0900110085','Part-time','2025-01-29',0,25000.00,'day','650e8400-e29b-41d4-a716-446655440002','Addis Ababa','0900130082',_binary '�\��\�\0JFIF\0\0\0\0\0\0\0�\�\0.Exif\0\0MM\0*\0\0\0\0@\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0�\�\0C\0\n	\n		\n$ &%# #\"(-90(*6+\"#2D26;=@@@&0FKE>J9?@=�\�\0C\r=)#)==================================================��\0��\"\0�\�\0\0\0\0\0\0\0\0\0\0\0	\n�\�\0�\0\0\0}\0!1AQa\"q2���#B��R\��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�����������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\������������\�\0\0\0\0\0\0\0\0	\n�\�\0�\0\0w\0!1AQaq\"2�B����	#3R�br\�\n$4\�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz������������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����������\�\0\0\0?\0�����\�\�&)1O��1�R▊L\�\n8S�)@�� c@���)0IN�9�!��R\�BbR�EC5\�V\��$U�M%��˺׭��Ȥ\��\0��\��b\�?�?Lӳ&\�-r�x�GC�\\�$棏\�8���1N\�9�\�方�InH.[@\��V\�<R���D\� �֥�4\�\�\�b�ǉl�̥}F�\\�\�mn\�̧\�q�\�C�e\�^�\�A\�1N\�!�Hi٤�\�S�(1I�u\0\�֤\�Q@���M\�@�b�)qH(M\�>�@\0������\�R�\rS�\�;\�\r���(�\�S��\�R\�h�b�S�HӅ�Si\�\�^hi�\�@&)i�\"\�	b\0$�BqT\�[k0|\�>`8Q\�kV�+\�g����\�<��\�݋>rI9�Q�\�9v:��S�#g�\�.�&����[<��\�b\�#��Gz	\0���I\"[l�9ݞzO��\'�\0%O���\�\�s\�ɥ2c�\���T\���\�GZh;��&�\�lwp\'4Ӈ=q�@�<ν3�\�H	\�29\�1���&��\�7g��@\nCdu\�\�\�OI\�R3\�\�2!�g4Ȥ �2=\�5�\�j[I�\�\'�~lWI�,\���W\'\�b�W�d$�T\�A\�S�\�\'=y�i1�4zJH���FA4\�\�\�5[�\\\�T��\�\���\�\�\n\�\�\��i�ԓ6)1H���=��E\r���(1F\�p��`\�)�P!�R\n��Rb�M��(NhO��� �\n9�\nb�����\0��J�\�u��L\Z\\R�i\�(\�L�1N\� �Z1E0\no�;=\�\\Ֆ\�ت\��\�B\�@nĺ��o`�q\�E�=G[��,�쉆B���q3\�\�K�3Ԛ�\�\�\����Hɶ��\�r8\�J$\�8=\�3��\�p;Ӕd�MQ!\��g�9\�\�g�8����$(��\�JCЕ\�@\rpz\�g\�qOx\�O\�<�t�\�d\�=Gl\�4\0���\�RǷa\�lIRGr0{\�\�\�<�@�ޝ�\ZX��s�3N�@?)\��\�P\�#׭\01\����\'\�\� ����H�`d\�j?/\�g\��8<�\0�z\0t[rW������+\��B�\�\\榓\"b\�&�\�d8\�g�\�4\�0\� (̣�	\'ێ\�\\�;d\r\0ki���\�;4\�a �\�M/_��\0\� \�(t��#\0��N\�)񖈬�\�H�\"��\�M�\�\�)Ef\�\��\�}\�\���\�\Z\�cU���ENi�Ԃ�QqXeb�(`�\�N\"��`�)����b��\r(�\�b�@��\�4R�1N\�\�/4����S���QE\0�QE\0�TWkl�¨\�4e-_W��\ne|\�25\�\�]Iu9�b[w4\�\�׺��V<�\�5]g�\�h�����\��\� b�.A=v���\�\'�v\�9�Ou2�$�Vb7d\�@�Ƃb؀x\�z7��SxrFp\�\0�8\�,9\�/�jYKd\ZG�\�B\�\n1�3M��\�Rx�y*\�,��zY,�A\�\�����\�\�\�\��c8�;Wr\�\�dZ.�\�Qoa\0T!\�\�\��B\\~8\'$gtiҒi�jc�2WqqSΑ\\�\�c0�~n���lr�pp�c�jɦ���\rS��`I\nq�\��)&\'��ǘH\�\rWx�	\\�I�\�Ryj�\�=h�Y� �>aY�Ny\'�j_��9\�8\�Hm��\�r\0\�%�\�˒p2:S�0+�xO\0g4\�*��\�\�5+���;T|t��\�E��\�I\�)πF$u#�D�zw=�)Ns\�n��.h\�ڔ�2S��(\�]݅\�W�\�,-�?�y�����V��/\�\��aa\�HpsQ%sH\�\��\�58ȩx�\�R\�s@i8�I�b(\��)!��\r5 �\�120*AIK�\0N)=iM6���S��v �\�֔t�@)sM�PR\�\�-AE��W\'\�\�\�%-�cs\n\�f�Ec\���b�\�w�8 �p\r\\�\"oK���(	��\�;\Z8\�\�4�NH�\�\�Z${���R�9�\�H\'���VM�\�pF3�\�)^\�J\�m�\'{T�\�\�\r�\�\�Jӵҥ~J����\0\�\�9�F��\�\�%��\'g\�Fj\�d\�\�pk��\�(\�}���$A��]n\�񠖬ŷҔg\r��PFsZ0\�\�\Z�t$f�\��*T�\�nm\�n��U��J�Ӓ\��0;UČ\�N\�=y�\�er\"�¸h�b�I�G\�\0s��2?Jc��\�>f	�2���9Q\�\�B4\�\��\��m��\�R�\�3ȣ\�2}�1�\0���wQQM��	�!\����9#�F�9�\�!:h\�4�-���ɭ؞�\003]����+*\�\�s�㱭�S��J+�\�\�\�\�NF}k^k@�zUY���8ke$\�w��;;f��\��\�\Zg)�\�3Ҕ\���sTI\��oV����uROZ\�S8�/��\�:6H*r\�^�c ���\�RV\�\�.�\�\nv(⤱�Q�ZAE�1E8Q@\0�\��M	���	K@!\r&)ih�R\�HE;��\Z`&)ih�\0b�)i\0�S�*9�b���Q\�09\�jfE�do�r}q�8\��jWF\��Y�;\�\�\0sҴ��1��!	��Bt\�pFI\�1M$rq\�W-�/ @8\�:�i�`��%��2\'ʹ\�\���c��`@��쬄 r?ƴ�5�\�~k�uC��4�cDj��{S�?�8vg4�3�²f\�Xf\�H��CB��֤i\rH�\�R�\�z�:~:��R*\�.A�\�\0�\�M\��sK\�s\�j\0�ks\�4ҟ�Yڸ��y�\n\�\�\�,`�\�y{3\�sȦ�x�\n� \�\�Z���mҢ1�}E1X�\��ҫ\�|\�\�\�\�zTOZ�\�h\�6\�栖\�`�\n\�tZ�\���f.\'1yfɓ\���8\�d{������\�⹻���\�\�\�E9]Y��!gtW,}�8�\�\�z\�J��f5�\�\�\�P;z\�\�\�Y_$�3�})\�]fzvsM��\�\�Yc�a�Gz��\�\�f(\�()9�����IH)�\�h�4��ޝ�Sy��`���\0\\TdԼRqH�\�\�\'\�@��P\�be�\�\�r�c&��\��ْo+��I\��\0\�\�q=�>��rFpNA4�G^\�4�\�\�#\�9�kcTی�\�jX${��AB8���\'\"����͞xz\Z\�Z����\0�pcR\"N1V\�\�|q\\��~T\�;�ڡ�!�\'ק$b��R���\�CS\"t��,x\�\�\�ȃ\���А6F:\�.�\�(�\0x\���T\�#���\�/���\�U�r\0\0\���Ǩ�\nvϱɣ\�\�<P=\�<���};U�����l���ğJG��nzc4apzt��\"u��\�:֌\�8\�Z�\�	��\�\\⣑C늘\�Tm�J�\�\�(Ks\�Y\Z��\�I8\��[\��Yב��9\�Z\�٘\�]ϖS9\�;R\�=*k�\�7=z�ګ�G�+�jr=�\�׆\�M\nz\��\�q\\��fW�H��d\n긬���uCh�S1H�)h��	IN\�(���\�4\��\ZJZ`QE ��u�\�/Jx��J)\�\�@\�s\�/*4��ya�+�\�s4���qmc�\�T��8�>�\�O9\0�\�M@\0\�S��\�a\0��9�L<!�\�8�f�2N\�_J\�L��G\'�\�W����沚��7fn\�\�\�ո�\�TmN�ۭ_� \\\�4�ؓ<T��5���3�\�\�`A\�\�*�ɤ$sNNI��\\�9=1��Մ-\�1�\�}j�hr\�V8\�\�x�����܌�:)y\��ry�S��>\�\�H�@\�=q\�O�N\�\�Њ\0k�\��\�3�NMJ?�Ƣ�)Ds\�\\g�g?�H�ǹ\�P�8�����\�\�4��*	3��\�i�2#�ʚG�\�ӹ\���5H�G/|\�B^\��\��*��\rZ3g=~�$\'\�G��КֿA��rp+!�\�t\�t�\�U�\��+t\�\�W\�\�Dz��\�\�]\�\�D�.(\�\Z��\�Q�p��P)E-0E\�@����E0ER\0���)��Rf��AHhu���2��\��d�K\�WQ\\���4<��;�{^[Ǹ\�*h����FrOZ�q\��\��\�ʜ�\��Z3�-$gh\�n\0\��\0֧��&`�\�rsڒ�=��W-����:���\�\�\��R\�0:\�5v3Ub\�3\�\��\�\�gdU�#�T�\�j�ȩ\�\�=�K�(\� w�2TS>\\��\�f��\��4IG�?Lt���Q\��\�S!S�P�`c���T�0zS�\'ޚ\�\0ϩ�\��v�.���W^�\�1d�Q��=\�Ȅ�\�<�\�J̫��\�ޘG\�ڭ\�Bj��\�8��cEy#$\Z�\�85{o�`\�-�# ���\�1���.ڧ.9�\�2Z)9#5ZL�\�VfB>�_$��h���z�\�O��\�GzWIr?v}1\\\�e���oL嬵6<\'�\0!o�\�\�;�\�\�\�9�Ͻz\Z�\'�Sz�J)�\�RP�KMJ)\0R�Ju1\r�\�4�h��F(���S,\���b�)\0\�\nm.i94LӳM��Hbf��E�X\�WS�\��(\�R�.⣁UȖ��\�#�\�\�ըs\�㑀H�i�q֭Şy9�\�Z�Q�ܿ_\�\�s\�ZVv\�>f\�\�T,\�2\0>\�\�k~\�\�q\\\��:\�E=E\�\�5\"d{\�yg\'?�9�Ƅ�0I5��\��\��f��H\�\�v\�Ed��P��$��\�2.er�n\�\�b�0\�\�s\�Y/��\�A\�\��\0���]y��h�\�e���_$rA\�PJ�&[\�p�g8\�h�\'9-�\�\�\� V�\�\�ȵ�\�$z�\�\Z�M\�b;�\��\�F.�>��\"J�$zM����\�gЎ��z���A\�G\�ڼ\�\�\�Dq�\�#\��\�}+S�L�?69\�o��g(���&\�\�R�(<�I\�\rL.yS\�X�L3��ڟ�9t5�\�\�\�usXʙ�\��=i�\"\�\��&��L�{}jI.Ӄ��\r�(���\�R�\�\�F@\�]]g\'\nk\"\�虜d�@\��\0=\�J┬�w\�T!c\���\�	�h�\0�2:�º\�vf0x\�p9�\�/�#�\�\�dt��4s��\�9\�Z�\�ے3���\0*�{�#\�\nČp1BGq#��z\Z�f����5N��\�q\��T�W@\�A�+0\�J\�\�\nΧ�\�n0\�m�-.�)>��Q��Z\�>{�f�\��B3\\��\�ˁ�UKvEm�\�x6\���\�#\�h>��`+\�Zq��R\�\�q�\�c�)\�ݓd7�Z\\R\�Ԕ ���Z`>��AECiE%:�N\�Q�7�(��P\r8���f�=�\ZQKE )2(�\�\�ES\�\��NNT�*ȡ\�9\�E4�O*GV��\�$o�v\�P}*��텾�\'O�\���\��GJ\�é���}k��W3��\0��5\�\�:n+��\�m\r�\�ڡ�\�;G5o�3\�=�GCҲZjn\�Ă\�\�\�\�V\�$\����8\�B�\nY/b�	vP�4��\�QE�)rPTt\�\��D@�\n�{c�k=J\�蟲@Y3�\�\��\n�\r��\�\�K�\�\�\�P�\�\�\�ީ&ȓ�u�A2�ʼv\�O�k\�\�I��Q\�ZWV7q}\�D\�zm?稬�e��;�$\�\�\�\�Ui.�^/�M#0�\�F�\�\�k�RJ\�1\�@/�Ȏx\�98?�Z`�\�o�I.�\�7��\�ӽ_�]\�\�\Zŷ�ڴ\�1�VOsd�.��=>�\�3K�玠zT\�\�@3��t5J\� c�<P\�P�Rw�<�Tn0I\�\�S\\Lk:K�\�=*\�s)$\�6\�+��ϭX�AYX�\�j;Qs6h��\�s�\0�kv\�J���F�g\�\�δ���ҬZ<�jO�\�N-�N��=�*)~\�v\�+�\�\0\�U^�\����Q���KR\�Z\�]��\0w�AT\�m�\�<�t7�L܆<b�\�\�i&\�I���>X\�n+-��\�DYq�ƺTL\�y�\Z-��Ĳ9�j\��g%E�;H�\0T���\�O���\��T�P\r;���NJ!�S)\�\n4�4\�K�\0����i�\�\�)��S�E\"��J��c1@�N)�R\0\�\�\�x�b��\�tQ\�Hzj�\�ﮒ\�\�\�1� 3Q6\�\�Ҕ�odS�F�,�ܠ��r+��1��r+\�\�n\Z\�\0�H70�\�r����d\�e���\�\�\�{0�E%\�;K\�x�\�k��t\�\\΋n�@\�N1�ҫ�\�臜R\�.{S\�\��\�V>]�`\�җS2IDhq���ǒ-\�[\�PrҶn-Z\\\��\�\�+\�E2ɆrNzgqJ��ɻhK�w}��\�>\�%\�\�ڹ\��o\�w\�R�\�\�8\�ӽu\�*M���0��\�Qҳ5�\�\�\�=�yF_����\�EosT�ٟ\�\�}�\�\�I᷎-д����\�:kwL���s�C�[\\y\�d\�����y�r9\�w\�Z\�:T6��j�ƻC;\�?�S�I�9\�r�t�\�S)\�\\c����enLjwnRv\�\'�֤�}�a%͌�r\�s�\0\�XYOc$�]��\�ΰ���:c��~\�\"��\�\�l�f����D�5�e�\�u�\�D�5H_#�\�`\�9\�sҶ\�|�\�\���+�m\���p���su9N�I�\�\�6\r;�\0\nzӒF��\��J��\�\�^wH.�pf8\�m+�&�R�J��\�*��O\�V\\�u�\\Mu}po��H\0ᗿ#�\�&�k�����\�u\�v6\rp�>��GhYv\�{~U\��\�8M�v�\\\�u	p����ON\�ʷ/�\��|}��\�\�g$TzN�&�~���>UA�\'�MV\�\�TB��$£4�(��$�0\��&e�2OQ޶-��\�\�\ZQ��<涬\�0\�|VS��5�\�ޤ�1Q\�1*j�N\�*��8��\�\��$hة\'�3I;&�Q��45V\�\�`�px\�jچA,*�\0\��\�\�xW�%�\�{<}�0;.1N�Yh�!�N���S��b�4\0\Z@\�\�t\�I�RdSy�\�\0:�(�\�\0%Q@\r\"�rjSQ\�\r<TiR\nHdoM\�\�4P�6}kX\�\�\�\�>\����\��\�C�*��\���\���*=QهWL��x\�\�9ҳ�2��|��J\����$0��κ�vR2\0\�Y\�\�\�\�iZ\�6�J\�t\���\�\�T4\�\�)&��*�5�\�\�\�zj\�\"\���I\�>�*�C�j\�]�d��7B\�8<UIl����@\�&����\n�-\�:�j4sBYa%]P�PqO�pO\�@MnIj3��~���ʁ�\0ծO$\�\�0\�\�\�#\�\"f��\�7���9\��\�)S8\0\�iBH��j��*-�6��,\�I5%\�8D\�1\�5y\��=I�|��}k9O��i\�VV�9\�]�\0\�\\&=)cr\�\Z�\�Z\Z�=���\�^+M$s�UK��8uC\�\�<e�M�,Skg#��]q\�\�]	\�O�v2j\�%�\�n��\�GZ�\�.���\���V�G�\�r;\�8\��\� Us!4\�cx\�\�_\�\�5�8QϷ5�c��v�{�)�f]\�W\'�&�E�8Z�r�\�\�b�(����w��E\���\�k-\n�\��j[ku�~s�1M)�jŁ\0\�\Z��\";\�ϒ\�F������\��=��Vu\�_\�ދ�+R���ܚ\�D�1\�3�jN\��zÁ�Tc4\�H撊=h������ө�ZL\�\�7�qx��P1���J1\�\00w�(\0R)X6\�Sri٠�\�4\�oԆ;D))\�d\�:nُ�cUXw�\"����桓M�(l\�4�$�S�ڢ�+�`\��Z\�m.[���Y%do\'��E\���/c\��KQԊMK	��2\�:\�\�`�v-Ōոp\�\�8A\�<\�U�\�&kFdg5y\�gÞݺ\�\���\�6c�뚬Cs�ȫ�\���\0��\�\�E�ir2A>�\"[�\�]�\���I�4%�\�=iz��I\�\�H\�\Z�\�S$����RT \�8\�5%\0�Kz��L|��\�j#�\��$,v�M^�\�\0z�C\�\�$Q\�E2=\riCPq\�P\\\�6���W\�s\�#\�=�UC\�sZ�1�\�Am�GQ޴[5�~\��\0�\�ϳ������}\rj\�\�ӽO[�!�2�\�}(�qW�q��qQ�x��@X�$cJϚ0	\�sZRg��F\�>�\�3>@9�r\��ۥ:L\�\�6�=\����\�-$�\�\�:8\�?\Z\�\�\�߷Ơ�#\�&��֞\�5��ai�\�\� ����\�\0SM�8��A����R&jA�hb�*^)�E-��P	�\"�3J{\�1Jh�\�\�s�II\�5�f�wh��Z3�Q�K�\0֩)�O*@\�m<\Z��\�ڌ�\"��b�\�smbsJe�����(\�t�I��I��9*9\�iF�\\!\�1\�5�\�\�\��\�dYDs�F\Zd\'8�5(R1ǝ��*��\�\�Z�Q�\�F�DqV\�=y��\�]���+mh\�~Aӎ�j_�\�5�O~@\�3W�\�=zTܻb\�Հ\�<T�\�g��ԓҳ�!Ю\���+\�q�?\\U&&�\���\�\�o��E\'�J�\�\�\��8\�Utidzg�\�\��|r�ݎMmZ\�sc<�\��Z\"$L��8\�k*\�Z��J�#�M6�ؕ$�s�0\�9\�\�\�Ep�\�+\�|,�E���V���\�\�Z6\';�N\r+\�q�[�\��\�Xe�Je\�\�D++�nj�\��l8a��gk�^�\�\�\�B�֖+a\Z`\��sW^!KWh\�YI\�\0~5\0���\n��5|�\�9���͹z�\�*��\����\�\�\�#ԁ\�*\�s?�K]\�O��%\�\�\��.Ƴ\�`s략 ~�1<c�l���\�\�+�pJ�\�y\�Ter3�;Є�*ˁ�m�/�\��\�NA��\�\r-�\�s�\����Z\�\�X�s,�CԌ�Zb�\�\07\�qWkds\�w��f�CVf(zC�h�E\0(\�.)���)\�ԧP\�\�ih9���\0��R* jM�Pd❾�Fi�a�֐�@i\�\0\�Lp#��\r6�\���ʯC\�W~X\����\�s\�l\�\�\�Q8r\���=��j\�\�\�}JԤ%۹\�5�\�[���m�q\�Xq��\�U�Vw&��I\�y���eŚp\�=\�\�Kֲ�p*ϛY3TˆS�랸�d��xSP���\�Aspc��\�h\�w\"��\�\�}jݴd!�5�o\�\'�\Z\�Ȋ>zU\�M\�8\�$Lu>�\�Ysh�H\��V\'<V��L\�#ːJ�\�i�\�\�i=\�#I�\\:�)�:!�	�t\�Zy�\��\�ڬ\�\�\�c�����M�!�\�\�In�\�r#1(�\\\\��2�\�޷�°qs�#4�b��\��=7��\�\�f����q֏���e�l⴦�>c����\�>��\�i���.�\�j鍱�ҩ\�\�*\�R��Y��&�`�b=;\�:L}ES�9\�3�y�\�\�sCW\�]yH�ڪ\�)�2z�߭Blc��m��\�\'ި�\���qJ�Lh�#\0Z\�e}u4,��;��sV�q��\�\�-l�V9[�lZm:��\"\n)i(IE\0*\�邖�I�J(h���\"��\r;4�7�M:�P84`\�\���\0����Pi0\�>V`=3N���\Z�[2��	_-\�y��@��\�\�l�twG\�f�\�[B�&ެx}#sK8�@9\�VꎣA#ҥBx��#\�ty�\�\�2\�/\�%<ـ\����\�h�3�N8\�E\��|\����\�6\�\�z{\�fK���U\�\�!���O���]�Bz�b���B\�q�ȋ9�V|���g��A\�U{���QۓT���\�-��\�\�\�f=�\�XG�\�\�\'U#�{\�x�fr�2\�lY\�!��Ӟ�9�\�H�f�|�s�&F@8\�\�?ʡy��;�21\�\�F�\�\�\�OBM\�\�;sE�\�m�3\�+�\�p}\��۔�Z��!�ȸ\�Rب\�\�s��pH9��0\�k�u\�A�`\�����[L\�g�M$s0\�+S�\�w2�x݌b��Ĺ_cB2%Nq�)\�\�c��\��8�qǈ�Rr*Z�qw*J@\�V\�榛���\�\�\'��8�\�D�d��\�[�[E\�#]�\�Ȱ�̽A\�~c[\�V\�Z�%����\"��\�\\\�RRf�ƒ�4�\�\�nh�C��\�`\�\��њ�4o�`$\�h��%6�L椡┚@\r.) !$Ѽӈ�\�4�\\\�f�b�\0��\�8P�\�\�\�?+�����&`�i=�\�6\�V�MgD������#�y+pz\n�昇�Jq�� \�ݟ��44���\�\�\�:\�\ng�\�T������z\\IsK�\�\�7��m\�.���Y�1^\�\�GUQ \�7���(��\�T\�Tw\�q4@Hm��mZ\�\�m\�ă\�w]�H��Ȟ��J\�>\n���ƣh9`k�-HY\�.U9\����\\��m5�����X�G͸w\n����\�\�F�\�uZ��-n��jG�lt[;[\��`�u�r\�\�\r��o\�\�;��q�$M���i[x\�K�&थr\�Q���$��o��k�{\�\�>\�����/�4K��1۠E\�u\��\�4�9\�㿆=\�a`wˎ\�뚶�2\��\���G\�Ao\�M4�	*�nAe\�K?;\�V,p23�Y�hvv6{\�a��ǵV���\�4\���\�\�${�V�Ư�A$WW*�\�/�\�n\�\�\�\�1����Y�p\�\�Ve\�I\��S�m�7Ox�ʣh\��s�ñ\�\�q\�1�b\�ߕ�6��\�\Zz�\�\'�\�\�n�;�.����2z`p	^\�\�9\�\�b�4��O�\�I\�;Rɑ�\�)S\�Q\�\��\��ҹ-\�\�\�b9�S\�\�\�Z�\r�?f�D?{5)���#�N\�\�i��\�\r\0���&�E�\�\�\�\0ǵH-\�Ӱ�3p�\�V�\Zp�ji\n\�L\�\�\������N�SHW36n\�:Y����lTb�%��؛�aoCEt�g_J(�\\\����M\�(5��(�\�\�\�a\�]��i\�\��)qN�\�P+��\0�ȥ\0b�\�)�W=\�5r���u��\�MT	\�s2�\�8\'��o/��\�Q#�\��k\rՎ��4����?\n�9?*R�>\�\r\Z&K\�Lg5�o) �\�>�\�/Nyj\�F\�t\�&�CLՇ�\�m#8�Kx\�.C\�w�8\�<�q��$\�8\�qM1Z\�b`;m��\��!G��߮i.-\�ɑ~�zj\09�\�V��\\�,\�\�$e\���g5f\�x��\�H\�\�$t�\�K� d��\�#��ӓV�4|�u��\Z|N\�����8\' v�\�Ef�4�\�����Y1E�v\��<�rZ5%F���4\"B[\0z�1Tn?v\n�\�<[3J�Hʎ1�X��I,\\\�A\�J�\�%$��\�X��\�wv85�\�\�h\�NIB߻t�|Â3ɨn\�\�|ҀL�HI<�\�R\�)�G$�ZV�@�U�6\�\�\�#䏒}j�\�E\�f8\0WKef-mB叭i�1�;+8�O~��ۼ��kk�\"$\�g\�\riť\�q\�\�;S���d�sS%�����Z�[���WfDv>\�f;QZ^R\��cҝ�r�[\np�Z�c�\�@EJ\"�R\� D�5�\04�8��\�(�4�5&)\���\�LT�E�m.i(�c鏊QHh\0i\�4-<B4\�|�\�\�)��G#�Ο\�$�\�4g9�\�\�\�s}\��\�N?+�:\�ED���֧�P\�~���R����\�$\�њ	�\�Vb\�\�\"\��1:�\�4h���Ԋ�$ �qU#~�ʧĆ\�8\�PRe�p�Y�h>��t\�ޛ*I;\�+=ሓ��ЃM:\�\�԰�<-\�\0\�9l\�r~_����y\"\�������փ\�\�8\�T��\�W\�9�.�*u�;��D�+\�j���RF�r\��枖\�1�sS�X�\�8�l5{���i����q�*Q�\��j���8#��W.iF\0&���RI(}*\�E\�jh���&C\�с\�]-�+��\�|ɳ\�]M��\'v���\��\�Q\�\�3�[�iEn���*ϖ�FASЃ�i\�Z\�w��QE0\nZAE\0;4曊1@9�����3`\�\r\�	曊|}\�\0\Zx�\�e0M8P��̢�\�\0\�)sHi+#a٥��u\���48\�I\�48QE\�8T���M\0J\r={\�)��j�g7�G�@7��\'�Ux�\�ix�1�\�\rgD�zW=EfuQwB<`\�ڨ\�D{u�Zc�j9c=*��W3!��\�\�\�5u%WN\� 	#�c�d2�\���uvORkFm[\�y\�\nф��8�k�IOU\�\�Z6\�A��⥢�6\�ks\�NqUm\��\�ܑV�\�Ǹ\�;\�X\�2x헓\�=\r(\�\�\���pI\�Zj!p\�-�К��7$C���Mx\�\�ש57��m �P�FG�\�E�\�j��O֧|c\'5�$c9\�\�-\�yO\\c�Lz\��\�\'|pj��rz\�(\�n\�z}j\'惻8\�i\�Y�ִz�MmO)&oq[\�H:�\�\�q��\�$�=�\0�\�+F rs\�[\�\�G4��\�\�_\\[\�ˑ�z�sWbץF�q\�g�b�H\�\�,���X%�%�����G [\�sXE\�Y�\��\�)�Ս�\n\\\Z\�F�3�n;\Z�\�c\�Q�XV\'\�T�7�ϭH#S��\ZV<\�sS�`R\�i���PNj-OJ_$\Z\0��Bc�\�\�#N\�\"ܾ���ɢ�8:9�\nk\�F\�A\�E0N�bP(\�-\n)h����Il�i��;���UG��SJ\�݈�\���\�UȬ�|\�v/r\�V>*S�%#�L\�\���u��-\�&7n\�V�\0C�KPQob-~\�u�/圳�\�|}�\� �9��\�k�n��TՕ�@\�\�zӈY9\�9�\�1דR��s�\�\�(\\[�}��\�b98\������;\�\�-\�=�\�=jӱ\r\\\�IH�l\�w�p\�߯��f�\�\�Trd�W�3\��\�OQҬ}��\��ڹ�nZ>�#9�U\�\�\�\�\�\��S[3j+\���=�Կj��\'$g�s\�\�\�:c�E*\\I\��\�q\�G+27\�\�\�s\�4\�AaY	rÎ��=\�\�\0\�\�&��s#F[�\'<\��Z��%��g��ع\�Bx\�P�NH\�\'�5J7%\�ŗ���\�1<sPI>�\�!\��9��!�}j�Dj\��N;Ӷz�\�OJz���������.@�\�,�\�~tp	!�ҷ\�O64��R\�+�\�?����ԁ\\��Z6\�:�\�t	���z�BU\��\�q\�������\�QYܷ\\U\�{�\�O��m�a\�85�*`\�\"[2\�ӂu�\�\�E_���\0\Z<��JF\�h�=^�\��(Cȣ\���W\�T\�\0SQ�D�y��GFS�cʨ\�G�,�\�=g\��O\�U0ҍ��c�\��E��\�ޙ\�����\�RO�F}:PH̵1CE\0y\�4�Ի)6V&\�x��Q�\0m&\rHR����HJ�\\U��g�\0�5dh+\�ff>��`gY�{x���\�<�g�\��\�T���M�̇D\�u��;�7\Z���\0VU�\0�ꦬ�Jw�G�h�g��Y����Ց\0�x�� B)\�3�j\�r�;c�\\�\'��$kޕ\���\�*[�iX�cӚp��hA\�<���t\�Iv�H�?\\梖!��Ʈ$j�\�\�\�F@\'=@#4\\M2\�\� z�-�䯧<\�̊\�9SǥW1#\�\r\�ERd4b��1L���\��[/k�\�>�T&\��?PjԈp3��&7nR=Fjd�^μ��b��ۮ:���l�~\�\�\�)&K�E��y\\�CL7�\�@5_\�\0g�i\�ja�֝йX�\05NNKdv�>�!9����w�\�J\�Q]\�8���\r,q�8\�8�0\�\�c�Cf�EFF	\�q\�\��4�2�\���\'�|/4�Z����\�i�C�Q�C��c\�\�5g\�R���4jZ��[�\�kjo[UZ\\�\�h���z0\�5��\�fh�^\���(\�YO�x\�zֲ\�A\�0���\���x9�\0\Z8�( :S�֝�sI\��b��\'Z1ցl��6)	�TF!V�M\�\0V��{)<�ht\�1�����\��h�48҂�a5lBOj���\�5����Y�,v,{֪E�\�\�\�;RcFtZ`�\"j���\Z`\�\�\�\�\�\�U��S�\\�\"TQH�)\�nN3U�� ���hB�F�j�\�\�;�Y!�AI�QҔ�ҧNEha�\��\�>�{qi&wB�s\�=�F\�]���-\�\�cN\�\�\�\��s>P<\�\rH�\��i˚(��ӑ*scG�ֳf�D�0\�\�1\�z��\0\nE!6�\�Q\�\�\�:z�Հ���>�Ҹ\�T�d�ƫI��\�\�iyc�\�\�Nj?(g�{\�fyd}\�Ν\�}�\�<ց�뚂KQ\��\�SLV*I\� \�EFm�\�T{\�U�\'\�\�\��\�\�3\��\0�;�\�Cn�8V�S\r���E\\!�c\�\�\�?��q4Tx5,q/l~Y�E�pI\�֬Gl\��f��\"�\�ԃv{rj��@>ޔ\�c4�U�H9=})�1\��\�\�\'\�5&\�w%������6�+C\����E��{�\�oϵ��)�/�|K\�e�9BL�\0�N;֔ިʢў��	cy�D1\�co\�zֺ\Zĳ3%\�	\�UvPw��տ>�f�#5\�p��\�c\�K�E\�N\�\0\�M8�)���\�cҥ��S�$�\�LC�M\"��\0f)���P)Eҁ\�\�!0(���\�j02~�\"\�EblN�<`QE1#��S�\Zκ�\0V\�QI\�R\�\�BJz���J(��c�\�nU� ח\��\0�\�Q\\؍\�ُׅ sH\0�h���\��$tQI��S�9��CEPp\�Q\�\0\�\0f�(\�P�.O�QE4&4������QT!\rǭISE�����%\����25\�R\�Z(�/\�5�w>$E�\�\�f\�\�#4QZS\�\��Y\�Z�j��^T\0:v��袻�N)\�)\r\�O�R@�\��\�E\�>�(��E\0\��\�(��\r$\�(�g�\�','2025-02-27 04:34:03','male'),('2714d0a6-d583-11ef-9523-005056c00001','2713d745-d583-11ef-9523-005056c00001','Jane','Smith','Doctor','Medical','jane.smith@example.com','+1234567890','Full-time','2023-01-10',0,150000.00,'Day',NULL,'123 Elm Street, City','{\"name\": \"John Doe\", \"phone\": \"+9876543210\"}',NULL,'2025-02-27 04:29:51',NULL),('36374a0f-e026-11ef-a1d1-005056c00001','3635532c-e026-11ef-a1d1-005056c00001','Alemayew','Girmaye','doctor','medical','alemayew@gmail.com','0900265856','Part-time','2025-01-27',0,6000.00,'day','650e8400-e29b-41d4-a716-446655440002','Addis Ababa','0900130082',NULL,'2025-02-27 04:34:11','male'),('3b6da8cb-e018-11ef-a1d1-005056c00001','3b6bae46-e018-11ef-a1d1-005056c00001','Samrawit','Tilahun','doctor','Medical','samrawit.tilahun@gmail.com','0900130083','Contract','2024-12-30',0,6000.00,'day','650e8400-e29b-41d4-a716-446655440003','Nifas Silk Lafto Kifle Ketema, Addis Ababa','0913313103',_binary '�\��\�\0JFIF\0\0\0\0\0\0\0�\�\0.Exif\0\0MM\0*\0\0\0\0@\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0�\�\0C\0\n	\n		\n$ &%# #\"(-90(*6+\"#2D26;=@@@&0FKE>J9?@=�\�\0C\r=)#)==================================================��\0\�\�\"\0�\�\0\0\0\0\0\0\0\0\0\0\0	\n�\�\0�\0\0\0}\0!1AQa\"q2���#B��R\��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�����������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\������������\�\0\0\0\0\0\0\0\0	\n�\�\0�\0\0w\0!1AQaq\"2�B����	#3R�br\�\n$4\�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz������������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����������\�\0\0\0?\0\�$ѓ\�\��\��\�@�\"�St\�H	��\�EH\n	�ɤ\�@.M.M6�\0vM.M%-\04�4����FM&8�\�@M4b��M5\�t\��\�0\�\�\�;ɷ��`�g\0�����d�^ԆQ\��S\��|\�z��I� �ƣ��\�\�.	 Е\��.}��\�ה\�G<b��v?©I~rQ#�\�(6K��1r��I=i\�~�ץc��\�.䁜m^*�\�E\ZC~\�\�\�ܞs�*�\02�4�r\��A#���G�[c��2\�\��rC>=��\�>\�S]Λ\�$�\�֗\�9\��V,:�\���\�*Йߔ*�8\�Y�X�#Aܞ�V\��\� �@@8ɝ�\0�{�8���\�? ���L��\0�4\�}\r+PO\�bv�\�\0ɣ&�m�L�m:��i&�M�bd\�f�E\04h�S��2i(�ɦ\�\�\�Lɣ&��\02hɤ���a&�i��\"$Ӳi1֝L\�i){\�h���@$u(�ӵH)\0�)>�\nZ@%-P\�\�\np4\0�pi\�x\�A$�X\��R@\�I\�5\�}*�ڋr}�\�o�|�_��i6C�F��\\�\��f�\�ss����9oT\�1R\�\�\�Ct�}Mj�\�t�|�#r�\�)�r�0\��a.QqP=EI�6\�R}\��{C�{�;�\��-\�\�	\'\�?Z�u&(C�{�˚�\0󜞔\�J\�R\\ﱫ5\�Hr��4ԗ?Ł޲E\�?N�\�\�\�8=l��l\��@\'��QJK�@{\n����M)�\�rF1�M0%&I\0�(\�I\�*W��g�\�\�\�\�t��78-ϵ�P\�8z\Z�\r\�G�nb:z\�Y��C���	#\�ߑ��\�\�\�\�K�\��7�\�W!��\��9\�\�\\�I��b~��ᕣ#A�\�d觱�j>�`%`:�#ҧIA�Ǩ�^+�r�,8\��֭�\�\�\0c�������h����\r�\Z��c�1��|\�\�U���V*\�Ś&��\�@\"���:�)\0SqN�\�\ZZ)�\0P(�S\�(��\n(�\�ES(��\�\Za��i�\�:�S�)�\��QE!��PiE1%<S@��R�\��KH\0S邞(`-��@	�BBu�\'�Ͼ�\��!˞�v�J\�nķ�?7OJǹ�39\�[�x\�֝\�\�ܒ\�\�{UK�#�*���õm��m��R��`(����\�\0s��\0��\�\�Y���)�n3\�z1])Xɻ�������Xt^=MX�@\�\�U_\�g��H�\�3g��v$\�9�oL���4�pN=08�a\\�%`��\�P��\�tj\�0�\\\�\��\�bo0���\�r�+rqנ�\0A\�<\���#Ϩ\�j����☋�߅N0Aʌ��Q˞\�l\Z�s�3�x\��㌸\�ޜcT\'$~\'sF0<�}��ԅ\��}�9\�;\n\�q�ǘG�\\\�\r�9!����@�\n9>�Ur`�cE�q\�A\�\0�\�7��v�\�$\�\�9d$\��\�	\�8&sߥ\\�F�NW\����B�\0\�>���18\�ר�qOq�\�Ԇ��t9\�\�Q�?u�kH�^T�G�H��ʒ�\�\"��>Ʊ�sz;���\�чCWb�H2+D,��d\ZҊU0�}�\�XJ\�2F�(�a�8�\�\rMֲz\Z�Ӎ6�6�M\"��Q@�C���`\�u\0\�(���ZC@i��i��	N\�K\�\07��P1��KJ( �*1RT����p��QJ:P\���\�\�k�V4&�Wb^ܘ�`��\0�\��/\�HN	\���j	39g(\�sP\�t��rF\0�c\�6-\�\��#\0�\�Y2J\�HU~U\�Iy& ���9\�)�,q�nG����#\�1#T��I\�j��\r�#��IL�\�*	t�֮\�\�d�\�\�>\��\�P�\'�8�\�Y�\0\�t&�1\�ܞ\�5B+��4�g���\�3@\0s\��\�\0Z�� |Îrz\�\�\��Oj�d\"�K�\�\"�\�:�\�#�޵K\�g\�w�ǩ����q�jm�/9<�v��\�b9��(\�D9Q�9����\�@8��؀�\�-\�;R��zs\�\��b9��c�­ǷvJ�J\��F:\0��\�8)�I\�1\Z��9�\�\�ң�ܞO ���s!�\�pO�*x\�U;�f▣\�|�\���	%8\�j\�w�z{Ē���\�@\�\\\�?>��I���CL�نpp8�\�B�)\�^��\0�f�чcަwh\���\0Y���\'#�Y��Pp\�+ЌԴRe�,o�\0꧚��<�=9�Y\�G¶P�	�b�a\��k7�5\�\�xV\'w|\�Ž\�ʃ��u\�\�\��V�xn$��$q�w�\'N摝��4U;k�!�?�[��ţd\�-R\Z@\'jQF)EM�Sh\0��)�Si\�\�\0))i(\r6�i��)i)\�\�}\�\�EN��(\�RS�>��EZ(�d�\��\�\0���\��9?Z�q �OMb\�\\o�\�O=�Zq���\�\\��\��3\�Yg\'\�9$�=�\0�\��&W�*��\�\�zn��wq�\�lsɐ\�\�@\�N\�yZ@d\�Xm\�֬0grN1��z\nO*\"r\�\�^8\�^��\�\Z��=�\�`�\� \�$�@�V<Uv�-\�zhB\�p�z:b�\�t�\�\��+�z&;z\�|�\�3�S@�\\�=	�\�R�#vfԶQ�`㊿o8\�7Px\�&\�RW$�ޠg)\�)$��D\��=;\�\�l�\�mہ\�I��Y�x��\�[���(F�\\ n\�<T?c`N�\�ORJ\�!\�y2)\0�5`Y���7m`T�DW�{����8�HAԑɨM��\�=k���8�\�K���`OrW�H=�g\",� �g\0S~\��s����\�\0�ߝ$�c\n�\�\�S\�D�&rR[\�#9\�zӒͶy�&q�\�nM�\�\�\�\�\�Yl\�T9�\�I	��\��\0ĊP\�\����In\�\n\�\0:�$eS�r=\�jƌW(\n\�\�bi�Z��\��{�Y\�)��Ê�oz\�=(��\�(\�!�\�S�,�+\�N�;�wq�s�5_cBpG �\�1����\�aٻ\�A�x\�B\�KrU�Zb;!�w(\��\�q\��\�=�jM\r2\�2\�`\�\�zJ��>�>�sTP�<>7��\���j\�F�s�q�\'�;V͵\�Ȁ�W;�\�6\��UȥhH�;5s\���\�\�P[M\�\�*z\�j\�\�P�R\Z� \nm:�LAI�Z)\0Si\�\�`��PM4Ӎ%�\�7֝�\0gz)q\�\0\�p))\�\�h�R\�KH)ǁ\�@\r\'<Ƈ\"1K�U;ۀ� ?3t�������B�仕�c\�\\�|`pO{)�\�UA?{�?�v\�)#�R�\�\�đ��M9.�1S��W��9�\�\r�\�ޥ�DP�\�?l��+\�\r\�\�\�\�3\�&G`)	�\�P��I5n+U�;��e��1LnP�\�Z<��e�gnv��Φw\�̀	\�\�\�T䐡\��=I�K#�G`)\'9?��x9\�V\�j\�Qd��\�\�y�݆�ņ8\0�{V�Ve\�\�\�<*k+l�\�>կ\r��&��CxS�Z\�\�\'RO�h\�j��\�\�U��U\0\�㚴��r�\�޹\�+�*	\�\�@�\�-�2�\�L\n��\�?֚��\��*Ȣ�Sp:TR���ZA��۩\�Z�\"le�Lp0Gza�=w��9mx\�\0\�3֠H\�\���|\�q(Kl%\�?�S�\��\0\��\�Ќy�\�T2�O�\�.	�\�q�\��߭S�Jc�ۨ\�w�\� �5~\0�\�Td:h\�n4\�\�\�u\�g��Dr2һi��\�W�f_Y��f��K�ʝ�(\�t\0c�\�Wc�fL�\0֪\�ېH\�\�֛�P}+K\�ɫL[1$}:U\�E\��\\j�or�leO\\\�WQ�(Â?\�Z\"i�\�7~�֬\�qY\�7$g\�Ҵ\�\��s\�w�\�\�<o�9^�z;��\�5�#����X(y�\�֡����gpё��qֵ\�8\�\��W7\�\�z�[V2�S\�t�j����w/eN6���* ��z0���ysX\Z���ޗ\0�\�u6�\n(���\�E\0��N4�\0����ozZJZ\01N����\nx�OQK\�{\�*)$\�pJ�l2\�\�\�\�X��\�X\�\�\�zT\�W\n\\�~\�N��,�g\�9篭uR��\��床eԋoKfFڤr��,\�/\�Y72y�0�\����\�\�˖\��\�@ZL�\�\�\�Hϴ\0�Ƭ9P\08ڿ�\0Oo��Wj�3\�}�\�\�	\�7\Z�l\�l\�S\�R;�8{�\�)��]��fݸ�;\��\0�T\�=�\�j�s�y\\\�U\�SN���;ۜ�I�*\�\�ڴ�rz�J޵�c�\�޵\r��\�t\�v����=�\�&tӦ�CfF\0\'�\�i\�j���B�\�c\�S��ߏ�s�\�ҒC��F=\�T�ZTL���(O��\����gJ���a�W*��\��Ɯ3�ԥ?\�)S�9�j-�<U�Jc��\�JHI\��x@�\�_)Q�`�(�rE� f�y+�\�\�Z�__ʣ0\�\�i�\�[ێA\��S�؀q\���y!;�Ui###�bZ9�\�.	ߥdȏG�\"�ۈ\�\��#�\�Xw��%�r9\�t\�W9�C�����\0OQV_pboҩ>c|�5n\�U�ln��=+S�\�X��7CU��\��\�ZN<�\�\�2�\�\�Y\�G����\r8\� �cR\�!G����k)�\�+O>r\�JVp���GQ\�W,\�<��Vt2���<\��C1�p\�\�#�g(\�fu�\�$\��qY\Zuə\0\�\�\�޵\�ָ\�3x��lP(?ZN\��6�EHih�AM�Q@\�\ZJS�J`%-%;�\0ozZLsJ)\0KE-\0(\�<SE��\�O8\�T/e\�b�OS\�Vne� }\�Vԭ*s\�7_jڜnȔ�Cs*�ڤ^	��\�\0z\�\�\'�9�\�.�b��y\�]qVV9۾�+��\��/A֩��\�\�w\�=)�\�I<���nqӟ�Y$\�# -�-\�Q��u %V\"�Y\�\�<Ԑ�@9\�\0���\0���\��\�@9\�x,\�5#׾	�Dz�ׁڄK�\�\0w�\�B\����8\�R�y���El[E\�:�\�Q\�gQ�S��cn\�\��\�@����a\0�\0֫�1��r7vu\�X� u��V#\�֣���XAQr���\�dN:Ƙ1�5*`�)�b��\�\�F?ϭ<�\��PP�i\�	Ƿ\�h\�\��q�\��\�7��qJ�q���J~\�Ɛ�ց��\Z�\�NA\�Dh�\�Q:�w�$c8晎i�RD�\� �n�?w5^a���4A�>��b\�[+\��\��\�S�S�@�8��h�+��\�[\�5S�T�\�3[��� �wⱥ�)�溢\�I�2y\0�2:9\�IP�F^��%1�rv�=�\�|�9\0\�gɔ!\�\\�Zsc�~�^d�\�\�QB\�9\0>�\ZcZC\�\�&S�z\�:]���Ȩ\�d�\�z�Bs��EK�cu��\�:{\�Gm2\�\�ָ\�ؤ�gt��\���XT�TitH�ǯzw5d=O# \�G��V��\�(\�M�0��)�)�\�(���\�P0��4�X��\�N�ҊJQ@���@\�]\\\��\�TU݄݊�W*�x^�\�F�\��\�<Գ8�C\��<\�\�G�F@\�\�]��Fw$\0�F*��\"�qƸ,NZ�\�F0x�p\�#��8��Q�\0$�\�jI�\0PynO�$h@-\�L�\� \�jb\ny\�d��\�U\��#h�n	�\��\0\Zd#����\�Q\�&\�A\�ZA\�q��\�pK\�\�Z�r=MYy\0.s��\ZF��@\0̒r}����$`s\�O�g\�\�@\�\�\�kz\�.�~U\�R]�q\�Z�3�1\�Z�3ǿ�68�:X3t�F*tϰ\0S1�w�P�\0\�\�:��G�\09�Aǿ�LS�\��\�P�֏�4���w�9\�Zw��JQ�b�OƗ֙\"�C�Ԟ�Դ\0\�*:\�\�Q>z\�2#M8\�)\�4\�\��\�+�:w\�PK\�\�ެ\�\����\�@�N`�zU	��BkB@sU�N\rZ%�\�Q\�\r���\�M�GN\�K��\rd\�[�H�G��0�o��H\�Ã��\0�\��\�%\�\�z\�H\�\�=ns��鞠�z�\"\�$raʞ�)H�\0>��\r\�-�<q\���3a6̽GZω���\'�\�M�!Cר��!�u<A���0M\����nv;D{���O-����5-h3�\�o2�1\�\Z\�3\\���rC\����\�e�\�\\�#forl�>�iƛ\�N�M\�E\0Si\�\�LBRR\�P0���昆����ꑇ�/�\n	\�0	dFO�b\\܍\�\�U�J琠�\�\�I%\�-�ս8�fRdo \�ݹ>\�$n25X#I&{{T\�U0=5ӱ�\�{�7�c\�\��J6���=��\��\n:�5_�\0�c�T����\�F3�\0\�$���䚒YXF}[�L�}�\�\�&���FUN\�	^R� 0��\�M6L��AP�Q���z@H00{�h\�ֻ\�\'\�J\�&�M\�\�\�=��\�m\� ݂qڳ��4��卺��֏�`UXS�\\�������*ȷMX@}�(P �\�㠨�B�n�M\Z�N�G\�qR�;u�\r�O�i܊Q�x\�)\�W\">ǚ:u�\�w탭>P�3Ҕg�JP\'\�S�3M!23J)�(\�B�4\�?�\�!�\�p\�h�ȳ�\�\�\�_z�����a܌�栒<Շ\�2��\�\�Ȧ���\�\�Y֛�j��3\�4I�s �9k6T\��+vT���unA>��V�-\�\�!�\�r+\'�8=�\rt�\���ת�Xw�!ס�\�+��j̮\��\�\����\�@{㚃;�#�x\�V\�\�0�\�\�V\�\�g�CϽS$8�U4%�\�\�\�zO7\�0`0CR\�	O\�ޒD�!��\�\�6\���Ƌ\�ґ\"���\�ݬ�o \��3ǵs�t�֭��`�\�����pz�!\�0\�y�\�[92�U\�*\�q�fn�4\�N��C\nm:�@���\�b�ħ~t\�w\0�֝M\�N�1je�\�T�p\re_\�O\np��\�WvKv)\\\�dr3�U.	8�\0�\�\�2��f�F\�I\��Fk�(��kh�\�\��y�KÌ�9\�H\n�=�⠘�\�0*�P�4�<�\'��\�ul\�<\����LY\�{�\�UK\�;\�y��~�h�W.\\�{\n�n\�$\�*\�B�@:u�`\�\�c�X�\�M�Ĝ��94\�2@=\�2��#�\�\���\�H�l	`��]E�Ecڰt\�|\�xQ�\�Om���\�Q\�Dt\�VWe�\0\�V����\�\0V��\0=���,ƀR�$��s{_/���\�g��|C(����\�9��IA\�u��\�\��s\\\�\�\�}\�\0>�8��\0�\�\��\�\�Ó��j�d:�x��;W�\0	�XX\�#�*S\�\�(2\�\�?*���l�j���\"�EpT�\�\�\\t^(>ל�\��p*�:�F�L\�	<��\�)84R���\�\�\0�\�	\�U��I\0!�z\�s��Y1\�4�J�Ȝc�=\�\\(\'<�qQ\0��y\�<Qa&@S�\�փ\�jI0y3\�SI\0zRh��\��\�7���\'�A$��Y�\0�4�Gq�\�b�~�\�F�Z�\�\�\�\�=\0�k�E(�ZC\�\Z�\�u:\�#5^Lr+��\0��\\�#|\�p�g\��U17�\�W�d{Dj\�1Ue\�𨿶�.+2�\�E@uI J��t����Ԋh����\�|\�\�\�oJ苬� �ZʽM�g�Pљ\�S��\�sI�\�v���#�Uq��\�ҷ9\�(æ;\��ܧ\�Uh�ϸ5j41\��Xw�� g�~I7�構�8\�ED�d��\�I���\�U�Z9[��(A�=*\�r�n=	\�g%tR\�\�!�oI��\�8>��b��\\\���	\�c\�\\�V7�%�ӻSMdXQE4\�IJi)��������\0�S1\�:�Ȯd�\�>��X�\�I�\�q��\�\�#�k,�36>f��ַ��3�+\�H�`T�������2~�t�\"F�A��\�V�\��Q�\�M��wbK���\�>\�Vc\�S�⤖L�x\�r��	��&�\�o�S\�ʜz˗�$�O$�Ӹ��\�S\�\�A\�ʛ�?\�9\�\�[G��:\�ާ�q�F;\n�`F \�NgRA\�\�\�q@����ܟ|S�~]�h�\�֢[ͽ6<c\�\�nB\�ֳ������S�ۚ\�n\�ꎈ�\0gӓ���\�\�1A�猃�\�m��\�?�,I�\�Y�\�&�\n\�9\0�8�PKVK�z\"�{��߸*�֞t�E�erU�\�N\�m,�ʆp>�洑!La@�\�]���\�W\Zf��\0-�c�5\n[\�jC4@8\�t�W)�\�)���Zu���\�J߅R�K�y\�o��W�\�C$mބ�{Wu&�i��\��9\�T�\����\�=\���^͜�DHv�Fz0\�Wb�a�\\��\�\�?�Ʈ�\0a\���\�Q��&�\�0䁏�>t�A�_C�)21?/C�脦\'?\�\'#=�����c�ǂ+ty�N��\"�}j4���mrH\0�\�w�w\�:\�h��9#��\� �ےj�iY�H\�$z�\�<\�zb�\�\�z�4�C\�x\�Ce��\�Q\�3��\\޵�6ó\������\�\�2r8 w���{\�R�GL�5�ݙM���sx\�M�1\'9\'=*p����\'��\0\Z��\"I��\�SǢ9r\�\�NqZ�a\�\�1\�v?(S�\�jg\0�\�f�\�|<\�qZ6���@\�J=�+\�3�0\�_\00QԎi\�g����GZ�t\�m��\0�j\nI,\�#\��T�Q�y�WSÀۀ��Oz��\�\�\�\Z\�\�\�-\�B6�\�Ms��8�,��\�Z#$ɔ\\L�\�\�#\����2}*��\\���9�+Td\�C�w\�\0Y�]NEgE�\�֮��#\�p20�1\�(G\0�ޕ4�s�\���V�6�\�\�F*P\�2@\���\0{Ǆ3������G=3I���0\��G`G�x\rj\�8\�^W��n\�\�dC���n\�\�\�%I\�VŌ�)\�G�j�\�\�\�)\��\�R\�;6\nL\�\�M \nJZCL�\�K�\0?�#�ߵ3Q\�v\rǨ\�˸�����ϵf\�\'\03\�:\�\�\�]�l\�=E@�It��Y�\'޺\�a&On\Z�\�+��\0�ܒ{Џ�s�w��E#\�{v�ё�ӗ�@\�01N��\�.s\�j,g\�iҹ\'�I\\�6NA=����\�\�[��g�j\0�nv�*�� gH�\�h�z\�M\"c\�\�4\�4/<�z`��)a\'{�<���\\#c�zU�*\�{\�;��\� V΋\���TM\�\ZSWfͼx#\�T:�\�d[��\�>f�\��\Z=�l,L�\�%�\�ՂijΆ�\�����$\�=I#�t\�V$\0`b�G�\����MK�e\�	R@{�50�\�Y\�p�v��N��ڀ��ԗ���\�qJ\� \�\�\�\�b\�uq!��\�qt#\�\��U$\�\r�$��Z�\�ɬ{��G?�l�z�.\�A8u|v<f�F\�\�y)RQ�ˋQ.v�\�\���1ʯ\��t�\�\�L�\n�Eh\�H>��+$��\�!�m�����9��\�U\�\�\��\"�\�U\�\0qM2\Zd\'\0���.$\�+J�\�=+���!\�\r���ܼ\�s�MFLy\�\0U3s���ŗ�$�ZjM�i@$asV��I\�Cp��|sM�I�-B��\�q�V�\\\�\�2i\�1Y\�n\�q1�\�\\b���\�?�n\����\�%#M܌��;\�/*�y���\\\0\�p;�)WPG\��<Tٕ̺��,	#�S�\�\�f�3]\�\�)\�Bef�WS�Es�s���\�#�A\�5d&a\�\�aI��\�\�uE\�rVdq��<q��ұ>T\��n~��\� �֋�\�R�0qTJ,^B7Ƀ\�q��\�\�\�Ӄ��\�q&T�Y�j��0T\�\�\�5\�\r>\���W�N*KƧ�5,h��\��\��V̎3\�;`�� \�ӊذ�ͳT<\�\�&����E�2o�[�5f\���6\�V��r5fo�������4�\0�\�CK\�0!\�dߓU\�\��\�<����I\�\�d곔r?\Z\�\n\�M\�a\�#�\�\�K\Z�V\�҈\"\�\r\�d�\�S\�\�h\�3�]�9\��vp=NO�*�\�g�� nlqRM/��\��\'\�\0�\0��\�$BGs\� \�ӤQϵWp\�t\�1\�Ab]�S\�L��;��LcL��B	隵q��\�A#��q؇�r̴v\�0a�\�\"�gq׀I�m\�d�2d�Jl93\�Ut\'�ZS��;t\�b�^�\�Ğe\�{�]]�\�(�cWd���/E�@#ߚطE�銥g\�*䁄x�s�t��O�F�,HO�B.6d+3R��8\�\�BM�t�&�\�	gl\'e�C6��\r\���\�n59\�*�\�l\n�-\�n$eb$\��\�<���6��\�\�@�\0\�p꺾�.\��d�\�|\�\�x�t\���\�4\�2&<)n�ţ^\�dT�Ǝ�v3ϱ\�j�L[��\�\�po\�֝��\�\r<,�\�\�8�شK�F�\029��\��M�\�\�\�\�@1�ޥ�\\\\Б�W !�\�;U\�\�)9b}=+\�\�M#ۤ��r�qZ67SŴ\�\�5�VZ\��4LnpA�U�Y2�\'���$y{�V �b��N2Ed�F�sRߦ	���e۹�8���\�T!�V����J\�/\�\�\�Gt�s\\ޥ�WȖ\�`vy�\�p\�\�\0\r�n�N\��\�jj7�YA\�%�\�K�Ю�\�!\�;�\�x^\�Z�� �o�\�Us=\�K˲2pUM?V�\�Ο\�\�!�[.]q��Iu2��\�\0�E�\�\�vo���7��\�\�Hv�HS\�\�2\�b\�\�\�i\�H$*T4m�\�B*�Y\�FX�Oמ85��c\�r�kn�,��J��\�8c\��L�� ��n\�\�[�\�qX�F\�BSyA\�\"�\�\�W3GSז\0-�OF\�*\�|�Z\�a��2N=\rl\�^�`��\Z�ГQL��\�\�lr{�]\�e��ہX�\�JgҪ�5S)r*�d_=TdUǝ�|U�\�Z�X�ll#\�9�\�$�\�$\r����	\�?�x�|s/\0�\�B0\�Rd�˚�2Jj�N#9\�2@��\�a\�&4H��1\�=+GJ�\�ojʷ|����\�\�\�ό�\�g5�QgG1\\��nMj���2B����Zv��pO��rMu7�%��+\"ƚJSE0\�\�\Z^(	u�s����\0�<ֵ\��\�\��Y2\�\�ay5\�MYܙ\�GcM\��-�7�\�G95	v�M���T�����p\�g5Е�B\�O:�\�\r�\�h�}\�p8\'�S�\�d\�s��Ğ\�h�\��:~�0D7��\�W��dg\n}W�T�\�$c*{U��t`1��)=��\�2c\�j�y \�hJ�x$\�\"��\�Ǯ)\�\�\'�z\�?9\n�\��0�5%�8<t\�Pj.RQ\�\�{UԃN�\�\�Mu�\�\��\�\�\�\��u\�\�\�5�g�\�EhjZ��8�O#�\�>��p*\�\�\\�:�fKj\�<�ƩK�,��	>��A=��6\�ϵR�[	��9X��\�\�?*��\�e\�\��\�0>���{��\�o��\�F4\�yC\�(�t��\"!��\�9\0g4\�s���\�|\� )?AT�\�qEw�QF\��8\�Bm�\�\'<Ճq4�\�\�\�i�K?\�|aE\�R�H��c>���Q�UG�\�K�\'\�\\�\0�j\�X��\'5.I-\�\� �Z�؀��!��\0\�ޕ\"<T\\\�!aN\�<Հ05\0\�O\�#֐\�H�b�/\�\�\�m�&�/GSUD�\��\�LpA��^�\r2+���4}i�\� \����3K�q\�\�@���\�R�h\�U�q\�\�*\�\��jC�\�O�|�ͪlm�zcU	l��&n*\�2P�\�9�}��;r(\�b\�Fa\�W`�@ 񁊎m*2��ޕ��\0�sު��\'Y�������\�B�\�}1M�N`��\�a4�\"0�\�\�ūE��j��؏f�tb%�t,Mg\�\�F\����h��+�3\�)\�\�܉++�17\�V�G4d\\��sRzWC9ж�Fz�хǖ�z�T�\�d뛎��[�\�c�2(պ	-f�`�Z>��bo&?\�dTQ�rU8ǭc`w\�SFY$\�\���coܼ9�e\��c�~�E#��İ���г?;!��L�\�\�኿�\�\09\�0A\�\\�Z�o��\�M#�:�?\Zubh6�O�\�\r/􆖘��\�\�$|�\n��b1cӀ)F,}I^D;�\�8����e!�\�\�FFs�T�k\�,\�5��9�\�nM��\��0:V]�m,\�7;�I��s\'سh���d\���q=GJ��@\0\�U�����\�Q|\�ۊ�\�ǜ\��\� \�f\�\�p)���\��Z7@�d���\'�\�68\�F9�q\�P;\�g\��?JQch�nT �\�\�5[Rǒ1\�[�Ols1N��*��8\0�\�WԎ��3\�n�8\�\�0+�\�\�\�&��q\\՞�U��l2hF=ꅩ��\�`tƜ\n�ʢ!�qS℀����d\�\�])Q�J,{\�NIۊ�\�}�*\�0�\�\��?֪\��G\�\�\�==��\�)<��\�\�l \�v4��J�jI\0�<�Q:r3R4�\�n1\�S\0�\�	\�\�W�^�R�\rs�R $T	\�*\�\'\0恡$ֳo�5�zd\�;�\'4К0\�pF)�e�z�qFs��Ͻk�2\�h۠��S�����<c�iF2E\�Zԧ\��\'���z֗�ҏ(zb�3���e=T~T�n�8A�b���\�`�\�,�;pP�\0�A,`\�zt��\��^D\'�\�-u�MF.=y��a�\�M\�9��\�¢\�\�ob\"e\'���CR�(XuS\�T]	���\�F�ȆD��Ѹ�Q\�9\0�pj-��S�TոcIa-�s�LC�p��1P\�Z9�t=\�rIVGZm�\�G\�zr~l�G5+�����;\�xd(�\0u�3\�S$j\\\�\�b�h\�\�	p\���K�\�<2����k	6H�<\�\�\�&\�w\nwj樬ͣ���>w�\rAo\�*\��\�L}+�KST�M\�Ji�����B9���S�c*�ɐ�ڽ�fO.\�e\��*��Ƅ�\�zWdWS)>�m��[�2H^�\�\�$\'\0\�<�)����\'\'�8\�Z%P�y\�-\����X\�c\�sRH\�9츪\�n&D\�\�\��\�N\�\�68 ��E�\�+�\�i=�&�|\�c�EM2|��R[��\�1������\�p2*����GҴ�x�xێ*�\�K~�\��%�\�\�#}�+g���8\�f�߀��՛\�d�v3��\�Z�Ή�\��5\�\�W\'��f?Z\��\"��nu\�\�҄\0�_��T-�\�h\�+r\�G�C�j�Ѐ;\�@<�\0�\�\�5 \\�\�֤��*�+؇\�`T\�<\�^-�SN��+�)y=\�b�·�\"���W\�0[3�\�9<��\�FG5Ƣ@�ON�����.$\0�\�\�`W\�Y��W8Z�$�\��\�[�d9\�MN�e�ӀjtJ\0j�#\'�FGVD\�Z3��ZHȦ��d]D5���c�\�.�\�z�X�D<\�֑2���H��\Z׉�^\Z\�`y\�Mt�r�A�t�k�Qe���\��\�\�\�zV*\�lRS뎕)X.G\"\�<UI�\0�W$�Ҏ	�BfT��Q�B;֤\�\�?\n̸\�֑3�\�\�1�\�Ȭl\�Q�\�u 0x�\�sR=\�;SVd�FS=�5f\��#\�$Vy�O��\�H�9�d9Ąs����1\��p��\�i��Kc�\��\�|��f\"\�Fp9^j��of\�\�V���\�\�\�2ݻ\�BA\�2+��\�kb?\�\�sXhg\�\rl\�J\r��\�1XT]M ͛,�T\�51\�TV�Az\�Er=\�\�\�s\�=E \�N#\�v#�L��1���\�Z�u\�#<\�j\�ˀ\n3�k:\�\�\���^~�\�%ds7vE�B���Kv\�1M��\�d��\\d\�f�\"[%G/0~���h&\�$|�k4���<⭣�\09\�3�{Q\�H�\�i�A�s\�)�\�\��\�Q\�|\�\�>�&�C��\�*Y�/�^ZE&\��^��21\�j&\�-cN~P0*���\�@\'֥nSz�\'\0\�sSF�e��\�#\�⡷;\��Z�ho����Wgo��\\5�\�ж+��? ��+-N�CR#�<Yq�_���+���\ZF\�z`T��@5AR\��Mm;*��B�F\�j����\�ZE�9\'и�\0�AU&�\0��\�M�\�v\0q\�֨\�LO~j�]������sLH<\�3\\��Fj(�1\�\�\�k�\��jq�bǱ\�hT�\��O٧ �<\�m4��4�6Up0j#�E�\�\�P�j͟h�3\�pi(�\�\�FS�zV���2��\��Բ}\�\��U�{�К��!\�o_}�g\�q�V4ϳ�\�\�6{�T�.\0CT\�\�ZhU��c�Yφ5\�\�\\\��P�\���\\�f�-\�i\�9�v$ \�8�hWL犓Ns!vw8�\�i\�t��#�[�\�b=+\r$1�\�Zж�8\�R�-�?�C&r*Bx\�L$R`�ߡ�UY3�Vda\�z���BR�b�\�jL*μ\��L\�`\�\\!>\�˹S�S]6�p�\�\�\�\����lqT\�B>@}*\�cC��\0�\�\�S\�y)\��Q\�1���x�,9p\�9\�1O@\�2�r\�8�C�\�\�;w�d�\�\�=\�X�ą}A\���90-�Xc�J#\0;��C\'�|\�3銿�ɒT�cT.c;	�?�M�>\��\�Y\�WEGFu\�\�ǥ<qP\�?v�I\�R#�=�\�:S�i3��\�A\�R1Դ\�Z\0\�%+�*���t\�sV.d+�BiG g`f�r��\�\'\'\�\�j\�z�=�.\\�\�;��\n�V���9\n8�\0�aT�\0�}*+x\�\�8\\d�\�]\�$�\�RcD\�\�c�va\�\�W�\��8\�<V}�\���L`\�\�\�cG ���)3�Ҋ\�e&~���uO��8\�A\�ho���F\�Ջ�>K!*sInSw0f�OB95Pu#�9�4a\�/�\�g\�Hl\�\�\��/c~��\�v��\�\\w�&A�\�s]��\�\�#\�5�]R5��f�d\�c�jˈ\�\�&^+���3MF*@zU8䩄���\�H��@3U��Myj��,��\�\�\\c��\�\\�\�*�(\�O��<�Z�m\�k�\�\�pδ�� �\n\"�c@\0\�*_�&\�q��#�\�ڋ�\����\��z�:,�9�0qҒm\��%�\nޠt��E�E\�\�3+ز[Z\�\�9%�\��I\�\\�ta\�\���g\�Tnm\�L���*Ӿ\�o\�y��\�d\�گ�02\�x\n;\�3\�\�\"l�)�X���\"�\�׵=�2>\�uzwL\�T�Q\�*\�61B��?��\�1�~yc<\nm��F;7�\0N\��\��^\0\�NA�)\�\�7r�%}>9LDr@4\��E)��F�3dӋ\�\�\�ps�\�ա.q@\"Þ:�u^C\���8�`d��t{V�ϊ˺|�W9Z�\"6\'ҹ�n\\�ٮ�X B\�=kϗ9=�+�;U>\"t��Î3�u�	!oS��I\Z\�\�\"�\�\�zn\�TAa\�\�N\�\�uZ7\�8 �\�Iq �Bà\�TnA�\�CI���a\�Ȩ�>paߚ�ϙ=�qU\�\�s\�Ҁ/\�(0�\�\0*Kd\�t\�U�o�ڮ\�\r�\\dqQ-�GKd��j�PpG�i��O�_�hΈ\�E \�\�Sr���N�#���\�q\�AT�@\�V\�\0H��\�\�\�W��fU$g���Iԉ\�\Zrg9�� �m�~Q��BH9ϯ4�\�d\'��\�C/\�z�E\0X�c�z@I�?!�#��\�4H1��T�\�\�\�\�i��\� 8�R�y�6�\���m6bU\��E]�@��c\�R+��}�a\�AT�\��S�ddU�P0��9�\�}�>>d�h\���pPd`���H|\�Fx�jh�3�r	\�#�tz!�\0E\�\�u65�����\�SE\'5c#�\�\rs��\�<f�f��\�\�S\��L�\�y�&�4\�㚮������z�\�C�\�>y\�\�Z�F�\0�pE\Z,@(���\�C\�\��T��T\0җ��Ա�Oz8\�M\�\�\�q\�\�\Z�\0�0{�\�,}7\nnc?\�?:,\�ı�WM��\"09��Ll�����&��+<#�qU\�ߥ_\�<\�A\�j�T���BGqڬ\����zT;\�\\Ph`9�\�\�\�\'\�~\�\ni�1�v\'T:9y����G��\"\�\�\�hi�4\�!��\'�ƣ�}�?��i5�ɦ�\��J\��@\�A+\�k2\���x\�f\�\��UD\�L\����-�V-�E\��Enk�\�\�?�z��\'\�Q�М\�T68��\�#��\�S�A\�O9\�\�\�\�ysM�\�\'n\�\�,͹q\�\�\�b#OLp})��y\��Fj1 \��J`��c(\�\�M�;�����\�;~x\�%F~\�	\�x5n\�\�*3�Z�Ԏ{構��\�T\�h\�����\�+AjͰ?tz�i\�*\�\��\�SM��\�EfX�\�CK\�14�O\\qYw��Zѐ3�=�>^d8�k\�G,�\��\�ҤD\��(�9��F1噰Q\�\�5d�d;2?�p(���\�}1\�{\�\�~v!sנ���\0xTt\�}\�\�3�{����\�\�\�&�C�A\����ԋD�I�,N\Z�\�rOp\�5ˁv��\�\�Q\�&	=\�BY1\�\�PEtБ��jf\�_J�q!��9��69$o��\�y\�uZ+\�\�k�\�R;�\n\��	��\�\�TZ\ZRz�4C\�\�x�\\\�v�*\�N1\\�N��h�e5\\��ƮD42�/\�ă\�M�@��j\�j8�\�\'`~�\\c%>X4Đ�\�\�N�\�A=`^\��[�Q\�\�*��\�n\�G���|\�?:�6�dH5\�Ks{p	P�4[\�\�Lx\�	\�kU�\�\�ՙ��}���>�^\"S�%9=��H�9(���<zb��U\�*�\�>�*N\���\0�T�h��0\�0z�Vf���²�]�x4iЭ{�\�V<n#��mz����Qҳ�G�=[ۥG-�\�O�8\�9��%��.\�ܘ����8\�幐�KV\�\�󘘜\�67\\�(��Kh���+��\�\�i%���/cy���ɨƛ<�\�\�(\�N\�^iS�\�R�T�\'?Z�s�\�#\�ҟjʸ����\�V-\�ښ�3wf�_o\�<��.w��~t]�N\�#�J�\\D��p\�C�b.\�\��rkF\��p$`�ڳlA�կ[!\'�Y=\n�����\�\��tǏ\0֕�;-���U&�Lѣ*\�Mf����xx#֩���\�ZD\�G7��=\�\�\�I\�5�\�		\'>��n�	a\�WZ�N)=Mw�`���>�\�<�\�wUieá\�\�8���\�2\�\�\n}�U\� ��M\�9\�O\Z!\'�\0�\� �\0	ȩ#rG=)��\�Gl�H:�Τe\�\�\��\n��>�R،��\"�D3j\�A��H\�\�9\n}jS�m!�Ҷ#\�A\�\\sћ\�`4vP:Ve;�N\�,�J��^��/`�\"�����\003Y\��S\�\Z�Q\�ɑ0T	\�Vn�c�@26~��c �L�K,�C\Z�����\�O~\��\�?���\0|�s���y9\�LC\�#a�50�#��\ns�\�֤\�\�\�J���\r�#<�j�\�z\�\�?c$t\0z\�w6�\���]�A\�\�\�\�B[��\Z�Lo��H����	\�\n\�	`N\�9��LrG�=k^���h�M\�R~V�J\�qvg�Y\�\n�\�N�Ұ�d\�sֶ\"z\�\��!\�}\r>\��\n�\����B*JLԈ��\�68q�4\�g\�yG��\�I��*L�\\\�\�\�\�\�\��GZ\�y_J�4WXpzU�ْсe\n\�ON0\�_u�\��j`�)Q�����kk�$}\�\�Z\��o�guQ\Z\�b�t�9\�sE��2n4\�m�9�\�\�;V�I\r�eQ�\��\�RG\"\\[S�7\\�\�Va F\�b���^ٻ7\�˲�7NH\��\�\�im�\�\�Z6Acy\0\0d\�^$of\�\�SW\�n��\�SӴ�x�	\�\�)���!����kb\�j�;b��{b�\�2u�\�s�U�_Hd\�\�T��P�O�~��`�kj�F�\rm�ӑG\"����nW\�qv�M{#*��3\Z�}b\�\�ƨ2�q���\�Hfq��\�>\�\�9�ou2�\n\���\�\�=���\Z��C��\�_���<�A�lJX\�+�\�\�Yk��r@�-n�X\�\�8PHQ�f��\��gk#2�\�l�a!�\rS1+�\�:b�\�\��į\�\��$E��\������6�Z�\�R兾\�\0t\'�mE�D#���؎�f�\��ՋՍh:Lǥc\�?ZԺ}�\�?s).Ni$6\�7�j�ϲڭ�\��5�&�{\�\�]d\�KZ��\�{\�rp�Z�P�̺lt\\������8��&\�\�\�\�$�_��z`8�\�L\��&�\�z�GQڑ	\���=}zS\���\�v�(>C\�8\�$C;�J;�S\��\0\�Ԍ�\��r)\�\�9�H���B=I�V[�\�\Z҅�\����qQ-�������\�\�NA\�eidc\�f�#��\�=[7��^Ԃ�\�\Z���\�34��\�\��j��\�\�*\�\�J\��\�B~�z(\�d\�IȤw\�\�\�q���T�\�\�\�3L��#�4s�T\� }j2\0\��P���?��w\�)\�\�wTI�\�bpi�\�*CM��d�j7r����}hx\�@\��\0��|�SQ�9\�8��>�\�H\�9�Dd����\� a\�jBH88�_��0�\�i7^d1�<]��\�p>���\�Ȯ\�\�`@�Z��;iJ\�\�C�)v�U\��VC\�5z<Tjչ�R �\�2:�!Nr:i\�	\�}(C�\�hA\"����Ǽ�I�h\�%�q[�\�\�;�Z\�,I\�c�\�n5{d%ԿeU�\�\�ַ��\Z���7�\�*���\0\��\�2\"��j7�RW��r]����\�\�<P��\�&�����]�\�{}*\�\�\�͡���\�\�TUF�q�t�OBs��\�\��\�BTHJB�=hI�8\�?yX߳�f�4)0#��5l떄�m$��\�*^m�\�WԌT^��Z&\�`qT/g\�\�u�;�X�	\�m�\�8���0���\�N+ϓ\�WDB��3Q\\�b�\'2�\�\�W%Ӈs�>0\�#3BnV2�\�7F���x\�\�\�o�w�L�䞊+9�-+Ǿi\�<\�G��d��\\��5m\�T\��u,\�\�����X���\��O6�:\�rt��U�\�8\\���$�\0j��#XRKY@B8�b\�\�\0\�:\�@\�\�\�-�`\�49\�\�\�̀\��|yc�\�\�F��\�֤�\�PI��\\`y\�+ܹ�Z�\��\n�\�1\�ե�-\�d��k�\�.Dp9\�jغ�\0�J\�5ۿ1\�@�ɭ�������Iw$�9�z�:\ZU \�\�9!\�G^(\�\�?��T\�G�X�a�\n�>��qV�\�r{T��	==���m���\ne\�\'֬B	��ZCC�NH>��`<\�\�z`\�^ ��\�\�0\��zQ=��\�ݘ1\�\�v&�!��##�;\�8N\�_v\��5u?Ձ\�\\�f� �\r�Q���\�\�I�\�\0pn#,�0�\�TI\�:\�ɓ�Ǌ�\'<v\�z\'!r�SV\��\��5Q\�#\�5\�\�?/q�C\�pON2*R{V���\�Ѳ哟��\0\�U�G�c\�ΐ\�F{~\"���>���8#8?�6NGxS!r@\�\0�N�rq�>�IL�ӣ\��ځ\\k��H�P9\�\��&��	9\��S \�ppi�j\�\�ʜ�q\�*�<�\�R\�\�9\�5�A\'\�\�D��ӵ�\�E\�k�\��\�\n\�\0\�jh�\�o0��\�O\�#tkNvv=\�|⯤�\�\�\�n�!� �\�\\�X싹~9�\��SE!9\�C-3Q��?�W�)�L�S\�AQ4c��\�\�D%Ni��\�S���ؓ\��\��XN��,+ >��5�\��;\�kc\"N1W!�!�vB}8\�UD18���9 x�p>��V\�Si�U\�o{z�\�\�v#9���$xȒߜu�=��H9\�j���\�\��\�\��S�B�j�#�Y�L�I5+��W<p*Cn�ݞ3A�@K\��9�\�\�4��{\�\�,Ğ�5��:թ%L���\�.@R-^\�\�\�Y\�|g\�U�d|��N!�?�=#\��\�\�RV&��dq��`㊊$\�I�����}M�(m�Z[남y\�IlDV\�=�+U�\��k;]�{#>iZY\��)!\�Qd�5\�\�D<��b�7ԡ�ެQ6Oj\�&�\�3;w5X�7m\��]VG,\�v->:g�H�4\�z��\�:�}8��������@\�֑Dְ�#�zu��ߥ\\��R\�r\�\�\�\�O�&cr��`#����~�lթ2^��d�!�(=��\�w\�\�\�%	��Hb1Z�:�k)����*����\���(	\�s�p$q\\\�Sd]�E7\�L\�i�SI �{\�\�0z\�y�\�\�\Zv�����\�֌��{*�U�\�\��NfU~@\��V��e�\��\�TD�z��cxT9\�i�	!h���\�\�L�4d��/zS\�A�Pr��җ�\��\0�2G�!��$f6�!\�\�U٣[��\�^x\�*��\�`�i�X\�ʾA\��ړ\r\�ԟrS�����#�Z`O�\�=~t\\[`9S׎�D8)�r�ҭ\�.��u\0�Խ�\�\�\�\�q\�*}i�g`<{�ZD+�)<q�TO\0w/A�M14f�v\�\�\�\��y��눌x8\�	\� =�U\�Ks�\�o\Z\"��\0:\�\�\�\�b��_��8��]:�\�B\rsM_TuA\�Fu�I�\��\�\\	�5;�\�Ұh\�3V\�L�g���\�X�R\�\�lF��+r��\�\�SG\�Ve\�_fh��8\�\r#�z\�\�H��T��,!��UѢ&��;\�O=\rZe)�V7��u\�w\�{\���\�\�9\�TbocUq�\�oz\�<�z\��=3S���\\~t\�\�\�u�Ҹ{E\�\���g4�g.~lַ\�\��)� u\�\�1�\�\0��>sޭ<t�;\�\�ݽD�t)�q\�J\�Ko�,jn;\�$`°/&2I���w�8�|̹bi\�&M$��szƥ�S�<U\�J�E$�\�\�&i\�.}x�\��\�.���I\'���+C!у��@\0QI\n3���\�RcB\�\0\�%�	�qڤ�1�=B\�SE\'4\�R؏\�<\n͐�O\�V�sў���\�\�-�I��H�\�~�3�A\�P/\���\���d�R�؞Mm��ƽ�e\�(H\�\�\�j\�\�V8��5���g֔\�(C�J\�>�6!x\�]JM0�T�\��7o֞\�)��;1]����z\�m\�C���\�ya�9+�=\�-6\�\�\�p6(\�I���X�-\�`�\�==+@��T\\��E\\�\�C��I\���SH\�\�c�\�Jg]\�Gv1\�P9�\\�\"�\�T�y w5I$#{t$\�b\�VG\�\�Z[蕈tlg\�L�\0�;�N�õ�y\��ST��}84�=\���J�^Ɵ\0)\��\0�\�Gאj\�2\�\�p�ǭFb\�~��\�=;\�\�65RE�r3���O0\�J��O=\�w\�y��YyI@q�x=h��{��\�d��\�\�{VQ��$\� �ּ3��t=\�\��\��zRN\�0��E��#����H�t����`h���ȭ��<�Ec\'fotKazx\�\�H�\�\\�\Z\�m����kf\����j��D\�5b�˔\n۷�zk�,nE^��\�Mf\�i��;x��\�Q��\�O�s�t�,��JiN8>3�hhLv+�g�)6�뚷�zQ\�g��14g�g<sM\�\��o\�ޘm�\�]�\�2\Z�F}jي��\�+�\�GC��\�n1Q�9�qr��:M�\0\'�M&\r2b\0\�S�X�)\�q\Zg�)\�To\�&\�\���QW3n\�k��\�Fj�\�\"4<㊎i�bsXڕ\���OZ\�19\�\"��Ѹ�����QEk��w\nt`�\�&�\�F�\�CI�!\��\��ˮz�C�\0d\�\�`{\nE�tW<2��	w\�\�d\�?�:c�l\�\�\�\0X�s�\�\\�\�\�qK+�@OZ��Ҁ��\��jq\�\��\0*|C|�\�\�N��\�9�\0b�\����O\�\�T\\�`\�%�t?\�&*��i�3\Z�A\"]f\�2��\�\n�I4�����\'3f�ͨipi�4/h\�݌~g\��li�N\�G\'k\�28\�ڮ}��q���c���Ey\�;\�m\�gh�[\��\'�(=\�\�q�{v\\�\���\��zɚ\�\\H�\���R%�J\��I\�$ \�ǧ5�.}:\nPr�z�b,�I\�#�\�>���P�W�Q�~�H\�\����\�f�\�\�܏j��z�?Z�|㎴i��=\�q\�T\�#h� �x#��.\��\�\�T��:\�ql%\�!�/�\�Ztr\��Npi	�#�\�Q\��S;�\'\�?NإK��9\�B~\��\�I#=\�X.nXL$u���f�G\���?N��\�A\�<\�af\�@\��\�5��\'tI-�\�VC\�Y\�\�k&\�\�\�\��ˋU�M�t\�}+4\�j\�Ķ�\��jh\�1K�x5�C\�ɲA�\�}j�R+�3O@W:k+�\�9\�ZH\�ӭr�M�zz\���\�|sY�cD\�i�O\0Ul�5b\'�����H����9\�H\�<\�Z@\����<m��%1�z\���ή\�ܬ\��Z��x�A�rjZ-2���T2\n�\�MT�g>\�ey;b�\�&O\�V�\�g\� j\�3��\�$}9�z�\�̐��\�U\�J�\"�X2͜\��V\�圯��LNqXs1i��֣�\�\\\�\�\�[#��ri�>4$U\�S�\�N*\�*t}�y\�RcB\�Ap��}j,\�B\�\���\'�!;�^	\�$@D1�\�ȨH �\�S\��\0FE=T�M>��\0\��\�=�<�R�	�g�\0rT֣}ʌ\�&���E�;�`��#�� Prs������Xui�\�dzֵ��� \Z\�-���9t��.�㷶*B��j̖��\\P0j@&\�x�\�ӶS�=i\�.`��iP�Kɜ��!c�\�c�\�R̩\�ztù\�2\�V|�\��8\�TI\�x\�\�Ԯ\�L�QT�\�\�H\�C��4�X\�\�Ҩ� �\������=E9\�\�?yG\�M��|qH�\��E<e:to\�=9��\\��\�#�`�\r\0k\� {)bo\�`\�S\�l{i#n2x5J\��|\�4\�ipQs�m�ڐ\�wV�L�f��2I\�Mk\�HO͎A\�}\�!��!��ʘ9\�=\�HP�?\Zo\�\�lS���A���\�C��\�%�\����N�\�u�k*�֛��C8\�~\�c`\��\�[b�\ZЏ`�\�gR*Mj�!��\��V<�Ka&Lg���\�\��5���U� �Н��*)�T\0�\�U�[Ʒ�+;\ZϹӥ�r�e�9ǥ\\,\�k��\�\�z2v;[Օ0H�i.\�s\\u�\�ڿ\'r��շm~��!�\�֥�ŧ\�衸WjW�Ea\�r�\�<\Z�\�*z6i&\�N\�\�{�q\�����玔�\�3�\�]�Ⱥf\'���W�z�U\�FNi�OʫHT\�5\�\�j�\�\����+�c.��q�ƽ�X�$\�ҋ�ESw#=�s���p��bs\�}ۛ��BĞMW\�<\�5 CZ\\\�\�X\�k*S�\�5�(\�aX��\�����\�J�1\�GR!�\�Q\�\��s\�y\�j s�N$�[�1�\�\�:�\n���!4\�r\�?���1��\�` ԙ\� wiGL\��0Fi�\�@\r#��=1L�OҘ�\�϶bFz\Z{\�$~| \�\�\�U@#�i\�kgC˹ک2Z �\�d�\�z�ю\�e���0\�zw[\�\�*��[g\�1\�MI�5sc>��k>\��>\�\�V�G5�e}̜{A�T��rj\�1&v\���ک�Ԟ���\�q�G�B\�\\)���\�\��сVI?\Z�p)@\��R8\�\0�M\0\0�A\�|��f�}Μ���8 \�\��\�j\'\'�;c#�G�}i�0\�uȠ	�\�B�*sL/�:7\"���ýB\\\�zP��&�\�9\�MgN�~jX��+��Ȣ@9\�;�\�\�{�k�\�=1QH73:S\����$\��0�|��4\�HL�u�>�8�m5�J��D\�\�T�gSjxt5�=kN����O�lEڹ%�\�\\\0\�\�*\'�a\�M?�<����\�e\�*�攓|Ʌ~��,l�\���⋊\�9��\�ؕuܾ�i\"��-{���H\�\��\\鑾J\r�\�V�-ũ�\����\�*@\���y-g�#n\��<\�rve>\�Z1]��\�\�(���s&\�\�p\��\�쾴\�fuB�z���~;�\�rF�oZc\�M\'W4�P�Ύ\�V�8\�?X���>B=k9��}MFERI\�bK+JI&�\�;\��ۓ�i܋\�5)\0U��\nd����n�!o�a\�\�\�\�.=�\Z��\�S\�^��\�?*eY�����\�g\��\�Q\��\�:B_���r(H\�f�1�K\'AB��$m�\�rq��3�b�\��8�1NFy��A\'�=�\�;S{\�#8\�_$���t�\��I\�Jd��9\�(;��	\�\'~;�3��\�!3�\�\�V\�9\�]�Ӣ���&�\0#c\�j\�\�ӓ�\�^Z��Č\�\rOgy�	\'^��{gё�=똺�kyQ�A��k\�+K��U;\�߻�5��U�\�r�B\�̪0J��\0xQEs��~ԉ�h�������(Q��\���}(���\0|ҏ��\�E\r\'�\�U�j(�Lzw�S�U�\�E&4Mm���Q\�����QH�\��V����}(���*�%�S���~\�W,�;#�z/�R\�\�E���A�]@q�E���i�J(�\"u\�*�®>\�����̫�\�:\�W�(��\�\�=)�\�*�,GT/ED�b?\�W#Q@�@�V\�EDL\�\�?՚ɢ�\�;�\�Y�;b�)��[�\�H:\Z(�?D�P;QE!�z\�\���\Z(�d\����)v���(�B?\����hL�z�ҟ/z(�BC�{\�]�|Ц\�x��b-��t\�X\Z���(��p�7�\�Ǐ-xj(�@�\�','2025-02-27 04:34:21','Female'),('4de3277f-e028-11ef-a1d1-005056c00001','4de0b2e1-e028-11ef-a1d1-005056c00001','Gebremeskel','Haile','doctor','medical','jelo@gmail.com','0902366969','Full-time','2006-11-11',0,6000.00,'Day','650e8400-e29b-41d4-a716-446655440002','Addis Ababa','0900130085',NULL,'2025-03-02 21:29:38','male'),('650e8400-e29b-41d4-a716-446655440000','550e8400-e29b-41d4-a716-446655440002','Semeriya','Legesse','Nurse','Emergency','john.doe@example.com','555-1234','Full-time','2020-03-15',1,55000.00,'Day',NULL,'123 Main St, Springfield, USA','{\"name\": \"Jane Doe\", \"relation\": \"Spouse\", \"phone\": \"555-5678\"}',_binary '�\��\�\0JFIF\0\0\0\0\0\0�\�\0C\0		\n\n	\r\r\r \"\" $(4,$&1\'-=-157:::#+?D?8C49:7�\�\0C\n\n\n\r\r\Z\Z7%%77777777777777777777777777777777777777777777777777�\�\0�\"\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0iױ4\"�r��r԰\�v�\0V78L\�\�\�\��\n�m�\�H��]�0\�\�k��V�:YQI��\�n�f���\���~{==]+U�\�@\�֏;K76=341\"!%9\�\�ǢD�Tq1Q\�}�cv{.\�Ta\"7Bc9A\�k%��Ύ�0\Z(�[�a\�����\0�@-յs\�S�5N�\�l�ԭ\��\�\�y\�I\�2\�Ҩ\�\\쾵�����8JD��h\�\�à�D�����\�\�\�\�\����Ųj�hHfĵ��\�&�-R(�!3e~i\�:�\�]Ӕ\�0\�\�KT��ڔ�\�Z�\�\�\��i��`y�\0C\��\�x\�cL\�\�ԏ7J�4�tT��J�\�=�j Hv��\Z�_H\�ˌ:5{+`A@=���\�7�eHh\r95����AV-\�S��*l�h�\�\�GG	���K��d\�Р\ZKjCB	zEs��-5\�ѿy�G/R�)]������!d)\�6\�;\�:\�AEM��O(\�k\r\��@%�A�o�_�<������\��.\��9k�1�${s񼗴?L�!\��\�г��h\��G;K4z�\�\�\r5\Zf�-ԕ������2vn3���\�[N\�8�����F�3`����}\�//\�y\�A\�\�sf�O�\�*�(@�D!��Y	\�&X�J\�\�X��C,ZN��\�(�\�5\�T�\�nZ�ml&�\��+ثR��\�B\�W�S_w-_�\��\r\�>\�&\�K+\�TU>\�:E��c���\�\�N�0Qsc���S\�G\'W�\�򤞥EF�ي\��BY�����a���>�Z\"���\�7g�L�z����j�M�iq�9:c~+Z�\�CM�\Zr�*ګR6kةF.\�6Z��~�\�wz��z!\�\�\��1����^x�S\�\�\��\�3�ڸ��\�e���*�P3�T\�\�A����)oR�4\�%���g53\�9h�\�0٤Q\�ܬ�\"z�\Z\�pTUu3g�mq1\�m@\�\�e\�t�?��T`�?\�jMOL�\�=5\�!\�NF�[\�:\�D�&pr2@�\rж֥�yZ\�\\x�x�JQ\�,��r��(<�cE�\�%q�.S\Zy�Z���6�y>z\�iߚ,(i[\�Ĳ/P\�����G*\��~K\�Q�\�|���b\���z*;��\�^�[)L�;�\�t�\�à\�[�R\r�e�S���O��$D�1\�\�Kf�\n\��{f����n(%D`\���B\'�8J\0*\�B<�-<���E\�	֗��\�\�-U��~{\��\\\�_C��PB]/&{��bBc�����\'U&�T�#\�q�[�/K�\�Bs\�ͣ\�9@HWp_�nմ�4�V�M[!1��)\�\�fi�\�Mba4�:�2���w\�3[�#½v�3Ԃl)��\�z\�\�\�\�ݸ\���Q\��2<�οD3�TM����0\'U8\�ANU+\rN�m=r���$�\�7٫�7R\�15�ame�,�����S-s\�B�n\�Y	�]KtE��q�mU�R�%��	���\�w�\��\�#\�\\\�\�\�n\\s\�ya\�\�\Zw)�i\�\�\���\0y��V\�}Q:��f\"�t\"]\0�sLoeѝ\�C5F-5�m&\�u�s���y����\�~\�\�x\�ZihV<���9k�WR\�\�\�#S�)�\�}g��N3�0�\�%�j2D�;\���\r;�,�tK��\�_/�ċ�ə\�wu��\�$|	���֑�7�j��\�jʨ�k�t]\\cSEn|�i\�z\�6��M���\�*�>\�oO\',�%Vr\�K�0NǨ��\�M�m�\�^\�1�\�;\�AD@uK�$�tKbΐtsY\�c\�T.\�hmVx�f�n�\�ݩ\n{y\�z\�;�>�\�����Tgj)6�W5��KL�K]\'\�\'��\���\�?K�浺�*\"����\�p7\\�cb�\�U-#/�\�wDL\�VAt}k~[�m$\�u*\�\�ؾǠ�R\�]�\"�\\ \"\��֙\�\�\�%��:�\�V5xÇ\Zu\�[��\�,Н\�,®t2d\Zͩ$P���gN\�N^~�\r2�\�p\�:D\�f\�6��k\�jir�\�gޣk:�\Z\�\�^{\nA��\��\�В��_G5��7-[V\�@SU`;�#+\�n\�\�yZ\�\�\"�M�\Z���kA�\�v\�\�i\�\�\�\�44(Ai�l��\� \0^@�1mNb�\�T�\�ݹ\�\�Nd\0�si6j\�\�ZY\�\ZA]�m\�z�-e-�\�ɐ\�^}4P��*U\�\�bF\�\�x\�=<��\�\�\�^P�T���\��z�3I\0]/@H��\�l�wm\�[z\�Y<�\��\0CEE[u\�\�XbN[W(T\�^{\�\n��fp�\\���N���,�f\�v�:�\Zbn���`\�+\�fJ��U�\�\�\�780\�lE�\�{���\�ػ�&FBc�;��)\��Q\�.tv<��\�u\�\�=B\�Y�M	U��B(\Zy3@��>j\�9�]Q\�1$ؖ�%�\�Z�%9 �y��\�\�\�2o7>�M���\�܎òȲ\�G�JY\�^\�	t\�0\��\�J�z��˹H\�&`����������eȲxq\�|֌\�\�Me�\�\�����)�eTLRSI\�Bܶ�U\�.�\\Tm׳^\��pJ[�Dʷi\�ٮ\�kX\�\���)!LYKm9�6)�i�^]w&\�sy�GT\� �>�pJC��a�t/\�\�\�]\"�\0�f���\�\�_As\��z�*؄PS\�k_ϥ^��鍇4�UQ�N�\��\\�\�Y#��b,\�f��\�\�˴\"C\�˲(�t:��6��_��\�z\"�\\=sjFx�\nF@�%1]�sthj����0(�\�g]��\�\��\�-陉��\0E+U.3\�\�\�\�:�jQXN\Z�P\�\�\�؇ D\�nSC���\�.��\�ъ�	�< \�CE���R-W\�\�3�B\\]3\��%\�מ�z͠ClZ\�\"\�8\�w\�hX�g-Z՚��\�UB�\�\�\�	E�q̬\�hT���X����\�I\0%\�z,�!�s:�\�7>���A�\�9kN��r��b�%�ѵ\�ӣI\�[\�\�i���o���pڱ�1�DL��el�˰\�|h�H8�d�T9zTo6>��f�ר)h *4��b��[DʫQ\�R\�V�=MꉳY��\�׳)�q}\�nf\n\n1�h\�\"j�k�[_;��j\�m1-0B#�1r�8S�z\\lR\�\�U׼��Ө�XL\�P�]�\�\�G5�Yv�vbE4حu !��`�5�`(�����3\�\�\�o\�*�*K.�cI��\�\�\�\�W&�\�:չ9\�%1hA��@.g�\\��i��Jp�Ҧ��2\�-E��Jܴ\��jk#\�8�)`V@\� ci�T�) 6jz�\��\Z!�\�iWz�C/\�y\�@\�y�ݦy�ej�Y`����bjD��v�\�\�ɋ&NV,\�,��\�$3b-M�J �\�8a++&!����0!D���\�|O�J�~�~t1\"\�\�)ܮ54M<�\�\�\Z\�*\�S	�&\"S�\�\Z\�\�\�rl�F\�uFxK\�]\00P��Zmz\�*Yu�V_Vh��MJ��Z\�\\O5YN\�t�\r$BLg��[�z�L\�\�c���\�4\�\"Z�\�\�TyHfs�L�k\�r�+�r*�+Z\Z\�a\0nS�U��Mr`Һy�����\\��}Q�TXR\�%&6i\�E�\�^�6\�V�z�Rk6��@�$E0L=L��\��v�1�B\�E�\�b(\�@+M`\�.\�\�1�I��\03ϫh:��J\rU�O���\�Uhza�!�0A���\�\�UP��%\�*a�\�й-�z�F\��+\�&H\�$�\�S�}*��\�T%���Sh-M[)׽�\�K\�>���OqA�U�F�\�\�9lNTŢ�G%�$\"\�\�\Z\��!��,󞑼�i\�g�\�X�5Z\�kiدi	\�\�q:�]�ILR2�\�bDLY�\���U[. ��F\�d\�T��L\�f\�\�\�q�rL�\�[@*]�u6�ɤe�\�\�d7\�B��@�B��$\n+�>\0b\�{U�\"\�\�\n���\�ͼ5u)1 9����\�\�S�����c�\"\�\�\���\�F�\�\�OsR}�e]�J\�rnOu#.\�Gw��R\�\�\�;�Yw\r�܅\�s\"{�\�w\'\�i6��h;�b\�q\'g��\�\�\"\�Gpw\nO���C�Y]\�㻘\�}\�4�\�sp\�\�U����\�\0,\0\0\0\0\0!123 \"A40B#C$D�\�\0\0�g�˗\�\�\�u5�I8\�\�\�r⛉\�\�s�|�z\�D\��0}j�0�\\��z�7\���)\�.�\��\�\�˟R\�/�~/\�\�\�\�\�\��ܸ\�\\�\�%r�\�\\�w.\\��\�a�\0G�<H�Y|0eS\�\�u�\�W\�W\�?>\��?�\���N�\�/�c�w��/��;>՝�r\���_\��ǉ*u\�sT\���~:]0��\��\��\�|_��P\�.Wϵ��.\�\��0#�ѩ\Z\�\�#\�G�z��[\�J����6\\���\0\�\�Y*u���a�x��1�5|\�\��\0[\r\��\�;�\�9*��\\m\�?���\�Dr�|�\\�|\�-\�T�\\�K�\�\�E�\0\�\�O���\�\�a�W�\��T�oO\�[\������\\/�\\G��>\�!\�©�\�D��\��\�G�3Ѩg��\�?�Ё\�\�=*f��Cعu/\"\�\�K�&L\�y��n��8_?{ļU���\���?\�gͳ�\\eS�K*m�\�\�\�-H\�L�i�#�ǈ�����M~׶p\�=}Ժ�d\�j���	\��\0�\�z�\0\�\�����/\�jr_\'�򩴆G*�\�LX��*�e:�D)k�v�h�\�\���zL�OH��\�B4�\�*^1�ip\�\n^j���\�\�\�:�+�\��\�~�\���֧l���e�\��\�HT�wI\�~���Ӊ�&�m�\�H\�\\OR#��\�!N\�\�u\�]\�\�Y�	�)p\�)��q�\��\0<J���\�>,Q�\��`<_T�\�\�\�yT\�1e@�Q\�\�!ɢU�Zv�&|\�RF�͍��\�\'\��$�i^\�\�(�ZE�p�yR5HU&�x��O	�mJ�G��\�)��n\�Ǆ\�\�W⟏\��o\��T�\�\�?u^\�(况�\���Ѥ��\��%�=6\�\�\�4�-4DpG\�E\�\�}���\�%��\��%Q\�\�bz�Bl�U#�\0J�a���S�5��\�\����*x�\0У\�~��\�\�Q\�\��\�?�BVьi\�H��l\�ѭ���RM���z�O\'+&����Br#���\Z�4K��\�\�\�w_Qbd�\���\�\��V(t\�t�ye\���J��ȯ\�e~�v�\ZD]8��J\�kSd�L���\�wj;��\'��\�KRnĘ���z�\ZN�N�`�X���a��	��I_alX��Uv�\�.3�^0�1}0~G\�\��b;d��\�#�\�<�{\rNܐzM{\�5�\�v=CQ��\�	\��\�d\�P�\�5���,h\n�IGK�R\�\����q(y�\�N0�c:\�<���(��}\�\�r�G��mg�ǺBL\�\�NL�\�\�m/N#�4؊Fȵ\�G�B:\��ﰑ��J\�nN:Jr�Q����,=Mq��\�\�1�a<�\�R1\�X�\�(�S\�鎘Պ=\�\�v\�6Y��uk��s{\�\r1K؄%�$��\�5�\�[L�\��\0\ZU4�/U|�]0|\�/s\�E#��\�%\�X���\�:ZJƔ%�Lv�Y]�\�l�T�L^Ś�d\�^-�7��Y\�\�\�g��;��XN\�\�p��?\�\"�8�\�\�vY.D+\�K�\�-�Bu{�ex���_7�L�\�F\��\�\�\�\�\�Q|�[��S��_W�\0�Ɏ\�\rأ�H�\�ǿ!���\�ު��\�nĤZ\�nԙo�V��SH��Y�\�eEu^$6b A�\�ˎ\�\��p�\�ǿGv\��7۶ő�G�z��z�\�\�l\�ϻؕ�J\�\�Ǯ\�\�\�dsB��F%\�\��|K\��R\�y���r���\�>����NO�\����F�U\���-i/W�\�D\�����\�qSD�#M��W \�\�d�G\�<1�|�P��a�\�\��y��\�LG_~\'\'��{�M�\'\��7�ݖH\�i�NH�R���$١�8�5���jh�r2�4\��U��@h�!o\��<oj\\ï�\0���\�߉/qe%��F�\Z�r\�-[Y�V\�G6@��\�U��F�\"q*8�/\��\r��\�4�G\\JU��q\�P�\�k���\���*�*b��j}%�ȏ��O~\'�\�\�\��\�)^~Yv�Zv9YFZ(<\��PJ:,T�\0�cJ�4�%*w�N��\�j��$gc���q\�P�ٳk\�]j�Ŵ\�Z�JQ\�K\�S�����?~\'�\���\"\�]�>\�\Z��2\�\�s�vg\�:����>F\�(Sҩ\�ʤ��\�b2H�X��F�8o*��l\�w�h���2\�p&O�4�]\��\��\�x^J\��\�C\���)��2�Rr���\�\\\�&\�L���T��*&�\�\Z(\�zp#��\�*�i\�T\�\�Z�)_6��W���V)�E��\�1���\�ۏ\�O~#�_S\�ܻ7$B\�\�Ye��*f\�\\ᣪ�E���\�S�Ѹ\�VR��[���\ZR�\�V�\�ɒ+v|ɡl\�)��\�]W(\���?�z���Q\�<�vK�,��\0(�ڵ��\�*�\�YT)qK��YJ֫\�#�$&riL�\���\�d��\�\�9G�;�\0�+\����?v����)d�\�}a\�\�nۈ�;,V\�,Y\"��1e9oI�e�{9H\�|��\�4�$V\�R�~�d�T�t�_L�_���\�,gxu|ϫ,\�엩8ԅ\�<��\�Z$�l�õ\�[\�e�ԛ����]�9(\�\�e\\T11re��Ո{F�֨SO�t�D���G���/�\�:˙��\�R��l�!I���jR�>~�\�Z�\�?\�yR\�]�h:��;=#�:��q��*z�w��H�/�Uw#�%G�\�ޤV\�\�qmل�c�|H��8��-Ӧ�N��Q��BZ��\�ej�{OcR5\Z\�L�$k��F�\�\�7(Ӓ!\��|JvH��b�b\���G\�&7��ȭ5*?�،u	YF\"�\�\"\\\��c�S\�#\�m7?����,54($�\�;\�c�\�&�e�U\�;��9D�Vܢ�1⢻\��\n�P�#$�-��w$���~U6\'���n\�;D|���q�\Z]d}>cU\�z�f�z�?�*�q��m-����O�\�r���\�A��I~���\�R!V\�+ܨ\�\�$&&\\�\�et\��W����\\E�\�b=�\�\�\n\�w��Y�\�O�\�P��\�\�U��l\�RT\�(N#��7\�sqF\�aa$i�R��)�T�\�E�dY{� :,�eJJ[�B\�LyGh\��jT�3|�-��\�_R�\�c?Z�I�	�\�\'J\�\�\�Mٷ��l��S��\�J�L�)�3LK\"ƑE\�թ�M\�NZ��cH���FU��O\�d��ce|F�\�\�n#Z?\���\�Ȳ\�3\n�\�\��p�9�O�\�&���d��Q��\�\�g�fƴ\�C\�پ[\"���\�\r!qb\�DE��XY�6b*�p{�7�	Q�J|ľ\����\�\�\�0\�\�[zXn�\�\�\�״S8\��\�e:\�$\'Ne]�\��K2\�+F\�ŖX�\�R~\�.\�!b(B͊��6JEyz�ӵ\Zҁ�r��\��} Ϥ\�;KԽ</Iq�mj�Iﱩ)֎\�\�\���n_-�2_9I\�%�挮�YEf�lr%\"�Ȣ��\\<�_k�o�QOx�\'f�\�i;^\�=��x\��\�RjNr��\�}MT\�^��A�\�=��\�\�\�\�Пƀ���\�ձ	d����Lr�!�S\�RBWq[˕\�\�\�K��E>H��\�;���JqL���\�Tik5R�爋,ˣN�w�ľ%�\ZQbŲf)��\��Wtq\"��\"�\�$J�*�uMm\�Q\���;e.\"�TD~B-�K(�gZ��J��W\��Y4\�RS#U�\�N1\�Z��\�|\���\\��䩼�\��>rE7��#ՙ�LF�I��\�S��ۄG\�z��5�{\�پ�a�%����gJ^�I+z�\Z�\�\�M#RG*�\�\��\0f\�\�\�lbV�\��lY}��BBE�d\�\�I]�I]��r���\�/�#��C�\��=j8:�-\�\�ry�\�F6_\�S�\���\�׶Ųu��i��\����B�666r\\�P��\\�;R\�C\�MZ��|�9M\�����?<,�Jn���[~�o(\�#\�\�A�\��\�UL�B\�\�(�+�C�!�\�!69YJ�f�\�VZb\�G��>\�9�\�p��\�	|e\�H�\�\�\�\��jGP�\�$mZ���p*�G��IM��v�\�%�ʕ��\"S5	ܐ�b#�H;����\�vęq\�\�ަ�)�+\�W���{F$�ݏ�\'�\�a��\0\�QN,s�M&\�4\Z�\�\�$�}˨���lM\��2{�y!\�/�W��,��2S�\����\r\�\�=�Jʣ�-\�}���\�:n\�)m*\�\���m\�[�܋�K��M\�U�:�ع�9K����\r\�\�qH���	��r-�\n;�}\�\�Q\���PVQ/�H\�\�]\n}�Ѭ\�X�X��#\�|2NJ�U\�y?c\�,}� ��\Z\Z�C%;\Z��>�mǌ�\��cآ�K\�$�O��\�5\\�����\�ô��\�4�\�f.\�,Sv�^z\��t�H�Zs�5bHu#Sr,����\�b��#���\\\�b�\�;Ւ%�J�/o\�e�z�܌\�k��\�cyg\�*J\�~�]�y�\�1q�����������Wʟĩ\�\�+d�ػe�H�\�#[\�b>���Ͽv\��\�\�$&+�4�\�c*���Ŕ���I	m��k\�bn�G\�-q$�P���/�_[�\�;\��w��:\�z�esX��\�x��	R>�P�*G\��\�\�p4DdH\�\�Gis.��򹈐\�\�\�W4#�\�{�\�\"E\�-�>\��\"RwUx~��}�*�ُ(�1�\01\�#\�=\��-Ÿډ�b\��\�\"I�ܖ�5�\��\0\�+ѫ\��\��	\�q%��)�\�\\�\�pq���\�Ƣ%\�(m�bR�\�Qݟt�.�\�T��_k�VHG\�\�x\�\�Y\�{+c\���Yp\�\�\�/�|�>\�:D�}{^T��M\�U��\"V#�{˲*�#\�\�\�0��\�ޏƿ�\�D�3�\�4��Q.�\�H���}��9�QqW�z�۵$�\"�T{D~R���/��Y��}���+bk��\�T\�\�%�S\�|�\�\�\nf̔l\'u5�\�d��(\�V_/���ֻK\�;:q*\�ʧ\�?\Z\\�\�T��/�yv\�f��w��W�el�S\�U\"X�<�S\�\�\�X�B�\�:[\�+�2���S�\�/y\�\�\�-�\�\�\�oB�\�u|�I9%\��W�愾U9�\����\�\�_\��Q���9�C�S6T\�\�E\"[\�\�h\�؛�}\�\�n�C\�\Z�(-\�\�!\�)�ķ�{A\�\�V�f�Ƞb\�\�E9�i\�IU%\�\�R6f�sS�=�pǒ\�v}��u9�+\�[�\�F2�\'�\\�\�Q_؏�b0N�J��NΧ\�N2��k\ZK4jf�\�Dd8ck��\0��Qݾ!����c(����\�\�uv|�K4~9�\0�V�\�x˚�G\�\�S�779\Z�\�ucq\�>r^�\�O�\�c(�\��R䃴�\�?Џ\�~�m7iUEN��\�۸\�\�|��vo�|\�w>�DxɌ�K�l\�q�\�/\�G\�^��A�qMT�ӔI��B&2�b\�\�佲\�\�<�\�c\�W\��\02\�\"�\"\�\�\�4~\'\�[ڈ��\�(�S��\�\0#\0\0\0\0\0\0\0\0\0\0 01!@A2P�\�\0?\�J���/]�ES8�N\"�}/~�̿}6Yg\"\�\'\��\�\��\����\����\�?\�!�\�\��ތ�?0�\�G�\�Ŝi��?xZ1\�2��/K\�1(��\�d?x[=kh�*\�F�C�Y{%{V$��%��\�Ŗ^Q\�[\�-�ų\�\�\�(X��xd��\�܄��\�|���\�܈��\�\�_8d��\�\��,\�x\�%Y���(hZx�\�Y�\�\�d�ZHb\�\�7e�C\�\��NHe	\�,OI�\��O:#\�b\���\rޒ\�\"��QġJHm�e\�3\�\�,\�D��#w�\Zl7l����؏\"Nv�\�\�\�\"R\�xl��{%�\�9�\�u�\�E��:�>�^+��Ma���[\�xB�G�Z�/k\�,���^��\�p\�+\�i}/U�����k�b�\�W�Z��\�.\�?�,B��\��\�\0 \0\0\0\0\0\0\0\0\0\0 01A@!�\�\0?\�8l\�W\���C�\�FmZ�h\�ᨦ���\�\�<�a��\�o�\�=_c\�C�\� �\�P�}���\�6=�Ħ\�W\��\no�\�6=��\�b�\��\no�\�6J{9&�\0�\�\�*U�f\�(#�.M�a�fի�N(ȋ@\�ɰp\�3Z�V���M����4�J\�m���t�WE*�\���\�\���ED\�(!��\�Rj\�\�.��2\�8G䌌������6a(�5h��\�M�H�z�3[�UM\�\\\�5\�Z\n�\�%x3�ː�?«� !�5��x�\�\�EYG��\�T�:´\�E7mÚ��2\�.06\�;-꨺\\��V�2Q�\"\n-�\�E5���oX�\�e�@j\r���\�:k�`�Wu�\�\�=\�h�\�dlt;L��\�魏3�g�\�\04\0\0\0\0\0\0! 01q2AQa�\"@r�b��#PR�B�\��\�\0\0?ʾ��⴯�fE/$2����\�~YW�\���\�\�T�#ݗdR{�G�������ы]s=�2ȥ�=o\�[\�ė\�q\�̢IV�\�\���;�ʃ|\�(�	\�\�-\�\�g�d\�N�b��\�u*�\�\�\�E(OZhc\�f\�\�\�8Y��G\�j\�f��p\��\�ɐ��[g93CCCI�h\�G�\�\�g	G�f\�$E�\�B21m�\�\�\���j��\����C��\�qhhi=Mpi8v\�R�\�1\�B21M\�9�\�\�E\�\�\�\�3C�\����WiC\�ƒ�B�R{��#<\�2=�7������cAw.\�y\�?�F�5�RҼ�\�8��\��\0e˕��55���[��\�<yG����U>SMkS��\"���s��\ZGYX�N)ؼ�R�|6(\�\'(�=,1m�\�OW\�v�\�?����W�\�*\�i\�\"\�N\�y��=,{\�\�3\�C�ȵ�ĹdV^\�Vv���\��=K,��R�a\�^ش\�9Fz;͈c\�O;����e\�+*�*�KeZTj\�i{����=/\�R�R���z\ZOR�3���DQf�;J�\�2\�C#!���ժt)J\�C�G����ʢh�T/Ȅ�r2z�������<\Z����9�\nDy!##!������)\r�|�&Q\Z\n��8~(�3�Y\�TT����^��b\�S�!:X\�w,E^r�T�؅}f�<��I1g��\\ώ���5��\������C\\��׬�\�_�=���\�\�rв�I]��?\�y{�`H�\�l�ʬZ\�*I�<\"\�\��7?w8p){�TN#\�H��OO\�;dVT��B<q۞\�\�=\�t>\�k�L�\�+	GD\���iAV�\�N\�-��\�\�8v\"\�B\�K5\��yk;x4^JV4�0T���g�~Ƕ?ܫ�\�\"	Ћqm%�\�H\�R\�\�\�\�\Z`\�Ia�\n�\�\�\�\\����E�\�\�ky&X�G�%��\�\�2�6\�W�t�\�\�\�\�W��txY\�\�h�4\�#Ғ}䧠橯2\�ԯ_�Y\�^�|\���C\�\�¥��\\\�p\�|�\�3R��_lܔԽ-䇍CO�lip�\�\��N�X�\�g�:\��\�:\�\�W)\n)A\�u\�\���),vL��H��\��d\�%D�\�X\�%�g:ɊJKiz�kb������Gj\"����\n8Q�������\�nW\�o��:Mm(,>\n�w�sB���\�W\'��-�lV/+N�T\�$�j\�jP\�XPž\ZF��^$jk&氼qܚ�\�ҧ�\�2\��\��\0��\'�\�z-+��x��\rNf�\�՜\��o$�ju8Qh�+V���MO����%\�1��\�\�h��S�.f�\�\�\�G8��)6�Gi�;KL;cK�Կ\�8 Jd�G\�B��ŶH\�h�\�dhR\�X�5�����?x=�B��J&��EeR=ł�\�lO�N�}Ƶ:%TZ\"+\�\�\\�h[\nʾ>緓�ܧF9D�p!\�W��r΃�(vG��yZ\�\�m�Xk�\�Ք\�(o�\�$LC\�L�*Ve��]�-\�Z�\�\�_-����됺\�\�i�^u\�*��\�\�{�����(���\�?\�{�����W�G�c\�w>v(��^�H�\�\�,Z�\�yT�P�)T�\�`��q\�z\�{�;��\�UK\�\��?ӆ\�O�^\�RRE�f��s�L��\�C��Z�\���l1~Ł\�?N.�\��HW�\��8i[\'\�/Ys9�M\�\��/\"��\�}()))�\�\�r\�z�vE\"jK\�\n5�y��\"\�)�jt,X��ʃ!�\�\��R[2�i\�G��\�*\�R��c�k�ҽ%b�|p�.�\���%b�e�_O�j��HV*XGW�՝�}O�>Y�g~E\\\�\�\�\�{Β\�\�\�po(�r\�z��ˑ���i�5z�O�\�H�\�\"��\r>�R�R����\�99S�u^��ͦM9�\0�\�ϰ���R����1αӧ\�o�\�=�97?l��J��hS��1䩲�m��}\nÂ\�\���@�(Q\\\��w*\���%\�X⇶+�G�,V��Cѳ�\�]\�\�ep\�Ue%\�[J\���N�xk�Z\�9\"�\�X8��l�D>\����48K�%�/v�.������\�W.\�g\�2�\�\�\�A��Ԩ�]�Pv�j�5���ؠ��V/�+��\�w(m(�G�\�C]��+���i+�*QJ�y��	�\0\��D�T\�\�?\�%��\�)V\�J�\�\�5*�\�\�x��p\�N�4�\�\\iu�2�s�au�z\�ʲ���\�\ncY(\�\�\�\�ő\�\�U�)\'\�\�*t����\�_Ix<䧃�\r2�lTY�\�E\'*���r \�\r2.k;��\��ɤ\�G�Ϻ*�\�\�>\�\�)	d�m*�ʘ�ܬ�.��f\�\�ʧ<\�\��u\�&y\���\��1	�`�\�*/\���\�\��E�\�T[\�<?�\�\0(\0\0\0\0\0\0!1AQaq��� ��\��\��0�\�\0\0?!�:�do�\�\Zmea�\�L�J�\�lX�H~�-,|Id��?\�\�J\�\�\'똿e���\��\���!\�ez_�n$\r�l\r�\r\�;\�!\�\\6\�\'�J;	�ВuX0��ܺAQ3�\�l�3ٍ	�E��&c`S\��\��J�7\�J�\0\�7��\�ϡ�\���%�$�x�+<@��n&�2a�bz$�Y$\��Zt�L\�c���e\�I$��~Mi�W6�����H��~�lt�sᡋƇ\�2T��7ƌ\�FXsG!&\��{nI*\�|\r3\�\�|h7\���)�w\\���\ZbI\�I\"\�=^�bd0z%\Z��\�U0�\�0\��O�h\�3�bi֐O\�ܹ�l��[��\�q�\�\�d���?�61���h�ĸ\r�N�!�V�>�1���أ�\����T�`��!�F�*|KC��\�\"�%o\"tDNxn\�\"��)��K8/M��P���n�\�O�.\��s\�\��l\"P�EJ\�6��$�I#|���ch��?@�}R\�\�q�9_��:���|-,[Ʉ�%CJ\ZLrҾ\�%��\�\�\��\'��%�\'�\0B8�\�n2�i\�\�5g\�\Z�\�?C\�M\�كM�\�\���d��I%\�D}��zՌ�bʠ�c\�˷��Wz\�\�}�\�\�Lc2�J\�&\�eB����� =�f\Z&\�=\�Dۻm\�=\�:z,��q>�q\��;\�.Oc<��op!GFWBS\��!=\�ۡhL���O\�S\���d�9_�7\�d\�[5�\��(N��\�\��y(t����dr���\�Fǋ\�\�;\�\'CF�\�\�WD9\�|s�\�&�����)	o�	�\r\�dc\�M����)�lD�	\�\�\�WyO&�\��0\��E\�f��$\���#�~C�ZHLC\�ŠcW�\�\"�X\�<�\�\�h��7U(.^�L6�\0dF�\�f}����n��fk\r�\�א�\�i9b���\�G49G�?dU!?��|7ɜ�gW\�@\�͙iϩ�)�d�L��J��AN���iQ%]\�\��\�Ƥ��4nd.6�\r0�7C\�E	`[V@�4\n�F�lA�\Z6��w�\\1�	\��q?�%�4��C�9dV	9/�\�$\���[�]��\�/�L��V\�=%\�\�;}\n�A1��\�\�4<9\�K\'�s�\'\�\�\�\�\�Q�3\'�ަ?#��C�ٱ�ȊGfV�lD01֎F\��$�\�\nB\r�\�\�&��ȗ\�dn4)3�ۻ\"i�Ebl\�\0D善<�K�\�p��j<�@\��2(V�.bV�`T���\�7\�,\�e�䙳{��\�2}�wlJ����t�\�n\�a\�Q�\�&Kш�WD�h����U[�\���%`�M�2\�� \�lT\�\"UYY���d�_D\�\�\�ߔ.�g\�\�l\�\\�k�7�a\r��RF:�V+dF�\0�1}�9\�\�#\\\����\�3-��vx\�c���\�~M7\�2�^Z\�	\ZX�J;�	�>�\�E�IX-��vZ��!�\�6`\�%=�\�$�\�#�\r��A;_�[H\�\��\�v(\�\\�*T��F� ��\rkC������?$\Z\�-\�{\��\�\�7�1~J>��ȿ&�\��c3�\�U.(�&��,\�\�M[\Z\��\�з\�Bw�k@\�`��p�7qF�I\n\�\�ϟ}�^f)cKBbщ	\n��z82�3_��IMS%p\�\�r\"5hC>C�fo\n}s/#��U-�׏\���2���\�j�f�)�,O,BA\�4)��Qc�D�\�[�\\�C�\�Hxj�3�n#i-ȫ\�08.\�ԅ�hZ$\'\";\Zt�\�!\'\��I\\��+$\��\�KDO\�]UhfG\�\�\�Rg\�*�\�h�s#�\�L�[�\�-�)��#4�vJr\�{�+b4b\�\�8@� \�I���~\�lb�\n�!\Zg�ɭ.H�W�!\�HY[#s��L�e<t}*[�}\�+\Z(|�*�F�v$3��\n\�\�n�\�A�������P\�\�]\�q�\��ഋب&\�)��%\�n\�\�Qv\�t�B Ha2F\�ȥ�i�Uqdgڌ\r<C�\'؎B�Ӡ] ���D\r�,9;!�af�\nؙ\�@�٪P<ݽxbB�23���L,�&ț\\�y\n\�\���.$A���-w\� @4�q\"�oKL�f\�}2;z�׿�}�)-@y�he�I<\n�\�\�\��\�\r��%4k�a\�#�\�b\�b��&9Cjɇ�IBč�\�`�ds�$X\�6��)�d��\�A�(3�|�Q��\�o[\�\�Wȵː�\��ZV|\�#q�3h�\�}�:�c��\�-�(��[&IآF\�˕b�J�\�\�Td�\���\�*\�\�\�2��Ӧ {D5�\�Ј\�\���KY�m�F]�����\�|���E�~��q�\n\�\�\\\�p\�|�ح�m\nO��Y)2��\�Id#p\�d��t!�J]�#ѡ�P֢ʸ\'v-���K\�F\�a&�cw/�:jW�j��@�61?�.H\��\�WF_\�\��r2.д��:\�+\Z;��r0��H\�$�K�!ǘ9a����\�Q%�\�\�0��L��\�\'m1���v\�)%hryB��\�S8�nL��c`:�U�\��~��c���$\�^\n��\�\r2da�nQ���X\�,�\'\�,��\�\��\0%��\r��`\�P���$�\r��ÉF\�D\���^vU\�\"7.�k1\�\�8�a�Ύ�{	\�\�`ԇB(�rX�\'\�7�G�b\�`��\�\n\\ޖ<\"evf^�䛊0n�4p^\���{<�\�SCE��^�\0�L���X9p7�r�lWbE�u�}�&\�\�iHl�鐘�\"Ī�K�!�\�\�\�h\�2\��\�T�PK�\�2�y;()z�\�^�˕\�\r\�p\�\�nD��K%���\��_hk�|Ș5\�\r\�IW:Y\�\�\r��-\�Yyߍ�2���\�e��G!����L&G�)��jD�2\��\�B%\�U%�S�\�6	8Ķ\�-��Ք�g�Mઁg\"SaC,����sq\�m\�\�\�/�aS\�v�4EQ@�\�Y��[=�&��I�L\"\�\�IB\��\�Y9i\�j�S0i\�\Z��\�\�G��:VDJw;\�|�)a}\r��\�P\�+��\���}	(D\n�Q?�\�F\�\�ńք8\�Z�R�Ť�g�\�\�\�Ѐ��䔉v	\n�!9�6�r�J���qh{�Q+�g\�*���b�fl��\�1�gI���=8��\Z6<\"`�d�RbK�[bV\�\rb�o,�BN\�/0w\'\�\�\�\�\�\�T�N�)%�-\�,�\���\r\nhi&\��~\�\�I�\�\",���E\��b\"S\��\n�8b>�pK\�\�ȦT�\�ȯ�0bR�<����,}�Fj���/\�QC�F`b5y\�6e\�C�zMCtI��A��Z;<��Ʃ�u�C�$8/\"͝p#�W\��Y�\�M#C���4@�,�qx�\�t+��3a)����\Z���\��7W$�D�\r-���M�M�����=(6>�\�M�,J�aM�\�?\\����\�bL�0\Z%eU\�\�\n\rWҩ�\�mv`\\�%�Qc\�K�\�~tr#\�\�B*x��\�\�\�*��\�\�Z�\�x*9\�\�\�\�\�I��\�X�S��:Q�\�\0I\�(d-5�<_%����7&f��$RD\�a;�\'y/\�\�zOd�Pj�r4���.r�b���%~H��)!%��ɧ��$��>Bԉ#g�\"\�&�HTB��C�2�И\r\�\�ih\�\�\��\01:]WGr�\�>hۼ\�|�F�\�i��/&BBCH$�3L�D\�\�j\���1\�饥��Œ�\0\nl�\�\��ƛp��\�\�G���\�^�(l\��Չo��\�\�F\��\�1���Bv\�B\�f\�g0�7�$����!v\�j\�R$�\�k��vJbBH_\��\�[ᒜ�,%���\�l\\\\1�O.\����X�U�\Z�vc\��1���r\�\�U\�\�\�O24}ñ\"�W�~JE�\�x*\\�� \��`v�\n�K8S��E���� �\�%�_p�o�\�A�\�&!�\�T��\n\�\ZQ\�T��G�\�0l\",�\�#\�`�\��r✧+��1\�\�\�\"�!]\�5yZҮ��I�M�F\�\� \�Lp �Y��\�\�S����nX\�\�7K�d*b\�\"_~��ƃU�9��H�\�D�/b7^˄��\�J{\��b֛9!�\�\��H�\�M�|�\0]\0�\���\'ݲFgٖ>�)`.\�b�#\r3K\�n\�}}C!^\�e�?\0\�b+�\Z\�4�\�q\�\�۶م6�ƶU�:-Տ��\�zCزtNݷ �YLi�,��\n��\"��J&6e}\r�\�b\�*ye�D�g#,#��!v}�{��0\�į\� \�\�-��|\��C�\0k����x-op��Ia�3��#TF\n�C\�P\�K�-p\�\�WH�\r�\�x&\��3vU\�y��x�\�{/\�A[��-]\���ʾK\��5�˅1��,��\�����;1\0�<A�9��\�4\�7š�X��\�\Z�&Z؋x)r_%-\�\�?�\'�\�\���#�4�踙\�J�1�oat�\�\"t,�bP�Й:��\�v\��Gb%Zt6L\��q�\0�\0b��eo�&\�\�H�FN\�$�\�2)A�� �zܕxdq>�n{2T�9\��\r\��#e�X\nV=\�g\��!� \�\"\�6.F\�[>E50\�\�$\�\�$�4\�*\�B	\n�\��`\�c!\�T�8\�J\� n	�\�\ZT�φ*�Z�\�y��\�3�L�eԛT叔͏�.\�\�M��!\�\�\�B�<�h`�QO+&-�~6ڒbt��E�<�0�\0m\\��y2\�P��\�.\�o(nNr#�(��>H�>�FpT5Z�v�a9��Ǆ&�\�qlXNз\�W�5�(��y�\\|?BO�I�\�L%\�F�-݆�Ą(\�I%o\�\"NO=�W\�D\�\�=��H\�d\�:\r�Α�\Z�	\�&Fx��\�\�cؕ\��\\|��#	��	R7x?FNbv��:3\Z�\�\�\�b0��ٮR>j�\�\�C\�65��䕧wo�#�參\�T�\�\�\\\'�}���\'���R���	�\r�\�\r\�#���ɶT\�q���ct�0�t�.X��Sa\�\�H��\�\��C�Mޠ��\�\�\�\rO<�+a�E::��/�\���bm�DˁHM�J\�n\�C�[u�|��S3� ȭ�֔�-�\�\�j�K;�\n\�O�\�ޘ\�\�y��\�@��rY(��\n\�:\�gȱ�8�\0\�On\�\�!(iO�\�2D\����\�m\�%&|\�\nx�H斸ô9\��%�w\�����HSd�\�\�r%�|�\�{|�\���/ �Pب�\\�V4\�bI	++\�o\�\�h��tp28*?\"!b�\n�L\�>�O�\�!1����bJLQ�&�\\\"��o��wd\�\�Ǫ\�{�\�{`P6�	\�\�\�\�O���*DA�o�n-�\��w�\�P\�_���\�6\� \�2i�<�vGh�\��\�\�/�?�[/�8E���~\�\\�Y}\�l\�X^F\n$ ��$UH\�J��\�\"W�H�b��ݑ�AB\�[���D�R�o\�RLv[��\0�ӱ�o�ɒ\�Ң>Q$ס(ÕɺlXᓨa\�%$\�{�5���h�8ln�`������OD�\�\�\�{\"f�F\�]���xF\��\"V:CJZ\"JiB ��#[|��/\0�\�;�9\\ �\�Y>$u͗�o\"\�\r\�쉓]�\��ݥ\�v�hB?�CN�y�f��?�7Hie�D��4!]`-ҹ��:\�\�`\�ݏ2M\�nl�Ʊ�E����\��V\�[\�\'k0c��\�҆\�\�8\Z�\�\Z�\"�\�D\�\�A&�]�\��\�ږ\�3�<3\�HI\\\�{\�G\�K�\����\0z\"4\�M�\�\"ǰ���\rŹh\\$J_�kR\�\�O�6�R�xt�A\�\�\�J\��j\�ŻaX\��Fwl6\�s��	�\\�-=2zo��PLp�\�a�l�5�Ζ�\�!*(]\�\�M˗��\�\�RM�]��׃��\"\�\�&D��!�\�Z�)?\�g\�?2\�J��m�\\9 �\�bS5x:\�؄vL��\�었�>D4��^	\�|��_&%cz\�>qފ\�\�Yc�\�n\�I\�[��:AM>�\Z�cX�\Z7<\�\�:�	#\�\�Q�\r1�),�ɺ^\�\�\�~\�	�\�\�/\�v#.\�Gġ��yQ���)���i{�+/P!�\��Z��F\\�\��\0ɲ�\�\�r\')>K!�Q�\�Y{	�\�3q�C�ˡK\�\�vF�&\�&\�![�[#���!mO#-)���\�\�_0$\�\�\�K\�F�~đԸ�D�\rЙd�R�=\�.\�vőn4D\�F�\�!�sa�����0�Y����b���AfD��\��H�<�!-�R^�����\�*F\�&\�����,	)�/})�j\r\�(\�\��8\Z\�˜I�.�\��\�\��\0FX�2��	\�`W�[ēE��x\�伇xz	m\�R�?����KnI�p�\0��jF�$�Y\"\\�8و\��M\r9�PbK&c��\�\ZQ\�|+ы0\�^Ete	���d�%Wb�\�\�\�\�t)1�f`!����B_d]��\0ff��\�\��%����	Eч����\�\'�M�dϚ���G7\�m\�\�\n$S�\�\�\����\�N��\�?F�\�\�\�\n�\�\�n\��t#vvѱ�\���FC62$@n�i���\�dJB\�\�-�!\�6N\�\�\�\�X}.~Y$��ő(\��.���\�#A�\0eiJ\�mߣ&�\�H������\�M���	\�,&J#���|ؾ$�\�JVXDE8�i��f~M��2C��\\\�h0�\�/P�N|\�$�,T�\r-RkF����HϸDPZIዽd\���ćM���Y�3\�\\��\�H�!�!i|��K��YUظ�<�\�N�{\��/\�Y�`��PX\�H`\�d�\"u�C`�}��2hB3\�#yQ�g	�DteE�Ga,͵H�0$$r}d[\�Y\��$ۺ%mI`\�(�`wjD�F8{\r\�\�S�KBS�/\�IHf\�n0\�H\'1�\�:��\�5�\�w�ʔ\�s6/\�{?\�p�B(Ι4�\�\��O:,dHj,n\�z�����:\�lȑ\�%�a${�\"Ȕ[�20A�,�\�˓\���vƯt�\�\�$\��a\�R\�)xD��Ń+�?\r!K�2F\��D��p�_rm�şbǡgجL_���\�#\�\�!\��!s�N3&\�FЂ�C���2�\�C\�5^�#�	\���$��\�3!p\�͍\�\�p)~��\\��W\�^����*	vtǘZnM9N�e\�$A\�#�$�X�B�\��=i��\�Ij��\�\�p�I�!-+�i��XQ	\�xr,�8%A�D�\�Z�	4Za�pE�|\r6k;	J\�&qS\�\�,�юe�*�\��_������xqnP�!�dغf\�\�}��\"�W\�֫ﺒ\�@ސzYrM��#�\�*Ɉ\�mM�Ӵ\n�\�}��8��\�JHz�01\�K,H!��jO�+iU\�,�8��g\Z��?�+�\�\���ɿaf�\0BÜ�\�\��eyf\���EΕ���t$�Z\�E��4\�,@�\�qWd�P\�\��\"V�\�>S�\0c�?rġWfZ�\'�Z\����5�\nD�\�lb\�p�1���\�����\�	\�\�h\�ߑ�K\�\� |\�$7�\�\�*\�l�m\��6OB��H�Q3�@F��\�aa\���F_#]��ɚ\�\�ڬ�v1hȔ>\r�	p\�z\�\�@�K�C	`\�\�9	��\�H��\�(�KvF�P�FqCʎQ3А�@�*\�Idf�[\�F�woCp���cг\���d�ۊ�4+\�M\�Z`�J�Wq\�j\�\rf��!���<�A-��D�\�b0gbeȊM\��aR\�\nX�\�\�\�ȁ�,stG��čP�H\��W@v\�\�ǃ4ײыHM��\�\���%H��R\���}1dl�\����\��\�\�\�I44ݝP\�\�s��(�$lv���\�p �Y�@��3�&\�𰅾\�%<��\�ؑ\'��dO&-�xFdƴ����Y�X�s���p\�\�vw�O��nE\na\'\�=�(\��Ż��E���X�ؑ\�M\r\�W���{|�3!t��jK\�n��\r^\��%Z1�b\�\�P�յ�o�`��g\�\��۰�!��(\n�v��([�O�Lzϡ;\�_ѳб�䛩�-�HƬHm�R��hǖ\"I7$F\�>\�\�yvbј��\�~�\�1\�J_\"	�z&��3��>%���Y�œ�[�{\��\0�\r�\�Џ��<\�7�!:�?\�z-/,��4hCE&\�BQ\�,\�#[\�\�����e7��j�1��\�b(V\Z�2�S�ݑ����1|Aoɂ\�Lw=)CP\�`l�,z?\�\�ڸ6o΋KO�`�y bB�U	S���?f\�آ%�\��\�F\�ţ?\�͌\�F=2y2�>�����j`��!\��_��\�f�34a�\0n,��ر\�{�F\�\"�\�,\�y7\�\�\�l<龫\�,\�C��\�\0\0\0\0\0\0�\���\�\�~\�\Z�Іӊ�ߎ\�ƃ\��\�\�$IOb���H�Xl\nE�\�\�k~��\����\\\�M�ڋ�$\�n�\�}�t\�\�(��\r&���[���\�\�~\�{\��R�/R\�\�z\0�\�ݯ֌���.�N\�$X�A�V�5%F����\�1ZH%<:ㇶ˘;\0\�λ0�,R�}��7�\��dI���\"(�S\�-]��݊\n�\0���P�\�\�\�Q\�N�\�7\�/7\�N���\"~[u�)�\0<(\���\n?O:۝\�\�iJ籮�Ƀ�L`|�\�3��l#\�\�O=�HU3��(���\�S5\��)%,�/���l5�\�C�e�6+��\�z�f�p\"7��]�t���o/ �GG�6��\r\0\�O��/@ϡ0m%\�i	5B\�\�`�\�\�!`z��L-ug\�Jd�S\�o?�֜A���O�	\�召\�Ȳk�4sWe\�\�]�]ܩ�w��\�\�\�\\\n\ZT�w\�x�\�\�\��\����!Y\�\�ՔJR*�\��\�w��\��v4�\�/�\0�\�+r�\��6�\�h�\\���k��B]\�V@S^\�$�Z�sv\r�j.i&\�X@�Ӎ\�˯tn|u�����b.�`��\�S��}�\�)#pIR����V\�x�\�q	Aeh\�M}āL!�����JC\�p�[]\�N�\�p��~�\�_<|\�<\Z�\�O��s�,><F��\�\�\0ർ�\�\�Z1̓�g \�\�3��L\�\�q\�Bڎ\�\�\"2\�\�$g�p\���\��\�]�\�\�\r��\�\�\�j\��\�\�2\�5��\�\�,+cL\�#��UJH���>\�50�o\�-��o\�zn�4�\�=ǰx0���?����~\'a�\�w���?�\�\0\0\0\0\0\0\0\0\01! Aa0Q�\�\0?�޽�[�`<>]`_\�r{�$ɇ\�\��mm8ݹ�\�FS\�v9�\�2\�[--d\�I�870\�\�\�\�\�`��V�g-�י5h�^\��8�n09n&p-�n�\Z�jիV�[\�r\�\�\�\�w9\�Z	�N�\0s��m��\�\�\�\�\�\�;��-\�F%�\�Z\�\�v\�C|�\�LLđo\��\�{��g\0/q�5j\�\�\�C�/��Ra;�v]}�-0>lDE�7i���I䚻�\'�G\� \�F\�\�q��\�q�\0+��\�p\�\�ߖ�\�PƘ���Գ�\��[p݃O�b\�&��2�n=\��\�1n~N&-{����\�[�իP�\�a\��GZ$���\�5����c1�S\�\�\�4K�z�\�\�\�\�\��w#ϣ�f��D<�o�ܠ\�^Zr\�\��N\��\�l�\�\�.r\�f	�\�\"��˨�񓶖�2�3Ar\�\\\�Dc\�$\���\�\���,{\�r�X����O.Eٕ\"d���eCt���\�6\��u�\�<�|��>�L\��[�\�k�\�\�t~�dtC\�\0I\�Z\"f_�\��[�Է�.�Ce�f|ݫ\�\�S\�\�\����/$��\�ۉG�\�|�\�B!�]^�\��,\��r��g\��Ꮲ��ֈ]��A����<�vgȼ�\�øvLvc6�2���B!�~_�\�:J�0\�\�-\�\�\�\�p���:�<���Z�	w�\�ɗ�I#�G!�N\�57\��\0�énj�Ʌ��?r���=���g$rݼ?/c\�y�\'a��f�\��\'.V��\��/�\"~DK�e?,s\�\�O~H�V�	�˸�u\'\�\�ޢ{�`\���[�\'�~\�{���ߒ\�O�\�\\\��\�\�cIn\�{�䘘�e�ܝ��9�.���\�\0\0\0\0\0\0\0\0\0\01! A0Qaq�\�\0?�KE�5v\�<�\�q�\�y~�\�w��v�\�\�\0%��\�B\�F<�\�q�\�-A��y~�\�<�#\��\���G��O�<�8��]Fcv\�nݼn\�>!~\�\�O\�\�\�9�n\��ƞ[�i��\�Ah�hòբ�\�\��\�\�\�]Zz][��\�Y<��m�\�\�þt_�:.\����n���\�M\�\�m�|��x�!�o\��x\�>-\�E\�G\'\�at\�\�Xb\�jm�G\���D�=��v�9�^[jtƭZ���\�B\�|[��m�n��%m����x�K���\�e���u0R\'\�\��&��3�i�/�k\�\�$����.�\�\�0N\�$�;vܶ\�@�m�+��t˿e�\���7Q.�\�խOD㮧�XoP�-\�\�\�\�n�\�p\�Dd��\�W3��cY{1�H[�r\�Gn\'\'b-ڵ\"ڴ\�\�Cw0�We��\�\�;q1���e6�#\��\��`\�h1�\�v\�t���1�\0Z\��j\�c\��ہ#X:˼����xa�a&\�ݰ���\�6\�a�[�-���\�~u~öx\�;�$�\�#\�Y\�a�x[p,CSo$�<g�����-ݐѦ5�\\|Kfh��5�bOe�/�\�$��̖\��\�D=�-�9&2&�����V�q1\�A�\�@�ã\�v\�\�_��{y|�-Dv\�4Ƞ\�pL�\�Xe���\�/\�5jթ\�w	\�\0k\�?�X!�g&\��Loo؎�\�I0Zݦ[q8}�CY#�-��\�\�B$���e\�a\�V��\�\�p\�\�$\�\�Y\�|��ĺ�n\�2��ۏ#�1\r\��w)���\�\��\"c�\�\���f\�kS��?�նHn\�|u8y\�\��\���}\�\�vy�\�bc\��ը�\"\�mk]�|���;���X\"\�y�\�\0\'\0\0\0\0\0\0!1AQaq�����\��\�� �\�\0\0?E-�(�YVS\��W\�\�F\��+7D]C�[�!#�qs�2�\r0�����\ZO1n1rmXP�2jP=��$H\"K8\�\�3\n�� �\��g��\����\'�\�;g\�{\�r���a��zr��W)%Y{�ᘖ\0�s0\�pN�j��S\Z��yq\�y�\�Ķ%��\�:\�L�2g�7\�W���bH�3|\�Cj���\�8�*\rp\�k\�|��	N�,�k\�]\�*$H�\"D�F�!��+\�\�\�\�>;��y�$��\\\�\��\�C\�\��~\"��{!��\�\"a?%\�_JԬ��7���� ݬ���Ǩ!��mb\��ÏR\�\���^%\���toQX��\�^3�\�.�o1��b_\�^\�c��\�s�_�$H�?�?�`\�\r\�\�xr��z}ᾳ��>]Č�0W�]\�Hr@�\��L\�\�\���\r2Jdm\�b�Kr0 ��q�\�\0\�i�P ň.�e�\�s�\n雜\Z�?��7)\���0.\��\" {|G\���pӄ�X���\�->%DȆ��R?s\�BZi�\�ܲ3he�Q\�1b�#�PJ�LƁ\��P\�\�:r+�j�\���\��|��st �L5\������,�	�g\�{XVVPu;�!��P�U��\��J\Z)�\�TEN�\�\�h�9��_;�6%\�F��\�I\��=\�\�cGq�?���,�q� SK�\�e�0T^഑\�f6c5�\r�D�\�P{�\n}K\0=�\�\�Eb�\r�\�\�y�&\r;\�$��\�\�4����R\�\�\�\�ڙ9�\�坣�7\�9M�ubU=\�\�\�\0~���n�l����6r\� ����R�j��=2�k|\�\�\�D寶 >\�?G@g�P/Ȋ��P\�}�z�\�e;�\�\r1:�ъ��\�\�f��7\�d�\"LD���R�0\�\�O�**�\��!P���s�ĳ\�=``d�� �꣯h��\r�o\�]�LM�9�l:\��Q�\�\�\rs2M_I-�8B-�7�������\"���E)��I�\�kMP\�\���qf(~��\�*Y^\�i�\�o�D3B���\r���W�Y\�{�i\�4*�\�ii\�h;Y¥�KQ��ܖ\0[?�g�^�\�4y�\��/\�Y���\Z_\�%��\�\��S��i�������\�\�\�\�2�E\�6F\�&Ʋ\��LWwU��\r9��30u�A,�~c���d��\��l)Uݍ�\Z\�L`3F\�kl�ɋ~c_����3p0x\Z_I�?!\0p��3He�Hg\�!\�\�k\�\��m\�\0c\�@S��ٖ~� ��\n\��):����r3 *�h;�3&�2S�^��\\3+hĜ�\nsw�\�\�\�X�\�`�s�R�L��pU��R��,�\'%J��\� �\�H	�͠��Q\r�a,K6\����^>�t��\��\�`�&��E��.�h!\0-��\\\�x��h�!eWn�KՑX�\Z�Rl@�Bj]t�M�2��mW�\�m��\�*-\�H�\�J@-�\�\"Z�1m�5	��11[� ?dKw�r����3Ճ\�\r��\0�\�\��L�V{�\��\��3����Vk�nln-�b\�2XEmCU\�q\�\0I�\�\�¨yy&\�S\0\n\�s���\�M\\�r\�zB\Z1uQ\�\�7\�k\�*�e6\�mV�q u�\Z���ZAqD>n����8	t\ZhKy#�\�+gumF�.��y�\�f\�\�U���\�p^�#p@V!�\�m\�K5\�_v\�\�F\�֦��h�\�J�@�\�o��\��IYm��U\�s#\��D	\��&O�\�i\�s)\��\�~g3|�\�9<\"\�?\��ϫ>�\�&\�hl.��\��W\��\�\�\�\�9	�����a�U7	r��\�a�T��ʇ)GR\�-\��HV��Џr\�\�Θ\"��\�\"j8��0\�\�dh\"4�W��q\�[�z�3y���^\�.R>f3ò^\�Y�\�\�ָ@*Sn\�2�S\�\�Q\�t�\�\�6\�x�\�N�ꡲ��\�_�䂀C\�%0�\��ۣ/���\�\�\r/��\�\�(8^�V���^\�.\�\��%yF\��_�3\r��c\�\'��\�9�y���(����`�[sE\�A2u(,vnS�~bY:D\�x��+\�6~�os&\�T�(d�~\�za�1\�R\�\�%e�K�L{��9eY\���@r\���njT��訓xa��.�Œ�P��\�\�bS�\�\�dX |\�4�<w/�]S�t%��A�h�7�d\0��	[C(x�\�c��\�\�B\0��J}}�sE.����J��R\�Sb/\�+a\�\�\�2\�сtO��\0\�Q�߉ǐ�P\�x1\��\0���c\�\�x\"Y~\��\�A�p?2�!��\�?~��\�\�\�\�+h�	b�\�.���Gq\�.e\"3\n+\�3d\�C|�Vx�\Z�\0\\K\�I��P!˘� � \� 6\�\�:\�ynb���C��^V1\�iB\�)�YytDqZiRq\�\��K\0�\�@��*W>	�i���|!\�Tx�\�\�\�ൈ8%�\�\�Ԧf\�eeKԪ�)��\�K}cp\�\�\�\�*\�9DF�t+�\0!�p�\�ʧ�P\��\��\��\�=D9oM�����,\���,I�!�6}�~\�\n\�QH\�&�h\�\�NW\�T\�\�\Z�\�!�9�A�%\�`�\�7p�v�\�m���A�,T.N=A\�c�]~\�T=R\Z����4D\��#���\�Sȫ\�\�\�x�Vd�\�&�\�J��冽F|5ԛ\�-3�V�Q5�V\�l[�Bb\�t%�����\�nG.�T@`,\�U$�IIf꠽\�Q�/9�d��k\"K%�\�N\0\"*\�\0R��\��\�}+\�~\�D�g��#_=~�4rƟ��v\�F�Q�[�8wO�\Z��\�:��\��z�ъw\�\�\�s\�S&�΀�e_,8o��-4��\�b�(�7�\�\n?슢l��l��>\�]Z_D��qf��q	�&w	R���\�.^� �`\���\�lpY�b��\�b�]�d%O�\�x�r�\�s���[UϘ���Q3�棈5R�;[,�\�\�\�6f\Z5\�\�<\�����vB�j�3��J\�7|N���o	��G�� \�{� ߡ�`����\�MG�����3�����\�U�ي�F\�\�\�Tp�j����Y���E65���\0$�\'�@�%By\��\n2�2; a(��ҟ�-\�\�N\n�̮�\�\�l��\�gB@?I�\�\���0�N&TVCR�V\�z�<�Ղ^a,���aP|��(���?hB�z>\���DK\�\�n� Z\���\�%�i;:������,O��@p\�~%�؂���\01����/�$�6Mg\�\�\��Y2 �%��XƘ��.|�3|Fl\�we{�\�\Z\���\�#\�)K\0jY\��\�m�R%Z\\��\��E\�߂�f,��]�\�5׻���\�\�8U��<\�F��3E�\�PLQ�޵���0�֥�k��Әr\�qX��\�\\W\�\�_ǻ\�`=�ud5!H\�YZ|y�9\�\�9}He�&Ȋ���b��rF/\��̏���{A]y�L\'��=L��}�q���$��vG��\�\r\�eψ\Z\�VgH\\�l!T\�n\�5v��޽�b�/M\�1Q�M4Ŵ1����\�V	g3*��\�Rn�S1d�/�R]�\�\"�\\�A�y��\�\�4G@\�%F��	Y\�˂\0K\��f0Ü\�\�өA\�\n)\�]U��\�)�\�p\�A�\\f]Ǽ\�vfڳa�B<�B�t�^~b\�zFX�v\'M�6�\�>l�GO\���\'�a\�\Z\"�I��.ŹY�M�5�\�tߨ\��%\n\�3�h�)A\"\�UZn=���g�e\�\�\�\�g��]���5�\\Ta����`��k\�rʘ*\�zVf�	��vl\�T\�.��l��\�=a��\�b\�Ϊ�8\�%-�2��\���q\�H�[\��*�jbj��>���Q쎔\�]ǲ��W\�!\0\���\0�\�߸ck��X\�\�~#�7C\r�\0���h�̭\���\�\�<A��\�\�,.`ט)�I\�?�uV\��˘=i���o\r\�{�\��\Z!\�Mu�+[�\�V�\���\��\'��\�N\�0��MGvCOQ�W\�+	gQ���\�\�\�͜R�	ҁ�T\�>M͛Ѡ\�\\\�\��\�\\-\�*��\�	\�PW�f���\�&�9&�\rM%iP\�\"2\0�\�Ζ�\�w\�>���d.�Ps���|௙�C㸪�L\�rW�~f~��\�`}�W�,v�0�Ǵ�]�\���$t\�BY~_\�*�6�3��Z\�E�\Z(\�@\'�\�\�]Gp8,\�O)�R�*w�7TP�)LL�\�8��Z�\0��u�C��\�\�5���\�\n^<\�A(�s&V\�V675����\�虌UO80\�\�\�\� .�\���Q�R���RSX6$\�@l�/�d\�b��x�\�\�ϔK���i�\�X�T\�Ci�\0\�\���G�I\�3wlt	bQ^ad1V��lNa-T4\�%�l�\�f\�gu��q\�oL�\"\�Aܻ�σ\�5Jx\�.(�/�C��\�\�</Q�C\�\�m�pGo��ޠ�\�\n\�)�\�+\�\�\�(\�D�\�\�nV\�P\�!\r�H\�e�\�~b+	L\Z\�3��	z�5ɪ������4T�\�\�\'1\�\�W����~�S��\"���\"F\�\�\�\�c\�i\����q�1(1���\�j-\�\�,P\��/2\�\0�eV\�g�̒2\���/ΌK\�y%��I�\�iY��\�Xm\�K5nN.*7?,6��\�\�M~�\�d���J������\�&Q�T\�h�\"\0\�,�\��fm�u��B��\�xJ\�r�Z1�\�%\�̶�j:\Z~��v~\��[[!4\�D\�K�!�RÖ�8\�q+gVS\�(Ţ�{�\0�)){�_ ��q\�\���`8\�\r��\��EgC\�c�f�f4p\�\�\�>g/T\�\��\0�\��.q2��U�\��%�}y�@\�ӎX�*�\�V.��\�\�빌�>c[\�)@;������៘\�h\'���\�\�\�;�\�X\�+ܦ�ܰ�J<��N\�\�Dӊ�G�ʢ߃/���g�5)\�(A�R����P|K�C!e\�?�0y7\�R!�l~��Q9\"�撳,�6=ͣ\��\n\�p�\0}`\�<-�� 6\n}�\�h\����B������QQ���\�\"ֱ��9I��\�]���\�1�\\\n�\�\���\�\�~IQ�?�*ؕhw\r�\�NeEL\�Yr#\�8�\�b�mԩ��,,���\Z�䉢f]\�A�\�9&v\�B�\�ڱ�\�p��K��!i�!3���F*\�9)\�3,=\�\Zq�D\�\�\"/2���L\r\�(Z\�(�][?IAI\�P\�\�=�0\Z�dÎ���,2}�\Z+i�\nG-\��34��e߻\�܍\�u�n�W\�\��jUS\�J b���\��\�d�F�/�O\�V\�Uc�\0�]��\�`\�N��L�S��{%yfTJ�����Ȣ�(G\�ٚ�Tb�\�\�x\�\�^����33�1(��`O\�?\'�d�\�u}-z581m��\'�}`�\�]�����<\�Wp�\�\�\�by�\�U\�5\ZÙ�h�*0\�<L�+�r1E�5(Caj\�y�\�7)��\�\�\�r��\�S\�\�u(QbR�\�e�P\�V�\����ZT$kk�\��UK\ZY�b��>ЗJ|�D pt��6d�\�8��2�C\��JY�O�eΧ1\����m.\�uy\�5\�\�bV�\�bβ?��\�M\�}EQ�\�⦽J0\�)+f9�<�r\�5aw�Pc6f\0CK�\���\�!<�(�\�\�c\�\�`�Y�,,#Lc�h\�*L�pk�[O1\��*)�F8r�J�\�k��\'\�\�\��u�t�������q\�f�7��\'*\�=�@Ye��\rR-�\�c�Ђ\�_1nMP}�\��\�hf\�Q`�_�\�G\\\�\\eU]D\�E]�&^��Hq\��\�A�ŔE\�q�O�-\�\�\�\�Ӆ��7\�\0f\�qZ����\�I\���K0ӨF�j0\0\�1\�ieA\�\�����R^\�.X�!�(�r�$5kvK\�\��f-\�\�!�\�\�m\�\�\�\Z\�\�)dQ\�\n�\�3�1��Xy��HrK\\������en\�or�mB\r�\�\���Qi�*��\"ծ&C�O�,0Aq\�\r�f\�=���:\"������6-@�9\�H�<eBu0f��dRx�	Dɠ�\�\�qbF\�\�*�����o�vpܩB>x���\�wk�*i�\n����-p\��J#=\�Ԩ\Z\� �m�\�\���[T�\�|7m�\�\n�\�/�K����6ⓒj�h\�!_d���=K�\�j�]�G-�L�0\�h#Cw>o\�&�\��\0�0�\�F\�w\�Y�j\�_8�e�.\�al_L\�(��\�Da��T\�\��[1\�H�]M��\�H�İ\n\"Q�\\g2\�\�\�J����/Z�s.\�3��\n#j\�\���P\�\r\��#q�w\�[6U}aQ0\�T��ET��\�LLԠRL9�5)�Q괲ˌ�\�\�\�Z��@�3&�%\0��aw��w\�/q]돬\�Z�\"8G\"A(5��:��.d7\�qm�D����K-\�\"\�\�̯d�\�R\0	\�Vf	���uM�R]<��\0�W�J�_h��m^a��72���̱�\�\\\�YH\�\��\�XJ\�Ǭ\'\�E�\�$c�\�J�	�\�2Z��\�+\�Fn�D\\P7�\�qrq�\�\ry��\�P�k�\�c�P�\���\��!\r�\�;���bQ\�\�	E��T�\�E~\�ҋZ��Y�r�l>ĵVv�\�:3\�\�(�\\�/^b^�c\�[�W\�kZ�D�0R\0m�Qɜ\�\�\\\�\ZY2x\�e���eںess[fw�Uj�\���̡��\�\r��R��G���\��r\�\�)G+��D�ͯ\�\�P�(\�݂�\�\�|B�c�\\\ZVսK(�0\�Eg���O̠w	=K����\�	��\���@�\�b��\��`�$�\�@&�Ĳ2CԶ��L���4{X>�\�-R\�\��\0=w/���\��.l\�8\�b�n8�\�\\ѯ*�^٭\r�Ͳ�q�\�@\�#t[�R�/p���P+y�\�L�TV�1-D\�\�偒LV�\�~\�o\�P \�F��P\�8���E�!U��6�R�\�\�׎�OJ\0\�e�dR��U�ͨ3(#\')�Ve2o�sh*���F\�\�	w�\0L_J[/39�M$[�\�XAd�\�w��bd[\�\'\�pC�\�\�b)������\�\�sq�Ƞ\�1\��\�\"!\�#ݱq���zW���f���6u-\'�*%K�o�3�\0��\0\" ]Q�k^\�u�W\�\�d�EJHh\0\�g\�x�n\��0�7\�&�MA������\��f<2\�,�lڑ�\�g+/OkYZ#\�,a,��3Q\�\�����*�-\�ܮB\�Ͽ\�)[�\r@]\r��z�\�Ĵ��=�q�Lb���Ξ\�\'\\���4��\�~�[x&�pl��\�[aC@m`\�1r\�\��\�-1��l�\"�\��V\�BC�\�F��\�/�ې\�B���\�k�_\�\"$7xuL^-G2\�9���3IF��7a\�\�4kI����L\�U{ ަ@&u�qm�i�$x�o\�*R|5Y�\"4�~�BTJH%\'19��Ů]b�.&;NVd�|T�\�/��\�[y-\�\�\�w�1Z��q���\0fz������e\n��\0nbEK����f�\0}-áF�Eu��\�\�\��h܉P\�ܸ��dxfڏr�W0?\�Q;wm<���\�c|F���3*�C�C \�\�\�0#U-��\��\�\�\�*8:��\0�s|�\�u�MJ<�8\�P~\�����@B�X`�eML�\�g9�\�̦R%m��:	����ƥ�_k�^\�\�\�\�,\�	똃H���	�5w.%�+\�7~%���\0h��\�ڰ�\�\�%\�]�e\�\njs|\�p�����\��̏\n=��3WWpYp8<B0�\�{�F��Qp#�\�\�R���,�e\�;O\'��C��+2\��\�\�\0���\�H?�\�[\r�*77��\��S\�b�q,Z	�l\�Ⱥ�5\�����\�\�d���w%�؟\�=b��\0p\�?\�cҨ�\0D\'e<��0B}\'�>�U���\�&J�ww\�w��c{�k\��?�AH@\��E	G��e�(C]H\�T{�\�\�hb>\�Q-�\�B�\�5��r\�\�4�m_�N��.X\�wm&�N4�)\��\�t\�ҭ\�r-��W��^@\��Ǔm\�\Z!�ݒ�\���\�@Y�xUpk9U\�*���{�z\"pp�`��N\n�\0sN\�wM�\�\��P\\�|9ĵT>�b�H�^�m\�\�C-�B6S\���\�o\�S\�2(�R_�[��?\0���÷\�\"n�u/�H\'%\��w?Hǣ��Է��\0\�\�!䊊���-\�4ו�\�=G��o�\�Κ~\���\n\'R�0!�g\" �J\�*�\"�\�\�g�ѻ�&k\�\�3\�-�h�������\��\�P�ɻ\�\� ��]?HZ�\�`�\�F�Y�h���slU��\�H�A\��5Wt�~s\rq�	\�PT(\�;�\r�e �ü{�@�\nY^ �Ltܣ\�Ż\�+�!�\r?�D�\�!�]\��9x�F,�@*2�D�\�0C�s\n\��\0��Wh�lV\�`4\�L�*� 7w4b\�@\�\�9i\�`�)�NAx\�\�}bt\�q���P3�\�\�>\�h\�ۥ\�6\�l\����Э(��2�:�J� cj�\�\�g�[\�C�oJ�0C\Z��\���@-���^eJ�\n.�\�@�\�M��݅\�\��\�aY��l�L�j\�	�\0 l�\�\rJ\�?��=�:U��\�(Ó$�,\�\�aQɉJ\�\"�%�[�\�:\�\r�p�q=\�n�~\�\\/r��O����\�X\\�AT\�)�CY���\�7�Hh�>y.\�^\�\�d��/5+���\Z6\�\�?R�	\�X\�))3g\�f8}(C�\�\�\���\�JӔy߷\���gG�\"\�幊\�e�\�!�B��x�˸4�lĴJ\�J�p\�@�p%�ڱD\n\�\��\�R\�\�,��W����[׈ŋU���5�d\�q\�2JƠ�\�}��d�LFK�\'f��?s�u��qg$��$L�F��E��\��&�`민\\M�\�cT_\�\'�4\�~����;}7:�a�\�z2\�\�\�(.���(�\\�2J�,PdL\�g�j\�m�Fe��a9s���\�Ts��\��|0o��\��\"\�G�\�l�CR�_\�X#ir�Rs���@\���w0+7\�\�9\�\�&t0�\\�첉@V!�98+C\�ጴ�\�boQT���\�/�QB\�\�~�d艽�JmL�\�\�%�j��x��S>b7K/����\��D��\�?�Jڄ\�˯\�\�v���J�m\��\�a�m\�SR�-UN\�k��z�KpP<\�)��U?\�\\��z�h�?0\�p,A(�\����E\��CL\�G\�\0�\��\�\�\�\�\��ĵ�7Iz@�Q!�\�\�@|\�26ߘ�\�\�C�ދaA+=\\.\�͖�o>\�Х\n<\�qt\�\�Q\r�3\n\�Q����.\"B�fG$�\�S	u\n���W���\��bA��p�l�3\�\�,b^�t}��\�\�X[sS�߹v�KOX\"\�Ĭ���M�	@e}��\�v�\\�H\�ւ�\�\��6\�O�q\'\0`��p\�\�\���\�/w�a-S�Y��]\r\�8)�\���=w,-\�ݿHRU\\E�R��F\�QV�\�F����q�\�e\�x�+�w�?�m�s\���(�>#ͳZ�\�i���\r�\�D��+��\�G�\nX�\�N��\�Sq\�\�$Q�\�\�傒��\��a\\��a\�\\�2\�\�0Ӄ\Z7\�\0\�+^\�w\�\Z��V\�יQ+.q.£H\�DZ-\�\�C��\�|\���\�L}!�O�\��\0Ҁ�J\�a��C-~p\�Xm1:�%�,���\0�!��\�{\�\�-B\�x:���\�C��|T�\�\��W\�\�X\�\�i\'�h�Nb�\�-^�} a���\0�סO\���6o,+�jT\Zc��\�=F�_��j\nA�\�3�k��\�]SG��~\�gX���\Z������oP\�k4\Zf\�yG\�@�\�\�Y�n;.շp�.d5��˭y�c_L��E,5\�u԰��],s/B�60O)��G�\��0�A7��A��8�.WWĢ�\\���\�Tpu0E�\0`�`\�Q[ 9e���q&C���\\���\�\��\�U�hX]x� \�h���⪬\���\�)׃.=\�H\�6�\0\�2���ܶ�iW��cn�\���{`S\��\0!\r�-�\�͒^�\�[Q\�\�[�@8\��g<\�\�p\r\�=��(�\�ӟ�F�\Zcl���p&\�\�\�Tѫ�ƭ��<��9;+����\�T,b�֢��?3\�Ř\\9\�\ZY����;��UbpPР\�,\��\��7J�:�A�����\�\��hwQ�{\�\�$$��U�\�\�Yw^�\�\�\�\�\Z�u\�\�{&l�x�\"S)���3�m�3�{] *+�hE\����Э^2\�k�n�̄TV�)�\��\�hcNo3��\�S5إ}\r�	V�\�g3R��\�\�[��\�U��\�ۯ\�\�R���l�HCYP\�1���W9\�hU\nX\�_��\�W	,\�~QBDi_�\\�~�\Z�,/W/�\�=��y\�\�\�\�Y�o\�\�uv\�\�o\'\�_��Ey����C9\\Md\�se\�0Q���xԠ�H���G��EF�\�uD��pq\�?؝\r|\�/\��p4Z��\���\��1�����5\\\�\�\Z\�q;\��	X�Yv8&��ʺ�)W�\\b�[��\�\�>�� }Gul\��\�-X\�\�ԻE\�P6��?p\��,\�,g�c_��X�\r\\o�\�R\�s��	m�F�j\�Hv�\�\�\�-�@\�\�\�\�Y\��]D\'\�9�G�O�5Z!E\�4�!\��<?�1\�mk�\�gi\�Yu�o�E�8E5Z�j\�H�4l\�E�������s�\�;\�#l\�{96B�[a\Z�����\�K\r>\"[b԰1L H�\�\�Ar�\��n��>��I_�{XF\�D\�<�\�\�5W�\�=\�VNML7�\��\00J���\�D�\�\�J�\�t��d`���r�Ծ�𯫖�M\��#\�Kn�R���\�\�\'\r���fYW3���ߵ\"#aT\r\�\�^\��t�N�\0�XQ�p�R�#�?\�F�0�_*E\�\�wl�G\�6����x���C�2i\�h��rˉ�g�s��{p��\�V�7l*{����ӧ�Mu���t�2]v�\��O���|\�\�� �m�R\�y\Z��\�\�\�7�%�B!\�\�$>������b\\1\�����U\�\��l�@\�B0�\�4\�)�\�\�i�\�R�z%����4L\�pb3\�2�\����|��@tpu�\�֔.��lh�\�)n�����y�k��\�\��94�0{e�\\6b�1`	d�<\�\����\0��.�t[�J�ea[\"f�x6~�3E\�-�\�^ҏ�f�ʋ\�ĵ�]�������=w��;_�jQC^-�1\�3\�x�X�:FQ|/\�/�S�0ڭ1,\�\�\"1u̕�U\�k\"\�dB�TA�ƥ\�PS�d`��y��Ype\�U\�\�.�R\�\�p\�\��ʾbE��\�\�\�\�eu\�\Z\�ME�\�x\�TV=ʖ^h�j�\"�\�GVS,A\�Q̴\n�\�:\�VzA\�Q@\��\�_Ӓ\�\�\�F\�\�?؎���T�#.j2\�{WD[\n�\��x��ȷu�\�\�wk�X��a4m4]\�R�O-�\�����o�_S�-C�~e��ޥ\n��\���bՙoy#\�\�6ꡩ聿�r\�1\�=\�2A\��\��\�+�ڱ\�e@ړ\�\�8ޮ<\�B\�\�U+x��\��\��\0���M\�\�\�ތ\n�\0\0���\�CV�CU�\�c�q\�\�3̭.��3�`\�4s3i��ә�\�\�x�\�\�`�U}F���ع\�f�˕K�\�6\�\�\�\�A�/�@2���\�{V���\�4=2�\0�Q�\�\nX\�`�97�r<\�0���TS\�[\�)�/�P�l*�1G\� �`\�x+\����`�\�q\nY\�\�+\�9֌GҀۅ�2�K��\�H\"�z�\��\nÛ�}`�ʷ\�B\�>��\�F�uE\"�\�[\�%�\0sTp\�`\Z5g\�z�\�D-���%��^vGA��\\cQ\�)���\\\�s\�\�-\�o�\�`̨�k\�>x�v\�57�Er@�\��	n�*\�8�]l�,rw�9��@n�A\�f���\�JTz�\0m|\��-G\�U�\n >���_%D�\���۵k�\�,�.D!�����٦\�8X��1����qrs�FX9Qx\�[dl��JW��C3P\�Ya|�J��_�\n�ps{>\�\�Ty\�H�E�/\�0/�}��8}�\0\�D�\�,m\�$\�6�\�4�\r\��bX3?+2\�ȚO�S\�\�\��\�j4G*[\�WQ<}Ayv�N������ű\n�ENL�\�BV��ؕpw}ķ!\r[��b\0{�\r��nШ\�	ܤ>G���\�Mn�c��u{%����w\\GV\�m�\0�\���j҂<K\��1Q�\�}(\�&���š�8�\��\�Q*U�\"�ࠆ�\�\�O\�EZ\�\�j��\0e\�\�2�@\�\�e���\�o\�QȲ�ː�)\�?�1(�l�n\r��O4\�\��J\�ѨY[\�\�J��k�\�=[\�:�\��b�\0ߘ���@K�\0�!\��`u} �Q�Ǣ(\�P�9���oDP�T̡C���[z�`��L���6 ��Q�:\�\�%8�\r�#\�+�L�Ku���\�L��	A�}b\�a���1*\�\�T\r�U���z \�%�A��5}\�b�@;�\0�\�̀\�[�e$VYu\��b5,\�FU)�&I��%�\�cbs��y���\�ي��ҮX��X�@��\"��Z�y~\�;A^qr\�v\�\�}ϼ��\�\�?��c�/�\�D.RT����1��\�*2�\��,\�<��b�\0��@�\���\�\�&�?�\�Y^q\�˻O\�\"�Ʀ�q����ZR��@�,�����pKy\��\�	z�,��	w/�q�d�ʨ-\\*9TĹ\�\�P\��+(�A^\�Җ�q:�]��\�c�W\�`2�m�v|Qky0\�D<*!E?�pQ\�h8���g\�V�ܕ��rܣ:��\�Akħ�7J�\�-�0@v\�oC(�\���{�A�\�,	\�6\�x�\�`�	+KP\Z)�%:g�\�\�\�\������y��ݴ\�\�	^�V�`��\n�A\\�\�缿�7�k\�*�\�\�*),w3\�U�SO��(\�\�\�1�\r�\�OTj\r>�\�gv�cd\�\��\��P\� D\�8��ܭybV>&�\�\�wkgR\�\�p#�Xf$*�@�y!��r\�\�\�r��ji���#��\r5\�Y���^c�\�\�\0�\�Sf�?Hz�\��B�\�EF��H2��\��C@P\�\�\�S�l\�F�GD\�O��KoZ��S\�x�\�p\�\�\�0	IswE���\"\n&���8O�4\�\�d��FQB\�_r,:��5S�\�{\�B�\�\�%�~�\��:�/�Ѹ�\�$�\�\�\nyc��S�^fGl:��Z�\�8j`A�\�Ge\�X]�ZXP�\�/Z\�K�s(2[G\���F	�u,���\�+k��_\�#\�j�\"\�\"蔵H\�(�\nyw=���*��ic\��d<�J\�봮\\1��\�\�\�����~\�\��������\�`֍��W�u�T�]�1{\��\�6�]娤�U+� �/Pj\�\r�Ǔ\���Q¨�j\0VZ�����ll�c}\�\�\�\�Xw1J�A)�e\�8\�,I��<�r\�{�݋n6\���D��\�`ar��O,�����\�`�\\�79��\��C\�\�\0�N�,�ٵ�q\�-*�\�?�^e�������\�L���Wpi(�j(\�\�r��iU�.��nOs(U\�\�\0�Q��P/)�*\�e��A��\�g�@r\n-�QR\�\�(*��c\�(&\�Q��5�B�-M���\�xv��\�b\�\�5q\�x\�\���\rs�\Z��V\�>8�\�X/t~�(�\�\�m\�\���t\�P~�Ve\�@�\��\r\���6\�\�8���\"��#q2(ö��uK�\�3\� \�6�\�q�^̈́[Π�\�Ygd3��4��Ve��R���w��g���\0\�{\\x\"E\���Ef��\��*\�\���\�\��\0\"��\�\Z��@\Z\r0K��d8~�\�^H�\r8���w\"�.�\n\0_`hf&1UMq�j\�\�c\���\��O\�\0��\�\�~�)s4\�|��~.�A\����5�=�T��Y��s-\�Pת��@ү*�ֳ@�b-�+�\"\�O�9��a��i.3c��BpC\�c�\"\�4�\�!UИܨ�^f\�\r�\�\�j����\Z�He�\�@�s�Eۜ\\�.���\��J��\�$��4J(E%C���:�\0\\r��C�\�X�m��\�<����<{�\�_3�R\��Pk+���y�2�*�A[��e����QW\�\��J�(fX�HY��h\�a�\�\�wr�Ĳ\�P~���2\r\�\Z��o\�W�U��\\!3�pZ�L\n �r\�\�H�L�߅G`z?	\��\�Us�\���\�E��\��3.\�`Æ]D 8crDS�϶�\�x�(ܺ�x��1E�\�\Zu�\�\�eqӰC��;a㨊�\�4J!��ou�\� V��1��\�\�e�\�_\�,?\�K��1Y�ڨ1�㸩���f)E˦K�\�3\�\�\�\�|�\�a�/\�\�W�\'&�jc\�Q�D\��i�Ee_X�D��}T��^sQ�\\�\�\����\�w��Z�7K���f47��\0\�@����x~eC�{4n;\�\��\���hA\�O�\�\��b�c\�\�]���S�~\�R\��1\�\r�\�\�aV�\�q\�k�\�\"�u\�*��rŧ̯1c�����ST�*�Lm�52B�!�X\�\�a.��E[4c�!k�!\r��\��\�;�����������\�\�\Z�2�J���\�9uĻ3��;�\0\�/~_�@�\0��Y�\�U�\�P\�e{�O�\�\�O \n�!`Vz���X:\��F;�#�\�x\"\�[�\�픾H-W�/�`\�\�\��\0au����\�0\��\0\�&��A\�\��J�\0)�z�\�\Z3_�>\�WwQ^]\�#i�D\re7�	j$F��([U3*��\r2��\�\'��]}be��W;����0T����tG�g�&�bSp<���ɼK��\'Z���_�H\�\��#�X�#Le\�\�8�w�������F���Rv���k\�Ėd��\0f�\����U\�\"��Gz`1\�\��M�\��*J��\�q\��I�\"�u\�\�	GԃB*\���m��\�hȷ\��)Jx��\�y��\�37�D\�\�i�3Ё�_�\�8W�O&��{�\0�%5�\�\\Q�A�����Q�1\�[\\��\�\�1$\�H���R��i\�M4Lل\�Ve�Z+u��M�z����Z��Q�K\r*���Y.\�\�Yy#\Z\�\���\���\0\�\�\�*�G�5ï��2�Oڥx�\\K[�4�\ry�P�1Աv��ZQ\�\�@R��E����X!oIZ4\�p\��\�\�O\�\�_���@�g\���#�?0��\�:�Xi���THK\�\�4%^����\�b\Z�	ZD�\�3�����+�����ã�I�\�\�W�ɛ�55Y�#���r�(\��2��#��o��-\�ql.��\�FMC!\�*\�\�x[��>�	��\"�R\�\'�EE<ŀ\�ÁP��\�=[��\�i�\�3�\�\�9}b�\�\�*��~ �M�X��\�=ÐrGl\"\�\��\0\�s®�Go�>н���\�#{@��ԬZh�>�$\�_T\�\r�\�]}l��	\'�7W�Ɵ�*$�\�\�l�s)\�n�8{T\r��n芃�\�\�;\�q���[\�����\�]\�2��*a\�\�	\�T�`ǟ\�\�1\�\�QQ\�13�\�\�[OН_\��nU	f7�\�x\�R\�eeG\�]��\�U�*��9\�̃�SM�c��Ŝ�\�g�fx\�\�U4v\�\���\�f�5e#n�@XxOQ%X�ǲ\"\�\�Q\�ſX\�յ�M\�op�\�߼�U�+��Ĵ�#��3 (/H\\2\�[\�wjL{�,\�f(䨽�]\�PF\�X~&7Be�\�MG��\��0\�<+\�,��\0\�&\0\�/\�\�%��ȿaXĥ�k,\��Cp\0\�\�[bV\�\�(�E�9�\Z1�*�|q4���\�_��>ћ\'ݓg\���O��>?3��\�?Ϥ�\��6���\�?3�g���\�_��O\��y��\0�\��\�\���\�\�p�?$���`���?�\�>��ϰ�m\r�������~\�\�m\�?\�\�4�a=\�XF���/\�O\�ϰO�\�','2025-02-27 01:42:42',NULL),('650e8400-e29b-41d4-a716-446655440001','550e8400-e29b-41d4-a716-446655440000','Edini','Amare','Doctor','Medical','sarah.johnson@example.com','0900120082','Part-time','2018-06-01',1,120000.00,'Day',NULL,'Addis Ababa','0913313103',_binary '�\��\�\0JFIF\0\0`\0`\0\0�\�\0C\0\n	\n		\n$ &%# #\"(-90(*6+\"#2D26;=@@@&0FKE>J9?@=�\�\0C\r=)#)==================================================��\0\0\0\"\0�\�\0\0\0\0\0\0\0\0\0\0\0	\n�\�\0�\0\0\0}\0!1AQa\"q2���#B��R\��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�����������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\������������\�\0\0\0\0\0\0\0\0	\n�\�\0�\0\0w\0!1AQaq\"2�B����	#3R�br\�\n$4\�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz������������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����������\�\0\0\0?\0�\�(��B\�E\0��AK@\n;\�H;\�\��(PEPN�\�\���P\�))E0\nQIJ(hP(h��QI@��J\0uQ@EPEP�).({\�Iޖ��JZ\0)\�\�u0\n(��S�Jm8t��E��(�B\�<RQL\0sO\��zS�Ҁ%\��`у@\�\�(z�)�E\�\�҂\r8��\�Qp�v�����S�\0c�\�\0\�A�\�;\"�4\�L���f��Pi��\��Q\�ڀ�Bi)	�@M��4\0�\�I�\�I�RRf�\��)(����\0ZZm\0\�JJ(�њni3@\��f�\��I�ni3@\��f�\��I�ni3@\�!<\�sI�h��&��Bh�\�M\�!4\0�\�Oh\�\0?4f��3@\�f�\�y�\�\0;4��f�\�\�i	��HM\0<)	��\�!4\0\�\�M\�!4�vi	�搚\0viS	���c�I�f\�ij@<�&i����\�\�L-M-\�\0<�i4\�\�\�\�%Q@EP�)-\0(\�E \�K@\n(��\0QE\0S������▀�IJ)�R\�Q@@\�IJ:\�\�EZ(��QE%\0:�(��(�P(��\�K�\0Z(\�4P\�)(p���\�RR\�\�:RR�\0Z\�%\�Z\0prM\�Q���\0\�\�\�I-Ґ\�ڦPj�ާ�چ u5��z�\��	\�O\�*�����U��\��hTʫ\��Q�\�xQYffcɤ�z\ZC���W\�)\�9V��s\'��G\�\�\�i\\,l-��\��C����\�WST�}\�Ư�ԻU\�_�׊x\�\���.�\��O�R]Y	*\����`R��/!#��<u�V,���X^G\�R,\�\�\�h�PNy���)�SIHM&h\04����@E%&x�RRf�\�\�I�3@E74����4f����\'�3@E&h\�\0)\�IHM�ZL\�Rf��\\\�3Fh��=i��-\�0HO4\�ԅ���HM74�����*=\��f�4\�њCM!4\�iP�HO�74����&��)	�f��n\�BԆ8�i>�\�iP�{\�KZi4�\�1۽\�	�M-@\�!4\�\�\�\�\0�i3L-F\�\0Ri	\�M!4\0�\�f�M\0\�\�)1KE\n(��K@��ޖ�ފ\0)hPEP �Siq@Ţ�Rb��SiE\0-���\nQE�\0-Q@�����њ(�b\�ѓIE\08\Z((��\�E\0(4�4\�KL�(\'4���������&�&�KHɥ)�\�Ҙ@����)��7$��9�oZM��ڜ\�;\�inv��y�e��b_���.�\�GT\�rܳ\Z�q<(\�\'�\�|Ơ.OCF1֍�\�H&��6�pC@\r\�R�OZ\\\�C5\0(��<R\����Fsր$b�c\�\�ڛ�CҔD;�\07\�I�{S\�kJ#��˯�\"��L\"9��� ��g�P\�w��\�?�T{7uJM�\�E+��\�I\�r;u\�f��,}\�EK\r\�\��H\�F�x\"�8\�R�\�D�,�����2\rU\�`ɤ�y�\�LV�m\�f������<Qp\n)3Fh\0\��\�\�\�\�ihsFi�\�4\0\�Nhɦ�\�&h��u0�)3@\�4\�x�\�@\��n�u\0?4��\�\�\0?4��M\�4�h��\'�ni	�搚ni	��A<SwR⁎\����\�\0?u&i��\�@\�i3L\�F\�C�Bi���\��HM74�\����I�Bi��HM!4�\�ci	�\�!4\0SM�&�\04��!4��C�M=h\�&y�B\�ғ4f��(�\��11F)أ\0�R\�P\0;\�\�(��.(�R\�PS�I�ub��\0LR\�\0���\0��h�P\�E���(	E-�(���њ)(z\�\���\0\nZAK@�u�S{\�\�\�IK@.i(�b�~���p9\�@\�\�f\�R4��\nX\�\��Qޕ�\0S\�Z�5\�#\nh\�\�\�UR\��i�acHNN(\��џC�M\��dz\�q\�ѴRm\0��f�1����\�F\�^�1M\�皌�\�\�\";\��\0G\�.եt�\� �@�qK�P\�\�\�\���枲\��x�\nh\�ܕ9�E\�?�\rQ��\��8��՟�f(Ybn0j�ΧFMZHc\�D/�@R#\�\�TM\0��\�W�\�\�/Y����#�׈�/`z�b�݇\��5f	0\�\r�\�\�\0�\�棔D�\�`\�q\Z!��v\�=�.+�,�sS�\0hFU\�\�D\�b�M@��J��0\��}(��?қϧ�]�\'\r�(�R\�\�\�yH\\,?>���Hӊb\nZnh\�awQ���3@X]\�ѻژO4��\�4SsFhI\�4�x�\��L\�sFh٣4\�\�M\0;u�ɥ\�\0;u4�4\�\�\� ���4\�\�@\�HM74�\�;\�!<S3A4�f�\�sFh�3M\��,�4\�њC4�i3FhҒ��):R��\�\Z\0L\�h�4Bi�ҚC@	�i4���	��\�\�!)(4P ����/\�K�LR,Z)qF(QJ�J)h��K�c�\\Q�\0JZ1K�\0J)qF((���\r\�(���\n(���R��\0RR\�@Q@�1KEb��\0\0�\nZQE\0�- \�K�\0Z)3K@.))W�Mzu�%��*��erNB\�#\\����Bƹc\�C%\�\�j�\�>Ԅ\�ց��~*E+��`\��\�S\�4McL..\�7S3Fh�\�h\�i�P+��ZR\�ޙEq��J�5i�\�a[\"�\�Қ�Ru�d �\�\�eMG�zP\'p\�)U�t\�[�\�M�\��v����yyc�\�V-\�\��yl�oa�\�)�\�}?g\�@=ڭ-�^d��aҡ{�Q�#w���\�\���\�ԆM-\�qp����JmC�n\'֭.�Y	�H\�[�\�\0v�fCI,Ǧ)\n*}�I�d\�e��ʹU���}^BM1X\�\�ȧ�S\�s~a[\�\�/U\r��?�mS�j(�$m\�Ryc\�+ֱ��_��~�Ɗ�G\��P(,��\�H\�94�M���Q\���P )L+ڞH$mjz��w���EN|�j7�<��\�b3\�&\�\�F\�i�`\�\�/\�9��m\�GJN�\0��4\�h&��L\�s�(I\�4\�74\0\�\�n��\�\0.iwSsI�\0\\\�f�\�\� ���\'�3HM4�њBhsA4\�\�O\0��4\�)\0�RQ@\�4f�4f��Lњ\0\rQ@\�4���Pi\r8�)�C)\r8�n(���b��\r\"�4���b\n(\�� ��њ@i`уK�1RXb�\�Q�\0AKJ.(���Q�\0h�\�(b�b�b����\�`��b�\�JP8���b��\0LQ�Z(1F)Ԕ\0QE\0b�S�F)�\�Q�\\R\��1K�1@\0��Q�\0(\�(�\0\�֝E\0QE(\0��\�iX\�y�\�ހ$�O>ce��\�\�Q��Є+�Ɯu������\�۞�\�w�  �jr�\�t�\�N(\�!�i3\�\r���b�#�zP�\�\�h�dT�Qҗ>�)�ph�9�n_\�\�P	<\nv6��K2t+�zv؞���qҥS\�j\�v�7�Z\Z\\M\�آ\�\����jFP�b�����\�	���y�([\0\�}hm\�R(�\������K�Ƹ_Z.s�O�aR;Eh9o1��\0:2\� u�%xT|\��:\�/^Pwڠ�W\�4�\�K�����=\�E�_� �v��\�Ƞon��5׾\�Q��8T9����*mNM4�Y��S?���\�T�\�v�7$��ih\�7\�M!\�$oV�#F��ElpI\���\0��\0}�OHf=M<W���H�\�r��\�H��C\�f�,#a�\�,H>�-��7S���u\�\�c\�\�+ZF�$\�n�Qˊ�>��!y�D\�D}�*�\��\�\�yL\�4Ķl\��\�����\Zx�9 cֲ\ZČ\�\�N\�Ё\�?Z`jIj\0\���$P��U%���d���aI�A\r74�\�8*h\�\�\0\�\r�\�s�t�\�\�Qp!>���\�}\�2h\0��4�\�\�4�њ.擽�\'�.\��f��.\�њ3E�(\�Fi	�p\n(\��bf�4\�(i)i)\0�RQ@XQҖ�t��0����\�\Zu!\0\�m;\�BbS)�\�)�\r4��IM\�\�Ji)�QFi\r 66Ѷ�\��5�\�Q��mh�T�h\�@X�b�\�F\�\�`R⟊1@\��\�R���Q��\�%I���\\\�@�\�m\�Q�~)\nӸXn(\�;m\0Qp�\�Q�~(\�\��\�Qp�\�)أ\\,6�v(\�\r�\�Q�.+\r\�\�Q�.QK�1@XJ)qK�\�iiqH���=P�m\�\�\\�\�*�\�LA�梚O0\�:V\��bn ���\�\Zw\\-1U�sQ\�,E>S�Zj\Z\0\0\�¶M�C\�\����u7�8�gڍ\�֛��c�+\�o��\�\�(�\\�;�)�-\���\nU]\�\'�\��^��B�S�\�P�X�)5b\�w1�ù�krQ7J�o\��\�cs!�s��4\�2rW\�\�\�\�s�He��K9Ks�7z\�L<��R�w�\"����\�@\�\Z\�P\"$��A�p�ýL,U��\���\'�y9��J��Q\��P	���\�T\�h\�n\�Ҝ��\�hY�\rH.�)1�>˳�5\"F�:TDȽZ�\�\�\�2\�\�\��^3JַR�xǥR\r�sS&�\"��q@�Z�\�e嚜W\�?8\�P.���j9.\�r�@wnR�\�1>Ւ\�ߝ�$o�_�sQ���M��O\�+=KA\�\�\���(v\�`�� �:(�h� #�Q���\�*�\�\ZAl\�\�\��f\�\�\'i�G��TU1�MH<�\����ر̔\�4�	+6֠�,�os\�9��\�\�\0�ZD�\�\�=�2fX��KUw�׀�?Z#�@	\0P�\�\�Ŷ�\�9ܤ�*Ž\�7�\�Z�g}R�\�d�)�\�#�NA�Fjޥ �\�S=��\�\��4\Z��Pii��(\0�&�\�@X\\\�E�`��4��`�4Q@X(��\�\�IEai)i)R\�L)i�\�\�\n(�\��\ZL\�f�\ni���\0��O�\�!��R\Zm4!���i;\��\ZZC@�h\�S\�ecsr-�m���Q�ڋ�\�]�.\�j6�S���I��/�.\�j.2R\�g�)\\6Ѷ�\�F\�\0�mjm��((\�K��m<Q��\�F\�`E���.\�6\�\"-�b�\�\�HWڀ�(\�K��m\0G�1Rm�m\0G�1O\�F\�aa����b��\�Q�~\�1@Xf(\�<�LPqF)\�Q�.�\�HG�Qp�a�\\qQ�ޠ\n\����Wn�\0\�U\�T�c	\�4��QIК�D5\"sQ��\�c��4\�\�i\�O<%\0�F�D(4\��\�P3�1�C��O�\0!6)\�p1@��4\0QHi{P�\�J\�\nAҔ\�\n\09\�YH^MFH\�*�4o%�y\�L�\�)�B�h2�\�2a��M)e=0*������\�T?{�����i\��jCE�\Z�G����\��4��P�JӅ�� �L�J�\�~(�)�\0{�,W;9�A\"��|\�\�1q�LS�\�y59!��\�\�@XAo\0\�Nh�Ur�b\�\�<����G,r=��rƜ\�j�n\�kTXF;�S�\�:\n\�X�o���mɫ���\0\"ʘm�0p�&�X�\��\�)�z��#ڑ���S#���\�\��aW�\�fa���-�\�H\�\�W`h\�\�ަ�,�4�N�I S֢�\�gc��T\�|pI\�\0M4�9\�m\�t5\0F���iG��Z\0�\\��\�Z�e�\"\nkS-�9\'�ii�8\�\�T1>�D�~\�8\'p�(�+3Sӱ1ku;kF\�ؤ�v$��\ZО�\�T\n)\�W8�V��\�Z��Bw&5\�dV�\�K)���3IHcM\Z(\0�4���\n(��\n(���Q@Q@E��-Q@x��J-\�\�昅���3@�\�sFhM6�4�CM�\�;�hB\ZozSE1	A�\�P]\�RyUl\�h�\�7+��וG�@|�<��\�R�T\\eQUZR�t\\\n�,\no�jዊO*�\�T�\�Y�~UU��i<��\�Ryt\\\n�]*ю�\��[e*���.�+\�d�(��N\�b�\�\nU�\'�E\�\�)6U�.�g4\\6Q��\�)6\�MMLV��E\�C���7�I\�\�p\"\�Fڗe&\�\0��&ژ/�!Z`E�b�\�;\�\0\�8��E(�\"qP�\rZaP2�LF}\�̕E���yĜU#T�cE#R��nsTH/4�\�ɚnI�Aޤ#�L\�\"�\��%vڪ*\�\�z�\�P�q\�\�@zҎh<�jU\�):ҵ �@9�\�/AJ�<�\0P(&�\�jLg�@%M\�\Zb�zT�N{\�Q\�EJ��Le��&F84�攀�ZC�\0n=\�\�\�\�Ӛ\�Q@�z9�\�}\0(vZ�\�/\�<T!Y�PT�����\r\�\�\�s�-��\�C\�R,�\0�R5�co�\��n��\�dzd\�r��ƭǥ]�I\n�M\"ߐGjQ�\�ԐX]�7H\r]�\�^�\�\�\"g\�J�$��8���8\�\�\�y-P\�m\�Hv(-��\�i�\����y	���\�J\��.\"�ĀTL#\�\Zf�h�×$U�U#\n.%�f�\"�\�UF\�ִ\��\0�������y?\�7\�c\�\�F2�\\[H~ix�%�FO���\0z�\�l�����+�7�D>���W,y��\0e*p�J\�q\�fl\Z.3~bG��Y`d=*��\�*���n\�I>]�\�;ӹ-\Z\��\�\�ܣ���\�n8\�)\n�1\�=j{y��??j�\�hꅹh�E\�5��\�H�|ˊ\�\�n��8ݙI=i\�­\�P3\�CW\�@��W\r��H�̍a�5.\�f�\\Rc�`�4��\��E��\n(��\n(���(��.\�R\�P1h��\�i�\�I��\���4\�\�\��3M$ѓ@\��\�\�\�\\\�I�2i\���\�J4\�S��\�1\r4�\�)1@�`��A\�Z�ځm\\|\�_)�\�{RyҴ�\�\�g��|�o�\�G�\�Z_g�\��\����\��}�<�j\��?�\'\���\�S4\�\�I\��V�\�\�6\���\�fy>ԞO�i�zo\�\�\�S;\����O�h��\n9�\�f�O�\'�}+K\��\�;�\�y��RyF��M;���:�b���^\�\\,R1\�y~\�t\�I\�QqX�c����᎛\���qX�c��up\�M1Qqتc��\�َ�c�qX����Y\�HR���\�i\nՂ�ԅ}��_e!J���R�+��\�Z\�D\�b��Q�1\�sH_h�\�E#�{\�\��\�Uʳ1\�4&R�\�⨚�p1\'5RE\�\�U\"����\�Sq�T@�\�S<}\�Sq�`/qRc\"�\'���8\��*6\�OS�i�u�\0��J��\��1@Ԃ��\�s@��i�)sN`:\�\Z�iv�r:R��T�\�dR�\�\0:\n�\�dq\�)�� rj�A�=X���eY�A�֡\nI\�F\�-\�3\�\�N\�>\�\�S!f\�\�%M9FO\�\��Oɧ������P1p�֝�vG֍Ԁ�\�#�/�qҢ,zn�hq#ԩ;�j�zѽ��Ԭ5�����\n�\r\�?z_ֹ\�\���{�4\�X�\�����)�|\0}k�Y?|��|\�\�F4s��c�.�?ޥ\�aޔ1��\�V9�\�>�f;!&7\�R;�M}n�?Jr\�\�t\�J�keg�?:Յ\�\04㡅�ƭ�x�P�5.��F)\�u��b����\0�Z1��\�C.��\��\�2\\���z�aq�(^��Tin\�\�8�M�{S��Y�����\��ʀ�\�\"\n0��{�T�\�\�|\�ʰE\��\�@N⇳\n��P#\Zt�\�\�\�\�\�Aީ���\�rkvT�G-�Y�H��\�e����sN$M��yY��5Ff �s�S�ap� \'\�G\�[Ml�fF���@��o>��}�݅Z�K�\��m�d�z\�\�h�tA\�\0q���6�\n�;\�Z�\�\�\�<��GAC\�~\�\�\�\'کMi�\�*\�ǭQ�6J@�h�Ȩ�a��)J\r-!����\0(��C��(\0��њb\nCK�Bh��ғHM0\Zh\��CA,	\�\�RS\�\�\�E\0:����(�P!\r%.(\�\04\�R�I�\0�\�o\�@�����,W�\�z\\�ٹ\�J-��Gɥ\�\��wٽ��7�i�i|�9�c,\�{R}�ڵ<�<���c/\�Ԇ\�ڵ|�C��,d��ڛ�oj\��E4�G0�L��{SM��k�\�5 q2~\�\�L6\�կ\�SM�>ar�&\�ښm��X�Lh9�R��m��>\�\�Z�\no�O�\\�SA\�M0{V���h1G0�L��0Îըa�4<S\�)�b����@\�L1�S�r�<�O*��qL)���b���c��:a@(�JaZ�\�*#j�*���\�X�>*�\�bRK\n\0I&T\�\"���泧�\�\�\����\�xnkD�oS[\�� ����_�>\�2֝�sMnv�jAr���\�H\�H%\���囗\�ZL�B\�\�I sT�\�74��Gh4\�i��\Z\r0��e*2jX\� �384\ZH9�\0�\�\�\�GJ\0�\"�z�\�M=\��H䞔�\�P�\'\'�\0(\�\�j�M�Zd�s�\�\�\�\�Ha{�\�{MOp��\0�Y\�J\�\��&|�z�@\�ڦ gn�M�\\�Б�v�g��\�\�U-ҥ\�1�\�\�a\�f�psP!���\�i��8�����\0L����\�@R\�.qOP� \��ѐ8��ܟ�B!o�\0��\�MJSʀ(�O\�)8�_�p\Z�3�d\�\�=(3C®\���\�(���F�nqWc�289�M� �Ք���J\�5���Y�jD�R?w�G�t��Ճ�+.\�i嗚X\�.qY\�\�,X�j�g�\�~)\"�P\�\�\0�����\�\�ݹ\�\�Sڦ�\�����\"a�{\�2�[͇2ǮMh$h�� ԋ�B\�t,=���\�C\�Cj\02���j��F1���g��G\�V�E��@\�1nA\�S��zӥ�7c�Z�\�`���d�6�\��u�����\�*2��\�$�o(W��\�\�E$U�+9\�\�椂fC�B��Kk%2UKmX��d\�\�\��Tj\�\��Z͔\�S\��ܓ��\���Q�YWZ\\Ĵ�N\�M\"\�\"�\�k�{\�;�<�i�\�&�\�0A!��o�Z��\�\�8\'�V#\�>��JCK�A�\\�	EP ��(QE\0QI�3@�4\�JM!4\0��i\�\�L�4���X�QE4&\n(u-%.)����\n1@	IN\�!\�@\r4����>�x\�i<�VE&�^Iꐄ�K���#1ҍ�Ҧ	\�(�ҍ�Ҧ\�F\�\0�`��1��h�h�,R\�X\�)\n\n\0�\�o�*\�\�iAM�c҂��Ҕ��ъo�\rY)M\�E��bƌU���ɚw���4ch�1��w\nJa�U��¢�2J��\�\n�\�Q�\n�\�Td�\�Ze�\�j�\�U��d�L��aL��\��\n��ZV\�2lR��D��j\��\rG\�ʩ�}^L@\�\�Y����b�e&=�\�<�Q�-\�ԁ�ץ# =\r]�gq�4����s�`?�\"�i9�^\rO4�h8\�!��F\r�)M%/Q@����\��d;P1O\"�\�Ҍ��w�a\���=(_N�\0\�\�\�\�JG�\�/��R��Rρ\"\�\�Hy�p&\�>���Ҿ{T��\�dt\�5\\4�PU�\�:\�=j90��Y�\�O�-�Ģ�rv֩�˅�sب6��ǭx�\�b[h��\'�D��$SbLOj|\�*z��/�Z�?\�(_\��\�\0#]ǽ\'ާ���N���$|�R�\�R�$n#\��Y�\�\�\�\�a�1�\Z���\�J\�\�p�)�B�o�{Rؓw-C9rUz\nYN_j��8L(\�h�D\\��F�#�)\�ЪI\�sL,4�̼\�\�Y�8�X�\0x�`\�\�vw9�\nq�rC�\�,$7=j\�P;w��[m�,\�(uW\�EG�\�\'4�\0�.rd�e��\r�\�ڭ\�#\�\��\�;{q�\�\�V�\�\"��i �U:\�q�1Y\�)�r�Q��O�\�\0iM���\rg]YB\�<SMڕ\� �*	&\'\�B\�\�A;EPx]�+\�9=*���\�h�\� \�}�elEJͿ�֣%\�\�t�M�B�F4\�#D� �Nnz�)�tGz�<R<�n\�\�qOD\rб \�3����\�b��\���Z��{xl�\� \�\�\�)����-��ˋ�&�F%+���\�c���\�XFA>\�\�\���\�nG5\�h�ik\�ɸ{\�u�K[�Z\�FGaR\�ԎKs��F �4\�ch�*\�Ґ�qY�Zch��h�(\�\0RdQ�@	�3KE1��Ri(\0��ZC@	Hii	�LJ(��P(��BҊJQ@QKT�LSH\�HG4��i��>�qM\�+�nk\�=Qإ��Ph\�Q�@h\� SI�\�\0:�@h\�\0-%\�M0\nCI��Z�M4n��@S\r+\Za4\0\Ze)4\�\�X.\rL4LcN�q\Z�4�5\ZiF\�Di\�j\"\�I5�&��٪�lkTMOv�X�L�Ȥ\�\�x8�r��u:�:U�L�\�\�8\��\�?��]V�O!\�j\�ۺ��\�\�\�8\Zf0Ԣ�C\�+�nh\�@\r#��v\�ԛ())\�Y�m!��L\"�\r���u�B��Dy#֛�ӗ�\rC�\��\�4�\�ޘ֐��\'�S\�\�\�Ҁi4�\�i��\�\0T\��\�I(�\�i\��ހ,���SP��\�֦�\�>��?z��G˜U��ʇL�7zU���m\�jUl��Q��\�W<\�ERnf+\�P!�@��\�0)�e�=�H�P\��\��Ulnrj̃}\�D\rH,\n�S\�p�>�z�S\�\�:%�\�9P;\r�0UW�\�Q\\7D^\�j1�7\�U\�t�4\�q\�x���QS�Ar}*S3�\�@�@�>i\Z�$�ߥO2�\�U�p\�@\�D!\�ɧ���\�(L��)~^�ԀT��;z\�O\�N(-��	5:�o�\�\'\�P�\�\�H\�P�t��\�BYK����Cy�wa��S$�$͂Ր\��͒j�i3�\�H7\�\�N=(\��D�M�\�������I�>\�&�Y�?s�����\�\�d\n�N>Ia�\\y��U%M��hd\�8�\��g�)�{�\����\�<n���3��4X.h��\�N�\�U\�f\�2�Ҩ�H�	J@ҧݓ�zv��\� �\�L��Mh�w\�Ċk�~��k�\�@�s睴�A��\�.[n1�D�q\�x�\�\�0M!b8�>\�\�I=1�\�!�\�i0XzS�\�s\� f�^��S�+kK��F!\�\�)�]�8�v��g5�Ԇtz���_����s6\�i)F\�\�h�\�\Z��?Z\��d���5E\�\��\�i	\�?.)Oj�\�\���\0m-%\0�RRS��Q@��q�\�R\Z_ZC@����R\�B\np�Ҋ\0p��S\�\0)h\�i�\�\�DSqRM\�\0}\�(*�I@���N\��o�\�Z<\�\��깖�e�A\�\�U<\�Q\�\�aܶ^�}U3\�y�\�-\�\�U|�)�z,+��\�K\�o>�\�\�`�k}!z�g�3Ӱ\\�\�L/U��\�=;\�%\�6���\�5;\n\�%1��\�50\�N¹a���J���\�\�V\�\�J�\�Q4����rv��g\�2\�M-RD�J\�Tm\'IQ��U\"[	d\�\�\��T\�[g�e\�\�\�!zUD���P˅\�k3sd\�_�]�ǚ�\�a���[�i��Qc<Ҍ�b%\��\�L\r�w�@��M�]恎ɦ\�\'�I�M\0)��\��\�\�1i1N�@)q\�(�����W�v�qC�5#�\�\�B\�-H��i����,6O�\�Қ\��g�K \�p:\�᷽a�<\�v� M\�c��0��\��\�h�ű�Z����v\�8e\�jl	F;\�)!\��ͣlr���^&V�GJp-\�c�@\�Z$,��RT\nI��$�?�1\�8��+\�s�O*C^;f�#\�\�q\�F���T\�\�*T\\���c^إq\�j.F1K��*�L�\�\�ʜ\�q؀G�~j1}k@E�<\ng\��\nW)\"��\�Ȩv�%���Ts[��P2�#憩Jc��^A+J!\�=\�&\�\"	ڑ��vq`>�y;FGZw.d\���\�a��WeA��\�,q;8�⋅�%�*�/�\�\�\�O���ګ\�?1\�LV,�\�\�+����1U\"F<\��\�\��wP��cs\�\�{եҁ���T�\�\�u��Z�m}�YO֐ėH�Am�\�l��&q[\�\�&v\�ϥe\�	�NE�/jT�������\�\�$�T�\�|�\�UP\�\�sH�歵�`	l\Z�m�3�i�\�[rOZO���ɭe�F\�i\�\��&�2���\�\�*x\�$�7Hx��\"�c�U�\�\��\�c���Uj�\�یLH��\�\�W�~jg�\�q��ց\nP�����=3M\��tn��[B\�w5\�ֶe�`X\�b<�SM��K\�_��U=:T_l\�B���j\�\"\�i�2w�mm�\�\�+�\�/\r\��@�]M$h�\0y�~h^�}h`������M4\�M&y�HR\�E\06�(��(��%-!��4���)i-1(��\n\n)\�M \�\��ڐ\n}1\r�#�}4��F���C=\�\�\�K\��U\ZQ�i�޼\�Sйs\�����ꉟޚg���.hy��\�8���>;\�\r\�5\�4\Zz�\�sֳ\�\�k�z�s\Z\�\�c�\'\�G�d}�ޓ\�^��\�l}�z\��z\��W�!����\\Ʒ\�}\�>\�\�Yj��\��\�\�Ư\�=\�>\�\�YF\�ޏ�\�PsP\�Z�\�sֳMϽ4\�d���9�#q\�M7��g���\��\�7�Ǹ\�P3{\�Zl��\�.b\�ޚg\�i�_zv1s\��������\���asL�\�%@d�)\�W,)�J�̦\�ɞJ˾����\�N7S�\�y�˄!\�vddSX\�Y\�\�\\H�+��g\"���CҒ�\�8�3��4rO�wqF\�y��֚I<\n\0h\�\Zw�\�I�\�N�\�l\�`���\�p\�٣niU=)0B�&��<��Cj\�pb��X���b�\",R�|\��\�SҘ}���ڜ�f�0r�\�J-��j%��N��Թ�\�2E�n\��lO\�ŧ<\n�l\�:sG0�O��1�ܯJ\��x\�1�1ڎ`\�1�S�5����c\�8��\�\�\�\�2Q	\�jV��d\n\��	���ҋ�!� %�֤\�MiEhW\�\n�-�!�0ȩ�\�I8��#�H�$g�M�!���� ,x�-8�\�\�\�\�9�\�\�3�0���\',+f\��\�\����r:Rl��[,��Il�\�dWP�r�F\��n)s�\�Ɯ[�b�lp+�m;i�\�dm\�4s\r�厜N\n�kB\�,c��\�&�ǂ)룍\�/4s\�q\�i�+��\�v)\0c5\��\0d�\�Ȫ�i\�8+�\�\��-�����\�t�\�I\�]�Ɩ2x���=�\�U)	�\�^)S�� ��\�b+R\�р\�T\ZߞEZ���j9Ѐ�0 �T�nU��({\�i�i��\�X�[�q�����E�/˿��b\�\n�\�A\�*��u���\�<�\�P\"���q\�\nr\r\�*}�х\�>jA\0e\�CLV*��\�Gm��B\�*r	?Z����˼v\���@X�C�S�S2u-V>\�.~U��̈́���)��\�wq��\�en��U\�\��%�N{x\�g��Үͻ\���-,�#�=j\�[�\�)\��-s\\ˏ�@�mQ4�|���[\�1\�*cܯ\�}Mf�\�N\�u>�v9���:��Hׁ\�l�֍��שU.���\�\�Gs�\�\�M	��LZd\�#ީx�`*P\0Ojв� Jx�v\�&�+\��0F_�\�_�Ԅ\�\Z	ES$?\Z(��\n(��\n(���\r\0��%+v�� ��(S�6�(@<R� ���&=i����1LCqHE>�\�\")�#\ni�z\�M\�Li}\�IL2q\\6;.Z2�Za�ޫ�3Ӱ�Yi�\��\��\�M!6Yiϭ@��\�-Wyj\�&\�<�\���\�T<\�<\�b�\�>�y��Cͣ͠._�\�<�\�T|\�<\�Ar��I\�Z�\�R���\�\�\�8�\�y\��S\���/\�rߝ\�A�ީ\�\�E��\�\�x\�U��\���>a��/\�U�\�o��\�7�\�\�7\�\�a=\�7T;\�\�@\�x�wQ��$\'�4�0�0�0	~a�ƾ��Z��k7R`�Y��\�\�\�ֈ́ɠ{\�=h�\�dc�@p)�\0�y��J�y��9zC�\0*�n\�*�rwsVoz\�V�\�5\0ƕ\�6\�\�ł\0\�HF�� TɕI8���E*&Hf\�\��\�\\��\�S\�y���t�c�dqNE���a�=*\�p�t�5欢ₒ\"XqڦH�J�S*R)\"��\�K\�J���\�\�#o\���\�=+H\')�9\�E\�\�q�S�\�=+@E��\�\�p\�3\�\�OU�\�Q\�j\�p\�Մ�ڎb�Jik\�S���\�v8�\�ZXb�\�|�ji�OJ�t\�0+E\"\0\�\��\��x,B�{\�\�\�ێ�l�\�v!�=(1(�*sH\�\n��\�-\Z�\�&\�\�#t�\�r�3`\�qF\�t�@�E\�Ȯb\�8桒\0\�V�ъa�4\\,�Y�\�\�Y�6�\�\�]<��U%�6r*��q8��v��쇥v\�@����\�Z)���[y`�\�5``2�JޖȯqUd�e<+K�\�e\�B1�\ZO.D���В\�\�ʯ5F_2,\�qL\�Q;y��N+t\�\�U�\�7a�ޕ�bFa\�Q�,��	�^�5[\�@�f{b�\���\�~\�.\�\�4�\�\�8�J�\nk\�[G��&�`[�H~E\�+zTj=�L�Z�\�I\�\�\�\�K5\�I\�\'�H��\�;��#�P~5<6�r\\\�\r�Ƞ\�L�9��\�8��;(*ҝ\�eE2L���BAZ�zJ���@�U!p3O�����\�4�C�^$i\�#b��Hi	\�MX�f�\�f\�T\'\'8\�\�PM%\0��P0����\n(���(�4Ph��\"���1(��b\np�Ӆ��j1R��&=jJb��\n�\0�S���b# S�SH�g�M!\�9��o�1�)�\�\�T\"\'$�P953�*��	#v�\�9\�K#b�H\�\�\"G4o5	n)7S}\�Ơ\�J\Z�\'Ͻ�\�\�\�.\�]\�\�\\�\0�u&\�&�\�\"L҆��J\r0$\�F\�4f��n�}G�3@�\�4n4\�њ.isM\��&��Lњ\�M)<\�I�aҲu7&�z\�f�i�Y�(\�\��OQ޴ G�\0\n\\g�Bq@�4\�\�޴����g5-��\�~Z!b4�$��\0S�\�#�G\�\�d��Y�:T�4,�|֔Q�*+h��\�\\A��ͣ\�8�)@�#�A�c=jD��R(\�,F*\�kU\�j1ґH�1���5kVQi���\�i��XU�R@�xJz���\�\�Ryb�)J���vҞ5*�8%Kc�Ԏ�D�V�E4�C�>*dZj�R��Q\"�ڤQH��a�Px�\�Ǌ	\Zy=j7\�JI��4��N���\�d\�1\�\�&)��\�UZ\0\0�fi\�iv\�6T/�$SJf�3\�w�\�9�v���T/i\�V9����U,�\�\�t��كڴS#�危S�ҩ\�X��\�f�\�T��5jFR��j�0EQ1oeP�\�+�\�,w#0�¹y�b�֩�\�E)S�\�{\�yc<1�*Ԑ�@A�[���%E\�\�z�̬W�T�H\��9\�\�N�Ƀ\�92;\�7�\�`4$��9Y��\n�oe\�\\\nr\�Hܴ\0\�\�|����\�%;I��VEnOZ��\�=\r!3F\��\Z�-�J�\�\0�\�\nӀ�!;�\�X�bi69\�pEQ��$\�W8�z���ұYNjFH\�gq��N\�/Jns@�4�Q@�3IK@\�4f���\n(���(����(\0�4��%11(��\�\�SZx�\0�*E&�*�bd�RLQR�THA�PE0#\"�EHE\0wtf��7W\r��M1\�٨\�`!sP9�^��Q,�^j��jԕVA\�R%����)�1F(��K�J\0;f�F(\0\�.i1J(\0\�\0\�J0\�(\�(\0qE�\0QF(\�\0Q�1@\r��b�\Zi)\�sI�\0AUor�U�*9Sp�~U\�\�\�\�\�h\�\�q�V{\r�V�\r*\Z���Vl�F)�AFr)	�P��R� � \�4L�\�jռX9<\�1.j\�)���\�b�\�A\�*U\\STT�T!ؤ\�)ؤ\�\"�qR�ɨ�SD2i\r#n%\�U\�n!ґH�YE�sVPPR&�b�^j$Z�C-\�1R�\�STT�sRX*f���E�h�\�.\�)T<\�\�\rD��ԫ@\�*�\�R���\�CHd\�)�*44�s@�\��Rڔ\�ځ\�Ma\�RHs@J�i\�Fh\�U�\�H�/J�.Eq���\n1HR��r\"3J\�)1Ht�����LP26\\����X\"�V�\\��᪴�k���TQ��\�&�s7vC\��oJRKm\�.\��b�5m7\�BTsZ\�G=H�\�\�q��\0�X\nb]\��\0�=j\�\�\�e\�1��T#|ΰ��\�\�BfS=�zc	\0\�Չ#h�a\�\�\�H�\�Й%\"۞)�Y�\�zU��\�7\�pv�\�P�B�7\�1ڭC<U���\�\�\�5�f\�\�\0��\�\��{�\�\�z\Z�\�B\�i�8#���=�P#�\�ث�8��V���ּ�|���e\�6�\�Ґ�2:Ss�3�@9��(��)h(��\0Z(���EPHii\r\0�\�%\�\����)N\�<v���2\nbd�jaڡAS\�1\n)q�\0�c�b\"+M\�*F\�(��\�v�\�cڷ[N��\Z�y\�\�\�b�m���7�t\��\�\�ӽ��)\�<m\�P<m\�]+\���\�{U)�\�sOzTzWL�n:\n�\�q�\�R�.\'4caڛ�;W@�y�\�B\�\�\�s\�b{R\�Z\�������\�V3\�jѴ5��;�#��*Gj\0�a�\�\�b�\n%��S(\�J\0(������\0(���E-\0\�9��9�\�\0 \��1HE\0W�=\�Xױbq[��\Z�;��M1X\�NMpiH(i�MR!�	�\0\�ҔP ��\Zh�c\�C.(�\0�\�\�8�S�U\����Q(�TkR�C4C�ii\�\�4�sҧ�je\0���\�U\�j!ґH�55e\�QՈ\�&Z&AS�F��Z�\�(�*-1G�SRP\��\"�\�)\�@	ڙ�\�h�@)\�J\r\"�TԩU��R�,�5&څjp8�C�z\�E u�-@��)��)�i;f��xO=\�NjP�\"�J�u������M\�9\'�p�Jx�+�+Q�jL\��q�Rb�E7\�9���1H\�4����a�GZ�{o�t�2j7Q�5Qv&J\��\�.N\�z�\�e��m\�O��Wy�٫F\�k���\�,\Z�\"\�I\�\�\�e�\��E*m`}j\�\��\�T\\4\'\�~s\�ֈɒ�\�8\�WF\��O\���6�\0+\0zz\�\�w\�\�$�\�\�6\�>z�b�\�����Y�*\�D�\�%\'l`��w�����ޕfi�Zƿ�b�\�@�{��,?\�\n�\�o�)�9\�M\�\�)\0\�]����:ғ�i�\�\0.E��u����������(�b\�E\0RPh���\�A\"QE�ZQM\�NZb$\0\�\�Q\n�)�� 50\�Q�J2E��\n\0��\"2)��\"�h\�j=)�e���S<��T\��҃j=+KɣɦKY�ڢk%���0\�Ӹ�F��@�w�t?g�5�>f+\�\�\�\�\�\�5�z���\�j\�\�\��Q�\�j��h�u�f*�ُJ�2E\�q�*�\�`t��[!\�T����U	p9W�\0�ڬ��q]֘�3A�\�;�ՌG��4{\��b\�Uh�\�\�#\���Q�\0J)qJ(���\��)�\�{Q�j}%\07\�cڟE\02�Z1@\r=h\�)ъ\0@(\"�(\�\04��\��T\�2)�1nmv���.�MtRû�ž�c\�L�������^�D4u\n\��$T�\�^�U�U�SVEd\�\�E�R�Z�\r\"\� ��f�R�9�\�T)VP4�\�\�n!ҫ\�V��RE�\�\�b�\�V�,���T\�)��50^EC-��V�H!�JSGJL\�\0hϽ��\0Sғ4��P1W�S���z\�\�)*���qQ�\�R3P�!�-\�&�\�Hu��\�\�֝\����\�J9=*%\�F\�\0\�3N_zh\�v\�\�\"\�N\�i�\���H�E4Ӱi0ia��M�����ڐ\�ƞ�\�y�5\04�qQ�皑�i��!�7\�v���\��(�\�\��[\�\�\\���\�Q[���\�L�����\0\�s�7bj�\�d��\�Y1\�[����,�#pGC\�R\�\�\��=!$��\�S\�\�\�X�XH���qV#M�qޠ��P)���3*Fq\�L�#T�\�\�<\�\�ٕy�u���ʊ\�v\�\� \Z\�\�\��\�S(LR)M%\0�Q@G\�IE\0-Q@Ţ�(h��\0CE�\0))i($(��`�\�M\�NZb%2T\"�Jbd\�S/AQ%LQ#�:�S�S\�R\Za��}\Z\�@���%y;�ʾ]]Y\�\�&ʫ9[e]Y\�HR���Vh\�*����+��\�qL0��R�\�E�\�g�[�\�1\�.�ԇs*[q\�T�����Oj�,t]�\�;=�f\\A�\�Iqe\\\�׊\�3q9\�\�\�I3[W)ֳ&&�L\�H\�a\���ZeQ�\0��P�1KE0b�(\0\�����\��Rf�E-!�BF)E!4\0�M\�)\�PI\�uT\�5�zV^��hBf/jr����\�-Z����j\���\�@\�j8\�QY1�\"�i�O�%\�jӽ)r\n���B�:i\r#j1U\�Q\�-\�*\�b�\�V#�\�E��\�\�\�WNje⠢\\�OSL�A=)<�i3GZ:PҝM<\�E ~�.)@����S-BJ\�ց�`h-Q�8\��P\"R\�R8�|\�h��@�C������R�a��1��N*�ӆOC@2�o����U\�5 =��\��\�6�:S$Mƌ�Z)���N4ڒ��4ӻSM \�f�\"��\��=���`V�AC��\�IQU��Mt�	\�%sz�\�5�j�\�f\����\�ȭ+�\�íT\0?\r���qȒ\�K��ȭnџ���\�\�Z�\��$U\�ڦ��i/�4\�\�\�S\�n7B\�2NcR�\�\�R<��v\�!�� A�\�\Z\0CIKA\�@	EP �Ҋ=(\Z�)hQE\0�QE\0!��\�PEPH�PzP)�v�-%=i�x�(*S�4\"t(T¨��S�\�4S�S\�)�S\�6�>�\"�)M &�\�!�1N`P+�\�M+O4��q�i\n\�\�&)\�w#+M+R\�ұI�m��U�TDI�H���T�j��zU9A�4Fe\�\�e\�pkb\�V]\�\�U3\n\�z\�L\�[}Mc\�f�\"a#>^��\�=�4�\n��\�\n(1F)h�\�&)Ԕ\0\�Z)3@\�4�L,hԄ\�n␵�\�Hi��\�\�\�@Xu\�њÍe\�r��Y��\�d\�Bh\�i\�ҝ�VH\�\�Wmך��Z\�\�D��Qf1R�\���\n\�\�-H)�OZE-?Ҙ*OJC$�U�8�\�jt$�i�1ը\�uf3AH�X��F¬F\��Y���sP�֦J�Z%�C���Zq���\�J9��*�R\�\\�v\�N\�LS��N(\nj`�\��Qp�\�o\Z	=\�\�X�\�@$�\�Q4��4���y��a\\��Ա�\�5Uޥ)\r^:T\�\�.1Ucc���\��d\�*E TA��8GzBd\�sRv\�Q���\"tɦC)♚p5D6-�\�\�\0�JI�\�õ!�4��0\�\�iri��CO�1��;SV�&C/ܬ\rUC)����H��\�YЀ0kh�\�\�\�&>\\���$ڲ��f�^�RS\�ESu}\�ȭ\�\�I+\n��9�\�;��\�P�\��\�����Vf\�(\n5��������U\�s\ZԤ���c?}醜y\�M4\0��ҚJ\0Jj\r%\0QE\0QE\0-Q@Ţ�(h��\0CE�\0))h��J��OZeH������\��\�!2t�נ�PU�Қ$P)�\�\nZb�y�4���Ӎ4W�t�R\nZb���4R\r%;��(E ��-4��7J�\�\�\�dԳH�I֪\�V$j�;Ԛ\"��\�n��i\\\�+\�A\�\\P�2\�ۓX�-ɭ;�z\�E\��\�Һ\"�dʧ����b��\�&)h��b�\0\r%\�f�4\�\r4�\0Bi�ғQ��\�HZ���Z�$\�I��\�F�\0�u&\�}(j\0�uU���56\�~c\"�0ۂi�Y\�\�9d\��5�b����*�\�F�AJ(#f�\�-H�j%&��\�H;T@ԫ�֑D�S\'Z�p\rL���X�\�X\�Y�\�aܵY�����D\�\�h�ˋ�����\Z�\�:\�4h�:�~\�b��R�皔\Z�n\�\"�iz�z�\�(\�S,dr)\0\�\0�#�N\�\�B�\�@�q�P;\�T\�pj��\0\�@D\�c5�I�\�\rTIi$��\�D�Q�RR,\�sS�\���b@\rZT�\0z�\�ҥ@;R\"f�$@�,&\�*f�AJ\�f��l�v)\0�\�)؀\�&)sMݚ4\�S��� T�m%.)�4��!���L恈h\r(ɪBcYA#�T�\�8`�\Z\�\0qLx\�\�ým	]��G#���v8aһ}N\�(\�Mr�Q0\�Z\�癚y;���w5�\�\'\"��\�h`\�\\�\"5\�\�n�ǚ\�\�1�c��&�\�R3\�i+�ja��C\�\Zi)M%\�R�J\0(��\0(��\0ZZJ(h��-Q@h�\�@RPH�\nCҁL\n�j:�i��*x\��\�H�X��b�H�\�H�S�S\�)\r8\�M >�4��4��\�C�- ��B\�PM&ꑡ���&���Z��)4\�j\n��Re$!nj743b�\�&*Y�W�b��\\Vm\�\�\�+\�M���w?^j\�\�\�ZƸ�9�# ��9�\�[,jy�5T�����P(\�(�9�R\�PIK���o�8\�	���L&�MFZ�\ZƢcNcQ3P\0Z�\�Mf\�Q�P\�Ѿ�/F�\0�}(z�~iw\��\�r����w!32\�\r�t>bi�\�\�d\�Sf��VG\n\�1O���\�)��`�\�3��\�\"Ԃ�\\�\�\"��\�%Z�j!�\�h2\\b��r\�Ԁ\�-\�t\�5*6Nz�b�.#T\���j\�jUz\n�y�N����\�ca[\"��L��T\�ˊ��EJ�db��\�4\�|�K��T��\�K�\�6-2\�6*u5N7\�\�V��K)2\�.\�Oj�O\�Adc0GL\�\�\�Mc�S�~l\��Oҁ\\��\�\�t\���$j���y����EF��|�K})�3TI<ur\�5V!W\���h�Y�r�h���aE[\��@��R�*5=}�wt��Cd���\\�Q�Wޗ�)�~\�\\\�\�\�d��I)S)3��5|���J\��W.@$�`˜Ұ\�\�0\�|\���\�\n��=i\r8�1ޘy�bu5\"\�Tv���֩\�\�\\\�\�1�֑:�R*\�\�\�(\�EW��,q\\^��;c���Q�2\�k��\�\'�j�$s��~;\�\�.2)�s)\�jx8rj̙SP�d&���\�+}k�\��&��\�\�HC{\�M<SH�cM%)��4����Q@Q@EP\�EZ(��\�A��\n(��D=(���S{T�ң��1�O@�<uH�Y��u8HD�N���S$i�S�!���\r\�@\�@z�\�w�7Q��\�4y�\\9	ɤ&��)�J.�űM-P�)�JW)D��D\�Q��\�i\\����RYi�M��Tf��!������yq\�Z}\�\�\�ƻ�\�:ֱDɐ]\�g<\�l\�g4\�\�\�y�N���1l�Q\�\�)�JQF)@�@��@HzR\���i\�Q��\�d��ɨ��\Z�f�v�Y�\�P�\�\05��g�v\�cLC�Ѿ�\���\�w\��K�,+�o���4�Vˁ�\�P�:\��|�\�u8�U\�a�\0T)\�\�>kpGJq�ټv\ZA�)\�Mf\"�{�\�J�\�b\�\�~�+L�z\�T��?~*13֟)<椗xj�\\\�\�j��=M\"\�\�\0ϭ>Qs�1\\�ү\�?#�\�YQ9$\�K�<ǭ#}$^�\��ܞ��\�O\'����0	�\�W9�\�֬�\�k\r/\�\Z��{R�jf\�HƥIqֲ�w�*\�w+\'CJ\�)��j�0y�U�`\�\\Sv㊲���-\Z�\ZhzsV�|V4W8\�~�\�fѢf�Iȫ[�+66\��N%��\�\\я�w&�lAL\�#a=)  ~[\�U�\�J$R����I�32a�5\Z�V\'n{\�pi�Y��ҷ�\0\����㞔1ܿ\0�Q�~�R)G\\�OS�ץ!�i��ER[��\�8�\rʓ\�\nv�x6E\"�\�ESz\�d�$|���l�\�\�\�M4}����d<\�I��܁�v!�g푩�Z�ڊg�~؄�\�\�\�\'\�qӹ�\�1�o1\�ߝV�\�/&\�\�\�\�=\�\�7#p�/��C\'ҎQs�LW�9ȫp^\�\�\�\��\�8r}sSũ�e\�\�u\�.B�\�\�7\�L,��\�5��K��ڮ\�x��\�5.%)�\�\�4��\�O�d}1S���i\�(\�ԝ�$�ڦ^kh�1@�5\�x�m�>�\�pT\�\�Påh��9�M�M$m�\�\�ߜt�#\�5FL\�\�\�\�\\\�<�\�֛.Ebb�i��x�\�=(���\�P\ZJSI@��(��(����\0(��-Q@h����(��J��ڤ^�j�zS*T�\�	V#�D�\�u8�#8�B%Zu5i\�\�\Zi)Ɛ\n\0�Ɠޓ̪/?�\'\�=\�ƹ\�X�\�\�L��G\�����\�\�\��\�7�P7����zh��\�#7�R7j���\�ޫIp}j�\�\�V�\�ީ!\\�-Ͻg\�]{\�i��O5Fk�{\�\�$6>\�\��\�fO99\�isި\�&ke6\�K!5hc�J�1hQ@\������%-\0RR\�R�Q5J\�PoUެ=Wz`D犭!�Ug�\�E�G��R$nh\� ��!sB�9\�\�h\����)6REQnئ�ekNPp*��=�n[��R85>aV\�\�Z�\��3��fsj)\�\�AQX�j��=\�Y�ث<�c85�\"�\'�ք�\�\�s��a#�zSB�[GJh9�\Z���QO�pW�w\"\�e w�T�\�ӊ�\�OP��\��{u�\�h^X\�+�F\�è4��w\n\0�N�\�)��\�>�\����haR-\�\n�w\ZQ�,	�J\�\�f��Su�qX����<R\�4�>c��P���j\�7�-�\\�l�\�>�n sҥ�E3��\�>\�ִ �O똆\�ǁ���\�\��\�Zͣh\�\�!�l|ոd8�K[�\��`j���8\�g$ms����Gu(X��G��\�VԦ+����ě�\n��W�ΎBG\'�+2sL�J���\"��q\�\�MVf\�4rm9�c�q<\�{HB�\�R�!9❂\�\�a��Y�V$\rիo	��ҝ\�\r\�q\�i���乒C��ң�SYG\'\�5�uu$�T�;\�t��\�d�J�7P\�c\�-�LQ6��;�\�\�\�\�i�\�r/5\\�n�\�K\�&W5JMj0\�n�\��ݻ`���f�\�ҟ*\'�\�\Z�np$r��\��k�Ym\�\�vO�O�\�) U�4\�\�\�k�Ϸ\��1@.��k1nZ.6q\�i�;\�y?Z,5����UT\"�y̘��R��)X���\�\�ʚ������Oְ\�\�\nr�9o\�$�\\\�\�3;-7^1��\�\�]%�М�7����|Ўk�\�uE�I/�+1у#��\�R�T\�x�\n\n�A\�V\�<�U�Y&0��oI��\�p����\0�.���D3����R�l\�ݲ\0�:��\\*�\�wQ�/9�Y\'5f+9n�$Fkv\�\�,\��T65\�g\'�4\���ͼ#�\�\�\�z4�.~S�E�ŭ̶�\�q��\��q�i;S$i��4��(��\0(��\0Z(���(�aEPEPEPH���ҁL\�R/J���)��*\�u]*\�uH�Y��u0�D��>���b\Zh�\�@��\�����ް^��\�>\�qּ�C\�\�:{\�Mk\���\��y\�O�\\\�\����\��\�a�\�z�\���\�.c�7�\�4Ƽ�\0j�\�߽\�z\�r�1��~�V[�\�s\�Q��I\�Y�~j��f�y��&�\"$�Y�9��cTM�QH){\��ZAK@(��Z(��\n(��\��Z�4\�S�@�^J��bJ��Y����V\�Q5R%���)�|C/Z\�\�jVT\'端.\�\�D��[|8�\�EM��{c5k�6(�\�5V\�pEk4u�|�5i�\�\Z:�z\n���G��\0ǭM�b�A!>��\�\�d�MX��\�sJ\�X�c\rO[P\�9��+Z�4P:Qq�GlzEL��\�@\�YAO�e�\nW\ZE\�c�rj\���\��v]F\�.\���\�g\�Ν\�2H�x}3��)����ͨ�:Σ:��\'4\�Ȳ\"}\0�\0\�i4Ic=j࿐�\0)\�\�\�j��2�\�x�ǟ\�B�?\n\�&I\����,���4sX=�eu\��\��*��\�?ό�qR\�`\Z3�W(+>\�W ��\0t�\��J�7(\�Բ��kip	ǭl\�ϱ�c\\\���b�\�nT�$\�3h\�u�N�x<\�\rF\�p��\�m�\�O\�JFj,l�z݊Јn\�fٜ��\�x�L\�l�g]�Ӛ\�|��ۻB�\�ұfB\r%�����!���֭2�\�3�<�U&CD[�p1U���\�\�#֤�\�g\�\�[\�\�=*�3q)�\��\�\\\�(c�.\rmIa$��qPMe�\�q�ª\�8\\\�h$s�\�})�P\�\�zV�\\\�WE����\�D�L�D�\�m\�\'o�\�(ҧ��|֊ݸ9��LϻJL\\���+)j_\�\��a��2J\�l���Z;\�w��vE�	��c��Qi�¸<�)\�\���\�YA��\�J\n~�>DH�Ӷ)\�֧]*\�c����VڂJp�W�wa�|R�\�L\��U�|\�w��])T��Z\�\�+9\�Oz����h\���m�m�P+^\�@7;g\�Ԋ���|/z�����d�J�\�hײp�(;ն\0z\�kv,�	��a�\0\�%������8�k�\�{ף\�r�\n�7�M֩%te�Y�֟-\�i\�hiv�\0h�q�\�aӕTey���]*I�֗��^~�\�C`q�\�K`����@s�Ż���\�\�q[�\�H\���@�{\r\�>lU\�c��\�*i\�\���\�qdb!tx^�jm.\�{f�}+\�1m�s\�X\�G�k!\r4Ӎ4\�QE\0QE\0�QE\0-Q@Ţ�(\r\Z(\0�����=(�\n`(��Ze=i��j\�u]j\�uH�Y��Z�:�v�D��?�F�\'jb\Zi)M%\0m�O�\�w�M3W\r�ۚ\�SZ\�c�g4\���\�+�/w\��At}k\�\�\�\ZrJ޴\�M͡u\�iE\����#w4�sN�sP\�)\�EXӲi\�F\\�aj��\\\��E&)hE- ���\�IKހR\�\nZQE\0QI@\rj��F�ڀ!z�\�w��+\�U��IUހ+7SQ�H\�MD\�D��QE1�\')U\"��p��C\�\�bm�V�\r��q���j>J�l��;P\�+D�k>����&�\�Cm��)���/ҝC\nz�)�\"��,r��\�=EV\r\�>I�q�֝�B^jkl�a��\��b��B�\�F媤�K>H\�Q\�T���`\�\r��>w�\�\�䀕ڔ�e�o�\�\'޺�lG`\�AV�3m�\�\�&)��l�wؤ\nK�՛X_K\��\��V�h�Y6�\�+D���0�d.\0j�\���	Z\�\r�g�½#\�\Ztz��Y\���4(���m�\�I�2H\�Z�\\,�G0\�֣Դ�\������\�\�]��#ۇ�mr*eXM�w1�m�`\�T�=�eI\�h\�r\�r�\0p	�\�9Ae9�73!�޸n�ef\�nm\�3�\nt3g���\�j�\r\�5��dՈ�楗sr;����\�l\�T/��ճ��\n�im\�˒+���+�\�\�c\�]-�\0�VM�^\�R@YqY7v�\�Y\0^xC��+��Yj#jy\�J\�f��R�\"�13�\��Tr\0�\n�{ք�����J-\��~�L�3SԞ/�X���!ݼىf=��(��Mć9�dC;���OJ�YBiv��\��j�\�f�H~cں�;FHc2̹p3Y\r\�u���Gj\�(\�&�����~\\���ΊB6}kW\�7-��#��ֹ�).�B唞qW\�c\�͋{k�>nX2�Ig�j\\�J�e^\�\�Z\\cF��\�>`3�\�5t:g�!��#\�a�J�F>\r}\�Ũ[2��ZJ,uH\�.̎º\�\�&\�U��\�e�\\�\�\�\�lX��8�\�hM�;\�*k\�ڒ{\�i���~~\�\�z^�e`�+\�\�ի\�9��Q���VM17l\�U\�kB\�s�|O�\�x���\�\�R\�\rKu\�99\�[\0>*�h\0r�d4X��R�AQ\�q��\�\n�e$K1��y���\0\�$\�\�\�0�W�x\�\n\�SZ-���w\�v��݊\�B\�W����5_ֵ�XL颬���Ǒ{U�\�GU�\�	\���H\�R\�\�5=Rw�X\�5\�i33\��\�\�\�1{\0C\�5\�i\�\�Y\�ښe\�^\'\�\���\�Z\�V�\0�%v\�Z�=+�\'�SIXi��q���B�(��(���(h��-Q@h�\�@RPHQE�Z�zTU\"��\"d�\�t�\�\"Yf:�v�#�\�j�I*\�\�J�jAҘ�\�Ph�L��\�/�S7\"�k�{\�%��\�\�=j�˞�M�E\�4\�L��Z�*e�	��Z�*U�d�J)(�C�(�\�֘\n)i-\0(���\0�����QKH)h\0��\0-!��=(ƨڤj�\�/P=N�\�2��^J�%Vz	+7SQ5J�MD\�D���)�\�8aWs���:\�\�\�W,\�p���n1�J�������l!F\��j�<\Z����uF~�w�\'��p\�(��\�(��4�&E0*J���\�\�\� |\�\�:Р8\�1X�4։�\�\�\�V�Z�kxT\�V�]F\�\�Q��ɔNv�}�S��\�h��.m\�ezt�\�m5�\�����#���1t�9\�a߿�ҷl<F\�M���P=�\�`L������Y�D\�\�8{giV�^\"\�\�\���S�ƻk\� _����ֱ��ڞU�َ\�\�\�\�C1\��\�9��3\�v�\\B\�F\�x\�\�\�u`>[\�޺�\�(�\�=�\�IeS�rj.h�a\'�;�w&3Y\�lc=��\�>XzT��\�\�(�4B��Fj�X�RG֓�6\�:\���}+OM\�WMe��\�m\�(x��\�E`Z�е�j�+6jֆ��PT2��3��\�J�\"S�A\�U\�\�\�ү2sM`�h�4a_*�3\n\�\�7\�\r,�\����\�j\��\0jUE\�޳/R\r:\�;v?#}\�\�\�\�\�7ѫyV��N*}`��\�;�47�쀕<椴��\�\�\Z\�2nuC\�\�1�+��\�[a �\�SZ\�\�(\�7J��\�wx��9ⵋ9�M�x�LK�/\�\�j\�촙\�Xي\�[�]Zͨ[C��-Y�\�K �\0G*\�J\�H\�t\�\�\�x��\r�#1�k�X�U\�\�	\�d�P�U\�d\�]o���}*3su̬8�|\�M�I�$kp\0��ʆ����\�e%#Z�a��\��ް�#��3*\�B�\�\����=�b�~^浣�h�\�2�X�I߇B6�V.GZ�V\�a$4G\nkb۠���\�\�\�h\�A��c�f0qVb�\"qR \�+�\�d\n�3\�A��S\��kX\��\�>��x\�\�5\�g\��3\�+��m�g��\�[t1\�ZҐE�F��\�Sn\�z�\�䲈J�	#�pO5���l�\�˥ͳgҮ>ң*�\�~\��w8\�w\�\�\�m����\�r��\�X\�\�\�c�(KSZҴO5ל5\�w9��\�U\�I�˖�\�#]\��嫸\�IJi*�\nJ(=((��\0Z(���(�b\�E\0��\r\0QE%QL\�y��p\�LD\�Vc�\�ڬ\�T�e�\�\�\�x\�\�\�\"IV�)�O�!(4���9�Ɨ�6�+�\�MǥN��J�:\�2t2��je��*U�֤ZJ�\�)�Nv)E%����\0����@\n.)- \n\\R\nZ\01EPHzR\��cTf�j�\�N*;\�@\��Ui:U�*��($�㚍�H��\�Q�(� j\��Ո\rK.%ԈՌ\�c�G\"��L\Z��lJ\�\�An394\�.jKA�&�Yq�4���R<\n]��S��m\n1\�8\nv(7P{T�#��W�aNE1m[@\�|`p*X\�mE�\�\�\�r5�Ȥ���R���\�4�Е�/�\�fr�\�\�I\���V\�(�\�x�*�\�\�yZf5�~��\�Y%,Nj��\�U�#\�T&	5D�Ax\�8��f\�|�5\�\�\�UE�A�\�\�֟\���^hcH\�Ӑֺ�%\�\n\�4\��\n\�,�VR:`�x8�\�s���\�H\�jڜ��5kB�p�S	\�(-%&DF�c�a\�\�\�p3I�R�¬p��k\Z{xn��\�5�wxN+��V�*j��sP�TP\0\�Y�\�M\�ZR.j����\�Z\"H\�\�N�j\�\�\"�MUP\�pEMd\�]\�\�d\�x\�\�\rX[Ȳ��>\�q\��\�j\�٣v�)�鎶�\�c\�\'�����¯A\n�*X\�T�����=� �\�Sh*z\�,+�( J�\�p�8\'GSY�r��Qc;�##ެ$;zT\�T�j�_\�RzS\�0�*`�\�mH\\A�S��(RSBd���LUh�\'5:u�`c2u\�u\�DЦGJ\�^�\�\rP\�!Eo\�綦M\�\�A�°b\�]\�\�\�kC\\s;}�\��1�yp��kk9�&��\�\�E�\�1�Z1K\�Ph����L�氼QrV\"�WW:��5yߊ�7H�\Z��,D�8�\�|\�j�\��\�\�Q\��<\�\�4������\0�QE\0--%\0����(QE\0��\r\0QE%�QL\�֘)\�1%Y�\�d\�V#�Be���U\�T�$SR\n�i\�\"⓭8��\�/N\�M�VA\"�j\�S�ID\�S-B�2\�e\�R(�ץJ��E8SE<P!i@����b�(�\0�R\nZ\0QKސR\��ZAKH�(���Q@\�\�v�\�b�n�P/P=N�\�i*��*̕Y\����ڤn�U2�(�\0T��Q\nz�\Z㹥q��;\�XOˊ�\�Vf\�\�D��W���\���CM��h�Ҏ�%!\�\�H�N�2�L�(Zv\�i\���\�{i\�\�5&ʑR�dBOj\�q\�H�hEh\�FsV�ۥXH\�N�8�����ڬ� ��\�N$�E��F\�\n��W��LL�3c<V]\��kFc����I�fі븜\�ڬȸ5u�,1FMJ��1O�)\�\�\�b�K93�\�B\�a[�|�sPѴ\�ڜ�=kVӂbYM��l�\00�ٷC_ �\�\�H���Q�;j7�\�\��ӻҷJ�RT0\�`j�d,�\"�\�M�*cHǪm\�jQ\�\�V�݆\�H!S���\�T\�+?JF\�70+�V�\"�\�z���\�Qqlb}�t9Z�8\�Sʚ\�H�EJ#RpV���\�\�MYH��iSҞ!_J5�R6�q؊�#�8\0)\n\�\">sN+�~(\�@\�搊�\�H�\�\�b��Rv�1\�\�=\�\�#5]:\n�Z\�3%�ڲoܽ\����ͻ\�\�{V\�c�>�l\�\�Ұ&6\�w�v\�$\'�\�\�m\�rp+�L\���8��&%���\rZ\�<�hF�Y\\]]�v\�\�\�^M\�	�\�\��ץ��q�דjr�my�f۳(�\�^�\�\�Nji�F�JSILAEP�z1E-\0%R\�\np��p�aEP\Z3A\�I@�J(��QE4N�J��j\�f�\'J�R%�\�5aj�uaj���)�RS$3IKE\0r\�)Úi�-`t�/j�j�V�d\�*e�S�N�2*E\ZT�@\�\0�M�\�\��J))ER\�\nZ\0QK�AN\0R\�P(i)i)\0�QE\�j6��F\�\�S�@�ZJ��bJ��Y�\�mR7Z���EP�Ppi\'z�~\�\�E>x�^ݰ´B�QPme4lJ�jv��\�\�J����˱k��Pi�wGJ)	/<l0*��\�\�)\Z\"\�c5.\�j8��\0M�����\�J����b�Q\�H�5*�S�\�\"�$�i�\��hG5VSR�UYZ��^w8 V|ǭ\\��\�	���$8\'=j�\�5,�&����)@\�6�\r!�\�k鯖\�X\�y�	6��\�`vV8\0ҷl\�$\Z\��\�ޢ�\�[\n\�\�t-�p@AM<ҎPS3L\�\�.(\�&h#��\�)E4!�ĲEQ�\�/ V�)����)�\r\�H��\r\\�ګ�y�\�&�>�ep\rPi�ѽ踹K�)\�N��]�W\"\�\�\nLӁ�\�\�)h�1)��Mj��~i6�)ǥ 4�\0U���PejX\�x\�t�b�zV\\$�\�ݪ�\�a5��֒v1��.\�\�\�9�cQ�kb\�R�c<�\�6m3f��\�|�Z[�ײ]�I��i\�[��w\"\�[\�U\�RvG!\�\��<ל\�\�\�-]�\�L\�3޹����6n\�i<\�ܞ)M6���Ӎ!���(\0��(\0��(\0\�-P1h��\0C֒�����\ZJ	b\�JZh�4S�Zb&CV\"�\�Ҭ\�T�e�\��N�j��TԂ�^�(\�L�h��\0\�9i����\�H�2TKڦN�%�J�*�Ҁ&J�j$�V�$�b\�\���@�PJ�P\0)h��\0)h�\0������\0(��C\�j6�[�Dh��z�\���]\�ĕ^N�Y�\�mR7Z���E(��ҚZ(����[vܢ��,\�\�Rˋ/2|�Je5��\�U\�5&\�T2\�\�\�T���v5Hh\'� \"�Cҫ�K��j�~#V�\�(��\�\�\"�\\��Қ�\�=y�1\�ڤ^�ũTR)SN\�8�t�\�H���;R�\�j`#�U�LԲ5U���\����35Y��\�)\Z���\�=�M0�(��K�P!\�9�>���I�f��⥚@\�4�B�tv��\\��0��\�,����t\�ca>\�34\�m\�Q�W!�Ԣ�ii@\�M�\�\�\�A�u�%�\�A$g=*\�.)��.i\r2�DI�\0��W�G��&�\��u�\n\�\�U�\�=�\�sӊW&Ŝ�Zp5\\g5 \�sE\�bJZ�4\�\�\�M�4֤f\�Z���FE0�N)\��Љd��pje\�{\�#��`]0G<\�B�B\\/jddb�]\�f\�9\�S\��?CJ�\�T�ʚ�\�	v��`ź�G��$.\�=�[$\�J\�\�m$Zu�<W+\�]@E\0\�5\�jw�[Ҽ�\����\�\�]\n\'Z�\��	�ӱ&�*Gm\�I�\�Y\�4\�iԆ��\�HiM!�BQE\0QE\0QE\0�QE�(�=i)OZJ\0CE��- \�KL\0S�6�)��*\�uY*\�uH�Z�\�\�U\�֩J�jQҢZ�zS���\n\0\�\r*\�M9k��jd�R�Z����J�*e�	R�Z�*U��>�i\0�RQ@��R�\0QJ)(�����\n\n\0Z(�u��\r!��\Z�4��\�\0D�\�\�P= +\�U�\�V$��t�\n\�֣j�\��$AKH)h\0������\�k\n�������\�)�\�5S��\0j\�r3R͢ƿZwj��\�\�9�zԩ֢^)\�֓-��Fj�\Z�\�E\�n�:\Z�\Z���\rTԪ\��<iLiqMS\��H`j9)\�j64��\�j���Jj����1\�T�5bS֪��$��i���g�\��c$Ty�c^E!�b�Z�m\��oH\�oZ\'\0Rf�5,\�Z۷l+\�6�kR=\�&tGcf6\�R��\�ݪEcޤm�T��@�4�\�֙��Ҙ<R))�C\�[�)i\�\0D\�c\0g�LTSv�@\�DSӥ0\��jV)���PќT��u��H�%\�&\�g�#5�\�i	�\�R�	T�Sj�\�T\����3�d��\�]�\�G�<p3\�Yz�\�Ȋ�\�B\�\�Vc��3�=\�ݐd\�ӭ,�q���\�[+)\�\�i�\"\�m\��N���cQFB�j���%�3U*hex�W	\0ח\�FyO=\�W_վ\�+5\�_Z\�\�r��IGzCL4��I@i\r)�4\0�QE\0��P �����(�b\�E\0��%)��@{RQILB�����-\0-8SE(�\"T�1\�e\�S\�T�e�\�u��Օ\�T�&Z�zT+R\nb@�� �`Ӗ����\�H�*\�k֦Z��R�Z�*e�	R�Z�jE�	V�SE8P!\�P)hE(�\n\0p�\�K@�\�N\0P(�P\�:\�@\�@��4���j�ԍQ�\0�\��ޠzC+IU\�\�Vd�\�t�\n\�P�L�U ��\�@E����(�R�hCq�b�)�˷�)5r\�+\Z��f�\�Ue�\�RC&MM�\�.t4\�?5E�\�\�皒\�XJ�N*�\Z��E�j�6�\�jd<\�i\Z�V櫫sS!\�W,�␞ED�����\�9�FƜ犍\�\�%5RSV�\�9�2J��U\�O1\�Tݽ\�b3b�sQ�Ku�c^(\�ye�Uy�zR)#F\�r+~\�<�ı\�oZ�\�T�k_��ӂ<����ȭ�#\0k\'��\�#���dU��1�\�\0åW).�(\"ԏW>��E�\��t\�5[)\�\�\n�9Pi$�k��_nCC,�SH�ӽh�,J(��@qM\�h�4�x\�LojSM=*J\ZƘ\�KS(qM\�i���@\'�\Zil\�LL�jX\�5\0槄c�icQ\�J\�S��\�jn\�\�\"����@S\\\�\�\�\�\�ns\�n�9vgI\�Q\�R6&���AyqUo<U\Z)�\n&�\�\�ƣ�\�l�\�W�\���\0��\rU��˰V8<W9<�V皤�i\�\�f�\�\��\�F\�:\�\Z�g`=i\r-!�1���\�\Z\0CHh4�(��Ҁ\n)(���Z\0(��-�P\0i\r)��Ch�4S����-\0�:\�R�1�O@*hꐙf:����u:}j�,�jAQ%J)�?� �R\�1NZn)Ê�\�%^�2��W�L�%�L�T\�hu��SR)�	E:�\r;4p�S�\�@\n@ԁ�▚\Z�4\0\�N�is@�RK@@\�@�\�\�R�C@\�5FjF�ڀ\"z�\�w�\�h�ZN�bCU�4\�-S5B\�\�\Zz\�A\�E\0(���\0QE\0Rb�(f�[7\"�\�T�}\�)1�Ha�8q\�D��T��A�d\�jd5��M#DYCS)\�)�T\�(��\�L��\�U52�\�ڐ7qJ\Z�\�N݊H\�Q�qH_4\�A�26n*�\�\�Xrj���%ۓTݪ\�ÓT\��!�r\�*�T��\0Z+D.N6L@p)Tҕ\�\�p8�hi\�J�kẑ�\�[i�\�o\�NԴ\\duVxȭH\�#ҹ\�Y\�\�ط�v+&�֨؀�F\r[iT���{\�f�ع\r\�4\�\�rȬjKv߭a�\�#pp*\�72s����NDW5Vh��EI��Y�L#��Яb8ہO�c\�*e\�5\0%4ө(\�\�N���(��zR�a&�C�3\�9�)��0��3Ct�\�(w札Q��\�O@3\�T�d\�I\"�)��!�n:T�@\�msM����\�p~\"���]�\�- ��>�\�H}kS��{��;X\�W���f5$�oN\�X�i\�#g��ҵ4�M!ɤ�8��1i\r\Z\0i�4��\�\�IJi(\0����\0J)p(�����\0Z)�P1(��\0\r%-%IE\��-\'JZ\0;S���r\� ���GJ�*��Մ�#��\�\"Y2T��J�t�H\�KM��9�i٦S�`t)\�S#UqR�b��XV�������M!�U�Ej��O@C҇�Ӄ�O����F�@7\��|\�P\�\'\�O\rU\�\npj\0�585B��plP���\�jsN 4��h�9�\0\�i٤�c\Z�j��Dƀ\"n�u�\�\�z\0�%W��\�U��\Z�j��D\�\�4���\�P�(�\0RR\�@	KIE0\n����\�~j�4h�g05VƬ+dԳX����\�D)\�s\�I�,R�U���H��6*8�Ȥ��P\�ҘR3f��-HZ�/F\�\�\�d1j�G�\"�\�֩2\Zѐg&�H�H�S_�\�}+Z��Yr\�\�EZ��H\�\�84\�Z\Z/֢�ˋ\�0��0���o\��C�93Ena߅pMkY\�\� �\\|6囆#޷4ۍ�#�t4L^�gmr^kf\�\�5\�\�ˁ��Zַ\\�j\Z:T��H\���I�U\�e�r\��j\�ߜm��֢\��6Cqykj\�e�W�[jp?��\�5\�k:\'�\�\�ٳ֨X\�\�Z�\�v8���/3\�\�\��洖@�Eq�,W��ֺ\�h|��ݓI�4J��z���qQa���wZN�a��搊0����\�b�DOQ0���\��er3Q�O��\'=hD܏�\�L��M��\���3�,!�\�O \nM4Hc�S�v߷��bs\�l�m!�\�:\�\�I\�^�<�+\'ȯ;\�¼\�����#\�Q�\�K*\�ڡ4a\�\ZS\�!�	���������@\r4��\�\Z\0i��4�(��\0(����(�\0S�&(\�\n(��\nJ\\\�I�BR\�f�`-(�ӅS��NSLC\�N�2U!c\�S-@���9�D�d�J�*L\�bS��Ӈ4\�N�K��\�\r<5D)\�\�\�\�*�V���@YOU�\��-\�(j��̠;�\�UĴ�e\0X\�J\Z�y�\���A�\�꪿�H�He�zxl\�ez�Z�,)��Ԁ\�&SN�\�Ӂ�R�dPH�5DjV54\�S9\�2��]\�ĕ]\��TG�J\�B���=i(E\n)\0����\0QE\0P�5�\��\"\�G\�\�KsPG\�\�O��&kا����t�jM 4�54�5%�R\�@\r<76x�3TfJ��h(��9M@5\"�ArV\�|�s1���.1�T,*W\�j\'li����U�%~O�<�괓J�e&Wp\��\'лyzbG#�\�\��\\�W\�\�ȷ\�=�Bs)��6\�Y�\0|����:`\nL�2͡q�\�lYA$�8\�ۘ�8\�h��vɕ<\�4t&tzm�q\�Z�\�t]Ȣ��mu�\�3N�Չ��raJ\�s\ZN\�|g\�&(��d���p\�\�X����zÖ)p�E\�\�R\�JW:�vX�2(\0ո��\�,\�5m�ֵRPp?J͖\\���.\�\��\�\�$J1�	\�ZPqH\"�i曊0�a�N1L\�+0�����aX.D\�Q�\��\�B˚h��\�wT�0)�#=\�\�\�5�\"L�Gw\�Fk�\�n\���`\����Z/BO�i	_ͺ�\\�\�\\\�Z\�o���\0p:����\�Z2�\��\r8\��\�h�\�u74\�%\'4���!9���\�\r!�&�Ni����\�PEPEP ��(h�4f��f�\�\ZCJM!�BQE�)NZU��Zb%*TK\�J�HL��:T	S��I2ԝ\�45%P�\nQH)Gzr��4��5���҃Q҃@���sJ\r&\rN\�Pn�\�\�@Ѿ�\�=h\�\�@��o���w�\���o����\�<\�z\0��R����T�\�@�S��h�\�\��j\�(9�\�jt<P2u4�j%5 �RQE\05�3R5Fi\�OR�D\��%Vz�%V��+�Z�\�ۭ0\�a\�E�\0���R\�\0��(\0���\0ZA֊S�i0E��e0WުǌT���ғ4�f#��\�櫧\'\"�\�I�%�\rDz\��Ҥ�\\ӷqQf���������3v\r&Ri\�W҉�=y�+�c�5�\"���oSL{��)\�\�*c\�;u�\ZU9\�E���(\�RD94�8\�f}��s\�\�\�Q%��\�$dجN\�E8&H\�I��9=jXз^�\�J\�b�	���<m\�Tm X\�f1\��#��P��T�d�K,�(��g__��\0n�\�vBY�\�Y\��e|��!�\Z��E\�njٝ\�@�$�ެ[&̹\'�Uf*\�\��_jV\Zd�K$Ny*Ʈ���q,����D+!�OCS}�Έ��1\�֕��GAm|��.b3ڶb\�Z5R��Z\�`�\�\r���Z�T-op�9\�Y\�&��\�&�\0�6X֝�\�\"sߥpp\����rz\�ݦ�\�3�t\rs���sR\�ڲ�ut*Z\�=�_�\�`�\�R2zJM\�Fs\�9F\�F\r\07\�S\�\0\�!�.FS�l�L/��\�\�?J�ӝ\��4\�i�FJ��5VY\n!榕��s\�g]ό(\�բ\"L�0yI\�\\Ԅl�U�g\'j�>a\�Sa���wAV��SW�m�\�p7��F�\�u���d\'\�\\&�II\�\�Ŕ\�\�CNcҘh��\�\��ޙژ�4��4S��\�\��\0\�IJi(\r%)���(�����	KIE\0QE\n(��\�JE%\�A��8Siڜ�)��\�8�\"E���Z�R\'J�{T	S�2I��*%\"�*�<R�h�@�N�(�M�\���\03FiZ1@�3I�1@��u4R\�\�\�M��\�撂(Ej�6�¥�\�2\�oV\�\�j\�f�ˈj����JN�2\�	S-\0:�))\0��0Ӎ0\�Mҡn�+t�[�!�IU��\�U��+�Z�\�ۭ0\�\0\�֒�(E- ��EPE%\0����\0�3R\�VC\�Z�\ZLh�\�\�N-���%8�\n\�f�\�B*^\�U\�\�Y�Hc��\�4\Z^ԙW��݀�\�J\�B\�-��\�%F$\0d�5T�*d	\�!\�����0�\�	�ƙ���V]���T��\�=\�q���NPF\0QɥT+\�U�W��i\\��\�Q S|�,�\�֗�\�!��#\��+�\�H��\r\�Vm�aڴ\�N�.8�KM\�\�Iȸ\�3\���fuf����\�K2\�Z�u�(�\'�\�\�EQ-�`�Y\�\�S<�U�\�F\0p�����ҽRм�(\�5��*�\�i�\�jr�P8��\�֊[N[c!\����\�Ë\�W<\�\�zL!@e�Ne*G�c�Cm\�;T!.7�U~�\�\�J�U@���h�K�&�1n�ö\�tW\�a��Q\�n��[���\�*�@\�JŒ\�Ջ�;H\�v�rl@�|R3+\�#\�\Z|ev�J�֤k:\�2n{\nAje�v0;R$҂�N|�®AvT\�I.3X1\�\�i<ǉ�n\�\�Xw:\�ԝs���ou�Y\��\\M�\�\���ir��\�jV1ݲ��9�J�ֳ4]VI��\�\�f�\�\r\�K@�\�\�B˗��\�l\n�\�����$6Ȥ¿�A\�W\'#��g\�{SHM��o\�y�0+;�~���ӫ\�G�Tu��D2��\'8<\n�i\0H���,�r;ӥ�\�\�\�H\���H\�\\e\�\�Rs]F�6Q�޸\�\�\���2cZ�iO\�D�zojq\�L\�T!\r�\�L4����\04\�R�J\0CE��\nZJ(h���AE%\0��Q@E%\0�\�KHh�QE0�Si\�֙OZ�-L�\n\�\�LL�*aP�L)�H�*����*�<R�h�\nr�QEbl-F(\0\�b�R\0��Q�b\n(\�!���v\0��(S���ru�2\�uj3\�U���!��Ք5U*\�P2ʚ�t��Z\0x�4��\���jCQ�\0�\�\'�^�zC+\�U��\�U��+7Za��Za�����\0QE�(��\0J(�����\�{Ո��P0\�4#RcF�\"�\�Uki*\�5#D1T\�\r�P�����!�+sRg�\�`\�:�����\�c�k:bdc\�ZOЊ�!$���e/,�\�^�4V��w\�Ry,e�zV�V�Tn\�UryJ\�\�rF1O�Ej�p\�\�L�\�=\�\\|�X\�ՅY[a�\�\�����\ZE�I���\Z�MR�N�M3�Þ�\Z#M$�,b�/��\�Y�󜚗��Ŧ^\Z�u�[`�湬�;j	X\��i8�\�G����?R2jSw���[X&\�\�թn�q��\�4GW&���TC[\�r\rs;J���7Q\�G���cW#\�bv\�\�+��\0��ne �\�G(nw�dS\�F\�sQ\"6Q\�\�\�\�f��bq[\�%\�\�0}h�F�ޓ\Z\�|�X\�j\�\�s�ծ5Hg5$�L\�=H�\�Q0$E�L���,��\�z�v��M@�I98��\�X�b��P%G��S��I\01�j�\�kr�ڙ&���y\�\�~�\��̀\�~j\�4��dGߵt�\���e�Z\ZdR����]M��CV�q \�:����a&\�\�Cl�xi	o�Ud�s^��?�b�\�Ҥ{�m\�:Ӱ�Oy\'SU�*GzK\�\�\0�c\�F\�KV�Bǵg^L�SV\�P�\"t=kQo-��Fr05����k�\'q5���y�e��1b\Zi�7\�\�@i��ƛژ�4f�F)�f���\�!\�@\r4����\�R�J\0(��\0)i)h�QE\0QE\0QE\0#u��=i(QE�)N ��\�z\��T\�P�\�2\�&Z�{T+S/jd��<S�*�(�\nAJ(\�QKEblQE\0QE!\0����E��(�b�\n(\��AOJf)\�֓a\rY���Y��H��e*�\Z��(:T\�j5*�\0�R\ZAA��a��a���z�\��Uy*̕ZJ\0�\�i��\�i��\�\�KE\0%�PQKE\0%�PR\�E \�3���C�P���*C��I��6*Vp\�#�&Re�@\�0A\�@������Zd��Յ銥A\�Y�I�qδ�2(l��0I�f\�]�3\�j����1>\�)0�4ە~QXww�\�\'	�\�/��T��%\���c����\���`ՙ�\�X�����\�J��\��RsR}�S��\�\�f\Z@6�\n��\�2qAq�����\�jh\�/P�\�kn\�\�9h\�jE��TQseL\�I\�$9c�4\���\0J\�F�7��f=xp2)\\א\��;\�6��\��l�\�Ww-�Kk� \�\�\�$[�|�${T\�j\'���r���*�\�\�w)��J��d׊W)#�[=I�~Z��?Rc����`(u�f4�ǚ˧\�Ǖ�TZ\�Qs\�d}+\�\�p~Q��\�\�R��.KG����\�A��\�V#\��؎,\�ֻ�\�b�\���h48-\�J�.f\�\�mZbY�8�U�In\�d\�^�\�\��x?*Ȼ���@\"�\�\�\�ǂ7*98��`c�ےzS?$r*¿���Bd4h\�@a�\�N+S\�Pw�v\�\0�\�9a��n_\�PIWP�j\�p}��\�ź��\�\�\']��\�s�7L!\�բY$m���ԋ+DH�U\"�\�\�&�\����昑<d�\�\�R\�\�\'\�UI�|���D.��1�H�\"\��[�ľ�ߜ��u)l�\��1_�z\����x\�\�\�SRHI\�\�f��4\�N��l4\�\�\�M\�LB\Zm8\�i�QE\0��N4\�@�\r\0%�J\0J(��E�\0�R\�PEP����%\n(��(��\nR-GR-P��J�jd��\�R�\nT©H� \�Q�H:S��;\�E={\�+E���\�Q�E\0`Q�F(\�!b�SQF(\�1b�PE���֒�<\�c,%Y����1�E\"\�U���j\�\ZXZ�zT\nje4(�\�A��\0!4\�O4\�@�J��S7J��\�w�Uހ+�\�j��\�mLcE- ���)(h����J)\0�RR\�R1KGZ���R\�risLC@�,�\�(w\�\�T�NO�E��c,Z�9�CQ����F\�8\�5,�\�\�w-=2�ڢC�\�\Z�\�n6\'F9=j�2m�jۅ&U\�&���)�\�C�n\��T�\�\�*\"G\�)W\�nT�:Ԑ1��\�֖)A\�S��\\\�,�hAp`V��\�Aڰ\�,�֒>\��&Θ�i0�+J�C3�cֳ\��n9�pjnhX�?11\�/AQ\"yr�8��`0�\�\�4�5�d���EMn}\�֪\�\��V�\�p�\�,B\�GCR;\0	\�Z�&\�QޞC�{PK\�#bM8D\�.\�ZxP�42*[!�e*��9���Gj�[?z�\�1Rٛc��Zxé$r*\�9�\�MH̋�b�u�\�\�I9=�FU\rUf�	\�QT�\�j&Q���i�\\6H�`��\�o7��\�CS�!Ub\����F,�\�o��OCY\�L���Ɵ4�j�9��n[j\�\'j�\"Y_I\�ҙ\Z\�F�\�\"�&0��\���6�z��&Eq/�Q	\�.\�\�q��犆\r\�\��b�F-\�[��\nsҰ\�\'\Z\�5�i�\�9��Bi���\�MHsHh4��sI\����9��4��)	9����\0Ph�4\0Ph�\�QE\0b�QE\nZJ(i(���9��\0\r%�QE0\np�Ӆ��\"\��jT��H�Й2T¡J�U\"IV�ژ��\�\�8f�M\�@�QX��E\�\�\0Q\�\�\0��h昂�9��h�9��\0(��9��\�\�*���*\�f��O��\�U�5U\rXCH+S�\Z�t�	\�Gz\0\rFM<\�z\0��T-S7J��\�S�Wz\0��j3R?Z�\�E-%-\n))i\0QE\0QIE0�(��RR��\'\�qS=�\�\�\�p���!�\�Ke���	C\�\"�5�y`p+4\�ѶZ�d4\�1c��4-UCg��鞔2�ˡ��t�n�\�\�\n�\�=��~&\�95r&\�\�Ʌʿ�_��\ZLi�\0\�Zk{R#n�c&�\�c=i�9�n\�\�4�@\�N*\�r5X�\�7q\�Xn����\�W �P~cXNA\'�X�a#u�Ū�\�Q�&\�)_]�1\�Z秕U�T\�AQҋ۳�>!�.[#54~\"�Ls\�qws�\�00Z-f�B�9C\��mn\�ێ�vMY�Z\�m�8��{y\�.A\�T�R�ι/w)��fa\�W+\�g �Zpޒ\0\�P\�_�l\�\r\�vsB�Z�\�j�bNjX&Zf\��\�`\�R�\�*J%\�\�5\�(i��n\r5�\�x␛+�\�H5�upHlpå:�vRX\n���9a�[EɚqN\Z\�Y��\�E�\�Dk��g	���\�_^�����V�2��4mp¥3�v���\�w��3�>\�x5�<Ğz\n��܉�\�K\�=\rEx�A\�5]�QnªY\�M�^���z\�\��\�\� �һ\�hIe�ēt#�I��n%Y�\�ϭtH�/LT�\Z*zjp~1\�\�\�\\Mw�1v�?o�j�^\�f��;\�\Z\0L\�h�4\0�\�KHi�CIJi�\�-4��SOZ\0(\�PQA���(��)h�QE\0QE\0%Q@�����\0��w��N\�N �H�H�B%*��T�LD\�*QQ/J�S$�i���O�\�J)��(�����MGf�4RP�E �\�\0Q�3@��3Fi�\n(\���3Fh\0�ZJQH\"�\�X���Z�e�e*�\Z���!���CS�*�;\�--\0\�d\�ژh�x�Z�j���\��ޫ�\0Wq\�FjG\�Q�0\Z)i-\0%R\�RR\�PK�(�b�)�b�\�\r\0K	\�\nԇ\�YQ}\�Z\�}\�Y�H�a��Ue�\r[a\�4�4j\�Ş���6\'\0֔��+>E1����V$s�\�$�ު�\�qFO�\�M\�1ʠz���\�+9H\�W#pKE&i��\n�X�Y��n\��WReRѪd�7Jr�\�L\�y��\�(yLR\�<S��eg�\���d\�z\�\�,��\�.[�\n�\�FX\�^YPA\�\�0�\ng\�T6H\�CX�59\�O��+��\�_��.����v֡�!{Qq{2�D\�E\�ȭ(``RH�\�\�w�J֜�4\�&�\�\�0+\�\�\�0{\��b\�\�4\�Jg���r5Q�\��h~P*LS�ɷm����ޘ\�g��i\�M+ɷ\\\�v�,8\�:I6�\�ҳ��qDɉwtr\�H���lp@C\�U	��\�Cҫ}��1�ǭmsJF��U�\�\�P34\�\�GQH\�\�-֠(\�u<\Z��\�&���\�8�\�=\��	\�O<\�\�\�\�í�\��\��5W�6�GM\�/5\0\n�O9�B\��?�\n\�Ar95oN\�V\�\�D\0\�_\0	5��oXa\0g�3�����Пt�*b\�k;X\��bs#W��\�5\�x\��cW\�x\�\�\�{�\�Hi\�\�ABRE!�Bf��)\rP�&��\�P �=iiZ\0(\�E\0����\�Ph���4f��-Q@Q@	EP&)(4P!:R\�Ԣ�)�P�Zz\�)\�֨�e�V�Z�i��zT�TKҥZb$^)٦\np��iA��p\�@\�%-��RR\�@\04����4R\n\\\�\0��њ`Q�3@X(�4f��R�Lҭ\09:Մ��N��\0��aj�\Z���!��^�\Z�zP�E-0S�PL4\�L4TLEJ�\�2\'5��\�\�@߭F\�#u�ڀ\Z)i-\0QE!�Q@Q@.\r%;4\0�4�\Z\\\��P��µ��\�eE�\�j\��ږ\\IOZasO=i��\�a^x7)�欑Iҩ2\Z��$l�x�)\'<V�\�o\�Skf\\�t�Lɫ�֥Y��	>�(�;��(^�ԑHs������\�J�ĂNC4�4��\'h\Zρ�q��\�\�7=j\rnX�\�D����\�f��@<qS��\�U���b\"\�\�\Z,C�V\�d�j��\�\n;\���?&pOzE�?\�\�I\0u��Z8\nrp1ޒ4X\�#g�\�W�\�#ls�5\Z�ZH|ZZ\0�j�\�]\0e榳���#\�\Z����%�Z�3<Zm9a\�/�W�V����Ry\n\�v:Ԍ\�1�\�G�Mh�C*�ٌ\�^G�	�J`#\�H���\ZK�V3&*��\�~o�pEZW!��r\�\�Xs�\'\�cZ��_��Շ,\�r�\�ZE\�Cw\�<��4f9F[\�5[�s\�RJ\�\�\�\"�H\�\��O\�Yڕ\�\�N~�,�h�\�z��B�\����f�\�\�zrvW\��4���HCК\�4\�-mFEKof!�Q\0=*\�®+6o4��֗4\�k\'��\�9��\'\�4\�\�ON��\�hp�.BY���6�^�⑙W!-�\�\�u(\�\\�\�/x\�<i	�V\�����QfZwԙ��i\r4JCKHj�!)3KM�\\�N�Q@�����=h\0�\�A�bPzQA\�@���(h��\0(���bQE	�h�\�@��(�Ҋh�\nO^��R-Q$�R�D*e��ҥ�^� �I �\njӅP�J\r4S�9�JZ+@����\n(��K\�%\0�Q\�%\0�R\nZ\0(\�J\0ZQM�\0�\�S�\�,ti\rX^\�Y*\�Ra*t��^�(�\��u��>��\Zq�\Z\0c\�/R�B�D�����@�u�ڞ\�\�@\r�Q@QHaE(\�K�\0m\�њ\0m:�ъ\0(4b�P\��\�m�\�e\���j[�ʖ\\IOZN��\�Ơס\�*B)1Li84\��\"�aMǥ;�ы(e�b�!O5�w\�\��Vk\�\�\�t�Lū��Z��Y�\n�$Ҕvȡ�S4����<N9.k:��j]\�V\�0*lj�_�\�<U���NN[ҳ���\�\�Uq\�Sb�\'�ٗ\'��\�)��5LHN\0<w�\�֕����(s��5�� Va���eg\\𣡫\�Zᝏҕ�L،,\�7\�v�=\��\�c#t�X\�\�&q\'\�S�\�d+� \�h�ͫ[�6F>\0�ju�Cj\'=\�#\�ڌ1Q\�ό��A�����L��ٕ\�P{��Ӭ|+^خ>\�F�u�N\�kt0�B������\�\�7�T��r1T��P\�Ս:+\�\�\r\�:R\�1כyr�f\�\nҩ �Ҭ\�}�Ѷ\n\�y��@�m\�Q3��\�t\�B�\�zVl��ʑ�z\�fwE�e�b���ZEJD�\�L�\�F\�R�T��ګ4\�Ǚ�Z��t\�.獈 =]\�gf\�4�\�\�r\n\�עi�\�D�F0*���%���+Sax��oN\�L��\Zz�\0\'�f)k;�1M0ӳL&�1�ԉ\�\�d�i\�x5�	�\�\�\�ƹ\�\�e��\��\0�5\�\�&Wm=�.�\�\�\�چ+\�\�a$]*�\�\�A=�u5���dr�`�֊ѻ�\�H\�l�4f��Z6RHh�4\�RPh�AE�\0���PA��@Ġ���\0J)ih�QK@	E-%�(�LCE-%\n)zZ`�)��(@-H�=z\�L*U���Zb\'^� ���\�H�\�L�T!�R\�3���\��M��PEb�\\(�b��QE- ���N�\�\0��\0s@\n�:�EM�	Ҭ�WAVP2\�T\�ҠZ�(E�\��@i��j3@�D�3t�Z�\\��TS�J�\�u�\Z��#ր\n(��ER�\�iZu\0%RҸ	KE(\\bP\�\0S������z��qZ\�\�)X�\�+n\�\�T2\�ɻ\�ל\�H�v�\�B)1O�\�,)������	d2\0\�\�Y�J\�1�\�\�{TR\�\rRbj\�;\�R�l��@<�;\���\�\�\�\�\�\�\�g�J�4�aG[ \�֟��	3F\'ۀ9�D�G+T\�rP95-�tl��+\Z&[\�B�I�F\�x5[w\�53�\��1Jœ[Ȭ�I\���lG����e*\�$\�Z0�\�}II�Q�4��CÉ\0\�W�e2��\�G=\��d��╊\�6\�IE<qU�n�\�t���3ǭ4\�S\�E��ܱ�\�JdN\n�՗T3��Նk�Id�J��\�g�\�)X9��Ws!�\�)�]	�#\r\�Y�p\�\�U\��Ar�dOn�$\�ےrY_>՝ur\�ø�j̳�v��帬�\�d��\�-ZFr�r+�9pOAQI*�\�\�R�}��\�*ͅ���ҬHwg��\�{^\�-,����d�>�\�Qi��ơ\0e�O\�R\�ڪ[�sZ�;��%#��z�a�zԴ\�uC5b\�R\�JĈM0\�\�FƁ�\'�NS\�0�\\�ZD�jq^,?�5ʧ]G�\�k�S]�\��\�K�IV�`³�l\n���[����\�_<Vm֟�\'��	\�+ jn5#���h\��������\r�d]X`p+@\�22���FzSA\�di{�IFM\0QE�\n\r%(��\0)i(�AKM��III@Ţ�(\nJ\rAޖ�)�\np�Ҋ��Z���D��H�ԫL	��Ԃ�#\�H:Tb�ژ�\�N�\�1I�v)B\��qI��e(<Q��e&\�`3b��u��E;b�\n\\Q�\04\0Q��m;i�m�O\�NLB*\�\�)*T^(\"\n�E1zT\�)\0�2�*5\"\�֝M\�h\Z�\�ɦ@n�T�ҡc\� \"~�\�\�MB\�(TG�H\�\�@	ER\0��(��:�:Ө\0���\�\0%;8�R��q�P�f�\�5�Dɒ�3 �\�q��m�\�m��D� L:\Zz�ʑEA�\�3OMQR\n@1��+S�M\�@�@��U�_j�\�0+�)� e\�N\�=)��*�D���mb1M�\nHc\�i�+�\�\�d\�MU\��H-\�d\�p\�{Ձ6f<�\�$k�RǓ�\�ց\Z6\�R}(�\�!MW�\0\\\"\�\nj\�#�L�\�8�aPr\�t�\�O8�\�G\�\�Z�\'6\���iX|\�\�ݟ0.z��\�s8+��ީ�\�֖9B�.3�vc^Ճ\�|\�*6�x�\�g��h��\�572�^�֋1����)\�R�\�{\�\��\�\��\�t���1D9\�\�E���\�O�v�)\�c�\�aI\�5N\�\�b��.�5\\I(X\�9���\�{�ە�uQ\�2\�E:0�W-\�J\�\��%3�\�\�\�)���(iz\rΨ<\��S=Mw�5�z\\!�[�\�{E�\naS\�\�\�Y9�=�\�5`(S\�z�~Z�VOS[X~)@��N\0QA�ɠB5D\�!�ڋ\r4\�<R�棑��\�Udq�)?9�Y+��A\�W/\�u\�\�ૻ&C��\nN*�T\�Bg3&G枯P�(\�4\�\"�`A�ҠaC9\�Z��;\�\�e�Pǥd\�!5\�e[�U��V*%\�#\0di3�Ғ\�zUW�#8�\�M����FN�\��\�\r2��QE�\�(��@��L�9��(����0(�QEb\Z(=h�AES\0�QJ(@-=i���D��J�ԫL	��\n��\Zbc\�?�F)\�1��R�LF\�pZxZpJ�\�f\�jM�\�8J_.���i\n��\�\���\n�(\�V\Z:o�@\�mK���\�E��%I���#	J�	NLvԊ� AO(��*�\�Zx�i\�R�\�\�HEH��@��\0\np�\�/JqJa�L&�\�u���P�\�=B\�*W5\ZB\�\�On�\�@	E%-\0QFh��:�4���R\�\�Eɦ��8�4\�i4S�-�&�Җ�)�Km�\�m��cZ�.+j.VR7�%��4�5&īOj5���6�J)\�]֢u�N��e�\n\�\�0���t�m\���\�ȤE#\�T� Ҫ\�lE<(\�6ݨ+A#\�S\"\�\�\�\�0�����8\�J0�\0\Z\��2;\�58��\�c\�N\�\�so�aN1\�ZV�\"�9t���F8\�zX<=\n1\�Z|\�\\�\���F#�#v�\�Է�bv\�H^��c�\�c�<{\�̃��~9\�<\�\�ۡX\����\�o�ɵ�rkB\�\�*��\�֕Ñ�z�f F)�;\�H)Wr��I�U�\�fT�s$\n�g�\�asq*HJ\�\�<=%̠��g5\�Y\���p:R��#�6C\�e*l\�\�<5>d�`�l�\�\�<�GcҝX��\�\�\�\��C�A\�ӆ2iW\0RjYBc��F\"��v{RCN\�\\\��i��\�s@�&�cO&�i�Dly�e?)�T����\�hBg\�S�k���o��\�\�u\�\�᫹8\�N�)3[�����\�\�4\ZBi\�V\�P�R�\ZfI�+\�\�\�Q�r\�W5��o�\Z� \�4\�~ih-H\�V*��89QZ\�\�\r҆��s�\�ڛ��ս5�aҳ\�\�\�8��Q\��I�\�Q�s�\�Ś)!\�RsN��1(��(ԔQ@\\J(=i3@���\�)��\0R\�E\0���i�\"\�y4�&�	V�Z�S-1/J�TJx��&H)\�\�ii�x���Z\0\�	O	J*@+a�iBԠqN\n*�E���O���1\�f�R�\�*(�J6Ղ��E\0@�%L�-\0D�#�v҅�\��*P��(�)�)\�i�PUi�S��\�(\0�P)G4\0Rv�b��)	\r4\�N4\�AC\Z�j��h���J\�c\�\0BǓL&�\�sQ��&h\�7>\�n���;4f��ڍ\�\�\n\�\�\�\�\�\�qũ))i�QL�1A�	\�~�������^�P�����	H�5\"w�4$Z�j%�W�;���\0c\n���\�i�q@�l�\�sVj�J��J��$)�b�S\'2�\�M9�\�>�e\0X�y�U\�3�*\�g�!�X����\���\�H�\�CH\�\�H-\��\�5e��\��tC�\n?:Wp`��B�(�\�\�\�4�q�a\��RF��$B�\n֤`�@��\�֐zx�)\���0�M\�.h�Rf�\� &�4\ZJ\0i4\�iƘh`�5V���z\�yFA��\�C\�}\rr�k��\'\n\�\�By5\�\r�*��\�!4��k�\�p4�\�HM\0!4���\�b�iqI�\0F���S\�M�4\0�����6iᶌP\"`٤(\Z�\�i\�\�\�!�\�_�Q�O\�sZ\�����=�\�c��\�\�=*>GQ],�\����\� \��\�e����\�Fj\�\�Ug�pk7Z�\�њF{Rgڕ�W�3GjC���\�4\�qE- 9�\�\0!���P�-=i���AS�@*u4\�\�V�\rF��4\�ǃN\�4\nZb\r(��p\�@��T`ԫX�����jx� \�HV�I�LC6\����C@��\�O#�LR�i\��@\0�i�i@�@\0ഠS��iqNc�` \�)h(�PHzR\���!��i\�\�	��6\�P7Z��q@�B\�*g���\0@ƣcOsɨ�\�\�\�\�Q@\\Z)-����)i)h\0�QJ�c���J�\�E/ZOi��]>謋C�\n\�C��\�t@�T�ޣ\"T\Z�J���M$\�j\�\�\0(\��SZ�2\�,*\�\n�\�R��c\�*�\0�G52��zՄ�	\�j\�/^>j\�\0H�� ��MXE4�D\�ҬGP�⧎��Z��\\\�1��+���0STf��\�(4�S��T\0c�\0��R\Z@(�\'�ni(��4�P1٣4܊(�\�f�i(\r0\�\�0\����\��;���4&q~&~H�^\�t\'�y�f�\�5\�Oc��\��ҚE9>\�\"�\�\�\�4�}!�B�S�U4\0F)\�\�%\0&*)&��H��\0@:\�\�2pi\��\0p�\�H)E`݃O\�\��)\�V\'I=i��V\rOU\�+h����\�Ojp����S:]<zUI,H\�[�\�5�[�\'5&s\�l�t�J2����R:Uy-��y\�V�؎�\�IhGAP\�\�̊�����\0%\�<SJ�֕�LJ\��:����)\�)�(52��T\�M	���A�TԀ�bd�i٨��f���J\r0\ZPh52�VSS+u���\0\�\�T!��=O�26h\�G�z\\\�\�\�h�!�\r%)��0�Q@�R�Jp��ZAK@�����3Fh��њ(�������\rFjCQ�\0��QIRH\�{\�9nf�\��\n�$�j)f\'���OZ\0y|\�I��\� 4���\0f�\�E\0�4Q@�(�4ʖ!@�\�j��j\�-S��6�\��µ\�9��\�\�+b�\�F\�,\nz\�=j\r��Z�jU>�\"Ԣ�Z�P�!\�Ҕ�\0��Wu�l=�\�U��H85#�z\0�:Ո\�U�\�\�Uv!T\����	\�Z��QĹ5e���\"�SƔ��:�C,X\�N���S(��	��8\�)\0N(PHii�}\�.h\�7#֌�Z\n�Bx�Ͻ\0��\�&)GJQE\0!���L4\�\��5V\�\�j\�\�k7R}��N8����8M�\��ȃ��:ܛ�\�=\�xWT68jn_O�A\���[#GIO8���L\�\0Q\�S\�%-\'4\0S_�;�\�)?\rNS�%4�x\�@\nQH�(�4�PzP\n^Ԁ�ӻP!�ӃSqA�\�ۨ\�Qf�\�\\D�\�4��$S��|�Tm\Z�jhjv\�.\"6�Sڠ�\���n\�.E&�4̗� d\n�$��x�F)�l�S\�W9��:҃Z�Yx��\�\�*\\JR!^je5ҽ�H�ާb�re5 5\nԢ�\�bE4\�j1O\�P�<\ZPi��\r*���S\�qY\Z��Uj�\Z�V�C,���S�Sm\�f�\r֗4��\�\�A\�4�.iA�\�h���Q\�@\�?<Ty�g�:�\�f�\�sJ\r34�\��FqIHy�u��\�_h�\�݅\�4���Z�=\�\\�T\�/Nj�\�\�w�	\�.*�bM�\�T!1N\���8���)���nM��P\�E\0QE\0RR\�(\�*x���U�֨@\�\�2��֓���\�\�h`��+Z�Ȉ�µ <\n\�F\�/)�B��\�p��F*@hU�T�*5*�aM8\��\�\01�C\"Ւ*7Z\0�\�\�BG5i֫�\�\Z�j\�g��jd<\�\�\�qWa\�Y�]��P�&���5[��Yh�N�Z6�ժYd\�S�J���V����\rO\�\0J\r!<\�A�4\0\�\�_��j@%QAB�QH)E�ZJbIA4���\�\�P)\rn���M��V䯶:\�|As�\�\\Qz6�&��}\�t�nt\��\���t�\�~3�{t�����=+Tb\�ȣ\�RS);֐P�L\�ъ\0L\�Zv)�@\�\�5g\0\�\�L�Sq��@)��#50�\��IE\0%85i�\r M0�u�f�\�\�S\Zm8\�M+�\n3HM��b�Ɠ4�\�p��\00\�\�OZ�74��G0X��iJ\�+��&��lE%�9�ojS�+[xjB��EK�\�1��\�O�	-\��Y�\�&�\�\\�S�\�\�E\'#�C� 4����\�0*R�e8VF����Pg�x4aO\"���O\r@�N�SO�\�3J\rF\r8\Z\0}(�f�\Z\0}?5is@J\rF\r.i�N\�\�D\r85�?�F\\\n�\�B�\0��\�.GZ�5\�P\rS�ws���=�\��<\�C\�\�|�\�8E2D���1@	�1N�\0��\�Q�\0N\�\�4\�8���@\�\�@�@\0�4����(��RS\�s@�PU����x��\�V�!�\�Vl�x֤\��e1��HH��(z\nό|´b\�Y3X�ҦZ�*t�5�\��(�\�!��*��@R�J��1\�ئ�ԠPV��.���\�Z�j���T#��:B9�-\0N�n.1U#���\�\�nj\�m\�SE\�Z�T�\�i�\��U5U�\�%\"ҽJ��/Z�iaM:�Z}!�\�M\�@4\�\�\��Z\0}��U��QH)hM6�i��C��\�\�\0{\��\�ϵh@T��df�mv|�溽V\�j\Z\����f�F20\\�	\�*�?7֮[�tGc�eԓ\nK\�UtBMNjd(���R)\�Nh��\�S�\0��Ji�(:SO�8�ӑr(���\�WZL���,�\�4\0��8\�UTl����R����\'\"��i<ҁHE\0.h\�L��	3M4J\0%4\��HE\0Fz\�N#�LPM6�\�\�@)\r-0�\0�\ZSA\�M\0L�\�R$\�P\Z\\�M12�\0��\�\��\�\�Ɲ\�Xh��\�\0M �\�\�a�h\�\Z\na�op4�Jù�FMW9\�8S�4v�\n`8\Z�Tb����M<Tj)\�D�N�)A�\�i��\0K����p;\�!\��Ӂ���ޘ�GZ�\"�lTop��-\�z\Z��&�$�5\�\�j�\���i�zсڀ$��{S�@\� �\�8-.)�\�R�NK�\0n��\�Q�@%%)�ɠs�i�Q��<-j1J.(���E4\�\ZAJi\08T�*1Sƹ�E�wr\Z�\nը�Z$�\�ڳ\�\\֝\�\�ȼ\�̸Ɯ��\�f�F����+&l�:��1Q�\�ъ�\�R\�r�]�\�\�Q֔�oJ\0������ -�i��!����^�VU\�h2UiS�g0\�+�4\�1@GW\"=*�}j\�]��q2EZ�\Z�\\�����T\�*5\�S�IHz\n�*$�V��H*5(4�8ў)	�\��N�\�hS�\0����O�u-%/j\0CM�\Zm1	EP��\\I�\Z��QYw�4Ќm^\�\�q:���\�C�\�gw5\�ݶ\�5�1�W\�5]�\�SN3W��x�\�-�5!SV�\���4����@�\�7sJ[&�M5����{�\0\n3L�q\n{\�n.�cY\�JҒ[��Y�V\'<TG�\\\�I@\n�8b;\�pqR���<\Z�\Z�\Z\0�Z�H��E?4\0QE\0��\ne8P�i4\�M4\0c4R��M<\�7\"�4�)��R=)�f��\0�4JE7\0\�iI�4�\��Q�M&�\��y�\Z4\'`�ed��\�\�T�\ZP���\�Z\\R\�\n\�\��)�RO�@<\n@)\�*F*�x�S�\0.\r.(,\0\�Q��Qaܗ\�Ґ���\�<b�3\Z��l�f�k�z�e4\�\�V%�\�\\�Z��f\�M\�ъ,Mĥ\�4�qM\0u�\�N��h�S��\�\0 ��\nv)��f�b�!\�MjC\Zơ\'5#���@(^�\�P8�ѱO\'4p\�\�\'CA�E4��S�\�4t�IHQ��\�u�Hx�\"\�X�����nj\�,M2X���\�E\\l��4|R�Ɛ+F�ո�=j4Nj\�KY\\\�\"EAR \�(ZxZ�\�SN�)\�Pl)�T\�)�P/\�ҧ���\�Ա�CF�\\ՀS��\�|\�)�eA�����8�\�P\��ʜ\�b�\��*\�|b�AV�,\�\�U�X\�4j#RZ.�t�\�\�ElT\���H���Q�R2�\�<>*�jv�@O�\��wѻ�\0�9�/\Z�z�Hd�\�H�Tj*@)�ZMԔ�\0����\0LPx�f���L��p��5	�<֕\�\�S\\ޡq�\�\"$\�]Jl\�ֹ���ɭ+\�rMf:�\�H�l5j����*��J\�;�ܸ���SR�T@ޔu�=)0y\�i�\�\Z\0qr��$��f*�\�fR[-Lj�\�\Z�� \"\��\�\�\�8��O^��\"��\rH���V\�\'�\rB\r<\Z\0~\�F\�n(\�\0?4��i��W�\0?<\�(\�Jh��\�ъ\0i��)\�R\Z\0`\�iqA\0\�L\"��4Z\n��\�ց�*)�T��FE E(\�Ji():ҚAHdt���Bج�G\�f�\n���S�\\�\Zp�\n��Ѹ\�`\�-�\�1L3���\�h�s<䊌\�M0g4�\�`M��*�`R\�\0h\�8\n1@\r\�(���\0����\n\0J:��\�J\0&)qJ;n\�z6�ө)�\�{\�Z�Mj\0���B\�;TL*F0z\�F�����s@l���ȥ�y8\�KE\0�R\�Uȩ:\�T�LD���	\�\��Q\�\�q�\�%�\"O2@\0\�Vnl��;\rv�}k��\�Vk @\�JJ踻8�:%I4&��B�\�X�cx��U�m�*Ӷ\�P\�)\�N\� \Zy��\�\�q@\�R�b�He\�[&�!jʉ�Z\�E#A>aM�<��\�y?��HfT\�\�\�6NkV\�<T$\\\ZB��C\�Q��\"\�aڬFت\�VR-�S-@�T��!��\�H\Z����2�zv��\Z�ԆY\�)CsU�T�\�\�\�\Z�*�\Z�!�(��i�(�SqO4\�\0n)3N4\�`!8Z\�L\�\�\nκ�֙&}\�\�)�gP��k\�K�y�r�]āZ#)�2rd|i�[yv��Z�ch\\\�qN\�p�m�3oCr�kJ\�p5�\0��ֵ`\n\�ls�Ƞ�@���9�8�Pi�\�P�\�5�\0Br8�=sS\Z��).5l�T�&\�)1ɠr7w$�\'�\�q�\0h\\ҕ f�\��V�1\�@A\�֚z�r\�֞*1N�@u\�J=鹣u\0I�@ \Zn(\�\0<7=)\�\�b��\0L\�S��\���)�ZC\�\05y�#ގ�\Z\0i�\�=\��\�րG�0��\r#⁍ۑM+\�O\�M4�aZi!\�9�Ƞ\nq�P0��3LU��*,]��\�\�M�4���Fh�\0�sJ.(��4��\n\0M��\nv(�\0(\�;P�	KE.)����1J\0\0S�F(E(J8���)(=(R(��\0%4�ғM\�!�\"�T\�\�\r\0FV�T\�\�\�4��2#�jT<SJ\Z�G\�@�h4��p\�M.\�K�\\�@��A�\�T\�(�Z\�H�1��n\��_ӗ�5>�\�ֈ\�U�b��L\��>�\�Vm�5�U�\�u\�+c�E�\r�6Z���t���9\�qڦ�\�\���\�f\�fX\\Q�~̯�\0qQ\�\�\�-;mi\0\�;S�Ѷ�SP�\�y�DqPH�\0�աl���r\�\�\�\�y\"�-8�xEK4Ei\�\'=+*x���]ǑY�Pu\�\�ь\�\���jyc���\�=Z�G�\0\"�ZE\"ҿ\�\�\0jv�\0�5/�Po�\�@\�>m8IU<\�Q%&�\��%J��\�g��5f\'\�*l;�Q6j\�C��o\�+F.��;��ґJ\�q@�M\�JE4�\0�\�8�\'�B	�\�\�d^K�\�]K��ý��\�ZH�\�\�\�pMe\�\\\��\�0{���<\�ݮ� �qֱ�\�&̷�A\0V&�\�J\�/ys\\��0�[}�95�\�V]�浢\�[-�\�Ғ)1�A�HA��^�\0��\�ۊ���j7��1�5\0FT\nh$�O=)�w�\0�4�\�\0�bi����%t&��\��H�+f:\0��M&@4��\���3�\0\�٧�i�R@\n	4s@4�\�:ӳ�nhS@\�)w\nBh\0�\�:\�\�)	\0\�HiI�\�\0&)1K�L\�MF�Թ�0��Jh���i\n�N��\00�@SN\"�\� )�\�Zk�S\�\�}\�KN�sJ\0(��i@�\0Q�\\R�H\�\0S�F)����)q@��\�-\0��\�(�AJ(��)h\�\�R��Gj\0J(4��\0-1�\�\�	���7\ZP	�1��&��\�\�h0�Hw�\�NUȠ\�P��=�i88�q�@QN\��Z\0a?�8S1�S�\0H�*\�B�S�\0�<\n�n�Ej��AT�64�\��}k��L`q\�+�\��j}k\���ĿJ�\"Hd\�\�\�$���\�1	CV�|���T]�\Z�\0Oki\n���]\���WQ�9�N�O{i:���p\�錌\�1HEN7^�ҿ�FƫRQR�\�E\�\�8�\�}�\�\�c- (0\�Mn�M6e昜5\0nY�\�\�mH\"��I9\�X�qR\��#Ȫ�Pd\n҉r��,9�\�h\�\�i\�Ur��o-�-�i5I�\�8\�)\�x�\�L@(\�.1I���L\�9�0�\�\�F���cI�@�YW\��\�aYk&H�S�*YHڶ\���V}�\�Z�*nZ$�zP8��)\0\�i��H͊�\�\�`��T\���Mךι��0d7s�y\�nf2HU9>�f�\���~cW�-\�J%�Vэ\�\'+\�t^�:`�y�;�FF8����Q\�v�\�����#�R�8��Ú\���@\�u\Z�\�rZ\�e�\'��-�J҆�\�V� �\�/rc\�M4\�ni�m<4\�4�E\05�\�L#=*L\0\rVip\�P\0\��\�S�\�ɨ\�\��\�\�\�`Wi2\�P��R@2j�<�\0���]�\0J�樮0H�\n�q\�1�\�͌T\\n�Z(4�4\0\�sK�L^)�\�\0*�=y��FH�	M�j�	\�%\�\�3�\��\�@	\�K֔\�@�\0�RS�\��\�ӱHH\�\�)����F9�\r�R;\�c�n)s\�0�\r(g4��@g���P)qRX�\�KE\0!\�J))�\nZQ@	E:�\0AK@\�KL�\��P!iE\0Q�\0QN�Q�\0ZP(�\�@\rjN\�\�sHh��\�M0�\0	�JZ�Z�\�a7T�sUז�J0�-@S�@���\�;\n\�1J8�)آ�rW-Q0\�Y~��\0`<Ӗ�:\�\����(Aڞ\r1zS\�q@\�\�_�qY\�u�(xQT�5�V\��}k\�\�;�G�y��\�\�O�z���U�$�Қ\�jx\�:�L�<P�T�Sn-#��\�=\rO�\ZM_Bӱ\�j\ZQ�rTqY\�y\�z\�^\�;���f��OJkv.�#5\�8\�\�3�4�>\�w��\�Z\�\�\�+㊍�Z)M)N\�أ2UV\\5j4u^Xr(\�c�+�ӛ�\�s��m\�\��\n�\\N�\�\�EY*�v� U\�3PQ�w`x�i\��5\�L�����4�\�+��չb\�W+T+INn\rF\�\�0\�k\Zc\ZV5��1�@\�\�Zt�\�Vw�Ib#��g��b�r·��\�Q\"��h8��\nϵ\�_G͚\"\\\�l�jn@\�5RK�:ЇbēUYg\�U乪�\��j�;�\�\�<ԓ\�B�j;+\'��p\ri\�ʤ�\ZV���\�g�w6vko\n:S4\��>��\��3�\�\�\0��|�j\��\�MT��4�\'YM��\��c�Ew�\"]���\�D\�SY[R\�\�A�\�Ⱥ\�KU�\\�`ֆl���w�\Zi�COZPi*2y�W# UQ��j\�{T2��\�d�Q\�\���Wbi�|\�+c4�\�\09MO\nsS��\�\0Y���Ӓ^�E\�9�$\�Ƞ�\�SLt�)�Ҁ��R�\�!\�\Zx�ZoSJx�\�o�֜\Z\0p9\���)A�\�(4\�\�N\r@�J78�iǊ\0��\��\�摍<)�\�\Z\r+\ZqZc\n\0e9�\�)1K�\0j�H\��S�\�z\Z&1@�u�m 3�N�*\nJv)1@	N\np�S)E�@IN�\0��-\0PE\nP)@�b�\r��4�P�K��\0(�\�O�Қkt�&�iM!�1�ҡ&�c\�@Ɛ\�-�i*\�b�گ\�*\�\�\�n)qK�)�QҐ�JJ��\�Ji���C\�\�N+�AHaގ���%\0H�*UT\nqR�M0\'�sW\�8QT#\�Dr�\�&����Wm�\�\�ڒ�;W����\�iue���8\�T�k\�\�p\��MZ:\���c�R�G�l\��y\�LbIz�<v�\�\�y\"��Ɔ�9\�O�\�Sc�sT\�\"�\�9��\�\�2uM��V9R�ֻ�t�m`\rejz>\�\��XNU)�\�ݵe\�dl8���5\�Վ�f@c�<<U\�.�\�\�	�\�\�0`\�Y��*o#9\�\r��&�#r\�\�Ei�Ȭ�<�k^3�*F\�ș�7\�5�W\"�KA�#\nhy��G�؞j�,t�ˑ9�\�1W\�Lf�\�)�2��*j�AU\�4\�dR�U��R\�\�֪�$��Iz\�e�t�	�V��	��\0�f�6�� ���\n˒�c�\�r\�\�TXӡ�%\�\�Q<�\0-V��\�Ԭ$i2j=\�Jw@Y�j����8=\�H\�\�JvB�\�Nzf��3L[h�\�z�H\�\��\�\�[J�zWTac�s�\�EN#�\�\\��5]�\�\���\�\�\����X\�XE\0c\�{��3�CG\�\��;���5\�x�ɑ�\�;��\�gԢ\��ZQ\�U��\�U�\�Y�z\�M<S\Z�\ZzTD�ԧ��\�\0$\n�\�&�\�\�\�NMFA1EBƀ\"9\�).iE� 3\�ZO^\�V1\�X@\n`N����.jr@��\rV\�q9�aQ0\�\�Jy�\�(� RI���G4CJy�ZS@	F\r*�֝\�@\r�M��ڔ\nfqO^E\0=H��\�\�\�Q�\�\�\0*�Ґ\�\��\��F\��b�\�PCg�1�N����R�\�M\�4��\�\���FZF\�@\0�#4���1H�)M �4���	J(\�-\0!�Rҁ@\0�\����u�\�I@\\R�M��F(f�@��;Pt�&�&��@\nM\'ZCH	\�\0)\�R�i94�D¡aVX\n�\'��\�\�q�/U��&�\�;\��3Hzґ\�Q#I����@\��X�0��22)�\�S\�Z���CO4�f���2E\0:����sR�i�a9���\�8�\�r)�M]1�{��H��L��+\�\�?\��3\�^�i�n�Jh��Y�R��v��^�&M���qW&�r��+\�խe�bc�P\�t\�\�0\�ݩ�5��\�B\� �@aZI#!\�14\�\��BWV�\�\"��,|åKLI�FS�V��8\�\�1Q\�o\"�R\�}	5\r-.#.�\�s�@\�9�WO�\��)o,R\�2�\�tﱽ:�\�\�@�\��ٽ�a�*g��I\'�\rHj&j\�pw\�\�3ҮĜt�l�kF\�W\n<c\"Z,��Q8\�i\�\�52\n3G\�P�:\�q�\�\�94Ǚ:\�V�n`\�d\�H�Q�UIncT�<U\�s�*�3ԓ�\�$\��hkY��*\�O�3U\";S��YH\�<\�\�&\��\�R\�\�\�b\�KV��#���Rz�ГR�OjH�c\'��e��\�\�M8\�\�\�Y\�\�\�8��GҖ\�\�4]+\�G�\�\�b\�T!c�s�\�]��+�L\�ȢI0=\�C\"9\\��Ҥ�-�52(\��\�X\'�\�@�\�j�\�nC��#`U�\�H\�|J>f�A�\�\�y\�7z\�n\Z�\�6\\�`V\�qU��� U��\'\�i\�8ɦ�\0c53q�ZcP�j6~x�\rG�(��9��Ԏ£>\�\0��ilS�=i��>\�$um\0\�*�x5j=\�hG�R�\�i�\��T\nޔ\0�\�4�\�[4\n\0�<�N \ZLe�YqҀ#n)���z\�p\0)�\�\\qM\Z\0^�f��s@�\0��ԋ��\�)T\��K�E�Jx<P���)i\�9➼\nb��JI�nM#\ZL�v8��i2ri\�q@\\\�1�B9�e�*�\0��r�J�S�g4Xfa�5\�\"\�s;�\�Q��̱\�Rf���Q�zb�(\�K�z@��(ǽ0\nP(�\n\01N\��\r\0&i3Jh\�\�@	�Ph+���\0SM?\�\�\0&(n(�~F(3IF\�zZC#j�%YaU\���\�\�U\�sT\�8l\�\�;��	JzRc�V㊡:R\Z\0\�\�8�R3֚i\�\�4\�;\�1��=j^�\�\�\�\Z#=i)ƛ@N��\n��:�)�4f�Bj�k\�Wa�&��\�\�Z�\��\�3\�^ai\�\�Z�\r1\�#\�4�\�Vx��Ê��u�x�\�?�QG3ul��� \���\�+q�\'*i\�ղ\rc\\\���O27 �R��1c��V0$ՙ�ܵ\�q�w��G\�TC,>�]��+S\�z\�\�:楍�0x�6�Ex4\�\"\�j0�5�z\�\�/<f���h�\�l[1�Rڤ��}k\�\�M*��k\�ո\��Kq�4\�9\�q\�X&\'\'5\"\Z�4\�J\�P4H�N\'��/�?oi�b\'\�T�j�\'j�\�\�L{��\�d\�\��Yr��R%�gJc��\��\rP�U�$\�Ԑ/4\�\\63S�1ޘ\���C#\� ��@�b֝�J΅3ޭ(�Z\�{\�c��d�J\�\�4b\�O(\�\�U�?�G3	�}+���UP��zq9\�LX`(�\�T\�\�>�\�c4l�\�[\�\�=\�\0MD�dnzS\�\�n��T\�\�qQ;\�{Ԍ6��\�l\�\Z[5\��F�\�\�5\���3H�y׋N냏�ڻ���넄���B\�Lф�>\rC+R\�hH�8���1\�H[�(�Si_�1\� \"cQ��{��\�\�\��\rG\�\�\���\0Zc�Sۊf;\�\�]�՘��Ut\�V L�Z\0Y�x����f_��1�J\0f\�P\�\�\�\�I\�9\�\�8�M\"�\�\�L\'\0/i�ɥ\�id\�\�A֜Ojn=\�\��i�I�r�h\��Mf;�\0\�u�q�\0U\�Zi4(\�9���\�@�R\�0��@\r\�;�iq\�`P�@=�6u\��\�w�o�(\�1�J)Y}\��\�\�J�3ހ?�\�','2025-02-27 04:35:30','Male'),('650e8400-e29b-41d4-a716-446655440002','6bff076f-d582-11ef-9523-005056c00001','Admin','User','Administrator','Administration','emily.clark@example.com','555-2345','Contract','2021-01-10',0,40000.00,'Night','650e8400-e29b-41d4-a716-446655440003','789 Pine St, Springfield, USA','{\"name\": \"Mark Clark\", \"relation\": \"Husband\", \"phone\": \"555-3456\"}',_binary '�\��\�\0JFIF\0\0\0\0\0\0\0�\�\0.Exif\0\0MM\0*\0\0\0\0@\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0�\�\0C\0\n	\n		\n$ &%# #\"(-90(*6+\"#2D26;=@@@&0FKE>J9?@=�\�\0C\r=)#)==================================================��\0\�\�\"\0�\�\0\0\0\0\0\0\0\0\0\0\0	\n�\�\0�\0\0\0}\0!1AQa\"q2���#B��R\��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�����������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\������������\�\0\0\0\0\0\0\0\0	\n�\�\0�\0\0w\0!1AQaq\"2�B����	#3R�br\�\n$4\�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz������������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����������\�\0\0\0?\0Nirh\"�\�9\�ɧi��R\�vM2�@\�h\�i�P�4��2�P�5(�\����y��4̞����\� �\�\�5-���yQ䟙�\nĽ��Fs#��U]GUg��\�*�Va�I�s8	�\\f��G\�\�0\�Osu`2�u �U\"�\���!U^rx����*)f\�I{,�L\�n�E`ަ�|��m�\�9���G\�{K�\�ҝzV\�\���\�\�$\�/\��ꊋ�\�\�Mk�=4#�W�;\�u\�*�����?v?\��\�g\�}x�3d�X9ϧT\\�N?\nS�:0ZD\�\�\�L@#=\���\�H���	���y������	69S�\�\�\��\�1\�O\�n)�\'�\�\�\� ��2�+\�E\0:X�7!ԃڋ��Du꽩a�\�\�\�J��Fjy\�\0\\�\�R�\� ��4��$8҄]�O@N)ң�#�⋅�IB@�愍��8銱l\�\�N��>��ڴD�\�FNF(��uE\�-Tq\�G<0\����я�\�7J\�c�f�t.N:�\�R\�\�\�m0P:\�k)E=��6�:!:�\�\�\�\�$�� \'\�C\�~�N\�SW}��\�\'��\��N\�]�:y����d\�5V{\�4\�%\�ٔ����V\\�d��/��\�Tf�f��.�$����.�\n��W\�q��&\'\�ɷ���\�\�2{�ђ\��\�y�k)\�1��,��\�99\�w�6\�\�<\�\�\r���\�\�q(���\0�{X�\�\�}��,c�p	4�\�v\�!f�\�\�uO�j��2H�)\�(Vz���\'��92�]3��\�^��?)�p3�³��\�9�w�e��qZ�g�\�?6\��\�\�=\r\Z�hѨ�vS\�\�F	E=\"%r�#Υ\�Y\�6���t��\�e�@�ȧ����>�!mK\�W�C���S;�ˊV����Z9\�\�OC��0$\�	4\�mP\r$\�I4����ɤ$\�i��M&M\�@ɧ\�>�>�\�\���=h�\nZJ}!�(��\n\0Z1E\0R\�K@8RTs\\$Y\��Nԛ\ZC$�\�_Z\�u�pFh\�\'�\��U\�cR�\�ԍ\�\�8�q7W\�L\���a)tFяq\�\�%�\�cǽ_�٣�?7V?ҙg�O2l\�B�\�XG��\�	؄���f\�\�0FX���mq7�\�A���\0\�5fur#\�x繬�ZS\�|��\�ⲽٵ��\�\�-\'\�%n}\0�e\�\�\�\'\n���N��Y*~c\�\����\����b\��8B�*\�*�\�FO>\�;�\����G�\�\�֩��&��q\�{�I�GMM�7�~\�q�\�\�a�Q�\�\�j\�aH`}jԗ��D:\0Ni�O0g�aF��ol`� �3H2\�\\t#)\�/�rz�\�Y�\�\�`�	<�M\�i\\\�r�H�ԟ\�b�D3� \�\�\�\�(%�%	\�;Se\�\�?0\�3I��+\�;�\�\�FGZ�\�C�l�i�\0g��y\�jy\"Y�2�x$�\Z/`��PNI�	\�b�[J�<�۔��jb\�z猚�\�,$6w`��\��`��-=�\�|\�	䎴�\�\�l��w\�[�\�בR\\Z�u�\�\��i\�\�\�WB4R\�B\�<\�\��\0CZvE�eB\��\�pV�Y\����\�\�\�T��W\�~�\�S+�\�Tl���.f�;�fN�h\�>��)��@\�V7\�Nx\��\0^�\�I\�a\�g��}~�b[\��\�#\��b����\\ĎI�\\��ѱ�kV\�SK�\�O\�a��F�\�\����^���\�i��v�i�2�\�\�\�ɢi�3Y�B�\��~R*�ͽ\�(%#\'\��\0X\�ĸ���w\���?�6Qou�a&9W�\�RI�ʓO`�\��T4.rF3��\0ת1C%�2i�\�\�\�0�\0\Zp3\�\����\�l\�\'6��؞�\Z�=G��/��r��\�?\��)��-�\�e\�\'�v���47;n\��/ƤMA���\���ziktUfn<����ta��ֶ{W-gt�4~saAʞ\�Ԃ�R#�9\�uS�\�\�R6cy���M5�2i��i�\�!����i��A�EK\�GRR	\�b��M��S�����\0u\�u\0\�\��\�TH\�d.v�\�Ƶ%Ќ1��,{V-\��(�\�?\�jMZ\�1�F\��\�\\��x��D�\�N�w�z�\�\�D#mJ�S=ӗ��p�;UhЬ�.����J9BO�����Y�p\�D̄�Ճ���cv5!yvF8\�u�K[�j�]\��8��\�ϖ�nY\�\�G�֠�mm~\�O(05�\�tF)\�v�a\r\�@\���\�.͞gn<�jڿ�æ\�\�f��1\\�����Y�j��\�ɨ\�#��kى`\�X\�(�ܒ1q\�t�\�@���2{`z\�;\�L}�F:g�i{�&��\��Bp}�v��,x��QR\�p���갑��\�z\�I����%:\0�\�x�X�=)F89oƉ�\�\nK}i�D*N~a�Ƭ$j~댷QҫDc ��jIKG0# \��,�\��\�\r8�2U\�\�\�!�*+;��\�\�\�#�Z\�/�\�\"���Q\�k&\�f\�&�3\��\��&\\�\�\Z_އ\"0�\�o�j\��\�*���\�J�{�\�m ��̧\'���f-lCM��d��\�-�H�$E��\\�¥�̸����Ք\���U<��h\�\�\�4�U�1e�{w.�Lm\�zS\�\�ZL��\�Ây\�\\\�cXg\�e@e\�I\�T�pAVGp(sZ\'td՘��ݴ�\�Z6�#�x\����n䓊�K\�\�p{sҦJ\�Ƒij�{\�(�\�\�8~�\�km\��\\�\0�t998��w-�2�!��δ��\��G��2t\'�\0�Xݭ\�l���b\�et��ܩʶ�2H\ZH>a\�\��\0�k!\�)�	�#a��\�s�\�+J\�_��\�7�:�5�\��V��#G32��\�\�i�Xyq�p\�s\�U5v\�N�䉣b\0\����\0\\Q���9#��i�\��o�jI�ў\�\"Ep|\�y\� \�>���\�Ze͖fP\�\�\�\�>�ԗ��\�!�\�p��+�\0֭MUY�kiC�\���h\�\�-tf:Hna�,�8��V]\�\�U�\�\�\�5�\�\rM2sqk�@ܜ����ø+0\'��\�\\l\�wD\��\��\��G\�N<\'q\r��Eeg�1�sޯ闪�{� 7\0�qUk!^嗌�r�J�}+cJԤ�q��2�\�N[=�,�\�\�qP\�\�7\�s\�*ޔ\�\�2WV;h\�d��Gjq�v\�\�\�%�r�\"�-�8�\\�ʸ�������L�E0\�\�0ք�i)i(\�)\�\�@	RTt�C \'�E���2N�\n} \nZJ)ZQ֒�\�bߠ�e���SU�n�\���#����o	w\�h\�<d\�\�K\'�spp\0ⲛiY\Z�_s7S�T\�130��9\�\��\�±�-\��j��l\�\'L�=���\�Ɍ\08\�r\�\�S�*\�\�󁌹\�ձD�\� �H\�����Hr@\\\�$\���G�\0a�b;z\��Έ\�ڍ���ݐ�w1\�T\�o�\�c����G}~\�bc��q����B�\�J=Xܺ\"mJ\�\�\n�r��u��H7\�\�\�z�g�$�:w�\�\�\�\n\�8�\�Z\�]YI\�ݗ\�X�e�\�|r\�s�ȸyn&-#\�9��#�y\ne�\�CTP\�&�7�\'5iY�vU�]�O����rNOAV�\�!\�\�$����5U	�U}{�<q��\�\�����\r8d��<T�Q!���\�(��k�\�I\'=A�\�\�B��\��e܀\���\�V�\�\�n*p}\�7a��\�0����:�J�kr�l�T\�u����\�\�j)a�&Y�+�A�O�\0UM)\�<�1q��J�\�ܴ�\�Ԓń-ya�b8\r���\�,uo6	\"�\�\�V��c-�ao��������\��Z\�\�\�	:�\�S��oZ��Ԩ�G���\���\Z�#\���7F#+�U?&H\�8R0T��Kd\"���R�\0J�1Ң\�[�^\�b��-\�\�[h\�9b1�\���3\�}+�ԢgL(\�\��\��X�B+ʓ��+X=�֬�$f�����z��#?t��%�,a�D���\�t\r�T\�qM��%gbkk���\�G�\0\Z۶�W�+�d�t?\�k ���V��!u��\�Qڲ���]��\��\�ɵ��r6�q����Z��Y#h\�e9\�?�z�\�ͷ�\\�+GI\�\�!X���P\�\��\0֬\\^\�\�>�\�	M���8Rp�˨˖��r\�MZ�H�ă�$sT\"��\�\�f�\�\\)##�\�ڒ]FʒI$�\"0\\�\��{\��\�%��\���\�]Q�v��V=ś��8�\�Z\��\"Hڶ\�bԴ�Wp\\.��\rr���yh\�\�ï�O�#[Lcl�Lv�<c�\0\�K�\�\�1ppS�P�\�ު*̙;�%�\�c\'*ޕc\�(ۂ�\�~3�`��&H\�\���\�\�%\��\�(]\�\"�����N!X\�ǚ�*�d0�\0\n�kx�!\�*Xr��Q�]#M��oC��⤹�K��u�GVS\��\0�P�L�&�\�F�Ǩ\�f�\�l%q*|��!�z�\Z%\����)<�:�j�\�R\�W�[<\Z\�+\�\�j����k� $\�8ϭZ#�R)��QЎ\�bIM����]\�c\�)ؤ4\�2�(��\�i�W=h�=h���\�KM�\0�)�\�\0AMs�\�e�g�\\M\�$�N�Բ��-b`G�9\�k�յ�S\�Z�U\�ZK�\�\�X�>I$rO\�)]�VD���@��N+���iDv\�=\��/G�`\Z\�E!T`]�	C&[ �Qԟj\��#��\�\�6\�\�4\�J�\�/\�>����t\�\0\r�?�\\y�-K�x\0q�֨\�j\�2\�H�\�\��\0J羺���c�=X�s{��I\�u\�X\�nc���\0;�\�d�\�ņI\��uF7՜�D�U�\�؀=��ra\�\�*I\�c��\�\�/|�\0\�ZV\�\r\Z��\�\�g�Si�lI�\�h@\�gڬ\�ۏ!\�Nc�S��.?��+M-�������`~�����6\��H\�\�\�GuF1��⌓36FN@5�[[Y_�۞�+�\�\�I\'����)-�! �8<�*�)\�\�g�P.RB���OF\�9��J\�nv�v�\�#��4\��0\�R\�D%@��\�V�8�dz��A�{���o�m$2\�w�\����cl�==�\0��f3�E�\�\�(��^f��	\�q���\rM\�̫=\�\�G�a]\�U�OQ�Um�Ibc�3�\���i\�\�,�v�\�}i�\�IE\�gqB�ه+\�\ZVW_n@Q*�Ȁc>�\0�:Kd��\�eB0\�\�i�\0YD\\Y\�&O�h�\�xϨ��[��O9NU�A\�\�Y5gu��wVd�t�v�\�Ĺ\0s�۫�}�b�8�\�k�\0J�bc�\r�a��c\�ߟ�w�/9�\\�&>\�z�CE\�Z�*\�d\���\�:�:�U��ʽH�FW\�\�O5��g{\�)a\�\�Y\�6;쌪\�$�?+t\��\0\\P�}\�mG\�\�\�D\�F{��b$�\�JaY3\�I\�>��\�;�\�t\��r�I\�Q\��ZĿӖG&<\r\�\�\�C�\0ע-\����E[t�\��KF\�3\�\�}�\�C\�\�Wd���\\p\�ֲ�h�ݞ9\�Za\�0\�1�\�~\�+l�\�س�CeLLx?\��\0\�UK\�s;�x\�A�\�]:QjJ���\�(\��}>�j\�0��\�\�w�ELw)\�\\2�\�\��HW \���\�\�c\�ڂ7\0Xx�\0Yzd��Z;�\�\�\�bz��~\�\�x.T�\\\ZMY�wF=�+�P��\0f��Ƥ!%�R�:����T�0�pmY�em\��x\�\�ޘ\�2�9\�ه��Z�WD;\'fUK,/ȷ\�D\�8<�\r	\�]+ơ7�C��zj�t\�4d)m�r	?w�\0�U\�mux��=ǭ_5�\'�\��\�\�\�4L��낿��f\�e6�?�f\ZX$\�?�X\��wo  �Nw�\\Csm \�$\�\�}G�-\�\�\�~��\�W���V�+$Ī�wcЊǐ��9,\�W9T�\�)t�\�\�\�8���\�Y�m��cS\�H\�LP�\�gXJ�!h\���\�!|s�싺8\�\�sIJI�� LR\Zu6�	O�\�\��~���\�\�u-6��)\�\�\\\�N1\�sZ\�\�\\	\�V�ܾT-\�x�]^\�<���GecZj����rO,M>\�\�͙Kd��\�\��9>��cj\�\'3s\�擲:b�\�k��l�h\�jX\�\�)�\�i� Q�(t�<�r~PMM�34�|�\�H\'ֹ\���л\Z�\�\��3�\�s�\��W?�\�fL1\�K)�\�\�=?�njR-��l\�\��\�î}pw�,�\�\�2\�\'��\�iǙ\�\�RVV)\�\ZI7����\0�՛+f�\�(fv8��\�\�=̄�\�2s޷��_/{�\0�\��s]2vF1WeqxH*�p3�+j\�6��\�)�q\�j�g��kd8\"F\��P\�A\�!%�b�u�iM\�\�\�(�w3-ѝ!v\\����5�r\�]*\���lz�ď\�K\'bO\�\�\0c�kn=�6H\��p=i\�KW�\�\�\�\�n��G�P�4�\�I�q���#	\�\'\�䊩\�,D�UrMl�0�\�icd����OC��eÍ\�\�sP�Le0ɧ�\�9�ކ\�	Yܽ �\��U8ڪ$�\��rN��\0V�i�Y�Q�+?`�@݌*QL����\�n\�2;\�\���8`F\�Z\�I$�r3\�kJ\��.\�:,N\�\ná�=\�4Rd�?(	&&8-��\�ڭ\�Lo�w\�Gq�>�\�NW֬Q�\��\0�RZɐ;W�\�CY�\�M\Z�X\�ı�ү8?\�?ư^	�K��^\�S�\���\�5\�Yʠ�-�R�g\����W���\�\0HN��\0�~��&�{\r\�5p\�\�[<��v`Go�׭:�\�\�9�pV�@:�\��\�_b�(\�<��Py\�q\��\0J|{\�,��\n2��o\�Q�-\�\�R\�a$3/\�b;\�G4�\�LR��=�h\�\�D0\�N{\�\�w�b^D\�op\�Um\�s�S�#ۥBԶQ�\�e�I\Z6c\�\�zV�\�\��\n�Z\�~R��+=�#���#�?ҮL�kw��\�cnyڪ�&\�s`L\�Q��\�-ԏ�\\\�7ل�1*�=>����>�|�\�<7`�1�\�w�i\�۷�#HUc\�0:B?\�jm�\�ʷ�\�vWw\�$��\�\�ޘ�\\G%�r�=\rf_H\�7H\�\�9Fz��K�\�\'�0GPE������e��nz\�\�t\�!	�O�J��w�\0\�\��|�u\�`G8\�Z��;\�o o�)��})�uq&ӱ=�\�\�\�.\�;�rGoFʲ\�\�ޣY߯Μ\�\�r\r9\��-\�g\��\���U-J&889\�ojp\�\�S\�\\�\�قf�\�\��\���2[Ewm\�[ȯp29_�Q\�u\0nDs��s޵5m9\�\�\�؃\��\�z��}w\�\�]�\�Ί\�:�s��p>��\�-\�bX+��z�fYS��3�ޠ�̲��\'\r\�:ӷ\�?@�-*b7�\�z\�}�\�\r\� 0\�5�$�!=\�s�ڳ�-\�I�G\��uV2��6�?��\\\�\'#8\�u\��l��y�w\r\r\�n�k�Ӧi`�PG=W=+zo��E\�֢�8�\�N\�lb6�O4\�@��f�isHes���=h\�ld:��J(\�P(��9KU�¸�\�\�<�\�k��&~�q\��\\��88\��\�ntS؆\�\�\\]\"�\n�\�\�+��\�}\�۞<\�Vv�\Z$;�~v뚶7\�v�\�NҸ\�;\�u\�V\�/\�\"��\�\�s\�+KJC����$;��}Jh�!�*�3[RсQ�y`���e%h��̽sSLpA#�>��|\�.\�<�l�=\�]�&Yݜ���\��\�A�\0-9o�\�[\�J10�m�-|�-0I&^Y[G@��J\�\�\"&\0\�fl\�\�\�g\�D&{[h\�.;\��V��mQ\"���T�y�\0<\�S�Ս��;�\��|\�$�,^z\n�l��l�� ��>\���Ϸ�K\� \�n\'�?\��\0*dw\r\�F\�9a��\�i\Z6C\Z����RyJ�\n<�q�Q��6��ubA�EX�po`qĩ�o��T��\n/S?[�sȠ�S��+;`�������\�\�\�}�\�7\�&y\�\��VQ�X\�\�p��\�\�\�aD\'�N\Z�g�-�v��e�f@ʧ,21[QBl\0��]�\�\�2����\�NVԔ�\�歋�\�\���n\�nqڥ�I�Ld\��o\�\�~8��0\�znZ	GSXNp�8<\�Y��ܛ���\��\0�\�8�\�7\�\����Z�� $]�=G�\�r�-�Ce\�+���C���g��JmZ\��\�\���5=?\�\�ҧ��7^&8\�?��\�]E\�Ϙ\�\�?{��RwhJɓ\\\�*�\�\�s\�OƔ&6�2��\���Ų\�\�\�Z0\�+\���HחP0Ċx\�z�oj��w�Ė\�*$i0VY�\��b�j0��ò�0\�;�ߝGr��\�\�\�72�Q\�\�t���\�\�!m�ʶ9SE�w\�\�u��*����\�;TZ��4n?(�ǡ�x�{{峘		ٸ3ں\'�[��4\�h�{���&�\�Rf�K5�Q�\"��\'�^���F��0�g=G_\�*�K%�ҼG\��B?�ճ*,�\� ?�e\�\���6�\�M�T\�\�\�RA�i\����;]]��hg$�6�z��S�DP�H�\�r?ɪ	�J�R�\�\��V�j\Z�+\�VA�Le�\�5B��v\n���-\�2D\�zs����L��8*\�І�5REt�\\��rc�\�I�^5�ፎ^\�P\�\�UXd\"�Yy�\\\�\�	�q\�)��\�\�\�Z�\r\�\�/\�T	,^XK�|�;Kc;O�R\�\\}�I0�/\0�9��\�3���ҋt�.��\�1S�A��\��\0\�`�\�\0Ǯ?�ƹa+۸�\�`�\0�z\r\�B�\�\�;���m6�ؔ\�v,jVbܐ�lr8\�j�M�Ds\�8OOj߽��\�\�U\0u\�?J\�b)!F\�E��ֺ\�T,ѵ���f6E#�\� ����6)w\�Q�˜&�\���\��\�D�\�5�n�9�\�W\�\�[\�B��\�r�&\�W����c\�w>]ϗ�/���`\�̦���9A�\����\�HH,=y��k�\�y\�4\�f��d��\�KE��z\�A\�I[�J)�\�@:�\�R(��\�l\�N�\��\�\�#\�\n�A\�\�H�f�?2\�=9\�\��\0׮z�J\������Ï���}p\"�\�\\��0\�\�U�JB:�O\\U�[�3�\�$\�Wgl]�\�>\�]\�˓�謋�ϓ�-sWG�U��\�ҷ4\�L�\�gp��JkDn\����,�\�8\�7pj]5\�q\�I\'�T6\�\��\��\0�Z\�RG�\��d\"G��8�?\�Vݑ)]�>\�&ԦPTD��p*	��呀NH:�\�l-�\�\�oe$���.k�0�\nFџ�޲�l\��E�x�*gۚ\�\�%]Z��\�\'\�+�9]�\�t\�mi\� ��O��zU�\�vZ�\��\�W��\�1�)#�~z�\���K�~b�G9\��\�7��\�\�\�v��	����\�ײ�g�X�\�$��=s\�����$���\���\'�=�\n�\�\�\��==�\0ϥj8MF\0�\�c�lx�J����{�\�٣\�Z\�\��\�a�)��}}�\0\n�.\Z\"qG^/\�2Kٌ��Er?\��QN\�WF�Z\�\�\�Ie\�AӮ-�CF2|�\�>\�B\�ࣇ��\\�\�y\�*��,�[�!VP\�P�pjvԄکp$��dv�l\�\0l\�\�m\�1\��\0֦\�r�0�@\�=)����t8R��?��\0�iyBI\��\�YJ����c=j���\�#,\�kmܧ�O�5�o*]@\�bB�q�\��\�	&ۓ��\��:SM��\rW{;�\r\�A\�\�n���\����\�[�P\�2D��\��\0\\��bDbL����\�F\n�\�\\h@�ٙ��{�����%h\�˓]7\�F��\�G��z�$\'sm��^E{vE \�F*}EcJ���O\��c>\�ޚW\���ּ\�%Fca�:�U��\�$v�\�y�1���Z\�\�hǔHzڈ�<��FQ���8��:\�\�Z\��D�1N� �?\�RX\�\�ۧ!���\���]�&a���{��\�[\�X�\r\�jR�ћ\���f��a��8�\�\�s���\�q�:V]�S$�\��\�:{\�?jhu�J���\�ҵ\�{��5A�\0�E�\�ƹ\�F\�\���h�\'\�z\�VnE\�d �L8\"�\r��Mh\�\�\�7��~T\�h��c}�\�$n�*\��_���TM\���4\'(~eQǸ5oN�ģ|\�`��nS�j䮮�N\�̚\�.\0���\0�zQ7��\�Χr��\�\�a�r\�\�w���\�1���\�9\�K^�\��*\�0�B\�x`Eg���d\�\�\��C���4E3��S�QdI\Z�N���)�4}��?\�K�[#\�T_��\�\�Ʋ���bT\�F9\�\�t\Z\�-o��\Z&\�o@z��\�՞�N\�\�8%h\�\�(�\��Qx�&F9R;\�/\n\��\�@\�RD>\�G�]~e#�_�>D6ҝ�Z�i1])\�I�X�$\�8�+Wo:�s�j��\�H~u>e\�H\�t\�\05�P7A�ꋹ\�$4�ZJ:~<\�U�f�O\�!��IJ~��3)i�:J\0~E�\�\�܂*9dX\�rr0	\�A�׹���	�Y	w�\�I?w4\�w��\�23\�J��w\n��\�5\�Q��;��\"H�@$dm\'ֳ⍉i�$\n\�\�\�UT\��O��:kPSɏ�6�\��\0֮{�tZ\�9���dcč��\�YL\'c�w�\�cTx\�\�\�yc\�?S�� =t&�jZ14Һ��2`����\0=kHBm�\�\�,\�\���D�F0\�\�}1޵�;��\�]�GO�֔�� �Vm�jr-����PH\�pk�2�\�\�ޭ\�\�ng�=\�q�y\�TN\�z����l�&n\�䀀~���\�|\�\� �VW$����f<�`x\�Cs��\�\�\0\'�`�j�$C.1\���\�\�\�\\`����$�;W3vgdU֦UœDD\�u�<梊\�\��F\�\�OOz酷\�AQ�/\'�\�F��4s��\�#%H\�?�j�4�bt��.[\��>\�1\�_zIe�\0#r808\�)H�\�0\�\'�OC���\������^FȎ6�rݙڷoy&\�\�:�\0s�?\Z���\�\�:�V\�f����ý&\�R�o�\�22U�4m��x\�?�YK�\�[S�\�Yb�˟��@�5H\��\�?OJI&\�݊\�K9X\�/\Z���F>�jYm�\�\�>O0nM\�\�`{Cڹ\�\�pr��\"��׼��$\�\�  3�\��i�ܒ������`c����^\�\�V&��,/��_�NyQ\���cI\r\�\�a$��\�OO��ҙ-ǘ�af\��DO\�(�i��E+[\�m\\/��j�\�DA9��4#5Bb�\�A\�i<\�q�r�����\�\��з2G&<�\�\�\�/�U�/���:�\���v4d�Fx4$6%-�(ʱ*\0%}\r2\��\�\�\�@A�X\�l��a���j՜(d�#f�#�T\�\�v�5���Q\�\�s�*X�S5\"�ʐ:O��f)-�f�ש�\�\�4W+ x�NT��;�\0��Mj�OF>�	�\'r��oN�\"��\�|\��=ϧ\�Ҳ剭��0�6:󟯡�\�\�d�T�\�9�k�z��&B\�\�>U��#���\�Yc\�/�U�\�k���;\��\�\n}�a�k�(Й�n������\�\�\�krH�2Bs�Ò�Do%$\\\�v�_-�9�=v�f(�@W\�1\�ȼ�Wn\�k\�H\�c�\�8\�qR� o�Њ\�p\�ry\�;Ս�$e\�\�\�z\�*;��\�$C��`\�\�5�o|�ZaY�\�Cn\�rB�_\�\�y@|\�nGU<U\�\�\��L��FASީ\�K���j\�\�y`\�(\�\�[;[͑\�\�GoJ�n�\� \�\'8\�\��V.�lֲG�C:\�1R��-�.W|%\�~\�r�_�R^�\�q�zϼ Kw*+_N�\�\�q�V�[�.u6xJOs�\�( v�fN�O\"�H\�\n\�\�ȍ%:���*:4�B~��Ejf-%-Z\� ��a\�\n�-�R�\"��\�Ny\�\0�\'\�\�3޳�+4�\�@��\�d\�B��S�K��v�\09v��\��\�\�\�\�@\�f��o;eN	\�V\�6φ#׎\�\�4v\�\�{\�ܦ\�B\�aw�B~\�_\�ƩKum��\�_AO�{J�\n\�\'�ɣd\�,P<wDd)�A\�Y��a:\�\���=\�hFm��P0��\�5�s�\�J�F{�R�W\�kڹ��)�_�U��2_\�\'`\���\� �d�J\��~�GC\�V�w!\�3\�`KpJ��\�Ln\��T�#�2D(=	\�}iR3\"\r�6\�\rY�m2rF	\�>���8�\�OOj�(�F	\�8��m�y0$t�\�\�km\r�5۠\��n-�Q\�!Ƴ4�~U�߁]]\��bL�\�,޺�VV+[ �n1�T�\Zq1l*\n�T�Qc�$�\�\"�!,����8�E\�p���d$�9\���\�\�\�R$Rkؤ�Y2&�G^�\�x�H�,\�E\��9�aQ�\'MMhpֲ�t���\�5��e#�\�\'�z��h�l�qf��CJ}}�\��eI6�S�q�\�I\�TM4֌����D\�Pz\�\\29z��j8VI˩\�U[�\0\�\�q�zR�\�Q\�7WFP&<\�\�W��C�q ;��ҩ\�+\�z�)�0�:\�\�\�Faf�ryD�?��\�8�\0\�U[��<4l6��A\�Q��,�g���is6\��	8\�����h\'�E\�\�0�\r�bK�y��EL\�=U�\�x\�7#z��NC+D\�\���LJ�q�\r?\�\�ȸn��f�\\�bb�\�\�\�	\�y�yd�2�\�+��\�ndϗï#=\rZ�Wx	++\rɓ�B��In\�\�8\�N�r\�4�%\����0⥲�.[J%pf�.\�[��U\�-\�9u\��S\�iO\�Y�8W\�\�\�\��zг�\'�˹�\0T\����\�^ږ��1Yl�h\�L`�G�\�2\"8-c�LVί���\�8\�\�0\�:�\�9�-`��\�M=D\�Z	�A�\�)\�sp�\0�\0���\�\"�\�v�Ϻ>P\�SȫK�\r\�F=\��c gr�\�q\�Io\�t ���Ϙ?0 \�\\1�\��_Z�ِ��St�P�O��q��V�t\�\0*9*͌Vc\�H\�	\�u\�[zI�q��\�^�\�\�\�I\�\�\�\���\rŴ{\�6�\�\�kx�M\�<溧��0ySެ��M\��9�y�\�)�P\��\0\�6��سeu�C$��\�\�1\�3F��\�\�9\�%�;��\�ҳb�~\�89��Mt\�f��`v*Gpjm�c���w\�\�\�\�\�\�h��v9\�d\�[y��/EPչ���rg>��^\�MnoZÙć��t�j+����uD\�c8�������e>�+���\��V�c�I\�%�3�4Ya<� d��nM^X�F\�ӌ�\�u\Z�߳�@\�+���L�[\0\�k*�loOmJ\�,�	m\�\�\�e f�� g$\��<���\\�ܙ�\�=3�\�Wl\�>bv\�=k12H\�\�5z\�=	���=\�I+\�t\�f\�%<m\nH�bp[��L�U�.�#ݷp�\'���&_=C�6�\�c\\�Mi�q(tp��pES��2j�ثܺ�ǌw�-\�R\�HϽik\"/vUy\Z2\�+\0~\��\�r�;\"En\�/Jm\�1�\�L�O���SѡZ̜?�O\�\��b�t\�r�P8\�8\�T�m�R\�}+�\�tP#G5�I$��p����Y6c%p3�+_R\� �\0tr}j\�v�mn��9�:��\�F\�\�3\\۳u�e\Z�\�x\����\�>R:��fT\����h*�IڗQ�\�\\��\��\�g?tzV\�\�\�VPI,�`�z\�s�j^Lq\\�N0�\��\�\�<�vu\�b\�zE��k-���#-��ȏ��\���\�I�:��&m�\��s��\�\�S1D\�\��dA�\�G�\�\����\�\�\"�����q�8@I��*�\�\�4\�cB��q\�\r�+4e^X����@\�\Z�%�\�A��\��V̖sF0\��x$b�,e?2�;����\�.�g7-�9\�\��!\�`x=+��Ng1q�\�\��S�V�k����FD�f ��ǽVt`H\�}E]��d\008����+\�\�Z\�\�cŭ�$ޛX���z⥏�\�؎�\Zcq\�\�#b$\�x	�\�E6J�f\�\"\�\\~5vKs��+\�+.;�\"q�\�@+b\�\�ncI\�y��Ѵl\�ȏ��(x#�5n(�l�,RE\�\��4�l�ːq�\�jpc�\�)#�KeZ\�+\���X��=�\ZhvbT\����-���|\�6�	\�׺rǜG!\�vvWW0��W�?��9��3��\�+e\�\�\�x[��\�Tn�\��0\'�9�`���֗(o �B��\�;\�Dq�\�\"�S�\��\�gi$\�\rj�2nőpѾ\�H�=ni�\�\�.\�#�=Gl~S\�(A\�U<\�\� ��G�J�k(\��\0\�\�W{�Q�,3�z\�\�p\�M䗌\��QTܱ\��8�\�����\�zMXi\�Bxd\�u?yyr~��ʘ\�\nX\�ĝ>S\�\�0���H�\�#p�\0zU�0��d|���`G0GV\�^*�\"^D.B��*\��\�a�v�x��+�\�f����I^�\�D�b�WDY\�\��e<�a� CO�K�b!=i)��Ejf;4\�E&h��7ٸ�:\n\��\�\�$\�һ��|�2G9�b\�\�	_�;n��*+��{ja\��\'\0e�\�&\'�s\�V�Մp�\�\�*���ưwL\�X\0#\n�\�:\'m\��\�P\�\�:�qڭF\�\�\0�⡍=KR\�]7�S��\�Q6��\�\��\0�O��d�T\�2T�\�9�Sd\�\�RE`s��U\�C	�\�y\��\�ny�Z�r6u\�\�{��Ǹ<�\�\�6\�3&�\�<Q\�ʃ�M_��Ezw.FEK\�\�\�:�΋GӁ)��滫V8�\�s\�\\���(�+[Q�KR\�F\�rq\\\�Wg]\�VF�Ī\�\�\�\���\\Ƒ�d]�z�3Xx�H\�\�H\0�\�T5a�6+\�9r6.d��\�\�(\��\�\�\���\�\�	\n\�\�s�\�%���\�v\0�J�\�l��u\�\��a\�sCR\�.ui���\��z�mk)�8\�>P\�o@}\�A��\�!�GS�ե�\\��9\�\�Rj\�Ţ;��Ž��\�\�}j克C`	r2X����t�k`<��H�\�\�1�׷�M�̌o��\�\�$u�\�\�ѻ9����~Fz��\�/O^)$\�a̍\"\�8\�\�U�3\�g�yS[Rڶ1�?�\�UM�d�n�0Z�I��\�\�\�z�T/,Q\'oF\�k���$㰨H\�N8\�Q�ծr7�\n�H\0\��\�s�:t��UǮ;נ˦��\�5�{bɑ�\0���֐�DN	��x���j�?t\�H\�\�Z�iؐ�\�\"�\�\�~�V\�W9\\,�&I��\'r\rǂ:T�Lh�\�ˎ\�1U��I�F*q\�;\��ד\�/λ�8\�3I�\�q�SJ[�/ �\��\�\��Æ>\�Z�\"\�[\0z6{\Z%�+��yw\�TG6��bcs�\�R��7m��\�D�$\�a��\�yI{��q^�+��C=\��­\�j\�\��\���P{��5��þ\�|\�psT/S|e8ܼ�qWo��\��[��e\\\�Iݒ	���w&mX�\0\�S���\�6�\Z�\'$�g9��뿱�\�]\�P�I�\�X\�\�\��j7�y*\�\�=\�Xb�\�g��\�6�DosB\�Mm�hd;Xd�\0�}��9�a\�޴\�unRbXa���\�\�U{Ͱ\�I@��VdT&�e��At�u\0r*c#$g�^�A4#7�\�UY�\�B:��\�B\��ЎF\�:�گXܘ\�U��\�TC\�\�)#�Z�\�d8`�uD���� � \�`�\�֔9�\��\�#=����[i�9ɭ�mN#�޹=k�2MI4\�r\��T~ގ\�8f=y�\�,�,�i\�b\�>sN\�0S�L��<\�f��L֦c�E%%(\�n\�K\�5��ȼ������osX\�\�\�Ϲ\��\����Έl3R\�n+�7*=k�t\�^��˛�:@X�OJȕ�\�\�5\�S{�Gb�\\\�>7\�\��\�\0\0(�H����\�{�u���B�]yV\�QR�\�\�z\�C,E:;ޒܶ�\'���%\�F�\"�q�\����b\�^�NEK\�\�-�>\�\0�\�鶪��YpA\�Y\Z-�M6\0\�F@��-\�\�\�}�8\�g\'��6-D\�abIU\�$�+��[ə\�<\����\�\�֝�\�M)\�7tPzU8�\�-A �Gj�u.\�\�ѡ$|\�\�I݊�(\\�r\�\�{ք�0�\�)�\�X\�}�\\�\�>�\�Bi�\� T!�v�y�#�x�e\�i\�Ԝ�ǏZ�Ц@��=\��\"̽\���\'5�e\�L.[#�85ʘ�\�sRƒ��\�2\�&�G�\�\�\0�z�\�mCt��c޼�\�\�H�\�L�}+��\�\�6\�LVmX\�;���\�\�RG2�	\�9&����H��1_�\0~u\Z%sd� �ب^%r���.��\�\�Ro\�\�x��X�X��qTD\�$i�\��T\�,\�,d�#ʳ/o-��x\�9�ڕ\�\�\�>�p+���<of>���3�\�\�ԯ\�����Ҳ.c�T\0:�=q�̚V\�?��X�\'���2m�Std\�\�q\��jX\�߆L\�g�\�R�\�G�(�	#\�\�\Z�#7~��n�����\�2\rW�\�Q\��\�;ӂ�1��W=�\�i\n͖��b��b)�<NB�(���Vy��rB>�\�c<6p}���D\�$q\��*�sTn�\���,v�\�$6Мf������jV�}\�O��{���y��r3ޮMGqȪ�����\"̤�#�1�T3\�?t\�\�cg �\�9\�\�	m�;�\��\0�+N\�-�}\�\0�*��&*\�,f3�9#$T��IQ�5,\��P\�Q�\0\"�r��\�Ki`0qIor3a�����8 i�\�XqY�	�8\�i\�[�\�cF8�rL\'��\�8[\��gk/j\�I����aWR\�^\�n1\�\�N\�tͻh�ʸ�<V\�:E��L�OJ嬵&I�\��\�_c*\�e|�\�\�1[\�kf��+j���[qJ=\�b}�-lb\�\Zm:��G��V�B\�\�R\�گ�\�\nJw�k��=?#ڻ	dM�=\�Ƒ�;FOJ�A��#4�8\�\�\�Dֲ\�\0��\nzWR�<�[隭�ۉ�l.F\0��;\\\�5\�rG/�\�Q�Q0z�)>T�\�<S�(܄g*k\r�w��\�Ӽ\�\�@�\�ly�\�BFI\�&R�8v��Ӣ%]�=i��Kf��S\�5=\nI\�\�G\�\\NX��\�n,��#��\��\���\��=���\�\0�\�s\�\�uEYX\�\�\�NH����01\�f�[�=\�\�g\�ڹ[\�2�\�Bw)Dl�KK\����/\�\�\��M(Ҹy\�\�\��\�2[�\�\�\nQ\�\�\�L�;h����=Y@5VK�C����hɤ��|����#�\�x\�u\Z\�%c�Ri����;�X�\�^\�U乖Xa��)!\0\��Y���\�\�:u�\�A	�Z��N���G*�AZ\�0��q�\����\�9\�O\�Y4�Q�[��\�9\�+ON�\�$�ϥsLQ�9\�k���Ypq�ֲ���es~\�Ŷ�q-� \�3\�Y�2\�px\�cd�g�s7��~<��\�ҹ���\�d\�O�ۼ�x?\�\\N����\Zh�\�2\���!�e\�s��PMp\��Ҫ\�\��/\�[(�J}�$�D�ơ7�t���Go\� �=*Ժ<�`�s�g\0u�F2rJ\��s�\0zw�\�{\'BG\�*\�dv@��a��>Ɲ4�-\�\�Ssd*�{V��\�;�\�^\\c�R;b������J�qT�ġ�9*\�w\0\�dL�9\�R\�5���)@\�2}EW\�y#�\ZW�\�tG�\�,q���qSd�Ֆ���\n{)\�\�\�\r\�\n[{V�8#ڭY@*A\�>�\�+�2G�\�\�I!#��\�m\�#��R��\\S���t2cB�;\�\n۶�	�X\�g�Ϸ@���\�C#I1�8�R\�\�*\�$\'\�`N*tۇ\�\�?\n�H̒H��\�\�qPɶ�\���\�!42\�_\�m^�\�2\�F^=�)�\�皒\0�Z�Y{��\�ֈ�d��<�J�\\�\�����\0�a�M;�Սh�K�Vx~�2\�A�\�`� v5��\�и|�\�5\�\�ǰq�ȭ��\�g7eb\�\'񥤥��D�\�i�O4RFkc!\�f��3@�\'�L\�98\�\0W�|`��MP��Q�\Z���\0j��\�!˱�\nAn��\n���u��oȸ��?��㜉>�y�#FA�\�\�Q���\�7`U)�;�F0+��\\\�N\�\�\�@A��7�\�I늍P\"�\�,X�e\�Y�DM0\�hi\�\�(��\�Y\�L�(���H��ؔ	\�Z+\Z\�Ww;M\"/.\��#\�cکY�\n+N.\�W,�\�k�6L\�v�?^+��\���\�(\�\�k�0�������Hw\�\�O5)��G�I�K!ǲ5VaҬ���}\�3�]n�m�\�\"�;�ZΆ\�#3vS\����G�z*\�fbx�E*\�0\�?J\�|?%�̒DLY°Ez\n[\����9��|$�?:\�,��q��w\�\�\�M\�#˭�M�K\�1\\\�q�\�M��x\0n&Rdq���]���lX\�E�H\�~�\�J�@Tlq�Ɠ�\�T(��V8{\���39*�#�g\�\�4x�L\�J\�\��\0J�yc��(\�\�x�V��P�\�f\�\�cu�v�:�\�)¢��d�\��~\�\�D\�5�ueF�\0q�t�(\�.\0\�\�.M�2R]\r�P\�WLJc\��Q�\���<�$�\�u�KC\�̋\�ԩW�Y�f)�\�&�ۮA��-�\�\�\�\'7�5KC�_\�#�/\'�EG{�\�lV8щc�H\�^�kBr�r�\r[I6\�A�\�\�U)��%\�cc�O���6`��GZ\�m�\�^\�\�ܸ9�\�1\�#�Vn7ң\"RB��*�\�\�9AIX�M[\�\�m3!���\��\�t�C\�$���^7#f�C�3�\��\0\�U\�շ�\��!<�W5��]L�\�ᴟ�d%\�aP\n�᧊2A�7aڻ���e�F#B� qU\�\�M�&b���{R���Izh�>�\�ZX�\�Q�6\�\�Bx\�wvVJ!B@\r�dTϦ[\�>h�=�\�ɔ��9[��a�\�Z	d\��\�B�\�B�bG��\�Im�u$\�zT��\�M���\��W7�\�ϖz\�Lg5\�kV\�\�f�R$��R\���I��6hR��ہ\�Ps%\�8�\�SMta\�\�W�n�\�\�F\�K#��e�Ir8\��ei&.ǒxqK+��\�\�ry\�\ZbFG\�\�V��n\�y\�>�z\�2\�lq\�UD`���� E8\���\�J\�!�9Ǯ)��\"c�)��\�>�� \�����H��z�u�*��dd{V�d\0\�T\��l��s�]qZ\�wv&OzZ�NS(��\Z�4@��\�њ\�\�	�\�74R���\�\�:�q�iI�4��[�lk�\�FfG�$i#\�����\'$s�\�֣$\0�\�\�c8�vo	7��cS`{\�T|$gޯ%�7fR1\�\�R\�r=9�F�vg\\uZ�:�z\��\�\�<`�\�\�ǧz\��>W�\�e3jz����f\��c�҈��YH�S|�{�ޞ���\0\"�\�>Τ\nκ\�����\\u\�n��\�N1�b��\�\�\�㤖�\���1\��/5���\�6<\�b��S����n��/>��_2\�E\�\�\�I1�s\�`U���|e=\�nu\��\��~\�I\��\�\'�N�dg%�O�rz�S\�m� c�1W���\�\�Q\�pB����m�0\�\�\�\rBP>Ƨ.C\Z����ܴ�^�?^+G-\�zu�6�1׽_ yJ\�;Os*\�Gzʑ?x>��795� \�CF�ؒ7\�g\�+\�	\��UW$W\�f\�\�D]��3Mj�RX1\�\�9I⺉��0�\�<9�\�Tf~a\�n+GJ�\�˾�,G��:�㑚���߸�+�6\�x\��L���\�\���I\�̯h���:�g�zu�-�\�\��p=\�t	�ڡȅ?*�� \�5AJ�\�.�φ\�x�b>�e|c��#T\�\�sHO\�b/r�s\�\�Tr��R�ڢ���Xȼ�lW?�\��\�nP~�\�\�<\��\�2@#vc\�N@�����Z��wx\�\�ٿԻ��\�\�|�����1\���h9-\�\�I�b�!I\'�4\�\�>[�\nQ�H\�`\�\�#�ǜU���6Fy�\�+*Y3�^pi�}��q\��́\�v�\r*ͦ��\�eGAQ\�d�2ۅ\�ƺhl\�\�\�	\�hA�NyI-\�*@j?zp���m\�E��K�C��}AOϵ )�KM\�Eh@\�)�\�\0L\�\�f��M4Pi�گ$+!\�\n�II��;�����coz\�\��9�\����ĀT�ϵV\Zr\�m$C�Q�)��q\�U�\�ۅ���\�&Q=��\��8�Y�X\�z՝)r���\�3wGW+L�0�i�H�k����v�:b�,\�x����T���#�ˈ\�\�j��u!�\�\0=��\'\�u���N=jd<{�R�^\�Uk�{#�=zՍ�1\��\�O\�q\�M���TZ\�/vV��\�Y�\'97C\�T$95��b�0\�\�\�S9\�4�Zw��=�E\"�-\�g�S��hK���\�sT\��\�\�qߵj��3~�pr8�j�\�5n\�#5M\���n��~�4/\�A���M\0�4���\�\�j�\��\�&�ۃװ�H��1�WadS|���XB\�içӨ�k�v���1�\�\�@8\�#�\�PI&)lld�1\�Vw$\�I+��c\�=M\'Z�\�\�+\�QH�A\�K!	P\�r!5ԯrx?J\�5\"Nq���\�\��\�7�\�O�FkJkS�#�՜\�z�B�\�KtZi�&�2<\�( )\�k�D�0I�qܻ��֝��\���[ӭc�bA�ս�\��(=�\�7vt\�#WI\�;t\�\�SmtHϘw;�v5�<k������Fz{]���[�\�\�T�\�C-QE��\��p1V1\�\�\�cv\��)����,rIݎ}*AQ�O\�>�\�QH�\�)�R\�������\0Z(��\n\r��(�����/ ��n�\�NC؎�Τ\�\�5�7	&�\�\�Hà�±��kk\�,F	\�\n\�-�{`��qYZ��F�1\�I漝�cڒR�2:7\�}\�-ߊ\�l%&5\�m[ɜs\�zRA�����x�\�OaJͣDXD�{\�4\�~)\��jZ�QS\�N;\�TI1�\�K\�\�\�V����	o\0�G\�v\�MrX\��w��\0Rn㵬W�\�\�R8\nj\�˄w\�YSJ\���d�6�m\�\�\�ޕEwo\�V\�|�\�\�iCڬLFʂ\�\Z�\"e;�5�\��\�\�E�$�;\�)G8\�ZR�	�p0sY�n�+��j�o\"�\0>��Q\�\�\�<S�,�GP)k�~\'\��ՐF>������E]I1\�\'\�����E�\�s��\��\�\�\�Udf�=�8\�<>\�զf\�\�\�߀j�����̠\�ר��>I�ԽK��\�0�f��g<�Hl�N�ڠ��*i\\�\��O4$&ʗ�u��WX���\�Zߺ�9\�}M�\0x\0\�\'J覎j�\�\�	I2yȭ�d\'�T�ݝ\���kl$�H\�Q7�SZs&\�:�!��`>Q\�>\�׊��\�	d\�~U<\�:i\�\�\ZT��\�^0I.z�\�5 \�ƃ�4\�Z���V<i\�ɶ\��sO�;�T\�f(���@���8T��\����\�U--%\0�RQL���\0))i)����=}:Sh9�\"Ho�ؓ\�OQ\�W%��� ��\�\�\�1\��5�x\�e xؤnp�W#�\�G�C\�\�z�-��\�3\�[v��u�WE�3[bK�\�ַ!��\�ҹd��r���r�*\�g����\��ǮkJ)\0\�bΔ]B*Tq֪�\��\�H\�[\�0A\�J`\0zU_3ӭn(�X�\�c9?֣7\0s��$\�\����I\�p��\�65�&��\�qU�\�\���K`��\�\�\"�#��s�)+�/E�<�G�B��³\�nF3O��WI�ZB{ht�ȣ��S\�]Ď�+^�\0\��\0�d:�ek\�n\�\�\\�8\�\�Yט�\�Jt��d\�n�X\�ۼd��6E\�`�\Zw��\���U�\�fwjI.W g�&��~-���\�~\"�H�\�H#=@�h��\�\��\�\��\�Lu\�U�è\'\�4�]�f��Ŀ\��\�\�Z��\���\�4]�\�1܊ar2\0�e��\�dWu5�sq�3֦���X�\�zU\�\�K&I\�\�3�\��\�$��Fy\�Y\�\�}:\�L4G%Gv-�\�\�\�H��[)�\� |�@��\�/u�{\�V6\�f�\\jWW	��m���\�K�۽Ʊ���\�Q�\Z\�)�Ԇ$\�\�N�v�w�5\�iҕ�y\�5\�\�`��k0\�\�z\��\�Z��Ը6�\��M2t\�2OS\�MH�\�~�\'�>�+hS邖��sKE&h���R\�\�I��5&iL���֊`��PKIE1EPIE\0SI=�����隧�[�\��\�y\"�R�\n#�\�L�Պ����\�yX��\�5\�o\� =:V��\��僱�{V\�\��3^eEiY��ut^���kJ+��ͤ�?�S\�_�\�q�\���\�t	.@��Y�͞����:�ś-K;�\�\�L�_{;Swv\�\�R-���\0V!���m\�.A\��hF0?�r[��X#�95\�kWRX^0$�nA����?*\�|o�Y�(\�s�ڭ%q\'�\�\\���|\�=��^ [�Î�x5\�K�\'p&�Ft%Xw��AX�\�i���P�p\�Zyאtq��\Z;\�\�	V�f�����\�P閪��\�u\��\�V\��W)s��s��~\�b�\�޴\�\�q�Dw��\�\�ZF�KS)Vm\�\r��\�Nݣ\�[VZ�M$cw9\�F\�����\�	 ����\�\ZS�ތ�WS\n�{sS�q\�Oz�fY-��\�Yq\�\�X6]��s\�\�B�9\�y1Q\�q�\�\\�/�2wS]\�9\�P<�q\�\0\�\�Bce�|\n�sq\�	��\�$\�ϚRɻ�\�*\�3l�\�\�\�ǭe\�\�&\n��u�_NMF��j��\�\�\�ǰ�\�6\��#���єlOcXڛ�\�\�r:`f��\�=C���4����Fi\�	ripx\�ms�\�\���{\�q\�\Zm$��.�\�\Z��x�\�\�\�@�xt\"���dUVE�s\�)i�\�\�9\�R\�)h\�)(�c\�њ>�QO\�+�SizRP��\�@��E1��(Sh��QL��Ғ�c�&!Q��5x���x��`\�{\�\�\��p+��\�=#�h�\Z1$���\�֧H�2(�.���q�w������\�\��@��f�\0\�kR1�YKsX�\0��Nj0L�u#=)$ݐ�2\�*�\r�ƃ��\�}j��!=\0\�VC�\�5#P3\�,g/�iX�\�9\�?Z��\�/!1H�R?*�N\�c�\�A�T+����0$�\�`�ⳮ|%�e��\��\�\�{\n�X��x\�W3]E�\�-yD\�X`���_�\��4��|�;\�\"�r���M4sԃOB�9\�]��{�\0R~��\r&{�\�\"1$�+\��\rEg\n�\�\ZB:zQ:�h��&�gg\�[���⺽\�ij\�$\�1��\�\�H\�\���8\�X9�n�[ P:�>^}�@3\�4���\�JP\�~Z�ă�\�Z`ϭU�^1�\'8\�Ri�X�W5�z\Z�X�����@\�9�*P\�\�%{��RQ��q�${UIObkX�ȧ$9�D����u��e\�\�i\�8�\0\n\��ט\0�\�=��B<Mo^��\�\\��e>z(?tdⷊ\�\�\�\�$&Ns\�*<�\��o\�@\�\'~��V:�\�\�V���6&��Ge\�J\�B�zw��\�e#�ⶇPGj\�+�U�݉�4�\�N�L������3IE\0:�m-\0.i٦S��3\�Q@Q@Q@Q@QL4����RS�$\Z�	\�|f�\�[�~H\�\\��x߱ׄ��n帲�T\�<��c?֮F���\�^d�QÀ\�\�֘u�ެ\�rBj�.�\�c\"\�98��g�\�\�\0\�`q\Z\�{��\���G\"١s�$	�\�=\0\�Mg�$��\�$f�\�R\�\�I6\��z\�΃�G\"3��5|�\�&\�\��9D�\�/𬘵;P�,�\�\�I���%?CI�\rE�Sfs\�3ڜ�d\\\�ޱ�\0�\"!�<P5\�C�\�\���m�\ZbJ`9<�Y��b\�G\'b\�隵o�F\�\�=*辀�w�ߚ�b\\$�\�M;A�\�ڠ� U\��p*�ν@�0<\�\'�$`a�\�\�I�R�.�\�r�w\�;�\�Y?\��0\�v\r^#\���\�K�F��0\'\r\�+2\�Qh����F*7բ�\0����s\�ֹo9�Cc�h��&\�\�\��\�\\a�g>�\"j�H�+Ύ�\��3��k[LvwߏL\�pkr�Oc�����\�\�Q�s�{�Ut\�\"\0�\�#֭\����\�eK�:�Y�H��I${\�qq�\�(͓��d\�\0EL�=�U�9# V�Wd=�fL�W�\�e�c؜WSu.�O@k��\�rI\�]9*1�3�\�R[\�\�_\�5/\�oz\�\�l�5\�=�ZB<\�\�N\�敼K1��YA\����8��q]�[C�N䂝L����Sh�c�i(�\�IK@:�N�ii����E%-\0QE\0QE\0QE0\n(��\nJZJ->7 �Tt\�jd��\�*\r\�I�J\'\'���Z0�#�kyx\�FE^�L�\��qiٞ\�$�M�\0<�\�>\�@�z\Zar\��\�֢.Ɍt�Z�{\Z# =*�\��\�<��i��+F\�\Z\�SD̸|5i\�Or{��y\�6\�#ky;4g\�&H桖y^�\�i�\n͜Eυ�-��5���Y�N֣$7��lW�����0}j�Q�\�pÚ\�N\�\�ٳ\�\�z�dy��|\�\09��\�qnv\��A\�\�x�\�n\���O�]����2.#Vv?x�Ӻ{�4ҺW8\�p����l�M���S\�A�\�9�B�\�L��$QI\�v���h�,gsZ\'<�4��\�3��Zi0��;\�o.$O�\�v��kҌzt1��a��u�\\\����cU�\��=��C\�\�N,\�\0z�Sj\�\�[8\�|\�\����Zx�9\�4\�a8%\��\�j\�\�t\�\�m|\rus\'�y(Q�FrMv3\\\�n�\�8\0T�A���\�z�6�1q]L\�?X\�ڃ8\�y��ZŌ&zV\�� J�\��\�vMe&ޤ�-�v��l2�\�Q^L9��Է7\n+�\��N(�n\�\�m\�2o�\n� �l\�ɸփ��\Zݫ�q\�(H�\�ƽ��\�]M�zƖBI\'�aZAu&oK\\�\�H{\�s2O��ꥏ6D\��m!]��H\�C]P�kC���z��6M,ˑ��u\�\��\0��R$)�\�S\n\�S��ﰛ(\�O�֬\�)\�\�u �(�0��(\�Si\�\0�\�e:�!4��R��Q@Q@Q@RP\�QE\0Sh�QM��!�\�\�r)�~V\�:�V~M	\'�}�\�\\X�W��ۆ�ou�\�L��p�+�VTr��Gj������\�\'rʹ�x\�涭\�\�+�\����\�Zй s\��6�\��\�>G=�K/\�U-\�!0Ě����\\vq��꡸h\�\�N*Ԏb�\�\�\�hY.\"�a�\� ����tnz���=�e\�\\4y\��խM�Y�\��� �\��ԏq���\�q\��~0\��5\�\�\��\�\�\�T��u\��h\�$���\�<sQ��	Q�\�.5	f�ɩR�~\�Ix�\�8�H�\�A6�����\�<��իk6r	�/S\'Qȵn^\�p\n\��\Zk2\�/\�ܷ�T=H-}���*����\�4�L\�\�Un�wҒW\��3\�5�(.\�͜�MC�df����Տ�9\"��\�4\�p=�>\�c\�?�RՉh�]M�\�t���$�\�\��I�m\�\�2�NkE��԰\�\n\r4`U��-V�\Z\�\�b\�h)R\�\�\�Ө\0��(h����JZ������vi��GKIKRPRR\�P\�IE\0-�PE\�\0u6�(\0\�%S\0��(\0�#<���Y5f	�R�\r��~\�`�1Tv\�)�J\�Ho�����d\�=Z9��7� �9\���\� �{V2�s����^��\�W$�\�cIF�L#�9�	l�縫\�|�\�Tr�BHx���\�>}+K\��W�0��5�Z\�����\��+�H�qVc�zc�5~�tp\�\�=���\��0\�\��D�<(ؾ���E̗C\�\����\���*t�\�\�>\�q\�\"���ӵB@\�\'~㿑\�Ǥ�\0��\�g�`-m�*y\�Da��=\n1B:�!3�jd�i�HM����T.0�q׽h\\9\�ǽ��^}*\�l�6z犃\�\�<��ޫ<�	��Q$�\�c\�b���y4�LO�W/\�\�5qǭ^�\\�k<\�c�l\�FS\�9�ކ}G_ݏc\�R�|���5�+\�\�;��q*\��RR\�\�8�\�nh\�0E6�\0u\�u\0QE\nZJ(i\�\�}\0Fii�T�\�mu6�(\�\�(��)(\0��J\0)i(��(�EP�8p}����\�\�U+u��\�n \�\�\�b��j\�H\�\�;�:\� �\�kY\�;z\Z\�\�\�k9��g��o69��渤��ܟC����$c?�hE\"�# 湫+�\�`0q޵\�pz�\�+�Z6�q��)�\�/��j�%R�g�!�\� �V\�=*�\�E/N\�MhR\�s�x��UXI\�g\�N2u\�;���\�P�O~*7��\��h��\�I��<�S�&��\��o֕�W \n�4�ϽK4�\Z̚F\�\�\�T�\�Ś_����}p<�W/\�49\�⹻��0�d��\�\"[${�3\�\�5Y\�\�Ǔ\�\�\'\�TRO?΄\�T��H\�Gz��\�/6a\�\�k~\� 2݀\�T�!X�U\�\�֙!�c�\�ȱ\�\�#e���b��\�~��\�\�\�\�O�k�5�YË�v� ��<Rf�N!h��b\nZJ(h���EP��\�P\�ri��\�\0!����(�AEPEPEPIKI@Q@Q@R\�	Wl\��5Sb\�\�\���|ToN���$�Q.\�u�Q,\"U2��\�pzW`�	a �\"�K�V��#�^l]�=F��n\�\�H#�\'�g~�᳓�\\���g�\�\�ܲF�4�n8����\"�G�X�\�>?�j\�a\�[\'�j����\0�ʲph�c�8>Կi5\�\�j�\��\�$�\rZK�I��V5�ճҁy���U�-\�c;��\��<\�#��H�o<�\�\�p��K����}G�\�:P\�5sjK���\�V7\�I\�.5.\�:w�o��ޅ:	oIf�\�|[��k\�\�7n9\��3]4�;դ&M|\��\�P\�JpI�\���]\�n\�\�\nAA\�\�x\�hX\�p��^\�\�\�\�� mU8���bwo\\=}jW\�}�t�\�p95�\���ORYzY\"G��҄\�\��2*��]\��J\�ǖ&��E@k�{U�0\�5�u��Ye\�^�\�K��\�ᩅq\�j��\��I�ԩ\�k�I=�W��P*a��\�\�:��*gR0Wl�R�ݢ��E?)!\�Cޓ�8TSWL�Ӕ�m%-%YIKHh\0�S3N\�\0QEAaES\0��(QE\0QIK@%PEPE-\0\nZ)\��LT\���\�\�\�@}\�*+��\�;M?3bҫj�)u	8��\�5=�\�j\�A$d~F�Gt\�stp2Dc��pT\�is[zőG-�\�Ec\�\�l�\�ȵ�tꢞ$a��x\�\�HF)?\�\�;��Ԉr	\��	��9ܤ��\�v�}�v(�8�q�Ԭjj\�;\�\�����페=�?\�*:�~t�\�>\�\�r�\�r�^�pC\�ץ#ܱ\�w_z�.\"\�\�J.\"��c\�Qa\�w,�� �}h�Er\n) ���\0i�q�7\�b�\�,ՠ\��E�\�\�X\�?\�q\�z\n�ʣ�\��\�[\�O�\�\����\n\'$\�Ӆ&h\�H.;5,q� ��t\�R\���\�l+ݗ\�mDh2>�V�P\�g�=)\"�@�/AZB0���zVm���\�<G�\�\�R�qZsd\��\�*�Ns�\�L���c�jT��\�9?�X��3g\�qCz	-KI\�*�\�\���\�\�\��8m�\0�~�\ZQ�ʵ\�\�x�\�*��X�݆~�t�:��D�$(�\�\�T�\�\n\�TiZ\�{\�\�K��\�={\nv�����\�\�H\��;դ�c#\�5]͔l�)��u\�g�[C\� ��D\�@ �҈�\�>�\�Ө\�\�F5(���\�jJt�s\�L\�zК�L�g\�RR\�TH\�u6�\�+��E%#�(�KIE�JZ\0(��\0JZ(��(�E� \�(\�M\r&H����)$�ʌ\\������\� sޠ\����z\�>�,����I�\�\�\�!��Q\�:Ms=N\��\�z.�GQUc�\���6Z��H�a[�\�G8�R\�\�\�!\�5\�\�\\r0Oz\�լw�@稢��5s�)ϷjafT*pG\"�<\�đ\Zi\�RQ�@�#8�8\�֜A\�ڛ�i�\�`Q�N��\n\�m�\0(���HZp4���\�i)\��\n\���4\���\�\�d@\0\�Y�E�L;Mt0\�N?J\�l�����\��\�\Z��\�oƖ8\� �\�Қ�9�e�\��|\�`U#\�@zl��={U7u�	n�Rbh`\\S�+\\\�\�\�G9�\�\�U��:౬\��۷u\���cV\n7\�Ѻ֧�\�&\��^O�\0��d\�o8-ѻ\Z�\0�BC�*x\� 	!�7c�\�{�0$��H\�8\�?\�SdM�\�\�2^@\�=�\�8\'�Ͽ�	\��\�\�j\�KG2\��q��$�#$q\�+M�l\�I?0\��\�\�p�#B�c\�SVd_B�̀N3�\�b��\�,m�2*����\�p\�\�@�f\�^(�[\n͘\�.x\�}A\�<�\�è��#=1Q~\����iGc9a\�7vfw\�)�7N�*\�7\�oN)�q?\�\�\�[\�%�0�fd\��Z�f��?�T\��k_�.\�;�˹�IN� \�]g����@\r��S(�Q@����J\0m--(�\�өi�eHH�Im��i7dʊ�E�mWnN:S�\�)\�*\�_\�\�Y�?\�\�^eJ�OS֥N0J\�\�|Or\�!\\|�\�i�\�M�\�~�\�Esz�\0�|��\�\�h\��\r�\�)K\�D\�Z��*\�a_�3�IQX3�%�\�\���)�����4])\�\�l�r\Z��\�\�\��V�ќWq���+���\0X~��$ɒ�@�\�i#�S��\�=kRF\�\�ޖ�XN\rR\�zP\�&E8w�\�@E\�:p\�(T\�#�\�ӬZg\Zη�\���TM\��v\�\�c@\�V�q\0=�\�5z\n��Y�s\�欉\�<\��*2q��w�\�\�h+\�\"�.\�\09$�\\Υ�4\�U@�I\�\�q�Z� �\0�%�\�7���U�H��9`\�NFqMDd �=;\��\0�R\'T�\0xԲ\�\�Z��Oq\\�$�\\p{ԡ\� s���\���Ak���\0�R\\}\���\�j�˛Ć?6�ʞՒ!�W����I�\���U\�^\�\�e�=&2G�\�y\�^p��\0=qV��`�U)\�~57l[�n�\0�;Op\�\�1D]�J�<>`\�U{P\��(�#�\�?p}*!ڄ\�T�\�\� �\�϶4,\�w�\�\���:�\�_�C�\�\�=�3�J\�\�~B�\�\�\�RU�Kg�\�','2025-02-27 04:31:09',NULL),('650e8400-e29b-41d4-a716-446655440003','550e8400-e29b-41d4-a716-446655440004','Muluken','Gizaw','Administrator','Manager','michael.brown@example.com','555-6543','Full-time','2015-09-25',1,75000.00,'Day',NULL,'321 Oak St, Springfield, USA','{\"name\": \"Lisa Brown\", \"relation\": \"Daughter\", \"phone\": \"555-7654\"}',NULL,'2025-02-27 02:28:36','male'),('677e8400-e29b-41d4-a716-446655440043','357df13c-c77e-11ef-918a-005056c00001','Helen','Bedelu','Laboratory Technician','Laboratory','helen.brown@example.com','555-6543','Full-time','2015-09-25',1,75000.00,'Day',NULL,'321 Oak St, Springfield, USA','{\"name\": \"Lisa Brown\", \"relation\": \"Daughter\", \"phone\": \"555-7654\"}',_binary '�\��\�\0JFIF\0\0\0\0\0\0\0�\�\0.Exif\0\0MM\0*\0\0\0\0@\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0�\�\0C\0\n	\n		\n$ &%# #\"(-90(*6+\"#2D26;=@@@&0FKE>J9?@=�\�\0C\r=)#)==================================================��\0�e\"\0�\�\0\0\0\0\0\0\0\0\0\0\0	\n�\�\0�\0\0\0}\0!1AQa\"q2���#B��R\��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�����������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\������������\�\0\0\0\0\0\0\0\0	\n�\�\0�\0\0w\0!1AQaq\"2�B����	#3R�br\�\n$4\�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz������������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����������\�\0\0\0?\0�\Z:�\��ю�ִ1��\0_4d\�I�\nbQGԿ���\0\"��\0\�I\�\�G��)���4�\�ޛ�sGZ,\�\�zњqisI��g�jqs��\�曟�Ґ���=\�sJ\�ڔS;���\�Ni;�ҏ֓4�۟zC�RR���!��;R�jJ��E\�K\�ց�?�/�����޴\0\�ZN��\��\���S\�n0�\nZ`��֊1H�)j-���\��\0;�\�\��h���\�)\n)���\�Q�\�\�s��Ώ\�\�@\�\�h��^�P�}(�G\�L@J(�\0<Q\�\�@�֏�\�zP\0{�J(\�\0~�֝�f�ځ@\�\����(��sN\�\�J8�\�x�S���R\�E/�H\�={RΓ�Ɣ~b�I�j?ZZ\r _J^ݨR�\r��R\�@sE(�(�Z(��Q�襤0�i1֗��E�\\\Z=;���������ER<����ߥ8���WQ\��\�~��\�@�֊(��=\�j?J\0=(�4��?Ȣ�\�\���֏^�zҟ�\'�\�?\�(?��g��\�֏֌\�a��>�\�J`\�\�K�\�(x\�\�O�)\���J;*o�~���R��i�\�4��!��Q�\�P��ө�\�\�=)E;��Rb�\0q@���R\0��\��Sh\Z8�ҊA�)ޔ\0*=}�\0Z(���%����)jS�\�)�QN�����\�i\�\�ֺ�Q�T�qK�\�SB�R\�Q@\�\�ӥ���~��\�F\�~��h�\�ʀ\�K\�ړ����\�(�� ��/��j(�悂�J(��i�ғ��(\�E�p4\�0u��\0\�\Z)\�Θ8����P\�ҁ\�\�\�\nZE�`\�?�(Ojw\�II\��\��\0�i6�)h��?Ozm:�\0J��?�!��RzҊ\��Q�R\�H��i}}E���t�w�����Z)p(�m\'\�ڗғ�WV�(ZJ_ҁ@	\�\�E\�\�4�$;N�*?ɢ�~�\�Q\�ڏ\�֘!i=()z\�@!�\�\�\��\��8\� \n\r.}i�\�w��4�\�~4T~r\�\�9\�q��K������\0^�,�<���	oR\"<\�\0\n\�5�Yi����\�������\0^�[�\0jZ��\�g<c��3�RrH�\�C\��cm�}�\"\�!\�\'\��\�+\r>&\\K9�\�K3\�\�j1\�\�\�5q�Ϥ[\�f��K\��Ll@�|\�\�\�?J؇Wӎ\�\�݀\�\0��y\�����CX\�\�k�x\�\��\�md�[K�$�\\�\�翾:���Η�y�1�U��Ҽ�Xy/-qr�YF\�S���\�G5{A�̶�}�y\Zu\\yr��\��:g\��ji���I��I\0�V\�0E[\�\�r�k~nǑ��7\�6\�\�~�8?�zر��²>Q\�J�t\�{{Qqr�TS��0FA\�#�S�!�x�׽7�����\�C��׽���Oj���ӿɠ�~4��{�(\0�(����K�SE-\�\�/�4�6��=~�P\�I�E3��I�R�3\�G4\�_j\�9����֋\0��\'��ʓ��D���\�v��\nAq{�jO_��f�\\w\�h�\0&�מ(��\��i���hw�\0�a�{Sx�s�=\r\0/\��\�\0\�j)\nǖ,�\�nqX\�׉Ⲅ\�h\�c��^��={~u\�:ߎ\�ndh\�.c`T�P3�\�?�Ci�w��\0�l��(�d��pO�\0[�\�=<�S�~���<\�=E\�\�\��s߽�s#�b\�%�$�i_p�\�f\�ٲ�E�2>|\�b{�QI\"�\0\�0H�\��d�	\��m\�\�=j�畎=zsJ\��\�y �\�H.#���\�EƋ�\�:F\"g`�\�\�\��$Ԏ\0�Je\�:\�\���9oz���s\�\�H\r��kcK�L��:�d\�q����zr\�7&G\�V#D�F\�\��\�D\�Gw8\�̀\��ߧ�_�\0UwqȲ�*A\�9\�\�\���\�`�\�;�+м\r\�V�㰾\��Y����\�\�\�\'ܗ��1�R\�c�8㏯ju1�sK�R~������h�~�h\0?*_\�4�����E��R\0�)E �*\0)zZm\�ޗ�R����n\�\�~�\��)��Z+�\�bzv�ӳM�!JQ�\nO\�\�\�T =��t\�����׽!E\'���\0-!<\�K۟�Z�\�ā#�~\�\�\0A5\�$\�8̗>���\0#�\�\\�|T�d�Ld�q�D8��U\�\�\�cj�\�\����s�+ܟ� �\�\�\�u[߷޼�p�(<�\�\���\�\�mN7ՒjZ\�έ022�\\�DU�\nm�J2\�\�r¢���9�\�$\���\0����՛m�\�\�)\�;\0q��R#\�=q۵J�,y\�-\�\�T�\�+�\����&a-!>�\�\�N�Ҟ\�\��,d�\�#��\�܃�T���\� �\0]XHG�L\�Z\�\�\�s�=kR\��e� H�\\�)E�%-[ \��\�1U&��\�9�=��K�\�<\�+\�5��^\�\�\ni�:n\�9��G]\�\�~\�r(\�\�T�z�E̓FO\�WM\�8�#����M\Z[2�w#\Z\0x��9��\�D%eOC\�\n�g\�T�s\�F\�=K��\'k�agrs<@�OV\�:Wn�g��\�\�\'R�M\�#�N$��q\�w�+\�t=V=V\�;�\��b��oc\���]Q�\�N�@\�O�P(��\n\0\\��Q�E�)X��\0:N���\0)J(i��ju!�0��x�tb��E-�ɤ�=\�\'Z_Z\�ɸn���\��\0���\�,?�z=;\�z�����T~���f�֎���JL�\�\�ڣs�Fp1\�\r	,ʈX�TI\���\0\n\�\�o~\��W\�pN�\�����\�\�˷1\�7L\�<��{c�+\��O�\�4�i\�y\nH�&9\�ާ\�q\��0݋�na��U{��Al4�s\�\���##�۩4M+\\H\�9˱\�&���a�vǥc�:�$s��?�Hd.Dk�\�U\�@\��Ǡ�h�E�n8���&��H�\�\��T�3\�n��\�M�L�\�hA^k�~�G�XD�d��O䔍p0;\n\�\�,\�\�f��3�O\��Z\�NƑ�\�b\��\�ƹ;��\�[V:�\�\�\�ҥ�����@©\���\��p8\���i�\�uF6(\�jS�i�ك\�8\�	\�Z�Z\�q\�1\�;\�\�p8\�\�\�\ZZ\�䯴\�z�q\\\���L�{u�E��\�8�\�\\��fc\�q�s�z\n\�S��H՛�\��\�=kE�1\"��\�\���FD\�1\�1��v\�}�3p\�d\�+�s�a%�\�\'9R;�}��u\��=׍�\�\�\�\�r\�\�?��qİO9ԶWMe\�dmm\��\�EJѕ��\"?C\�0\�ڥ汴;��\�\�um\��\�k�\���V�oF;�\��\��\n\0_\�J)=h�\�)=}=��E-\'�\0���q�zRzүz?�!�G�4���\0���QF(�3�M\�)\�W]\� ���sG�\�\�A<P\r��4g�4\�=}{SB���!`�����	\�\�\�n~r�;�\�H23\� \�$��\�N�mc$\�f ���>�\�\�槽��:�.x�-^�K\�yp�&V\�8\�_�iIب�������\�5\�m���\�A\�nO{�}\�~k�\�o�\�nL���0p}��\rsQk��rDQ�F��\n\�y9\�N{\�\r\�\�Q�\�Ϲ���\0�t�,I�\�*;�r��:�ހ$�s��50&Bs\�&�G\��1ޯ\�<�,zu�\�H,;��\�x\�In\�q�A\�ު<�\�n�\r:21\�`x�����<�3��9a\�v�\0\�\���7ʶH���̜cq�\0\�gh�s^]_�\�\��\�~�֢* U�=+�n����.���1@�\'��Y���wN�\�{�Z+\'�c\\g=��#V��#b9\'�Z\�\�Cp�deq�n��\�\�&�5���n0A�����\�\�ֺ�^\�˙�n\�\\\�\�B2qڻ\�+����/H|\�v�\��\���0t;��\�z�\�m֭R� \�\�\'�\�\0�\ZoBQ\�u/6\�\�U\�\�>�\��FWּE�m;R�D;Q�\�}�\��d\�\�\�\��r\n\�^ߘ\�~\�\�%\�\�����r=�\�\�h@R\�R��h\�I\�G���\08��/�T���ҏÊ\�@\�\�!���\r��(�_\�\�A�\�֌u�u؎0���Ĥ\�\�=�)�\�\��8�\�g=O�\�L!�\�y$\���\�\��\�z\�\�\�~\"Q��\�<~^�\�Rƕ\�:�ь|\�Jp3��}�\�>�޸o\�\ndh`��\�\�rs����S�Z\�\�\�M�H�\��\�A�\0}\�=�#�\Z\�A,�h;A\�<\��C���2�~�Ι\�:\�\'\�\�Ƌq�eG=:ԣBs\'�n�\�j�O>��4��|\�>�\�\njs�sځ-c%��<��z/\\w�a�g\�ri���$\�f��\���l\�\�\�\0\�\�z��\�=~�OH��T�I8�!�B{�=\�\�\�\���\�2\�$b^�?_\�YI\�֚:6\�mm��>�O�^\�\0\�!�\0;\�Sc5������/�\'\�5.�\�~���h�3a�\�\�:\�\�)�\�HX��=N+>V��@S�\�P�9\�T&�\r�\'\r(\��\�\�s8`=MK�!{D\�u{O62\�`�W�ǲC�\�\'5\�7�[B\���\�Ce\�q\�# ִdӳ3����j\�O.a\�\�\Z��\�0\�\�UM�GL*\�\�\n+�8��\�\�er\�\��(\�\�+\�|�!\�>eFǨ��\�^um\"\�(\�#��?\�}�SM\�(\�i>\�\�Kb�z�Et�f����f�\nO=���o�\�Z\�\�a\�q���\���(���\�E����\�G�\�\�ޓ���\0\"�\��j)x��]?���g��v#����ۥ!4\�b���#�)�\0皍�K��s\�LCw�h\�\��\0\�\\\��\�=7c\��\���{#J|�\�Ǯ�x\�\\\�+X\��\0�p{��\�+9\�i��N�u\�\�2�;Pm\0�\���Y\�\"\�\0~\�\0{�)\�|\�[���\�R\�\Zt\n0q\\\�\�u%b��\����*I�\�\0Q��&�� ��Ue�\�r!\�T�G֯YǒI\�c9����\�_AW�*��\�2}��e=\�zg�6C\�>N����G$�}\�\�\�\��\�bG� %P`�\���~�-�4��a/�;h\�#\�2��\�\�隵�q\��\0\��k\nK.\�P\�q\�8�\0\�S��䱞$\�\�;�+7$\�\"��\�+�e\�\�RC��\�kx�-p	\��8��\�餄n98���ݺ\Zž��#�\�P\�\\,HX��\��J�	����������15o\�!)m�Mǜ\�?%\���\n��3\�t2EUY�w\�Q����:gj�dC�}Y�oዛ�\ZG�\��\��e\0���?���\��&[ߵ\\IncM\�TJG�\�s�N&\"&��I�a\�$s�����=N���Oj\�\�;�\�.H\�A\�g\�i�G�#lt?Z\�\�]\�Z���7��d\�=0)��?�H���a/2Nsڳ\��\0\�?�wGX\�㒳�<G.p3�\��\0\�VOφ^\n���o\�v\�\�b)	�\�\�\�HR�6�o-�nْ?�\��1�G\�]�2e�x_�5&�\�$�n8\�3�E{N�p�@s�#�\�	\�BZ\�ig��1:g��?�\�%\nM��HR\�Q��\�QE!�����ƃ�=h�T?\n)8��X\�=��4��\�3G�v��=z\�\�g�JL\�%�PJ\�2I錓S\�\rX��m�y�Px\�\�\n\\�1��%\�p��\�}>��\0\Z\�<Q7\�\r�T��ߩ\��\�\��\�|�0�Q\�?Ƹ_�\0�e\�\�p�eSczkS�;�\�rǀ;\�.\�;I\��\�&&x\0w\�Une�$\'�z\�9\�G,�s\�Ҡ��s�J�$zf��Z�˷��$��և8�Uz����\���\r��m�\�RF\��\�Am/\�ȖO�f獵KH�Q�a�\�\�R\�\�f\�0���z�\r��e.^{�Q\�(\�fk�m��\��9\�q�����b�\�8��˕8,y\���\�R\�\�3ɱ��\0X�.s�휞=jZ�i�@;J�C�g�;Զ\�\�7\�\�ާxd�C.ء$��g���UK��\0I>�<�ޥ�\�\�\�\�?�=r*-i z�\�3L����Z�fXW\�a%fo�\�K\Z\��\�<�Z\�\�ԑ��Xة1��3\�s�j&\�6@1\�TY+�c^�G�\ZB�rV8\�K�\Z�;������\�<���{1wm�\�%�ԟh,sA�\�~�պ�r��2Z�ӣ������uV\�3T�\�\�\�nn]\�\�F\�GC��\0\Z\�\�ڑ\�@\�qS���P��\�[P����\�\�ka\�Kb�R7�\���5\�\�\�0|pO\"�\�\�f2㎪x\�\��:\�\"\�s�\�+\�⪬\�rƮ�F\0�*$ܟ2�\�5-�\�l\�?�ኋѺ\�u�,\�˒��:\�=��\�\�\�\�V\�\�5݀Å<c�\�\�S^1�ː8\��#�u�\�\�\�%\�LR��\�9�T��\�\�҇�w�6WK4!�@a��\�\�W�9�i\�\�a��i\��ҏր�֗Қ)\�\0\�;RR\�a�4*(�aE\'\�R��T�����<={\�~�R�Ӱ��\�k\�$\n��9Ҭ}O�\�:\�%��\�6�ʹƋ��ָO\�,\�\"66\�\0,9\���\�j\�5{�b02\�w�~��\�^u\�`\\\�\�\�sB����\�~\��氨t\�Z\�¸��\�p*��\�ߟZ{�y\�P��\0\�V:�#8��\0*����\0\�E�Ő�	\�RB\ZY2@\�U{d�*͑��c�\�Q`:\�V�s\�1Z\��\0sP\�\�\�kn\�?�z\�\�\��:)�\nb\�F2�H\�5*[7\�g<U\�g\'�Ha��I��^%�~��qϞ�5�s�1\�Vt�<u\�\�\�\�Ν��d�̍s\�#��`\"�r9�\�\� �jʡ\�\r�\�k�Nq��=\�\�@$��>\�5�\�|�J�6g�ʖ0O�*וӸ���ƭ�A|S��:T�\�\�QK\�ߵa\"�s� �d��>��=�\�䍷2�Z�\��i7���\��L�)�\���\0�*\�\�\�rb�K\'�\\�\�Yd?\�x\�Q�\�H\�s\�O\'\�Qe\�X�q�\�+�\�\"ٖ#��+gN	-�pU��\�\�>�����\�ZzhȒ<\�1?\���S=�#�\�^	\�\�[e�C��q�\0\��\0\Z\�P�\��+\�<=3Et3\�\�X�\�\�A�\�\�-d�!�ɢ���TV\��ө��\0\"�Z�1õ(���\�p���i8���a�\��h��Ú)֊\0\��G���ֻ�y\�M\'�\�\�\�\�7\�� �\'��f~v\'!\�j7�\�(y\�.��QCd�d/R�\�^�\0��.\�&0B�(\0��\�\�\�\�p�$\'\�	\'�\��\�H��\�\�[��\���\�Mhb�_S\�L\�N�`�2Oҙ\�=�J\�Џct\�jx\�����\�מM]��$�\n:\�N\�\�!@�5-�Tu�\�\��d\'�\��7!y\�=L˅\�0+��^ҹ�Pѣz�\�5\�C&@��Z�\�ꧪ.��\�I#�\'\�#N�⳥��\'$�\'�;\�|\���z�\������n�\�\'5fh\���rG��=*Ӻ3kSb\� ��;�JՋ/�:ͱ� 9f�=\�q&G8\�>��ѼvX\\��Gb++͖�\Z���$�\�C�\�񚄃#�n�rk%�C�\�y\�\��W��W�Md\�OL�\Z�.$�|?�\r]ť΄=��ҳ��\�9�\�\�Q�\�R(\��)̀����s\\�g�v }�\�O\�\��-m�|�Ùwy\�k���\�V���\�\�Ǵ�\0]��\�o\�]�x��8q\�\�/�\�2Hɩ�v�%^\�ҡ#�<{�|G\�r+s�y���=;�`\�\��\�T�z\��8\��\�#��lZ\�\�t?jN�e*{v\r�?�zm�`�6�\�\�=3\���k\��\�\�SU=CA\�W�Ň��\�w�\0?�j�{��4GOj_J�\���T����̇Ӆ6�\�}iç�6�R\��G\�E\0.3E\'4P3��t���\�]\�����\�\�ڗ�SI>\�\�M\0��=9\�}9�gzR�q׌�⣑\�!,pS\�OQ_�\�i�sƌ<��7L�ߗ?�pWd^��A\�\�\�x#ɍF$a\��?\�j�\��\�\�\���J�S��\�9H�I\�R��\�h����\"\0�\�x�q\r�Ǳc����@\�g9�$�_O\�T��*`�4c\���%֚q\�N�\�=u�m��P\��ꭦ$v�<\�\�7�X\�\�$��\0?ֻ�|�\�zc�sV�S����[�Vw\nx\���9ǥZ1)�8�u��۴.\�2�\��\nz�6i�C\�\�Q\�\n�A�ְ�繺3 ��\�\�\�\0n_�\�\�I1�)a�v\�z�=\�wM�%5{6>8��X\�\�	\�*\�qL\��\���5^\�I\�&�Mܤ�\0y\�Z�~\�/\�߸D��\�$\�8���R-�\0IP=��=\�Q��A��ѳ�YI$�\�($*�o_ơ\�t �\�X��{����T*wcu ��SjֈB�\�X��sU�Է���\�zb��![��ktQ(@}z\�͝�\�\�$�M9�AwW�d\�8�ь\0\r=#\��\�\�	\�\�l\�3���.n����>�\�\'\�\�\�\�[/�~�I�k��\�\�It���[\�\�V�\��\0\�q�W9�#\��\�/\�^�5\��:���lsn�\�:jv�\�I�Gͷ�E*&�L\Z�	\�9=AW-O�:���q�z��\�n3��\�;T3H�%�٪\�\�\�n>�\n�m4\�8ױ\���\0�+έ�5w�\�r����\0\\W�i\\B[�a����L\�P0GANq۵ \�)}}+s\�ju0S\��<Tb�)\0�)�����)?\Z(\�R����ġ$�]\�p\�A��:�9\ZNz\�5&:z�\�h!9\�H��Z\�\�<�$3�I\����֫��\\�\�u\����Ide\'\0�=��\�r�.�9\�\�\�ej\"��J\�s0\�\���W\�u\�W�-;\�Hr/��ҫ\�\�\�+�N\�lU�P����\�\�J{�\��ӽIB\'\�\'�Z�?>\�TC�sO蹦��\�\�O�T=��^*h�\�\�	=\�1�\�\�a��v����\�7 J�ָ͙\'�\�\�YK��^�\���u�\�\\�\0��\Z�ǙY��o\'�B~`?:�x�t$=ꖙ�Gul�F\�z�J�+\�,:\�+�G��<\�1�-��\���]F�╉\�\�\��(\�\�On\�X\�$�О�\"Z�#��\�N\�\�\�n\�\�t\�sOx\�d�Q�\���V~#\��lܠ��� w==�t�\�\�xܹ��c��]�ه@8\�֕\�)PK��|ce�Q�n%H\�<\�+�[�Iѧ|�����<t��|�\��\�\0��v�1[�\0\�FϠ��eR\�ʌ�l\��\�pO�f/�S\�A�)\�8$\�<�ެc2\0�\�c��T]3L�Bx���S�Ѹ�bFv *��{W�x�WmORQϒ�\�=}\�҇<�\�O�i���,R?\r�V-\�6Ӵ�ps��J�ƨ\�$d�H�?�-��iq�-\�*���\���\�� ���P�y\"$(9\�=��Gc�q\"\�W�~5(�L\�\"O�\��t>��H�N����{Jl}	\�\0�\0,�c$T2��囙�ܫ��\���+\�4y3j�あ+\���\�9�y\�\��\�\�^\Z��D\r\�aܬy\�>��\��\�L7	\�u �\0�KޠC\�}�D9\�n\�V\�(�S���G֐�y�\�t�\�ǃ�\�\�\�K@��\�\�sT�W\�m\�|�	��\0<U\�zUmFݮ���~�7/l�\�gۥv��nG�י\���� ��S�G~���],\��s�	R�X(ѾA\��^�\�\�mj-Կ�n\�\0W��\��\�:���\"b;v�x�\�կ����M\�}�l<d\�\�^\\�}�i$s����1�{V5e\�֌z�1�@\�>P8N\�\����wR\�@��0*�|�ްGI	\�@*9:~8�N\0$�P�<�4�H\�I\�j~\�\�\�߷j�\�\�\�h@In\�I���:yr0\�:�*!\�#�LNF{��\0��Bח?,8Xݰ�$��\�?\�\�V\�\�\�\�1\"����\��\�\��=j�R\��X]��O�}+��\�_h]\�X\�X\�ZXW\�ʁ�{��q>\�;�^��&xw�\�\\�\�Y\�	)9��?C����5���!ו�\�YM#XJ\��N}��\�=��W��f�\�U�J��}I\�\�2}j\�aq�ϥC%����\�p01\�H\�\�h?�t�\0(9\�%N}*a �u\�X̵�G5ā:zӦ�XP�p\0\�x�cR\�d�&8N�o_�gk�ʺ��n���b\"_�ÿ��.�3%\�\�\�\�]\�*�NH\0d�\�&\�\�\�$t�Z좒Z��\�Bx\��X�\�\�M<�;O�h\�p${�*\�v<e�_˧\�ۥD\�:f�rT���{ҧoZg&3�x�#��\�8�R,�\�v�\�\�\0g\�^�=�\�5$_|`\��Tַ�J�k�Ìq\�޽@�(m�(1��+\�l%\\��`��\��\0Z�-UHϓ1R��#�ן\��T\�I�;\�E9=����1^A.z�\�2qV��@?0�I��\rK\"��G�t=\��\0\�&1iE\'�\�f�L\�-\0?�)����9�Zi~��\�\�O<�Tg�Wm�U��\�g��B\�\�2\�?\�C\�\��\�[x�\�\�0�*$��G;XV�\�A�\�:\�=�xr�iDHN:��J�]l\\Z�\��5Xf�\�o*�\�6�9l\�\��\�*b1\r\�0\�\��������$���\�\�\\\�\�\�]��dc�\\\�m�N�$�����w���zP㓞���O_ґM\�$��v���\�ށ\����\���9��qߵ\�Zp\�\�l\�`c\�9 {U�\�\�UT\�\�WcC\�8�0Aֆ��]\�7�\�ѓs)B�+\�O�#�\�Ty��\�Sd\�;j=M\r7\�\�9#$�\��\�\rr�D�\�J��&��z�Lu���	�\���v�H��K;��s�֪ʜgb��\�6\�\�\�\Z\�\�:$.���c\�Eys�b:ds�¦Ҟ.8\�Vm�D\�/sQ\�_G%�\0v=\�%���`=\�<Y�\0\�]�<��Y�\�ķ����r\�\�UDc\�ڮK��\�ګ\�I\�ڻ�*�\�Q,絻��#\�\�÷�\��V\r\�\��\�,SZb6�t�\�Ă\�\��װ�\0a\�\�\�]=49���^\���\�����\'�\���֟n?w����=z\�\��\0\�L	r0�I�✞�r1M��8��H\�q\�\�ց�d@\�qҖ�}q\�@N\����J�^0jJ-\�/�A\�	\�Z\�\�C\nc\�Ԍ?Z\�O�A\�03[\Zd|61\�?ʡ\�K]\�\�+ۙ�͵v�I�aׯ<�\�ӯ:\�#��<Î�Z\�\r*%IC�A?�\��V��^l!\���N�J#&\�i#��q$a�\�\\1VGj�\�\�\�c\�W�~H\���u�\�\�\�׹�\�?JL\���\�;\�Ҋm.zP�E%�\�\�Dxq�Դ\���k��\�<�\�b�\�J��4��?\�ۯ\�V�|!\'�3�\�K�d}�\�;K\��g�*d싌n\�\�sUk���Rpߠ\��Z\�\�\��>��\'u!G,�\���>��p\�9\�Gz\�n\�\�tU�ZC��c�E�ϵ<�s\�\�O��$\�\�ԟS\�;{��`��8�D:��4\�\��\�D J�g\�V\"p�����#�Ҍ�>٧�Ɏ	\�N\�\�\�n8���j�0>�v�c����\0\�\0Wm\�OCҸ�Q^\�3\�]��%\0#\'k:��\�t��\�Q�{�\�Vb �i�\'\�\�\\�6��a<z�\Z�\�ʨ\�\�<\�\����H�*������?�I�9����\�\�3D\�rI�\�\�\�%g�;h�S�G�\0<V��\0�\�=+\"��d�\�b\\(=��#�4��d&\�a��0p\0��Y<��;�H�����|\��W5��\�;�9\�:q[\�՘\�ة��=)\��\�>�\�D��\�Q\�px�V\�8\�_q����\0�\�ڜFGZA�GC\�Hb�\�����[88#�E?\�a��a��\�\0Y��<�VΙs�:�\�\��<5^�F���`�EK]�:\�\�ʣ �?L��\��\�Μ\�\�yV\'\0\�\�r6w\�c �s\�z�\0�\�[�,�@�\���~=\���\����\\pm#\���\Z\�c<�ڲ\�!�\0q\�:��g=�\�5�2e�p����s\���S\�2)?�-4RQE�s]�\�$g�J\\\�W�y�n�(��>��\0�^{�\\y��T\�*\�\��>�?\n\�<Q;GfJ.X)\�\��>�@\'�x� ���<�\�.�UԆ[�ݒ�d��\�<�1\�\�U��#^�a�j�\�\��c5\�tlU�\�A���\��\�$\���\�\�@������ҘG\�L@is��ޜ�G\�4\0o9Ʀ��\�dw����U<o�\�<�ӚM��\'J�#\�8����ѓ�u\�E\�s�\���\r*C$\�\�c�\�\�8q��\�\n\��_�d�0��M�mOsr\�\�(�\�BÿҦ#zz�ֹ�jCnG>�����@(x\�\�V���?�\r�\�\�Ҡ���QHn3\��\�f\�H�tr\����(�\0�P.&��|\�\0��I�0\�\�\�V�x�\�n��L<\\/B����?�Z\�X�\���\�7}\�\�OE8��S\�ݘg߭s\�\�}ԧ�Zڑ�� �to~�\�NOc�3O��\0R}G?J�H��#��[�cb$܎\�iGς���\�\�5t/Q�\�{�\�H\�p9����V�����\�7G#\\�\�d?^�;S.��`z�=\�I��*\�r\0�\'<��$��\�zNI����ЯcoM\�\�鑁[7�a�\�#`�^���?J\�\"������5f\�\�7�qߦ+\'n�O�\�h���L��h9\��g�+V\�\�\�E3,\�$�	?�k�\�<A\0�Xu�D�b2\�g�\��\0�]��d�BZ��IV@FG\�z~}*�d�t5|��~d��=A%���\0B*\�R�p�j�3Km �\�c��\0??��5#x\�j�,���S(\�T!٢�(�\�FOҚ_\0��\��=1��\�\�8��\��g\\\�\� ����0�G���\�~�\�=9�\0\"�:�\�E\�\0$��ǿ\�W���\�+��\�9�<g���窵:\�\�c\�7�\��H��\0==)|�պ\�5����loq�>8\�\�*794\��b�Oӵ7��������g��\�L�(}�	����8�?B*Xʁ���9\�O�)�v\���jܱp;�*��\�@q�*\�Xi&������z|v\�\���op(*Ř�\\\�3 �z\�q�\�4\\l�`\�8\�\�\�ޱ�\�9m�g��\0��>\�+�\�cX\��\�8�\0?Z£\�kM\Z�0֕7q�T�G��*Fs�\��g\�(\�zU��\�N���H�\Z]�\�?��;\�\�\��T�8�MM�\�\�C\�ppB\�X\�A�5\0�\0C�9�\0W/\�I\��\�~g��Xӆ&d=R5C��\0�\�\�\�.\�a�GN�\�\r��\�~\��ݟֹ���\�브�&�o$��g\�\"����\�\�*L�\�K+���e{R7��c�q�\��\"�#.pk@��A9<�\�Fk\�s\�\�i����e|\00Cw#�\�WR|��\�qK-�\�\�\�F*.�\�IG<�g�{�6ٳ\�/\"�=�D�ׁ��\�Fy#�#�T]Ȕlg��\�\�ۏ\��{���r3\�V\�V�L�Jȇ�\�M3`�=E\�\�4\�P�;\�`�f9C���;\Z\�7\��ˁ\�t\�]�@���<`~F��VB1�A\�;Rq\�	�=\�ƚ-��\�F	 �ޮ\�\��\�\�i\��L�x�=𯋣;m5\�p�\�\��z�P0W ��=\���%t=��z\��*�gzt��\�=*�!٢���X`\�R��\�\�<�Nk\�\Z�\�\�R1p$`B�\�[ӭw7evpE]\�\�\��x�GyV3�(\�;\���^��Ҹe2�y>�9\�>��[�\�!F\��Pu\�J䔮vB6D�1�\�Q�\��T\�\�2z��Vg\�\�>�%�|�b��=\�\\S\�8,y=��1�~<�@c\0���\�?J$@\�\�M��\�\�(b�\0�\�J$\��)�G�\�:Дe$8\�Sҡ��z�\�J|`c\�\�j��$ \�\�\'�!\�V^d���#�颷�8B�@A8\0g��Eӥ��m����\0Z\�\ZsI\�\�f\0�\����6ͣ#z\�O\�<�<�g\�{u<�z�um�H��ā��ĚrG�6x���<{�V��1�FN���i$=`v��:O��F*t�ԕbQ\����\0��1L.GN��%t$1/8\�p\0ϥ!��J��`��5ZX�nP�EK\�\�bI��\0����{\�U�K���\�\�?�\�U\�#�+\�ɿ�\�t#�k��O��\�\�j\�\�-�C\��\\\�\��\�� V�fSFI�������\� ?�6ֲ&O\�\�=\rm\��a{y���\�\�\�Z�-v�\�i���G\�D\���GP�w\���O���\�2/B\�#қ/�\�.W#5�\�t=\nڝ\�\�UnX\��e	7�\"����0�r:隭k.\�\��y\�[\�Y��\�rh���z\�	8�A\�hCԡ\�c�z�u\�-�3�+Df\�Rfٞ��V z`\0ey\���\�;��S��cpx<sO=I\�j\�\�*O��y\�l\�\�{k��7�q2\�\���\�R\���\���?<\�dt\�\�M�H \�ڞ��\�\0�\�*A\�ۭs^\��\0��A\�sq	&Ns\�~��F�@z\�\�D�{QMP)q(�2O%Fq\�^i\�;��t���R/p:�\�]��oZd\�Aa�IǷ\�\����j\�n&�(\�DP�Q��\0\��WEYt9\�ǩ�F�\�\�H���P�<n�\��\�\0��`t�8=�}j�Üv�%���\�ң��OQ\�\�s��JT\�aH9\'�x\�\0C)\�Gn�c\��T����z��`ǼP0j0��*[f�\�#��H�$t0\�,���\�\n�{��cʌ;UK$S1bq�����,\�\�[s`ZL�\�\�4\�|�;q\�\��\�_$���9&����h\�S���`�֦#\�%��\�\\�:#�� �c\�\�q�5b\���r\��A\�$s��?�\�֢H�8��=\�\�Fx?6	\�:Ϧ\0�4�ˡ\�#&�Ls\�P��\0\�Ԣ�\�>}�j3j���b�\Z\\�b���<\� U��釡�bngF�H7�8 �\��\0\�V�\�r\��\'��\09�j7O�1\�r�M/(%C�\�\�?�\�j\Z(�xvB\�\�b��\�n�r\��\�\���k��ur�z�\��\�y��]I	�\�`\�W	j\�\r\�d|\�\�f��<;�\�s�*�\�oL�\�5k@���e�洟\�D>#t\�}�\��g\'<\�\����T����\�\�\'��Eu\"��d\Z\�|[~%x\�^~f��\0=YRM���`J\�\�\�NK明2;\�ց&F\\�����Ԏ[����s�Zl\�9V\���9�bq�\"�|\�s�1�}h��Bq銇=*�%{\�\"��\�3M \�g�\�R#�<�Q�ڐc۵0/M\Z�Q\�;[\�C�=��y�G��\\t�5�O=)\�|?\�?�|C\Z;\�\���\��׵\r��\�s_7\�\�\��	\"}\�!��k\�-2\�o4�f\�Px�f�\�����EX�9����G{��\�18U\��\�\\L���x\�\�nx�e�-\�$Br��=?��>�\�s\�ڴ��\"\Z\"D\r!�a\�\"rFq�UP�\�8�S�\�z�T�#�\�\�w�\�ӏ\�\��\�L2p~��\0�\�z\�ɀS�����\�\�$Cϱ\�#�i\�ʞ�\��\�{�@!ع\�Ry\��8\�t��*\��z\���){\�v\�mi��\�{\��\�+\r>�\0\�\�t~?h��<�_j�l\\w:٭��?�a�a\�\�\�Rڝ\��p\�{�d\�\�ʺ�E\�H6�?��`l�Y��\�1\�\�W?w$1\�p��G\'����7��\�O\�<�Ɇ\�AVV� �qϸ��Gj�\�n�h*\0 g\�Ϲ\�ǯ�`Q�\�8)@�\� \�?\�i�֓�\��\0&�\��8�Y?\�\���TB��)��S\�\�\Z����\�\�9�\�\�\"ݽ\�\���N\�=;r?:�yx\��s�p~+IѼ��He\��SǶsTe|$�\��)#��(�\0gÎ�T�7!�r{S5(���pG>�Z\�_�j�㑜\�\�]l\�\�U��\�\�I�\�UN�y�\�\�\\\��?.䱭k\�3,P�B�\�>���\��ִ\�dc96\�;{q\�\'\�IN}j\��ߎ�n\�\�G\�@\�G��<\�\�#ę㩩`�\"<H:�;\�y$\"�\�|��\�\���\�\�x�\�8�x�t\��\0�8�=3ޙ\�\�U��G!C\�3Ҧ|0\�y�Jr1\�\n���\�#\��k\��\rx.tpĕNy\�8��\0�\�\�p��\�/|�\�|\r\�E\�u%����Y\�R\��מǁR\�PL���\0SEH�#\�\�(�p��U\����\�M9̎H�c�\0UYc�\�\'��d�y��\�J��\0:\n�$W�!ߚ�\r5\�)\�\�\��\�a�Jr�x�>4�\�\�f\�_\�8ǭO��W�\0z�>Բl��Fѻ#!�2{Uy\�\090A\�\�=)�Î2:�(���t�?\�L}h\�\0P��ҪH�\�l�b��0=sD\�l@\�86Q���\�]�\�d\�g�xO ��z���q�\"���\�\n\�i�\�_ڤ����\�}}��/#&1\�?��f��\�z\�iW#q>CH���>�\�X�m�\�`\�\�0#�Ea8�\�m	!��~)�\�\��T\�Y�\�SBu\�Y�\��\���\�H\099㿯�\�Ȳ�\0��� ����0#?���\'o*NFx\�\����S�+r\�\�\�A�\08��~����`\'�4\��\�ң�\n����V�\�\�U\0b\�b3�Go��\�q\�R\�&7x\���\�#\�c�}�.��~R?!e<��?*ΐ4Ӏ�\0u>��\�\�`Ns\�Y��m�8f�\��\0\\Ҏ�ƚ$cjEe�r�*w�\0���\�\�C�\�\�/�o�#�G\\z~5R97�\�zꂲ8\�\�\�R\�F��\��C�\�B=�\�Ҷ���N��T������үB<�N=\�c\�隹p\� \�\�J�8�D\�I\�0*���\�<Շ;-Tt$�U�7q�zf�S����{�\�N\����\�ӿw�Il�?��BZQ\�֏��CK��H�\���hߟך�v\�\��&�x$�H���\�\�w|����5v8��\��\'�Ȟ\Z�K\�\�*\�>b�;{~C�i�!,\�z��@���\�f���\� \�4�c����\�y\�\�t�p\�\��5\�d,@�ϩ\�S\�\0�4[�8\�\�\Z.�$zh\�h2\����;���\�g�\�Nr�\n\�9�\�\�\�~�8��?_\\\�\�pN2�\�*��\��\�q�hC\�NO\�=\0\�V��sS!�\�Ϧ(D=�N�M�䜃��s�c�����D\�1\�S��^d>�ʦw�ӵC\��{\�@<��=�s@��k��{ry��\���{R\��P\���\�f�����	Ќ�?��JS�8\�V�w�ɾ\�B�T�ֻ�#\�VW\�兼�\�}\��?\�X:}Q�jw:,MDm�|\�)\�r\�9�#�N���\��<n���)\�?J{��;H#nOn�Q\�z��j9K\�[��\�ӑJ;ԎӶ*3�3�\�gfh���8���\�\�z\�̫�\�V\�Q��O\�N�O@[�i(ɇ:D3\��U$�\��\�\\b\�A�Cd~М�Ʊ\"\�m\�[�\�w�03 \�8\\�\�\�X�.�\�<�TEq�Mh����7�Z4ri po��W-�\�\�l�Q�z\�|�\�rwe�V<\�G�\�$��\�kZt\�g*�\�?\�\�ܟ^�-�\�qU}z�.��Z\�\�䷣��� b���՛���\��\�aB(�?�j�\0����G\�\�v�d�\'o^\�C\�;�ZPR��\��~A�\��Ni�I=sN8\��=\�u�tЄ\�Jq�i�R\�n!@�sϨ�\�J$\02x\�v\Z\'��K��\�wH\�\0��{�tȭ`�ר\\��F�/\�\�\�\�w+�\��#�Mw�\0��?ҸjUR��:U>X]�@m�(\�?\�Z+�\�<�\�~���\�,q��*\�S[\�l\�$R�=x��ۯS̲�OFR+Ϯl��B�&Nx#�Vս\�eE�-NN\�F�<�4���pz\�\�\�\�̑�259\�B\�uZ����-�\��\�ǯQ\�4@>�\�D��@(�\�2[6\�x\��]V\�8\�0އ\�_�T\�\�4f�\���\�U7�s��ޙ�\�d\�9\�\�+,@?�>N$<c�\n.\�\��˓�\�Fz\�\0��d\�c�\�9�g��\����M/\�h��X��O8�֓�\�j\��\�\�\�A3����\�(Ձ\�A�\�\�\�X�S�\0\�\�#\�\"�9m�JAqʨ0v�#�b��T�$\�߭ہ\�8\�ӊu�\�G\�s@ld�Ԃ\0��\�Lc[�lc\�jl��\�u;��\�\\J\�V&�Y\�\�\�S\�G���\�Z��t\��(\�����4�@Z�\�\�J�5\�d�c#��\0\�<�3\�U�\�G>�gQ�[�\�=\�;cW9*��@�\�L�E�� ���FC�ʎ\��\0\�U�\n\�I�dg�\�U\�c?�x�@2���x*rG�o�l~�\���ޘ�+�W�H䎵@�}�ZV�d��^0s�~�J\�-�{J�2?CHh\�\�s\�;�\�)\�I�g\�\�\Z|c~GC\�=\�1�냜\�\�\�zvd�ҙ��\�ހt��)^zӐ1 �N\0\�\���u��\�\���\�\�ޯ\���C\�\��\�xs\��V۽A~~�\�{{��q�\�=+�_\�\�\�F\��~��O\�\�\�\�\�Y�\�\"��6�O�?\�W-f�ki�\�O\����C\�\�\�e\�6r1\\110H\�N�\����\�z�5�!\�m�\�36\�\�3\�؃\\��,�\�u�#�+���zU]n\�\�Z{`|\�2\0\�\\Q�L\�q�8ǲ�8Ġe�\�\�U\�\��N��K	���\�\�\�\�nqVn4���IU�c[���/c	�;\�$р\�^GqW��߱\�6K����TDȃ�\�j��n\�C\�t=\�z~t \�+�v�E�]|�=�Q܏���\�Y8��_\��p{Ѐ�R��\�Q�j�(�\�õ7<R��t\���t�\0U\�W\0��&��o4\\f��|�\Z�2ɷ\�\'d�]�+���s\�Tz��iڝũ\�#o���e\�T\�=�\�=G5K�ַ5!��\�RR\ZhǑs��8��x\�W�\0=��bz֞���e{|c\'d~Lm��}�	\��f���kWU\�eae�\Z0g�J�C����f�>�^���ԣ����z\0Tv��\�A�Mך1\"�GF\��\�n!@<zcҁ�j�\�Ҟ?Z==h{Na�A\�$dSr�2*3\��\0h�*�\�	\�\�\\�\�=@�\�\�C\�\�\�\'��\��\�h!��\'\� ���;S\�H�\�n��\�\\[J\0����|\�\�~�\�m?��H=3\�>�=��\�yi��?�k\��Z\�x2H\�3\�\03Y\�j&Ц\�bE�\�)\�c\�A\�t�\�`�\�\�D�O\�^\�\�\��V݅���a �Tc��Z��@\���J�\�\�T\�(\�Ƈc\�`�	\�ڞq\�\�)���\�\�\�\�����\�\�\�2\�\����gp;��\�]~��f��|:��a�zX\�ފ3Ez\'�*\�\�\�\�J\���\Z(��;#7\�\��\�}*k����\�E�\��\�m�\0!\'�\0���5t7\�z\�\�h��:�-�\�c�b�*�\�������D�\���*�U��\0՟�P���֊*��\�\�(�Aޔt��\0^߅\'�\�E��c�\0\"���\0]c�tQ@�E�\�[^.�\0���S�\0@Z(�1N=MP� \�h����O\�Q@\�\����\0�*\��\0\�I�\0\�Ҋ*z�V\�����\�E@)�ފ(`tz?�����E�QEq\�;�\Z����\�Z(�N�P\��)�\�h��H�r��v�g��Ҋ+�\r�͈طEWq\��\�','2025-03-03 01:20:42',NULL),('78621cdb-e01c-11ef-a1d1-005056c00001','78620103-e01c-11ef-a1d1-005056c00001','Kaleb','Abel','admin','administrative','kaleb@gmail.com','0900130082','Part-time','2025-01-30',0,5000.00,'night','650e8400-e29b-41d4-a716-446655440002','Addis Ababa','0900130082',NULL,'2025-03-01 04:49:13','male'),('7f26a855-e014-11ef-a1d1-005056c00001','7f266162-e014-11ef-a1d1-005056c00001','Mahider','Tesfaye','doctor','medical','hilcoe2@gmail.com','0900125689','Part-time','2025-01-03',0,3000.00,'night',NULL,'Addis Ababa','0900130082',_binary '�\��\�\0JFIF\0\0\0\0\0\0\0�\�\0.Exif\0\0MM\0*\0\0\0\0@\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0�\�\0C\0\n	\n		\n$ &%# #\"(-90(*6+\"#2D26;=@@@&0FKE>J9?@=�\�\0C\r=)#)==================================================��\0�e\"\0�\�\0\0\0\0\0\0\0\0\0\0\0	\n�\�\0�\0\0\0}\0!1AQa\"q2���#B��R\��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�����������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\������������\�\0\0\0\0\0\0\0\0	\n�\�\0�\0\0w\0!1AQaq\"2�B����	#3R�br\�\n$4\�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz������������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����������\�\0\0\0?\0�\Z:�\��ю�ִ1��\0_4d\�I�\nbQGԿ���\0\"��\0\�I\�\�G��)���4�\�ޛ�sGZ,\�\�zњqisI��g�jqs��\�曟�Ґ���=\�sJ\�ڔS;���\�Ni;�ҏ֓4�۟zC�RR���!��;R�jJ��E\�K\�ց�?�/�����޴\0\�ZN��\��\���S\�n0�\nZ`��֊1H�)j-���\��\0;�\�\��h���\�)\n)���\�Q�\�\�s��Ώ\�\�@\�\�h��^�P�}(�G\�L@J(�\0<Q\�\�@�֏�\�zP\0{�J(\�\0~�֝�f�ځ@\�\����(��sN\�\�J8�\�x�S���R\�E/�H\�={RΓ�Ɣ~b�I�j?ZZ\r _J^ݨR�\r��R\�@sE(�(�Z(��Q�襤0�i1֗��E�\\\Z=;���������ER<����ߥ8���WQ\��\�~��\�@�֊(��=\�j?J\0=(�4��?Ȣ�\�\���֏^�zҟ�\'�\�?\�(?��g��\�֏֌\�a��>�\�J`\�\�K�\�(x\�\�O�)\���J;*o�~���R��i�\�4��!��Q�\�P��ө�\�\�=)E;��Rb�\0q@���R\0��\��Sh\Z8�ҊA�)ޔ\0*=}�\0Z(���%����)jS�\�)�QN�����\�i\�\�ֺ�Q�T�qK�\�SB�R\�Q@\�\�ӥ���~��\�F\�~��h�\�ʀ\�K\�ړ����\�(�� ��/��j(�悂�J(��i�ғ��(\�E�p4\�0u��\0\�\Z)\�Θ8����P\�ҁ\�\�\�\nZE�`\�?�(Ojw\�II\��\��\0�i6�)h��?Ozm:�\0J��?�!��RzҊ\��Q�R\�H��i}}E���t�w�����Z)p(�m\'\�ڗғ�WV�(ZJ_ҁ@	\�\�E\�\�4�$;N�*?ɢ�~�\�Q\�ڏ\�֘!i=()z\�@!�\�\�\��\��8\� \n\r.}i�\�w��4�\�~4T~r\�\�9\�q��K������\0^�,�<���	oR\"<\�\0\n\�5�Yi����\�������\0^�[�\0jZ��\�g<c��3�RrH�\�C\��cm�}�\"\�!\�\'\��\�+\r>&\\K9�\�K3\�\�j1\�\�\�5q�Ϥ[\�f��K\��Ll@�|\�\�\�?J؇Wӎ\�\�݀\�\0��y\�����CX\�\�k�x\�\��\�md�[K�$�\\�\�翾:���Η�y�1�U��Ҽ�Xy/-qr�YF\�S���\�G5{A�̶�}�y\Zu\\yr��\��:g\��ji���I��I\0�V\�0E[\�\�r�k~nǑ��7\�6\�\�~�8?�zر��²>Q\�J�t\�{{Qqr�TS��0FA\�#�S�!�x�׽7�����\�C��׽���Oj���ӿɠ�~4��{�(\0�(����K�SE-\�\�/�4�6��=~�P\�I�E3��I�R�3\�G4\�_j\�9����֋\0��\'��ʓ��D���\�v��\nAq{�jO_��f�\\w\�h�\0&�מ(��\��i���hw�\0�a�{Sx�s�=\r\0/\��\�\0\�j)\nǖ,�\�nqX\�׉Ⲅ\�h\�c��^��={~u\�:ߎ\�ndh\�.c`T�P3�\�?�Ci�w��\0�l��(�d��pO�\0[�\�=<�S�~���<\�=E\�\�\��s߽�s#�b\�%�$�i_p�\�f\�ٲ�E�2>|\�b{�QI\"�\0\�0H�\��d�	\��m\�\�=j�畎=zsJ\��\�y �\�H.#���\�EƋ�\�:F\"g`�\�\�\��$Ԏ\0�Je\�:\�\���9oz���s\�\�H\r��kcK�L��:�d\�q����zr\�7&G\�V#D�F\�\��\�D\�Gw8\�̀\��ߧ�_�\0UwqȲ�*A\�9\�\�\���\�`�\�;�+м\r\�V�㰾\��Y����\�\�\�\'ܗ��1�R\�c�8㏯ju1�sK�R~������h�~�h\0?*_\�4�����E��R\0�)E �*\0)zZm\�ޗ�R����n\�\�~�\��)��Z+�\�bzv�ӳM�!JQ�\nO\�\�\�T =��t\�����׽!E\'���\0-!<\�K۟�Z�\�ā#�~\�\�\0A5\�$\�8̗>���\0#�\�\\�|T�d�Ld�q�D8��U\�\�\�cj�\�\����s�+ܟ� �\�\�\�u[߷޼�p�(<�\�\���\�\�mN7ՒjZ\�έ022�\\�DU�\nm�J2\�\�r¢���9�\�$\���\0����՛m�\�\�)\�;\0q��R#\�=q۵J�,y\�-\�\�T�\�+�\����&a-!>�\�\�N�Ҟ\�\��,d�\�#��\�܃�T���\� �\0]XHG�L\�Z\�\�\�s�=kR\��e� H�\\�)E�%-[ \��\�1U&��\�9�=��K�\�<\�+\�5��^\�\�\ni�:n\�9��G]\�\�~\�r(\�\�T�z�E̓FO\�WM\�8�#����M\Z[2�w#\Z\0x��9��\�D%eOC\�\n�g\�T�s\�F\�=K��\'k�agrs<@�OV\�:Wn�g��\�\�\'R�M\�#�N$��q\�w�+\�t=V=V\�;�\��b��oc\���]Q�\�N�@\�O�P(��\n\0\\��Q�E�)X��\0:N���\0)J(i��ju!�0��x�tb��E-�ɤ�=\�\'Z_Z\�ɸn���\��\0���\�,?�z=;\�z�����T~���f�֎���JL�\�\�ڣs�Fp1\�\r	,ʈX�TI\���\0\n\�\�o~\��W\�pN�\�����\�\�˷1\�7L\�<��{c�+\��O�\�4�i\�y\nH�&9\�ާ\�q\��0݋�na��U{��Al4�s\�\���##�۩4M+\\H\�9˱\�&���a�vǥc�:�$s��?�Hd.Dk�\�U\�@\��Ǡ�h�E�n8���&��H�\�\��T�3\�n��\�M�L�\�hA^k�~�G�XD�d��O䔍p0;\n\�\�,\�\�f��3�O\��Z\�NƑ�\�b\��\�ƹ;��\�[V:�\�\�\�ҥ�����@©\���\��p8\���i�\�uF6(\�jS�i�ك\�8\�	\�Z�Z\�q\�1\�;\�\�p8\�\�\�\ZZ\�䯴\�z�q\\\���L�{u�E��\�8�\�\\��fc\�q�s�z\n\�S��H՛�\��\�=kE�1\"��\�\���FD\�1\�1��v\�}�3p\�d\�+�s�a%�\�\'9R;�}��u\��=׍�\�\�\�\�r\�\�?��qİO9ԶWMe\�dmm\��\�EJѕ��\"?C\�0\�ڥ汴;��\�\�um\��\�k�\���V�oF;�\��\��\n\0_\�J)=h�\�)=}=��E-\'�\0���q�zRzүz?�!�G�4���\0���QF(�3�M\�)\�W]\� ���sG�\�\�A<P\r��4g�4\�=}{SB���!`�����	\�\�\�n~r�;�\�H23\� \�$��\�N�mc$\�f ���>�\�\�槽��:�.x�-^�K\�yp�&V\�8\�_�iIب�������\�5\�m���\�A\�nO{�}\�~k�\�o�\�nL���0p}��\rsQk��rDQ�F��\n\�y9\�N{\�\r\�\�Q�\�Ϲ���\0�t�,I�\�*;�r��:�ހ$�s��50&Bs\�&�G\��1ޯ\�<�,zu�\�H,;��\�x\�In\�q�A\�ު<�\�n�\r:21\�`x�����<�3��9a\�v�\0\�\���7ʶH���̜cq�\0\�gh�s^]_�\�\��\�~�֢* U�=+�n����.���1@�\'��Y���wN�\�{�Z+\'�c\\g=��#V��#b9\'�Z\�\�Cp�deq�n��\�\�&�5���n0A�����\�\�ֺ�^\�˙�n\�\\\�\�B2qڻ\�+����/H|\�v�\��\���0t;��\�z�\�m֭R� \�\�\'�\�\0�\ZoBQ\�u/6\�\�U\�\�>�\��FWּE�m;R�D;Q�\�}�\��d\�\�\�\��r\n\�^ߘ\�~\�\�%\�\�����r=�\�\�h@R\�R��h\�I\�G���\08��/�T���ҏÊ\�@\�\�!���\r��(�_\�\�A�\�֌u�u؎0���Ĥ\�\�=�)�\�\��8�\�g=O�\�L!�\�y$\���\�\��\�z\�\�\�~\"Q��\�<~^�\�Rƕ\�:�ь|\�Jp3��}�\�>�޸o\�\ndh`��\�\�rs����S�Z\�\�\�M�H�\��\�A�\0}\�=�#�\Z\�A,�h;A\�<\��C���2�~�Ι\�:\�\'\�\�Ƌq�eG=:ԣBs\'�n�\�j�O>��4��|\�>�\�\njs�sځ-c%��<��z/\\w�a�g\�ri���$\�f��\���l\�\�\�\0\�\�z��\�=~�OH��T�I8�!�B{�=\�\�\�\���\�2\�$b^�?_\�YI\�֚:6\�mm��>�O�^\�\0\�!�\0;\�Sc5������/�\'\�5.�\�~���h�3a�\�\�:\�\�)�\�HX��=N+>V��@S�\�P�9\�T&�\r�\'\r(\��\�\�s8`=MK�!{D\�u{O62\�`�W�ǲC�\�\'5\�7�[B\���\�Ce\�q\�# ִdӳ3����j\�O.a\�\�\Z��\�0\�\�UM�GL*\�\�\n+�8��\�\�er\�\��(\�\�+\�|�!\�>eFǨ��\�^um\"\�(\�#��?\�}�SM\�(\�i>\�\�Kb�z�Et�f����f�\nO=���o�\�Z\�\�a\�q���\���(���\�E����\�G�\�\�ޓ���\0\"�\��j)x��]?���g��v#����ۥ!4\�b���#�)�\0皍�K��s\�LCw�h\�\��\0\�\\\��\�=7c\��\���{#J|�\�Ǯ�x\�\\\�+X\��\0�p{��\�+9\�i��N�u\�\�2�;Pm\0�\���Y\�\"\�\0~\�\0{�)\�|\�[���\�R\�\Zt\n0q\\\�\�u%b��\����*I�\�\0Q��&�� ��Ue�\�r!\�T�G֯YǒI\�c9����\�_AW�*��\�2}��e=\�zg�6C\�>N����G$�}\�\�\�\��\�bG� %P`�\���~�-�4��a/�;h\�#\�2��\�\�隵�q\��\0\��k\nK.\�P\�q\�8�\0\�S��䱞$\�\�;�+7$\�\"��\�+�e\�\�RC��\�kx�-p	\��8��\�餄n98���ݺ\Zž��#�\�P\�\\,HX��\��J�	����������15o\�!)m�Mǜ\�?%\���\n��3\�t2EUY�w\�Q����:gj�dC�}Y�oዛ�\ZG�\��\��e\0���?���\��&[ߵ\\IncM\�TJG�\�s�N&\"&��I�a\�$s�����=N���Oj\�\�;�\�.H\�A\�g\�i�G�#lt?Z\�\�]\�Z���7��d\�=0)��?�H���a/2Nsڳ\��\0\�?�wGX\�㒳�<G.p3�\��\0\�VOφ^\n���o\�v\�\�b)	�\�\�\�HR�6�o-�nْ?�\��1�G\�]�2e�x_�5&�\�$�n8\�3�E{N�p�@s�#�\�	\�BZ\�ig��1:g��?�\�%\nM��HR\�Q��\�QE!�����ƃ�=h�T?\n)8��X\�=��4��\�3G�v��=z\�\�g�JL\�%�PJ\�2I錓S\�\rX��m�y�Px\�\�\n\\�1��%\�p��\�}>��\0\Z\�<Q7\�\r�T��ߩ\��\�\��\�|�0�Q\�?Ƹ_�\0�e\�\�p�eSczkS�;�\�rǀ;\�.\�;I\��\�&&x\0w\�Une�$\'�z\�9\�G,�s\�Ҡ��s�J�$zf��Z�˷��$��և8�Uz����\���\r��m�\�RF\��\�Am/\�ȖO�f獵KH�Q�a�\�\�R\�\�f\�0���z�\r��e.^{�Q\�(\�fk�m��\��9\�q�����b�\�8��˕8,y\���\�R\�\�3ɱ��\0X�.s�휞=jZ�i�@;J�C�g�;Զ\�\�7\�\�ާxd�C.ء$��g���UK��\0I>�<�ޥ�\�\�\�\�?�=r*-i z�\�3L����Z�fXW\�a%fo�\�K\Z\��\�<�Z\�\�ԑ��Xة1��3\�s�j&\�6@1\�TY+�c^�G�\ZB�rV8\�K�\Z�;������\�<���{1wm�\�%�ԟh,sA�\�~�պ�r��2Z�ӣ������uV\�3T�\�\�\�nn]\�\�F\�GC��\0\Z\�\�ڑ\�@\�qS���P��\�[P����\�\�ka\�Kb�R7�\���5\�\�\�0|pO\"�\�\�f2㎪x\�\��:\�\"\�s�\�+\�⪬\�rƮ�F\0�*$ܟ2�\�5-�\�l\�?�ኋѺ\�u�,\�˒��:\�=��\�\�\�\�V\�\�5݀Å<c�\�\�S^1�ː8\��#�u�\�\�\�%\�LR��\�9�T��\�\�҇�w�6WK4!�@a��\�\�W�9�i\�\�a��i\��ҏր�֗Қ)\�\0\�;RR\�a�4*(�aE\'\�R��T�����<={\�~�R�Ӱ��\�k\�$\n��9Ҭ}O�\�:\�%��\�6�ʹƋ��ָO\�,\�\"66\�\0,9\���\�j\�5{�b02\�w�~��\�^u\�`\\\�\�\�sB����\�~\��氨t\�Z\�¸��\�p*��\�ߟZ{�y\�P��\0\�V:�#8��\0*����\0\�E�Ő�	\�RB\ZY2@\�U{d�*͑��c�\�Q`:\�V�s\�1Z\��\0sP\�\�\�kn\�?�z\�\�\��:)�\nb\�F2�H\�5*[7\�g<U\�g\'�Ha��I��^%�~��qϞ�5�s�1\�Vt�<u\�\�\�\�Ν��d�̍s\�#��`\"�r9�\�\� �jʡ\�\r�\�k�Nq��=\�\�@$��>\�5�\�|�J�6g�ʖ0O�*וӸ���ƭ�A|S��:T�\�\�QK\�ߵa\"�s� �d��>��=�\�䍷2�Z�\��i7���\��L�)�\���\0�*\�\�\�rb�K\'�\\�\�Yd?\�x\�Q�\�H\�s\�O\'\�Qe\�X�q�\�+�\�\"ٖ#��+gN	-�pU��\�\�>�����\�ZzhȒ<\�1?\���S=�#�\�^	\�\�[e�C��q�\0\��\0\Z\�P�\��+\�<=3Et3\�\�X�\�\�A�\�\�-d�!�ɢ���TV\��ө��\0\"�Z�1õ(���\�p���i8���a�\��h��Ú)֊\0\��G���ֻ�y\�M\'�\�\�\�\�7\�� �\'��f~v\'!\�j7�\�(y\�.��QCd�d/R�\�^�\0��.\�&0B�(\0��\�\�\�\�p�$\'\�	\'�\��\�H��\�\�[��\���\�Mhb�_S\�L\�N�`�2Oҙ\�=�J\�Џct\�jx\�����\�מM]��$�\n:\�N\�\�!@�5-�Tu�\�\��d\'�\��7!y\�=L˅\�0+��^ҹ�Pѣz�\�5\�C&@��Z�\�ꧪ.��\�I#�\'\�#N�⳥��\'$�\'�;\�|\���z�\������n�\�\'5fh\���rG��=*Ӻ3kSb\� ��;�JՋ/�:ͱ� 9f�=\�q&G8\�>��ѼvX\\��Gb++͖�\Z���$�\�C�\�񚄃#�n�rk%�C�\�y\�\��W��W�Md\�OL�\Z�.$�|?�\r]ť΄=��ҳ��\�9�\�\�Q�\�R(\��)̀����s\\�g�v }�\�O\�\��-m�|�Ùwy\�k���\�V���\�\�Ǵ�\0]��\�o\�]�x��8q\�\�/�\�2Hɩ�v�%^\�ҡ#�<{�|G\�r+s�y���=;�`\�\��\�T�z\��8\��\�#��lZ\�\�t?jN�e*{v\r�?�zm�`�6�\�\�=3\���k\��\�\�SU=CA\�W�Ň��\�w�\0?�j�{��4GOj_J�\���T����̇Ӆ6�\�}iç�6�R\��G\�E\0.3E\'4P3��t���\�]\�����\�\�ڗ�SI>\�\�M\0��=9\�}9�gzR�q׌�⣑\�!,pS\�OQ_�\�i�sƌ<��7L�ߗ?�pWd^��A\�\�\�x#ɍF$a\��?\�j�\��\�\�\���J�S��\�9H�I\�R��\�h����\"\0�\�x�q\r�Ǳc����@\�g9�$�_O\�T��*`�4c\���%֚q\�N�\�=u�m��P\��ꭦ$v�<\�\�7�X\�\�$��\0?ֻ�|�\�zc�sV�S����[�Vw\nx\���9ǥZ1)�8�u��۴.\�2�\��\nz�6i�C\�\�Q\�\n�A�ְ�繺3 ��\�\�\�\0n_�\�\�I1�)a�v\�z�=\�wM�%5{6>8��X\�\�	\�*\�qL\��\���5^\�I\�&�Mܤ�\0y\�Z�~\�/\�߸D��\�$\�8���R-�\0IP=��=\�Q��A��ѳ�YI$�\�($*�o_ơ\�t �\�X��{����T*wcu ��SjֈB�\�X��sU�Է���\�zb��![��ktQ(@}z\�͝�\�\�$�M9�AwW�d\�8�ь\0\r=#\��\�\�	\�\�l\�3���.n����>�\�\'\�\�\�\�[/�~�I�k��\�\�It���[\�\�V�\��\0\�q�W9�#\��\�/\�^�5\��:���lsn�\�:jv�\�I�Gͷ�E*&�L\Z�	\�9=AW-O�:���q�z��\�n3��\�;T3H�%�٪\�\�\�n>�\n�m4\�8ױ\���\0�+έ�5w�\�r����\0\\W�i\\B[�a����L\�P0GANq۵ \�)}}+s\�ju0S\��<Tb�)\0�)�����)?\Z(\�R����ġ$�]\�p\�A��:�9\ZNz\�5&:z�\�h!9\�H��Z\�\�<�$3�I\����֫��\\�\�u\����Ide\'\0�=��\�r�.�9\�\�\�ej\"��J\�s0\�\���W\�u\�W�-;\�Hr/��ҫ\�\�\�+�N\�lU�P����\�\�J{�\��ӽIB\'\�\'�Z�?>\�TC�sO蹦��\�\�O�T=��^*h�\�\�	=\�1�\�\�a��v����\�7 J�ָ͙\'�\�\�YK��^�\���u�\�\\�\0��\Z�ǙY��o\'�B~`?:�x�t$=ꖙ�Gul�F\�z�J�+\�,:\�+�G��<\�1�-��\���]F�╉\�\�\��(\�\�On\�X\�$�О�\"Z�#��\�N\�\�\�n\�\�t\�sOx\�d�Q�\���V~#\��lܠ��� w==�t�\�\�xܹ��c��]�ه@8\�֕\�)PK��|ce�Q�n%H\�<\�+�[�Iѧ|�����<t��|�\��\�\0��v�1[�\0\�FϠ��eR\�ʌ�l\��\�pO�f/�S\�A�)\�8$\�<�ެc2\0�\�c��T]3L�Bx���S�Ѹ�bFv *��{W�x�WmORQϒ�\�=}\�҇<�\�O�i���,R?\r�V-\�6Ӵ�ps��J�ƨ\�$d�H�?�-��iq�-\�*���\���\�� ���P�y\"$(9\�=��Gc�q\"\�W�~5(�L\�\"O�\��t>��H�N����{Jl}	\�\0�\0,�c$T2��囙�ܫ��\���+\�4y3j�あ+\���\�9�y\�\��\�\�^\Z��D\r\�aܬy\�>��\��\�L7	\�u �\0�KޠC\�}�D9\�n\�V\�(�S���G֐�y�\�t�\�ǃ�\�\�\�K@��\�\�sT�W\�m\�|�	��\0<U\�zUmFݮ���~�7/l�\�gۥv��nG�י\���� ��S�G~���],\��s�	R�X(ѾA\��^�\�\�mj-Կ�n\�\0W��\��\�:���\"b;v�x�\�կ����M\�}�l<d\�\�^\\�}�i$s����1�{V5e\�֌z�1�@\�>P8N\�\����wR\�@��0*�|�ްGI	\�@*9:~8�N\0$�P�<�4�H\�I\�j~\�\�\�߷j�\�\�\�h@In\�I���:yr0\�:�*!\�#�LNF{��\0��Bח?,8Xݰ�$��\�?\�\�V\�\�\�\�1\"����\��\�\��=j�R\��X]��O�}+��\�_h]\�X\�X\�ZXW\�ʁ�{��q>\�;�^��&xw�\�\\�\�Y\�	)9��?C����5���!ו�\�YM#XJ\��N}��\�=��W��f�\�U�J��}I\�\�2}j\�aq�ϥC%����\�p01\�H\�\�h?�t�\0(9\�%N}*a �u\�X̵�G5ā:zӦ�XP�p\0\�x�cR\�d�&8N�o_�gk�ʺ��n���b\"_�ÿ��.�3%\�\�\�\�]\�*�NH\0d�\�&\�\�\�$t�Z좒Z��\�Bx\��X�\�\�M<�;O�h\�p${�*\�v<e�_˧\�ۥD\�:f�rT���{ҧoZg&3�x�#��\�8�R,�\�v�\�\�\0g\�^�=�\�5$_|`\��Tַ�J�k�Ìq\�޽@�(m�(1��+\�l%\\��`��\��\0Z�-UHϓ1R��#�ן\��T\�I�;\�E9=����1^A.z�\�2qV��@?0�I��\rK\"��G�t=\��\0\�&1iE\'�\�f�L\�-\0?�)����9�Zi~��\�\�O<�Tg�Wm�U��\�g��B\�\�2\�?\�C\�\��\�[x�\�\�0�*$��G;XV�\�A�\�:\�=�xr�iDHN:��J�]l\\Z�\��5Xf�\�o*�\�6�9l\�\��\�*b1\r\�0\�\��������$���\�\�\\\�\�\�]��dc�\\\�m�N�$�����w���zP㓞���O_ґM\�$��v���\�ށ\����\���9��qߵ\�Zp\�\�l\�`c\�9 {U�\�\�UT\�\�WcC\�8�0Aֆ��]\�7�\�ѓs)B�+\�O�#�\�Ty��\�Sd\�;j=M\r7\�\�9#$�\��\�\rr�D�\�J��&��z�Lu���	�\���v�H��K;��s�֪ʜgb��\�6\�\�\�\Z\�\�:$.���c\�Eys�b:ds�¦Ҟ.8\�Vm�D\�/sQ\�_G%�\0v=\�%���`=\�<Y�\0\�]�<��Y�\�ķ����r\�\�UDc\�ڮK��\�ګ\�I\�ڻ�*�\�Q,絻��#\�\�÷�\��V\r\�\��\�,SZb6�t�\�Ă\�\��װ�\0a\�\�\�]=49���^\���\�����\'�\���֟n?w����=z\�\��\0\�L	r0�I�✞�r1M��8��H\�q\�\�ց�d@\�qҖ�}q\�@N\����J�^0jJ-\�/�A\�	\�Z\�\�C\nc\�Ԍ?Z\�O�A\�03[\Zd|61\�?ʡ\�K]\�\�+ۙ�͵v�I�aׯ<�\�ӯ:\�#��<Î�Z\�\r*%IC�A?�\��V��^l!\���N�J#&\�i#��q$a�\�\\1VGj�\�\�\�c\�W�~H\���u�\�\�\�׹�\�?JL\���\�;\�Ҋm.zP�E%�\�\�Dxq�Դ\���k��\�<�\�b�\�J��4��?\�ۯ\�V�|!\'�3�\�K�d}�\�;K\��g�*d싌n\�\�sUk���Rpߠ\��Z\�\�\��>��\'u!G,�\���>��p\�9\�Gz\�n\�\�tU�ZC��c�E�ϵ<�s\�\�O��$\�\�ԟS\�;{��`��8�D:��4\�\��\�D J�g\�V\"p�����#�Ҍ�>٧�Ɏ	\�N\�\�\�n8���j�0>�v�c����\0\�\0Wm\�OCҸ�Q^\�3\�]��%\0#\'k:��\�t��\�Q�{�\�Vb �i�\'\�\�\\�6��a<z�\Z�\�ʨ\�\�<\�\����H�*������?�I�9����\�\�3D\�rI�\�\�\�%g�;h�S�G�\0<V��\0�\�=+\"��d�\�b\\(=��#�4��d&\�a��0p\0��Y<��;�H�����|\��W5��\�;�9\�:q[\�՘\�ة��=)\��\�>�\�D��\�Q\�px�V\�8\�_q����\0�\�ڜFGZA�GC\�Hb�\�����[88#�E?\�a��a��\�\0Y��<�VΙs�:�\�\��<5^�F���`�EK]�:\�\�ʣ �?L��\��\�Μ\�\�yV\'\0\�\�r6w\�c �s\�z�\0�\�[�,�@�\���~=\���\����\\pm#\���\Z\�c<�ڲ\�!�\0q\�:��g=�\�5�2e�p����s\���S\�2)?�-4RQE�s]�\�$g�J\\\�W�y�n�(��>��\0�^{�\\y��T\�*\�\��>�?\n\�<Q;GfJ.X)\�\��>�@\'�x� ���<�\�.�UԆ[�ݒ�d��\�<�1\�\�U��#^�a�j�\�\��c5\�tlU�\�A���\��\�$\���\�\�@������ҘG\�L@is��ޜ�G\�4\0o9Ʀ��\�dw����U<o�\�<�ӚM��\'J�#\�8����ѓ�u\�E\�s�\���\r*C$\�\�c�\�\�8q��\�\n\��_�d�0��M�mOsr\�\�(�\�BÿҦ#zz�ֹ�jCnG>�����@(x\�\�V���?�\r�\�\�Ҡ���QHn3\��\�f\�H�tr\����(�\0�P.&��|\�\0��I�0\�\�\�V�x�\�n��L<\\/B����?�Z\�X�\���\�7}\�\�OE8��S\�ݘg߭s\�\�}ԧ�Zڑ�� �to~�\�NOc�3O��\0R}G?J�H��#��[�cb$܎\�iGς���\�\�5t/Q�\�{�\�H\�p9����V�����\�7G#\\�\�d?^�;S.��`z�=\�I��*\�r\0�\'<��$��\�zNI����ЯcoM\�\�鑁[7�a�\�#`�^���?J\�\"������5f\�\�7�qߦ+\'n�O�\�h���L��h9\��g�+V\�\�\�E3,\�$�	?�k�\�<A\0�Xu�D�b2\�g�\��\0�]��d�BZ��IV@FG\�z~}*�d�t5|��~d��=A%���\0B*\�R�p�j�3Km �\�c��\0??��5#x\�j�,���S(\�T!٢�(�\�FOҚ_\0��\��=1��\�\�8��\��g\\\�\� ����0�G���\�~�\�=9�\0\"�:�\�E\�\0$��ǿ\�W���\�+��\�9�<g���窵:\�\�c\�7�\��H��\0==)|�պ\�5����loq�>8\�\�*794\��b�Oӵ7��������g��\�L�(}�	����8�?B*Xʁ���9\�O�)�v\���jܱp;�*��\�@q�*\�Xi&������z|v\�\���op(*Ř�\\\�3 �z\�q�\�4\\l�`\�8\�\�\�ޱ�\�9m�g��\0��>\�+�\�cX\��\�8�\0?Z£\�kM\Z�0֕7q�T�G��*Fs�\��g\�(\�zU��\�N���H�\Z]�\�?��;\�\�\��T�8�MM�\�\�C\�ppB\�X\�A�5\0�\0C�9�\0W/\�I\��\�~g��Xӆ&d=R5C��\0�\�\�\�.\�a�GN�\�\r��\�~\��ݟֹ���\�브�&�o$��g\�\"����\�\�*L�\�K+���e{R7��c�q�\��\"�#.pk@��A9<�\�Fk\�s\�\�i����e|\00Cw#�\�WR|��\�qK-�\�\�\�F*.�\�IG<�g�{�6ٳ\�/\"�=�D�ׁ��\�Fy#�#�T]Ȕlg��\�\�ۏ\��{���r3\�V\�V�L�Jȇ�\�M3`�=E\�\�4\�P�;\�`�f9C���;\Z\�7\��ˁ\�t\�]�@���<`~F��VB1�A\�;Rq\�	�=\�ƚ-��\�F	 �ޮ\�\��\�\�i\��L�x�=𯋣;m5\�p�\�\��z�P0W ��=\���%t=��z\��*�gzt��\�=*�!٢���X`\�R��\�\�<�Nk\�\Z�\�\�R1p$`B�\�[ӭw7evpE]\�\�\��x�GyV3�(\�;\���^��Ҹe2�y>�9\�>��[�\�!F\��Pu\�J䔮vB6D�1�\�Q�\��T\�\�2z��Vg\�\�>�%�|�b��=\�\\S\�8,y=��1�~<�@c\0���\�?J$@\�\�M��\�\�(b�\0�\�J$\��)�G�\�:Дe$8\�Sҡ��z�\�J|`c\�\�j��$ \�\�\'�!\�V^d���#�颷�8B�@A8\0g��Eӥ��m����\0Z\�\ZsI\�\�f\0�\����6ͣ#z\�O\�<�<�g\�{u<�z�um�H��ā��ĚrG�6x���<{�V��1�FN���i$=`v��:O��F*t�ԕbQ\����\0��1L.GN��%t$1/8\�p\0ϥ!��J��`��5ZX�nP�EK\�\�bI��\0����{\�U�K���\�\�?�\�U\�#�+\�ɿ�\�t#�k��O��\�\�j\�\�-�C\��\\\�\��\�� V�fSFI�������\� ?�6ֲ&O\�\�=\rm\��a{y���\�\�\�Z�-v�\�i���G\�D\���GP�w\���O���\�2/B\�#қ/�\�.W#5�\�t=\nڝ\�\�UnX\��e	7�\"����0�r:隭k.\�\��y\�[\�Y��\�rh���z\�	8�A\�hCԡ\�c�z�u\�-�3�+Df\�Rfٞ��V z`\0ey\���\�;��S��cpx<sO=I\�j\�\�*O��y\�l\�\�{k��7�q2\�\���\�R\���\���?<\�dt\�\�M�H \�ڞ��\�\0�\�*A\�ۭs^\��\0��A\�sq	&Ns\�~��F�@z\�\�D�{QMP)q(�2O%Fq\�^i\�;��t���R/p:�\�]��oZd\�Aa�IǷ\�\����j\�n&�(\�DP�Q��\0\��WEYt9\�ǩ�F�\�\�H���P�<n�\��\�\0��`t�8=�}j�Üv�%���\�ң��OQ\�\�s��JT\�aH9\'�x\�\0C)\�Gn�c\��T����z��`ǼP0j0��*[f�\�#��H�$t0\�,���\�\n�{��cʌ;UK$S1bq�����,\�\�[s`ZL�\�\�4\�|�;q\�\��\�_$���9&����h\�S���`�֦#\�%��\�\\�:#�� �c\�\�q�5b\���r\��A\�$s��?�\�֢H�8��=\�\�Fx?6	\�:Ϧ\0�4�ˡ\�#&�Ls\�P��\0\�Ԣ�\�>}�j3j���b�\Z\\�b���<\� U��釡�bngF�H7�8 �\��\0\�V�\�r\��\'��\09�j7O�1\�r�M/(%C�\�\�?�\�j\Z(�xvB\�\�b��\�n�r\��\�\���k��ur�z�\��\�y��]I	�\�`\�W	j\�\r\�d|\�\�f��<;�\�s�*�\�oL�\�5k@���e�洟\�D>#t\�}�\��g\'<\�\����T����\�\�\'��Eu\"��d\Z\�|[~%x\�^~f��\0=YRM���`J\�\�\�NK明2;\�ց&F\\�����Ԏ[����s�Zl\�9V\���9�bq�\"�|\�s�1�}h��Bq銇=*�%{\�\"��\�3M \�g�\�R#�<�Q�ڐc۵0/M\Z�Q\�;[\�C�=��y�G��\\t�5�O=)\�|?\�?�|C\Z;\�\���\��׵\r��\�s_7\�\�\��	\"}\�!��k\�-2\�o4�f\�Px�f�\�����EX�9����G{��\�18U\��\�\\L���x\�\�nx�e�-\�$Br��=?��>�\�s\�ڴ��\"\Z\"D\r!�a\�\"rFq�UP�\�8�S�\�z�T�#�\�\�w�\�ӏ\�\��\�L2p~��\0�\�z\�ɀS�����\�\�$Cϱ\�#�i\�ʞ�\��\�{�@!ع\�Ry\��8\�t��*\��z\���){\�v\�mi��\�{\��\�+\r>�\0\�\�t~?h��<�_j�l\\w:٭��?�a�a\�\�\�Rڝ\��p\�{�d\�\�ʺ�E\�H6�?��`l�Y��\�1\�\�W?w$1\�p��G\'����7��\�O\�<�Ɇ\�AVV� �qϸ��Gj�\�n�h*\0 g\�Ϲ\�ǯ�`Q�\�8)@�\� \�?\�i�֓�\��\0&�\��8�Y?\�\���TB��)��S\�\�\Z����\�\�9�\�\�\"ݽ\�\���N\�=;r?:�yx\��s�p~+IѼ��He\��SǶsTe|$�\��)#��(�\0gÎ�T�7!�r{S5(���pG>�Z\�_�j�㑜\�\�]l\�\�U��\�\�I�\�UN�y�\�\�\\\��?.䱭k\�3,P�B�\�>���\��ִ\�dc96\�;{q\�\'\�IN}j\��ߎ�n\�\�G\�@\�G��<\�\�#ę㩩`�\"<H:�;\�y$\"�\�|��\�\���\�\�x�\�8�x�t\��\0�8�=3ޙ\�\�U��G!C\�3Ҧ|0\�y�Jr1\�\n���\�#\��k\��\rx.tpĕNy\�8��\0�\�\�p��\�/|�\�|\r\�E\�u%����Y\�R\��מǁR\�PL���\0SEH�#\�\�(�p��U\����\�M9̎H�c�\0UYc�\�\'��d�y��\�J��\0:\n�$W�!ߚ�\r5\�)\�\�\��\�a�Jr�x�>4�\�\�f\�_\�8ǭO��W�\0z�>Բl��Fѻ#!�2{Uy\�\090A\�\�=)�Î2:�(���t�?\�L}h\�\0P��ҪH�\�l�b��0=sD\�l@\�86Q���\�]�\�d\�g�xO ��z���q�\"���\�\n\�i�\�_ڤ����\�}}��/#&1\�?��f��\�z\�iW#q>CH���>�\�X�m�\�`\�\�0#�Ea8�\�m	!��~)�\�\��T\�Y�\�SBu\�Y�\��\���\�H\099㿯�\�Ȳ�\0��� ����0#?���\'o*NFx\�\����S�+r\�\�\�A�\08��~����`\'�4\��\�ң�\n����V�\�\�U\0b\�b3�Go��\�q\�R\�&7x\���\�#\�c�}�.��~R?!e<��?*ΐ4Ӏ�\0u>��\�\�`Ns\�Y��m�8f�\��\0\\Ҏ�ƚ$cjEe�r�*w�\0���\�\�C�\�\�/�o�#�G\\z~5R97�\�zꂲ8\�\�\�R\�F��\��C�\�B=�\�Ҷ���N��T������үB<�N=\�c\�隹p\� \�\�J�8�D\�I\�0*���\�<Շ;-Tt$�U�7q�zf�S����{�\�N\����\�ӿw�Il�?��BZQ\�֏��CK��H�\���hߟך�v\�\��&�x$�H���\�\�w|����5v8��\��\'�Ȟ\Z�K\�\�*\�>b�;{~C�i�!,\�z��@���\�f���\� \�4�c����\�y\�\�t�p\�\��5\�d,@�ϩ\�S\�\0�4[�8\�\�\Z.�$zh\�h2\����;���\�g�\�Nr�\n\�9�\�\�\�~�8��?_\\\�\�pN2�\�*��\��\�q�hC\�NO\�=\0\�V��sS!�\�Ϧ(D=�N�M�䜃��s�c�����D\�1\�S��^d>�ʦw�ӵC\��{\�@<��=�s@��k��{ry��\���{R\��P\���\�f�����	Ќ�?��JS�8\�V�w�ɾ\�B�T�ֻ�#\�VW\�兼�\�}\��?\�X:}Q�jw:,MDm�|\�)\�r\�9�#�N���\��<n���)\�?J{��;H#nOn�Q\�z��j9K\�[��\�ӑJ;ԎӶ*3�3�\�gfh���8���\�\�z\�̫�\�V\�Q��O\�N�O@[�i(ɇ:D3\��U$�\��\�\\b\�A�Cd~М�Ʊ\"\�m\�[�\�w�03 \�8\\�\�\�X�.�\�<�TEq�Mh����7�Z4ri po��W-�\�\�l�Q�z\�|�\�rwe�V<\�G�\�$��\�kZt\�g*�\�?\�\�ܟ^�-�\�qU}z�.��Z\�\�䷣��� b���՛���\��\�aB(�?�j�\0����G\�\�v�d�\'o^\�C\�;�ZPR��\��~A�\��Ni�I=sN8\��=\�u�tЄ\�Jq�i�R\�n!@�sϨ�\�J$\02x\�v\Z\'��K��\�wH\�\0��{�tȭ`�ר\\��F�/\�\�\�\�w+�\��#�Mw�\0��?ҸjUR��:U>X]�@m�(\�?\�Z+�\�<�\�~���\�,q��*\�S[\�l\�$R�=x��ۯS̲�OFR+Ϯl��B�&Nx#�Vս\�eE�-NN\�F�<�4���pz\�\�\�\�̑�259\�B\�uZ����-�\��\�ǯQ\�4@>�\�D��@(�\�2[6\�x\��]V\�8\�0އ\�_�T\�\�4f�\���\�U7�s��ޙ�\�d\�9\�\�+,@?�>N$<c�\n.\�\��˓�\�Fz\�\0��d\�c�\�9�g��\����M/\�h��X��O8�֓�\�j\��\�\�\�A3����\�(Ձ\�A�\�\�\�X�S�\0\�\�#\�\"�9m�JAqʨ0v�#�b��T�$\�߭ہ\�8\�ӊu�\�G\�s@ld�Ԃ\0��\�Lc[�lc\�jl��\�u;��\�\\J\�V&�Y\�\�\�S\�G���\�Z��t\��(\�����4�@Z�\�\�J�5\�d�c#��\0\�<�3\�U�\�G>�gQ�[�\�=\�;cW9*��@�\�L�E�� ���FC�ʎ\��\0\�U�\n\�I�dg�\�U\�c?�x�@2���x*rG�o�l~�\���ޘ�+�W�H䎵@�}�ZV�d��^0s�~�J\�-�{J�2?CHh\�\�s\�;�\�)\�I�g\�\�\Z|c~GC\�=\�1�냜\�\�\�zvd�ҙ��\�ހt��)^zӐ1 �N\0\�\���u��\�\���\�\�ޯ\���C\�\��\�xs\��V۽A~~�\�{{��q�\�=+�_\�\�\�F\��~��O\�\�\�\�\�Y�\�\"��6�O�?\�W-f�ki�\�O\����C\�\�\�e\�6r1\\110H\�N�\����\�z�5�!\�m�\�36\�\�3\�؃\\��,�\�u�#�+���zU]n\�\�Z{`|\�2\0\�\\Q�L\�q�8ǲ�8Ġe�\�\�U\�\��N��K	���\�\�\�\�nqVn4���IU�c[���/c	�;\�$р\�^GqW��߱\�6K����TDȃ�\�j��n\�C\�t=\�z~t \�+�v�E�]|�=�Q܏���\�Y8��_\��p{Ѐ�R��\�Q�j�(�\�õ7<R��t\���t�\0U\�W\0��&��o4\\f��|�\Z�2ɷ\�\'d�]�+���s\�Tz��iڝũ\�#o���e\�T\�=�\�=G5K�ַ5!��\�RR\ZhǑs��8��x\�W�\0=��bz֞���e{|c\'d~Lm��}�	\��f���kWU\�eae�\Z0g�J�C����f�>�^���ԣ����z\0Tv��\�A�Mך1\"�GF\��\�n!@<zcҁ�j�\�Ҟ?Z==h{Na�A\�$dSr�2*3\��\0h�*�\�	\�\�\\�\�=@�\�\�C\�\�\�\'��\��\�h!��\'\� ���;S\�H�\�n��\�\\[J\0����|\�\�~�\�m?��H=3\�>�=��\�yi��?�k\��Z\�x2H\�3\�\03Y\�j&Ц\�bE�\�)\�c\�A\�t�\�`�\�\�D�O\�^\�\�\��V݅���a �Tc��Z��@\���J�\�\�T\�(\�Ƈc\�`�	\�ڞq\�\�)���\�\�\�\�����\�\�\�2\�\����gp;��\�]~��f��|:��a�zX\�ފ3Ez\'�*\�\�\�\�J\���\Z(��;#7\�\��\�}*k����\�E�\��\�m�\0!\'�\0���5t7\�z\�\�h��:�-�\�c�b�*�\�������D�\���*�U��\0՟�P���֊*��\�\�(�Aޔt��\0^߅\'�\�E��c�\0\"���\0]c�tQ@�E�\�[^.�\0���S�\0@Z(�1N=MP� \�h����O\�Q@\�\����\0�*\��\0\�I�\0\�Ҋ*z�V\�����\�E@)�ފ(`tz?�����E�QEq\�;�\Z����\�Z(�N�P\��)�\�h��H�r��v�g��Ҋ+�\r�͈طEWq\��\�','2025-02-27 04:33:36','female'),('80ba0d30-e019-11ef-a1d1-005056c00001','80b844be-e019-11ef-a1d1-005056c00001','Mihret','Edini','nurse','medical','mahider@gmail.com','0900130082','Part-time','2024-12-31',0,2000.00,'night','650e8400-e29b-41d4-a716-446655440003','Addis Ababa','0900130082',_binary '�\��\�\0JFIF\0\0\0\0\0\0\0�\�\0.Exif\0\0MM\0*\0\0\0\0@\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0�\�\0C\0\n	\n		\n$ &%# #\"(-90(*6+\"#2D26;=@@@&0FKE>J9?@=�\�\0C\r=)#)==================================================��\0\�\�\"\0�\�\0\0\0\0\0\0\0\0\0\0\0	\n�\�\0�\0\0\0}\0!1AQa\"q2���#B��R\��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�����������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\������������\�\0\0\0\0\0\0\0\0	\n�\�\0�\0\0w\0!1AQaq\"2�B����	#3R�br\�\n$4\�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz������������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����������\�\0\0\0?\0\�$ѓ\�\��\��\�@�\"�St\�H	��\�EH\n	�ɤ\�@.M.M6�\0vM.M%-\04�4����FM&8�\�@M4b��M5\�t\��\�0\�\�\�;ɷ��`�g\0�����d�^ԆQ\��S\��|\�z��I� �ƣ��\�\�.	 Е\��.}��\�ה\�G<b��v?©I~rQ#�\�(6K��1r��I=i\�~�ץc��\�.䁜m^*�\�E\ZC~\�\�\�ܞs�*�\02�4�r\��A#���G�[c��2\�\��rC>=��\�>\�S]Λ\�$�\�֗\�9\��V,:�\���\�*Йߔ*�8\�Y�X�#Aܞ�V\��\� �@@8ɝ�\0�{�8���\�? ���L��\0�4\�}\r+PO\�bv�\�\0ɣ&�m�L�m:��i&�M�bd\�f�E\04h�S��2i(�ɦ\�\�\�Lɣ&��\02hɤ���a&�i��\"$Ӳi1֝L\�i){\�h���@$u(�ӵH)\0�)>�\nZ@%-P\�\�\np4\0�pi\�x\�A$�X\��R@\�I\�5\�}*�ڋr}�\�o�|�_��i6C�F��\\�\��f�\�ss����9oT\�1R\�\�\�Ct�}Mj�\�t�|�#r�\�)�r�0\��a.QqP=EI�6\�R}\��{C�{�;�\��-\�\�	\'\�?Z�u&(C�{�˚�\0󜞔\�J\�R\\ﱫ5\�Hr��4ԗ?Ł޲E\�?N�\�\�\�8=l��l\��@\'��QJK�@{\n����M)�\�rF1�M0%&I\0�(\�I\�*W��g�\�\�\�\�t��78-ϵ�P\�8z\Z�\r\�G�nb:z\�Y��C���	#\�ߑ��\�\�\�\�K�\��7�\�W!��\��9\�\�\\�I��b~��ᕣ#A�\�d觱�j>�`%`:�#ҧIA�Ǩ�^+�r�,8\��֭�\�\�\0c�������h����\r�\Z��c�1��|\�\�U���V*\�Ś&��\�@\"���:�)\0SqN�\�\ZZ)�\0P(�S\�(��\n(�\�ES(��\�\Za��i�\�:�S�)�\��QE!��PiE1%<S@��R�\��KH\0S邞(`-��@	�BBu�\'�Ͼ�\��!˞�v�J\�nķ�?7OJǹ�39\�[�x\�֝\�\�ܒ\�\�{UK�#�*���õm��m��R��`(����\�\0s��\0��\�\�Y���)�n3\�z1])Xɻ�������Xt^=MX�@\�\�U_\�g��H�\�3g��v$\�9�oL���4�pN=08�a\\�%`��\�P��\�tj\�0�\\\�\��\�bo0���\�r�+rqנ�\0A\�<\���#Ϩ\�j����☋�߅N0Aʌ��Q˞\�l\Z�s�3�x\��㌸\�ޜcT\'$~\'sF0<�}��ԅ\��}�9\�;\n\�q�ǘG�\\\�\r�9!����@�\n9>�Ur`�cE�q\�A\�\0�\�7��v�\�$\�\�9d$\��\�	\�8&sߥ\\�F�NW\����B�\0\�>���18\�ר�qOq�\�Ԇ��t9\�\�Q�?u�kH�^T�G�H��ʒ�\�\"��>Ʊ�sz;���\�чCWb�H2+D,��d\ZҊU0�}�\�XJ\�2F�(�a�8�\�\rMֲz\Z�Ӎ6�6�M\"��Q@�C���`\�u\0\�(���ZC@i��i��	N\�K\�\07��P1��KJ( �*1RT����p��QJ:P\���\�\�k�V4&�Wb^ܘ�`��\0�\��/\�HN	\���j	39g(\�sP\�t��rF\0�c\�6-\�\��#\0�\�Y2J\�HU~U\�Iy& ���9\�)�,q�nG����#\�1#T��I\�j��\r�#��IL�\�*	t�֮\�\�d�\�\�>\��\�P�\'�8�\�Y�\0\�t&�1\�ܞ\�5B+��4�g���\�3@\0s\��\�\0Z�� |Îrz\�\�\��Oj�d\"�K�\�\"�\�:�\�#�޵K\�g\�w�ǩ����q�jm�/9<�v��\�b9��(\�D9Q�9����\�@8��؀�\�-\�;R��zs\�\��b9��c�­ǷvJ�J\��F:\0��\�8)�I\�1\Z��9�\�\�ң�ܞO ���s!�\�pO�*x\�U;�f▣\�|�\���	%8\�j\�w�z{Ē���\�@\�\\\�?>��I���CL�نpp8�\�B�)\�^��\0�f�чcަwh\���\0Y���\'#�Y��Pp\�+ЌԴRe�,o�\0꧚��<�=9�Y\�G¶P�	�b�a\��k7�5\�\�xV\'w|\�Ž\�ʃ��u\�\�\��V�xn$��$q�w�\'N摝��4U;k�!�?�[��ţd\�-R\Z@\'jQF)EM�Sh\0��)�Si\�\�\0))i(\r6�i��)i)\�\�}\�\�EN��(\�RS�>��EZ(�d�\��\�\0���\��9?Z�q �OMb\�\\o�\�O=�Zq���\�\\��\��3\�Yg\'\�9$�=�\0�\��&W�*��\�\�zn��wq�\�lsɐ\�\�@\�N\�yZ@d\�Xm\�֬0grN1��z\nO*\"r\�\�^8\�^��\�\Z��=�\�`�\� \�$�@�V<Uv�-\�zhB\�p�z:b�\�t�\�\��+�z&;z\�|�\�3�S@�\\�=	�\�R�#vfԶQ�`㊿o8\�7Px\�&\�RW$�ޠg)\�)$��D\��=;\�\�l�\�mہ\�I��Y�x��\�[���(F�\\ n\�<T?c`N�\�ORJ\�!\�y2)\0�5`Y���7m`T�DW�{����8�HAԑɨM��\�=k���8�\�K���`OrW�H=�g\",� �g\0S~\��s����\�\0�ߝ$�c\n�\�\�S\�D�&rR[\�#9\�zӒͶy�&q�\�nM�\�\�\�\�\�Yl\�T9�\�I	��\��\0ĊP\�\����In\�\n\�\0:�$eS�r=\�jƌW(\n\�\�bi�Z��\��{�Y\�)��Ê�oz\�=(��\�(\�!�\�S�,�+\�N�;�wq�s�5_cBpG �\�1����\�aٻ\�A�x\�B\�KrU�Zb;!�w(\��\�q\��\�=�jM\r2\�2\�`\�\�zJ��>�>�sTP�<>7��\���j\�F�s�q�\'�;V͵\�Ȁ�W;�\�6\��UȥhH�;5s\���\�\�P[M\�\�*z\�j\�\�P�R\Z� \nm:�LAI�Z)\0Si\�\�`��PM4Ӎ%�\�7֝�\0gz)q\�\0\�p))\�\�h�R\�KH)ǁ\�@\r\'<Ƈ\"1K�U;ۀ� ?3t�������B�仕�c\�\\�|`pO{)�\�UA?{�?�v\�)#�R�\�\�đ��M9.�1S��W��9�\�\r�\�ޥ�DP�\�?l��+\�\r\�\�\�\�3\�&G`)	�\�P��I5n+U�;��e��1LnP�\�Z<��e�gnv��Φw\�̀	\�\�\�T䐡\��=I�K#�G`)\'9?��x9\�V\�j\�Qd��\�\�y�݆�ņ8\0�{V�Ve\�\�\�<*k+l�\�>կ\r��&��CxS�Z\�\�\'RO�h\�j��\�\�U��U\0\�㚴��r�\�޹\�+�*	\�\�@�\�-�2�\�L\n��\�?֚��\��*Ȣ�Sp:TR���ZA��۩\�Z�\"le�Lp0Gza�=w��9mx\�\0\�3֠H\�\���|\�q(Kl%\�?�S�\��\0\��\�Ќy�\�T2�O�\�.	�\�q�\��߭S�Jc�ۨ\�w�\� �5~\0�\�Td:h\�n4\�\�\�u\�g��Dr2һi��\�W�f_Y��f��K�ʝ�(\�t\0c�\�Wc�fL�\0֪\�ېH\�\�֛�P}+K\�ɫL[1$}:U\�E\��\\j�or�leO\\\�WQ�(Â?\�Z\"i�\�7~�֬\�qY\�7$g\�Ҵ\�\��s\�w�\�\�<o�9^�z;��\�5�#����X(y�\�֡����gpё��qֵ\�8\�\��W7\�\�z�[V2�S\�t�j����w/eN6���* ��z0���ysX\Z���ޗ\0�\�u6�\n(���\�E\0��N4�\0����ozZJZ\01N����\nx�OQK\�{\�*)$\�pJ�l2\�\�\�\�X��\�X\�\�\�zT\�W\n\\�~\�N��,�g\�9篭uR��\��床eԋoKfFڤr��,\�/\�Y72y�0�\����\�\�˖\��\�@ZL�\�\�\�Hϴ\0�Ƭ9P\08ڿ�\0Oo��Wj�3\�}�\�\�	\�7\Z�l\�l\�S\�R;�8{�\�)��]��fݸ�;\��\0�T\�=�\�j�s�y\\\�U\�SN���;ۜ�I�*\�\�ڴ�rz�J޵�c�\�޵\r��\�t\�v����=�\�&tӦ�CfF\0\'�\�i\�j���B�\�c\�S��ߏ�s�\�ҒC��F=\�T�ZTL���(O��\����gJ���a�W*��\��Ɯ3�ԥ?\�)S�9�j-�<U�Jc��\�JHI\��x@�\�_)Q�`�(�rE� f�y+�\�\�Z�__ʣ0\�\�i�\�[ێA\��S�؀q\���y!;�Ui###�bZ9�\�.	ߥdȏG�\"�ۈ\�\��#�\�Xw��%�r9\�t\�W9�C�����\0OQV_pboҩ>c|�5n\�U�ln��=+S�\�X��7CU��\��\�ZN<�\�\�2�\�\�Y\�G����\r8\� �cR\�!G����k)�\�+O>r\�JVp���GQ\�W,\�<��Vt2���<\��C1�p\�\�#�g(\�fu�\�$\��qY\Zuə\0\�\�\�޵\�ָ\�3x��lP(?ZN\��6�EHih�AM�Q@\�\ZJS�J`%-%;�\0ozZLsJ)\0KE-\0(\�<SE��\�O8\�T/e\�b�OS\�Vne� }\�Vԭ*s\�7_jڜnȔ�Cs*�ڤ^	��\�\0z\�\�\'�9�\�.�b��y\�]qVV9۾�+��\��/A֩��\�\�w\�=)�\�I<���nqӟ�Y$\�# -�-\�Q��u %V\"�Y\�\�<Ԑ�@9\�\0���\0���\��\�@9\�x,\�5#׾	�Dz�ׁڄK�\�\0w�\�B\����8\�R�y���El[E\�:�\�Q\�gQ�S��cn\�\��\�@����a\0�\0֫�1��r7vu\�X� u��V#\�֣���XAQr���\�dN:Ƙ1�5*`�)�b��\�\�F?ϭ<�\��PP�i\�	Ƿ\�h\�\��q�\��\�7��qJ�q���J~\�Ɛ�ց��\Z�\�NA\�Dh�\�Q:�w�$c8晎i�RD�\� �n�?w5^a���4A�>��b\�[+\��\��\�S�S�@�8��h�+��\�[\�5S�T�\�3[��� �wⱥ�)�溢\�I�2y\0�2:9\�IP�F^��%1�rv�=�\�|�9\0\�gɔ!\�\\�Zsc�~�^d�\�\�QB\�9\0>�\ZcZC\�\�&S�z\�:]���Ȩ\�d�\�z�Bs��EK�cu��\�:{\�Gm2\�\�ָ\�ؤ�gt��\���XT�TitH�ǯzw5d=O# \�G��V��\�(\�M�0��)�)�\�(���\�P0��4�X��\�N�ҊJQ@���@\�]\\\��\�TU݄݊�W*�x^�\�F�\��\�<Գ8�C\��<\�\�G�F@\�\�]��Fw$\0�F*��\"�qƸ,NZ�\�F0x�p\�#��8��Q�\0$�\�jI�\0PynO�$h@-\�L�\� \�jb\ny\�d��\�U\��#h�n	�\��\0\Zd#����\�Q\�&\�A\�ZA\�q��\�pK\�\�Z�r=MYy\0.s��\ZF��@\0̒r}����$`s\�O�g\�\�@\�\�\�kz\�.�~U\�R]�q\�Z�3�1\�Z�3ǿ�68�:X3t�F*tϰ\0S1�w�P�\0\�\�:��G�\09�Aǿ�LS�\��\�P�֏�4���w�9\�Zw��JQ�b�OƗ֙\"�C�Ԟ�Դ\0\�*:\�\�Q>z\�2#M8\�)\�4\�\��\�+�:w\�PK\�\�ެ\�\����\�@�N`�zU	��BkB@sU�N\rZ%�\�Q\�\r���\�M�GN\�K��\rd\�[�H�G��0�o��H\�Ã��\0�\��\�%\�\�z\�H\�\�=ns��鞠�z�\"\�$raʞ�)H�\0>��\r\�-�<q\���3a6̽GZω���\'�\�M�!Cר��!�u<A���0M\����nv;D{���O-����5-h3�\�o2�1\�\Z\�3\\���rC\����\�e�\�\\�#forl�>�iƛ\�N�M\�E\0Si\�\�LBRR\�P0���昆����ꑇ�/�\n	\�0	dFO�b\\܍\�\�U�J琠�\�\�I%\�-�ս8�fRdo \�ݹ>\�$n25X#I&{{T\�U0=5ӱ�\�{�7�c\�\��J6���=��\��\n:�5_�\0�c�T����\�F3�\0\�$���䚒YXF}[�L�}�\�\�&���FUN\�	^R� 0��\�M6L��AP�Q���z@H00{�h\�ֻ\�\'\�J\�&�M\�\�\�=��\�m\� ݂qڳ��4��卺��֏�`UXS�\\�������*ȷMX@}�(P �\�㠨�B�n�M\Z�N�G\�qR�;u�\r�O�i܊Q�x\�)\�W\">ǚ:u�\�w탭>P�3Ҕg�JP\'\�S�3M!23J)�(\�B�4\�?�\�!�\�p\�h�ȳ�\�\�\�_z�����a܌�栒<Շ\�2��\�\�Ȧ���\�\�Y֛�j��3\�4I�s �9k6T\��+vT���unA>��V�-\�\�!�\�r+\'�8=�\rt�\���ת�Xw�!ס�\�+��j̮\��\�\����\�@{㚃;�#�x\�V\�\�0�\�\�V\�\�g�CϽS$8�U4%�\�\�\�zO7\�0`0CR\�	O\�ޒD�!��\�\�6\���Ƌ\�ґ\"���\�ݬ�o \��3ǵs�t�֭��`�\�����pz�!\�0\�y�\�[92�U\�*\�q�fn�4\�N��C\nm:�@���\�b�ħ~t\�w\0�֝M\�N�1je�\�T�p\re_\�O\np��\�WvKv)\\\�dr3�U.	8�\0�\�\�2��f�F\�I\��Fk�(��kh�\�\��y�KÌ�9\�H\n�=�⠘�\�0*�P�4�<�\'��\�ul\�<\����LY\�{�\�UK\�;\�y��~�h�W.\\�{\n�n\�$\�*\�B�@:u�`\�\�c�X�\�M�Ĝ��94\�2@=\�2��#�\�\���\�H�l	`��]E�Ecڰt\�|\�xQ�\�Om���\�Q\�Dt\�VWe�\0\�V����\�\0V��\0=���,ƀR�$��s{_/���\�g��|C(����\�9��IA\�u��\�\��s\\\�\�\�}\�\0>�8��\0�\�\��\�\�Ó��j�d:�x��;W�\0	�XX\�#�*S\�\�(2\�\�?*���l�j���\"�EpT�\�\�\\t^(>ל�\��p*�:�F�L\�	<��\�)84R���\�\�\0�\�	\�U��I\0!�z\�s��Y1\�4�J�Ȝc�=\�\\(\'<�qQ\0��y\�<Qa&@S�\�փ\�jI0y3\�SI\0zRh��\��\�7���\'�A$��Y�\0�4�Gq�\�b�~�\�F�Z�\�\�\�\�=\0�k�E(�ZC\�\Z�\�u:\�#5^Lr+��\0��\\�#|\�p�g\��U17�\�W�d{Dj\�1Ue\�𨿶�.+2�\�E@uI J��t����Ԋh����\�|\�\�\�oJ苬� �ZʽM�g�Pљ\�S��\�sI�\�v���#�Uq��\�ҷ9\�(æ;\��ܧ\�Uh�ϸ5j41\��Xw�� g�~I7�構�8\�ED�d��\�I���\�U�Z9[��(A�=*\�r�n=	\�g%tR\�\�!�oI��\�8>��b��\\\���	\�c\�\\�V7�%�ӻSMdXQE4\�IJi)��������\0�S1\�:�Ȯd�\�>��X�\�I�\�q��\�\�#�k,�36>f��ַ��3�+\�H�`T�������2~�t�\"F�A��\�V�\��Q�\�M��wbK���\�>\�Vc\�S�⤖L�x\�r��	��&�\�o�S\�ʜz˗�$�O$�Ӹ��\�S\�\�A\�ʛ�?\�9\�\�[G��:\�ާ�q�F;\n�`F \�NgRA\�\�\�q@����ܟ|S�~]�h�\�֢[ͽ6<c\�\�nB\�ֳ������S�ۚ\�n\�ꎈ�\0gӓ���\�\�1A�猃�\�m��\�?�,I�\�Y�\�&�\n\�9\0�8�PKVK�z\"�{��߸*�֞t�E�erU�\�N\�m,�ʆp>�洑!La@�\�]���\�W\Zf��\0-�c�5\n[\�jC4@8\�t�W)�\�)���Zu���\�J߅R�K�y\�o��W�\�C$mބ�{Wu&�i��\��9\�T�\����\�=\���^͜�DHv�Fz0\�Wb�a�\\��\�\�?�Ʈ�\0a\���\�Q��&�\�0䁏�>t�A�_C�)21?/C�脦\'?\�\'#=�����c�ǂ+ty�N��\"�}j4���mrH\0�\�w�w\�:\�h��9#��\� �ےj�iY�H\�$z�\�<\�zb�\�\�z�4�C\�x\�Ce��\�Q\�3��\\޵�6ó\������\�\�2r8 w���{\�R�GL�5�ݙM���sx\�M�1\'9\'=*p����\'��\0\Z��\"I��\�SǢ9r\�\�NqZ�a\�\�1\�v?(S�\�jg\0�\�f�\�|<\�qZ6���@\�J=�+\�3�0\�_\00QԎi\�g����GZ�t\�m��\0�j\nI,\�#\��T�Q�y�WSÀۀ��Oz��\�\�\�\Z\�\�\�-\�B6�\�Ms��8�,��\�Z#$ɔ\\L�\�\�#\����2}*��\\���9�+Td\�C�w\�\0Y�]NEgE�\�֮��#\�p20�1\�(G\0�ޕ4�s�\���V�6�\�\�F*P\�2@\���\0{Ǆ3������G=3I���0\��G`G�x\rj\�8\�^W��n\�\�dC���n\�\�\�%I\�VŌ�)\�G�j�\�\�\�)\��\�R\�;6\nL\�\�M \nJZCL�\�K�\0?�#�ߵ3Q\�v\rǨ\�˸�����ϵf\�\'\03\�:\�\�\�]�l\�=E@�It��Y�\'޺\�a&On\Z�\�+��\0�ܒ{Џ�s�w��E#\�{v�ё�ӗ�@\�01N��\�.s\�j,g\�iҹ\'�I\\�6NA=����\�\�[��g�j\0�nv�*�� gH�\�h�z\�M\"c\�\�4\�4/<�z`��)a\'{�<���\\#c�zU�*\�{\�;��\� V΋\���TM\�\ZSWfͼx#\�T:�\�d[��\�>f�\��\Z=�l,L�\�%�\�ՂijΆ�\�����$\�=I#�t\�V$\0`b�G�\����MK�e\�	R@{�50�\�Y\�p�v��N��ڀ��ԗ���\�qJ\� \�\�\�\�b\�uq!��\�qt#\�\��U$\�\r�$��Z�\�ɬ{��G?�l�z�.\�A8u|v<f�F\�\�y)RQ�ˋQ.v�\�\���1ʯ\��t�\�\�L�\n�Eh\�H>��+$��\�!�m�����9��\�U\�\�\��\"�\�U\�\0qM2\Zd\'\0���.$\�+J�\�=+���!\�\r���ܼ\�s�MFLy\�\0U3s���ŗ�$�ZjM�i@$asV��I\�Cp��|sM�I�-B��\�q�V�\\\�\�2i\�1Y\�n\�q1�\�\\b���\�?�n\����\�%#M܌��;\�/*�y���\\\0\�p;�)WPG\��<Tٕ̺��,	#�S�\�\�f�3]\�\�)\�Bef�WS�Es�s���\�#�A\�5d&a\�\�aI��\�\�uE\�rVdq��<q��ұ>T\��n~��\� �֋�\�R�0qTJ,^B7Ƀ\�q��\�\�\�Ӄ��\�q&T�Y�j��0T\�\�\�5\�\r>\���W�N*KƧ�5,h��\��\��V̎3\�;`�� \�ӊذ�ͳT<\�\�&����E�2o�[�5f\���6\�V��r5fo�������4�\0�\�CK\�0!\�dߓU\�\��\�<����I\�\�d곔r?\Z\�\n\�M\�a\�#�\�\�K\Z�V\�҈\"\�\r\�d�\�S\�\�h\�3�]�9\��vp=NO�*�\�g�� nlqRM/��\��\'\�\0�\0��\�$BGs\� \�ӤQϵWp\�t\�1\�Ab]�S\�L��;��LcL��B	隵q��\�A#��q؇�r̴v\�0a�\�\"�gq׀I�m\�d�2d�Jl93\�Ut\'�ZS��;t\�b�^�\�Ğe\�{�]]�\�(�cWd���/E�@#ߚطE�銥g\�*䁄x�s�t��O�F�,HO�B.6d+3R��8\�\�BM�t�&�\�	gl\'e�C6��\r\���\�n59\�*�\�l\n�-\�n$eb$\��\�<���6��\�\�@�\0\�p꺾�.\��d�\�|\�\�x�t\���\�4\�2&<)n�ţ^\�dT�Ǝ�v3ϱ\�j�L[��\�\�po\�֝��\�\r<,�\�\�8�شK�F�\029��\��M�\�\�\�\�@1�ޥ�\\\\Б�W !�\�;U\�\�)9b}=+\�\�M#ۤ��r�qZ67SŴ\�\�5�VZ\��4LnpA�U�Y2�\'���$y{�V �b��N2Ed�F�sRߦ	���e۹�8���\�T!�V����J\�/\�\�\�Gt�s\\ޥ�WȖ\�`vy�\�p\�\�\0\r�n�N\��\�jj7�YA\�%�\�K�Ю�\�!\�;�\�x^\�Z�� �o�\�Us=\�K˲2pUM?V�\�Ο\�\�!�[.]q��Iu2��\�\0�E�\�\�vo���7��\�\�Hv�HS\�\�2\�b\�\�\�i\�H$*T4m�\�B*�Y\�FX�Oמ85��c\�r�kn�,��J��\�8c\��L�� ��n\�\�[�\�qX�F\�BSyA\�\"�\�\�W3GSז\0-�OF\�*\�|�Z\�a��2N=\rl\�^�`��\Z�ГQL��\�\�lr{�]\�e��ہX�\�JgҪ�5S)r*�d_=TdUǝ�|U�\�Z�X�ll#\�9�\�$�\�$\r����	\�?�x�|s/\0�\�B0\�Rd�˚�2Jj�N#9\�2@��\�a\�&4H��1\�=+GJ�\�ojʷ|����\�\�\�ό�\�g5�QgG1\\��nMj���2B����Zv��pO��rMu7�%��+\"ƚJSE0\�\�\Z^(	u�s����\0�<ֵ\��\�\��Y2\�\�ay5\�MYܙ\�GcM\��-�7�\�G95	v�M���T�����p\�g5Е�B\�O:�\�\r�\�h�}\�p8\'�S�\�d\�s��Ğ\�h�\��:~�0D7��\�W��dg\n}W�T�\�$c*{U��t`1��)=��\�2c\�j�y \�hJ�x$\�\"��\�Ǯ)\�\�\'�z\�?9\n�\��0�5%�8<t\�Pj.RQ\�\�{UԃN�\�\�Mu�\�\��\�\�\�\��u\�\�\�5�g�\�EhjZ��8�O#�\�>��p*\�\�\\�:�fKj\�<�ƩK�,��	>��A=��6\�ϵR�[	��9X��\�\�?*��\�e\�\��\�0>���{��\�o��\�F4\�yC\�(�t��\"!��\�9\0g4\�s���\�|\� )?AT�\�qEw�QF\��8\�Bm�\�\'<Ճq4�\�\�\�i�K?\�|aE\�R�H��c>���Q�UG�\�K�\'\�\\�\0�j\�X��\'5.I-\�\� �Z�؀��!��\0\�ޕ\"<T\\\�!aN\�<Հ05\0\�O\�#֐\�H�b�/\�\�\�m�&�/GSUD�\��\�LpA��^�\r2+���4}i�\� \����3K�q\�\�@���\�R�h\�U�q\�\�*\�\��jC�\�O�|�ͪlm�zcU	l��&n*\�2P�\�9�}��;r(\�b\�Fa\�W`�@ 񁊎m*2��ޕ��\0�sު��\'Y�������\�B�\�}1M�N`��\�a4�\"0�\�\�ūE��j��؏f�tb%�t,Mg\�\�F\����h��+�3\�)\�\�܉++�17\�V�G4d\\��sRzWC9ж�Fz�хǖ�z�T�\�d뛎��[�\�c�2(պ	-f�`�Z>��bo&?\�dTQ�rU8ǭc`w\�SFY$\�\���coܼ9�e\��c�~�E#��İ���г?;!��L�\�\�኿�\�\09\�0A\�\\�Z�o��\�M#�:�?\Zubh6�O�\�\r/􆖘��\�\�$|�\n��b1cӀ)F,}I^D;�\�8����e!�\�\�FFs�T�k\�,\�5��9�\�nM��\��0:V]�m,\�7;�I��s\'سh���d\���q=GJ��@\0\�U�����\�Q|\�ۊ�\�ǜ\��\� \�f\�\�p)���\��Z7@�d���\'�\�68\�F9�q\�P;\�g\��?JQch�nT �\�\�5[Rǒ1\�[�Ols1N��*��8\0�\�WԎ��3\�n�8\�\�0+�\�\�\�&��q\\՞�U��l2hF=ꅩ��\�`tƜ\n�ʢ!�qS℀����d\�\�])Q�J,{\�NIۊ�\�}�*\�0�\�\��?֪\��G\�\�\�==��\�)<��\�\�l \�v4��J�jI\0�<�Q:r3R4�\�n1\�S\0�\�	\�\�W�^�R�\rs�R $T	\�*\�\'\0恡$ֳo�5�zd\�;�\'4К0\�pF)�e�z�qFs��Ͻk�2\�h۠��S�����<c�iF2E\�Zԧ\��\'���z֗�ҏ(zb�3���e=T~T�n�8A�b���\�`�\�,�;pP�\0�A,`\�zt��\��^D\'�\�-u�MF.=y��a�\�M\�9��\�¢\�\�ob\"e\'���CR�(XuS\�T]	���\�F�ȆD��Ѹ�Q\�9\0�pj-��S�TոcIa-�s�LC�p��1P\�Z9�t=\�rIVGZm�\�G\�zr~l�G5+�����;\�xd(�\0u�3\�S$j\\\�\�b�h\�\�	p\���K�\�<2����k	6H�<\�\�\�&\�w\nwj樬ͣ���>w�\rAo\�*\��\�L}+�KST�M\�Ji�����B9���S�c*�ɐ�ڽ�fO.\�e\��*��Ƅ�\�zWdWS)>�m��[�2H^�\�\�$\'\0\�<�)����\'\'�8\�Z%P�y\�-\����X\�c\�sRH\�9츪\�n&D\�\�\��\�N\�\�68 ��E�\�+�\�i=�&�|\�c�EM2|��R[��\�1������\�p2*����GҴ�x�xێ*�\�K~�\��%�\�\�#}�+g���8\�f�߀��՛\�d�v3��\�Z�Ή�\��5\�\�W\'��f?Z\��\"��nu\�\�҄\0�_��T-�\�h\�+r\�G�C�j�Ѐ;\�@<�\0�\�\�5 \\�\�֤��*�+؇\�`T\�<\�^-�SN��+�)y=\�b�·�\"���W\�0[3�\�9<��\�FG5Ƣ@�ON�����.$\0�\�\�`W\�Y��W8Z�$�\��\�[�d9\�MN�e�ӀjtJ\0j�#\'�FGVD\�Z3��ZHȦ��d]D5���c�\�.�\�z�X�D<\�֑2���H��\Z׉�^\Z\�`y\�Mt�r�A�t�k�Qe���\��\�\�\�zV*\�lRS뎕)X.G\"\�<UI�\0�W$�Ҏ	�BfT��Q�B;֤\�\�?\n̸\�֑3�\�\�1�\�Ȭl\�Q�\�u 0x�\�sR=\�;SVd�FS=�5f\��#\�$Vy�O��\�H�9�d9Ąs����1\��p��\�i��Kc�\��\�|��f\"\�Fp9^j��of\�\�V���\�\�\�2ݻ\�BA\�2+��\�kb?\�\�sXhg\�\rl\�J\r��\�1XT]M ͛,�T\�51\�TV�Az\�Er=\�\�\�s\�=E \�N#\�v#�L��1���\�Z�u\�#<\�j\�ˀ\n3�k:\�\�\���^~�\�%ds7vE�B���Kv\�1M��\�d��\\d\�f�\"[%G/0~���h&\�$|�k4���<⭣�\09\�3�{Q\�H�\�i�A�s\�)�\�\��\�Q\�|\�\�>�&�C��\�*Y�/�^ZE&\��^��21\�j&\�-cN~P0*���\�@\'֥nSz�\'\0\�sSF�e��\�#\�⡷;\��Z�ho����Wgo��\\5�\�ж+��? ��+-N�CR#�<Yq�_���+���\ZF\�z`T��@5AR\��Mm;*��B�F\�j����\�ZE�9\'и�\0�AU&�\0��\�M�\�v\0q\�֨\�LO~j�]������sLH<\�3\\��Fj(�1\�\�\�k�\��jq�bǱ\�hT�\��O٧ �<\�m4��4�6Up0j#�E�\�\�P�j͟h�3\�pi(�\�\�FS�zV���2��\��Բ}\�\��U�{�К��!\�o_}�g\�q�V4ϳ�\�\�6{�T�.\0CT\�\�ZhU��c�Yφ5\�\�\\\��P�\���\\�f�-\�i\�9�v$ \�8�hWL犓Ns!vw8�\�i\�t��#�[�\�b=+\r$1�\�Zж�8\�R�-�?�C&r*Bx\�L$R`�ߡ�UY3�Vda\�z���BR�b�\�jL*μ\��L\�`\�\\!>\�˹S�S]6�p�\�\�\�\����lqT\�B>@}*\�cC��\0�\�\�S\�y)\��Q\�1���x�,9p\�9\�1O@\�2�r\�8�C�\�\�;w�d�\�\�=\�X�ą}A\���90-�Xc�J#\0;��C\'�|\�3銿�ɒT�cT.c;	�?�M�>\��\�Y\�WEGFu\�\�ǥ<qP\�?v�I\�R#�=�\�:S�i3��\�A\�R1Դ\�Z\0\�%+�*���t\�sV.d+�BiG g`f�r��\�\'\'\�\�j\�z�=�.\\�\�;��\n�V���9\n8�\0�aT�\0�}*+x\�\�8\\d�\�]\�$�\�RcD\�\�c�va\�\�W�\��8\�<V}�\���L`\�\�\�cG ���)3�Ҋ\�e&~���uO��8\�A\�ho���F\�Ջ�>K!*sInSw0f�OB95Pu#�9�4a\�/�\�g\�Hl\�\�\��/c~��\�v��\�\\w�&A�\�s]��\�\�#\�5�]R5��f�d\�c�jˈ\�\�&^+���3MF*@zU8䩄���\�H��@3U��Myj��,��\�\�\\c��\�\\�\�*�(\�O��<�Z�m\�k�\�\�pδ�� �\n\"�c@\0\�*_�&\�q��#�\�ڋ�\����\��z�:,�9�0qҒm\��%�\nޠt��E�E\�\�3+ز[Z\�\�9%�\��I\�\\�ta\�\���g\�Tnm\�L���*Ӿ\�o\�y��\�d\�گ�02\�x\n;\�3\�\�\"l�)�X���\"�\�׵=�2>\�uzwL\�T�Q\�*\�61B��?��\�1�~yc<\nm��F;7�\0N\��\��^\0\�NA�)\�\�7r�%}>9LDr@4\��E)��F�3dӋ\�\�\�ps�\�ա.q@\"Þ:�u^C\���8�`d��t{V�ϊ˺|�W9Z�\"6\'ҹ�n\\�ٮ�X B\�=kϗ9=�+�;U>\"t��Î3�u�	!oS��I\Z\�\�\"�\�\�zn\�TAa\�\�N\�\�uZ7\�8 �\�Iq �Bà\�TnA�\�CI���a\�Ȩ�>paߚ�ϙ=�qU\�\�s\�Ҁ/\�(0�\�\0*Kd\�t\�U�o�ڮ\�\r�\\dqQ-�GKd��j�PpG�i��O�_�hΈ\�E \�\�Sr���N�#���\�q\�AT�@\�V\�\0H��\�\�\�W��fU$g���Iԉ\�\Zrg9�� �m�~Q��BH9ϯ4�\�d\'��\�C/\�z�E\0X�c�z@I�?!�#��\�4H1��T�\�\�\�\�i��\� 8�R�y�6�\���m6bU\��E]�@��c\�R+��}�a\�AT�\��S�ddU�P0��9�\�}�>>d�h\���pPd`���H|\�Fx�jh�3�r	\�#�tz!�\0E\�\�u65�����\�SE\'5c#�\�\rs��\�<f�f��\�\�S\��L�\�y�&�4\�㚮������z�\�C�\�>y\�\�Z�F�\0�pE\Z,@(���\�C\�\��T��T\0җ��Ա�Oz8\�M\�\�\�q\�\�\Z�\0�0{�\�,}7\nnc?\�?:,\�ı�WM��\"09��Ll�����&��+<#�qU\�ߥ_\�<\�A\�j�T���BGqڬ\����zT;\�\\Ph`9�\�\�\�\'\�~\�\ni�1�v\'T:9y����G��\"\�\�\�hi�4\�!��\'�ƣ�}�?��i5�ɦ�\��J\��@\�A+\�k2\���x\�f\�\��UD\�L\����-�V-�E\��Enk�\�\�?�z��\'\�Q�М\�T68��\�#��\�S�A\�O9\�\�\�\�ysM�\�\'n\�\�,͹q\�\�\�b#OLp})��y\��Fj1 \��J`��c(\�\�M�;�����\�;~x\�%F~\�	\�x5n\�\�*3�Z�Ԏ{構��\�T\�h\�����\�+AjͰ?tz�i\�*\�\��\�SM��\�EfX�\�CK\�14�O\\qYw��Zѐ3�=�>^d8�k\�G,�\��\�ҤD\��(�9��F1噰Q\�\�5d�d;2?�p(���\�}1\�{\�\�~v!sנ���\0xTt\�}\�\�3�{����\�\�\�&�C�A\����ԋD�I�,N\Z�\�rOp\�5ˁv��\�\�Q\�&	=\�BY1\�\�PEtБ��jf\�_J�q!��9��69$o��\�y\�uZ+\�\�k�\�R;�\n\��	��\�\�TZ\ZRz�4C\�\�x�\\\�v�*\�N1\\�N��h�e5\\��ƮD42�/\�ă\�M�@��j\�j8�\�\'`~�\\c%>X4Đ�\�\�N�\�A=`^\��[�Q\�\�*��\�n\�G���|\�?:�6�dH5\�Ks{p	P�4[\�\�Lx\�	\�kU�\�\�ՙ��}���>�^\"S�%9=��H�9(���<zb��U\�*�\�>�*N\���\0�T�h��0\�0z�Vf���²�]�x4iЭ{�\�V<n#��mz����Qҳ�G�=[ۥG-�\�O�8\�9��%��.\�ܘ����8\�幐�KV\�\�󘘜\�67\\�(��Kh���+��\�\�i%���/cy���ɨƛ<�\�\�(\�N\�^iS�\�R�T�\'?Z�s�\�#\�ҟjʸ����\�V-\�ښ�3wf�_o\�<��.w��~t]�N\�#�J�\\D��p\�C�b.\�\��rkF\��p$`�ڳlA�կ[!\'�Y=\n�����\�\��tǏ\0֕�;-���U&�Lѣ*\�Mf����xx#֩���\�ZD\�G7��=\�\�\�I\�5�\�		\'>��n�	a\�WZ�N)=Mw�`���>�\�<�\�wUieá\�\�8���\�2\�\�\n}�U\� ��M\�9\�O\Z!\'�\0�\� �\0	ȩ#rG=)��\�Gl�H:�Τe\�\�\��\n��>�R،��\"�D3j\�A��H\�\�9\n}jS�m!�Ҷ#\�A\�\\sћ\�`4vP:Ve;�N\�,�J��^��/`�\"�����\003Y\��S\�\Z�Q\�ɑ0T	\�Vn�c�@26~��c �L�K,�C\Z�����\�O~\��\�?���\0|�s���y9\�LC\�#a�50�#��\ns�\�֤\�\�\�J���\r�#<�j�\�z\�\�?c$t\0z\�w6�\���]�A\�\�\�\�B[��\Z�Lo��H����	\�\n\�	`N\�9��LrG�=k^���h�M\�R~V�J\�qvg�Y\�\n�\�N�Ұ�d\�sֶ\"z\�\��!\�}\r>\��\n�\����B*JLԈ��\�68q�4\�g\�yG��\�I��*L�\\\�\�\�\�\�\��GZ\�y_J�4WXpzU�ْсe\n\�ON0\�_u�\��j`�)Q�����kk�$}\�\�Z\��o�guQ\Z\�b�t�9\�sE��2n4\�m�9�\�\�;V�I\r�eQ�\��\�RG\"\\[S�7\\�\�Va F\�b���^ٻ7\�˲�7NH\��\�\�im�\�\�Z6Acy\0\0d\�^$of\�\�SW\�n��\�SӴ�x�	\�\�)���!����kb\�j�;b��{b�\�2u�\�s�U�_Hd\�\�T��P�O�~��`�kj�F�\rm�ӑG\"����nW\�qv�M{#*��3\Z�}b\�\�ƨ2�q���\�Hfq��\�>\�\�9�ou2�\n\���\�\�=���\Z��C��\�_���<�A�lJX\�+�\�\�Yk��r@�-n�X\�\�8PHQ�f��\��gk#2�\�l�a!�\rS1+�\�:b�\�\��į\�\��$E��\������6�Z�\�R兾\�\0t\'�mE�D#���؎�f�\��ՋՍh:Lǥc\�?ZԺ}�\�?s).Ni$6\�7�j�ϲڭ�\��5�&�{\�\�]d\�KZ��\�{\�rp�Z�P�̺lt\\������8��&\�\�\�\�$�_��z`8�\�L\��&�\�z�GQڑ	\���=}zS\���\�v�(>C\�8\�$C;�J;�S\��\0\�Ԍ�\��r)\�\�9�H���B=I�V[�\�\Z҅�\����qQ-�������\�\�NA\�eidc\�f�#��\�=[7��^Ԃ�\�\Z���\�34��\�\��j��\�\�*\�\�J\��\�B~�z(\�d\�IȤw\�\�\�q���T�\�\�\�3L��#�4s�T\� }j2\0\��P���?��w\�)\�\�wTI�\�bpi�\�*CM��d�j7r����}hx\�@\��\0��|�SQ�9\�8��>�\�H\�9�Dd����\� a\�jBH88�_��0�\�i7^d1�<]��\�p>���\�Ȯ\�\�`@�Z��;iJ\�\�C�)v�U\��VC\�5z<Tjչ�R �\�2:�!Nr:i\�	\�}(C�\�hA\"����Ǽ�I�h\�%�q[�\�\�;�Z\�,I\�c�\�n5{d%ԿeU�\�\�ַ��\Z���7�\�*���\0\��\�2\"��j7�RW��r]����\�\�<P��\�&�����]�\�{}*\�\�\�͡���\�\�TUF�q�t�OBs��\�\��\�BTHJB�=hI�8\�?yX߳�f�4)0#��5l떄�m$��\�*^m�\�WԌT^��Z&\�`qT/g\�\�u�;�X�	\�m�\�8���0���\�N+ϓ\�WDB��3Q\\�b�\'2�\�\�W%Ӈs�>0\�#3BnV2�\�7F���x\�\�\�o�w�L�䞊+9�-+Ǿi\�<\�G��d��\\��5m\�T\��u,\�\�����X���\��O6�:\�rt��U�\�8\\���$�\0j��#XRKY@B8�b\�\�\0\�:\�@\�\�\�-�`\�49\�\�\�̀\��|yc�\�\�F��\�֤�\�PI��\\`y\�+ܹ�Z�\��\n�\�1\�ե�-\�d��k�\�.Dp9\�jغ�\0�J\�5ۿ1\�@�ɭ�������Iw$�9�z�:\ZU \�\�9!\�G^(\�\�?��T\�G�X�a�\n�>��qV�\�r{T��	==���m���\ne\�\'֬B	��ZCC�NH>��`<\�\�z`\�^ ��\�\�0\��zQ=��\�ݘ1\�\�v&�!��##�;\�8N\�_v\��5u?Ձ\�\\�f� �\r�Q���\�\�I�\�\0pn#,�0�\�TI\�:\�ɓ�Ǌ�\'<v\�z\'!r�SV\��\��5Q\�#\�5\�\�?/q�C\�pON2*R{V���\�Ѳ哟��\0\�U�G�c\�ΐ\�F{~\"���>���8#8?�6NGxS!r@\�\0�N�rq�>�IL�ӣ\��ځ\\k��H�P9\�\��&��	9\��S \�ppi�j\�\�ʜ�q\�*�<�\�R\�\�9\�5�A\'\�\�D��ӵ�\�E\�k�\��\�\n\�\0\�jh�\�o0��\�O\�#tkNvv=\�|⯤�\�\�\�n�!� �\�\\�X싹~9�\��SE!9\�C-3Q��?�W�)�L�S\�AQ4c��\�\�D%Ni��\�S���ؓ\��\��XN��,+ >��5�\��;\�kc\"N1W!�!�vB}8\�UD18���9 x�p>��V\�Si�U\�o{z�\�\�v#9���$xȒߜu�=��H9\�j���\�\��\�\��S�B�j�#�Y�L�I5+��W<p*Cn�ݞ3A�@K\��9�\�\�4��{\�\�,Ğ�5��:թ%L���\�.@R-^\�\�\�Y\�|g\�U�d|��N!�?�=#\��\�\�RV&��dq��`㊊$\�I�����}M�(m�Z[남y\�IlDV\�=�+U�\��k;]�{#>iZY\��)!\�Qd�5\�\�D<��b�7ԡ�ެQ6Oj\�&�\�3;w5X�7m\��]VG,\�v->:g�H�4\�z��\�:�}8��������@\�֑Dְ�#�zu��ߥ\\��R\�r\�\�\�\�O�&cr��`#����~�lթ2^��d�!�(=��\�w\�\�\�%	��Hb1Z�:�k)����*����\���(	\�s�p$q\\\�Sd]�E7\�L\�i�SI �{\�\�0z\�y�\�\�\Zv�����\�֌��{*�U�\�\��NfU~@\��V��e�\��\�TD�z��cxT9\�i�	!h���\�\�L�4d��/zS\�A�Pr��җ�\��\0�2G�!��$f6�!\�\�U٣[��\�^x\�*��\�`�i�X\�ʾA\��ړ\r\�ԟrS�����#�Z`O�\�=~t\\[`9S׎�D8)�r�ҭ\�.��u\0�Խ�\�\�\�\�q\�*}i�g`<{�ZD+�)<q�TO\0w/A�M14f�v\�\�\�\��y��눌x8\�	\� =�U\�Ks�\�o\Z\"��\0:\�\�\�\�b��_��8��]:�\�B\rsM_TuA\�Fu�I�\��\�\\	�5;�\�Ұh\�3V\�L�g���\�X�R\�\�lF��+r��\�\�SG\�Ve\�_fh��8\�\r#�z\�\�H��T��,!��UѢ&��;\�O=\rZe)�V7��u\�w\�{\���\�\�9\�TbocUq�\�oz\�<�z\��=3S���\\~t\�\�\�u�Ҹ{E\�\���g4�g.~lַ\�\��)� u\�\�1�\�\0��>sޭ<t�;\�\�ݽD�t)�q\�J\�Ko�,jn;\�$`°/&2I���w�8�|̹bi\�&M$��szƥ�S�<U\�J�E$�\�\�&i\�.}x�\��\�.���I\'���+C!у��@\0QI\n3���\�RcB\�\0\�%�	�qڤ�1�=B\�SE\'4\�R؏\�<\n͐�O\�V�sў���\�\�-�I��H�\�~�3�A\�P/\���\���d�R�؞Mm��ƽ�e\�(H\�\�\�j\�\�V8��5���g֔\�(C�J\�>�6!x\�]JM0�T�\��7o֞\�)��;1]����z\�m\�C���\�ya�9+�=\�-6\�\�\�p6(\�I���X�-\�`�\�==+@��T\\��E\\�\�C��I\���SH\�\�c�\�Jg]\�Gv1\�P9�\\�\"�\�T�y w5I$#{t$\�b\�VG\�\�Z[蕈tlg\�L�\0�;�N�õ�y\��ST��}84�=\���J�^Ɵ\0)\��\0�\�Gאj\�2\�\�p�ǭFb\�~��\�=;\�\�65RE�r3���O0\�J��O=\�w\�y��YyI@q�x=h��{��\�d��\�\�{VQ��$\� �ּ3��t=\�\��\��zRN\�0��E��#����H�t����`h���ȭ��<�Ec\'fotKazx\�\�H�\�\\�\Z\�m����kf\����j��D\�5b�˔\n۷�zk�,nE^��\�Mf\�i��;x��\�Q��\�O�s�t�,��JiN8>3�hhLv+�g�)6�뚷�zQ\�g��14g�g<sM\�\��o\�ޘm�\�]�\�2\Z�F}jي��\�+�\�GC��\�n1Q�9�qr��:M�\0\'�M&\r2b\0\�S�X�)\�q\Zg�)\�To\�&\�\���QW3n\�k��\�Fj�\�\"4<㊎i�bsXڕ\���OZ\�19\�\"��Ѹ�����QEk��w\nt`�\�&�\�F�\�CI�!\��\��ˮz�C�\0d\�\�`{\nE�tW<2��	w\�\�d\�?�:c�l\�\�\�\0X�s�\�\\�\�\�qK+�@OZ��Ҁ��\��jq\�\��\0*|C|�\�\�N��\�9�\0b�\����O\�\�T\\�`\�%�t?\�&*��i�3\Z�A\"]f\�2��\�\n�I4�����\'3f�ͨipi�4/h\�݌~g\��li�N\�G\'k\�28\�ڮ}��q���c���Ey\�;\�m\�gh�[\��\'�(=\�\�q�{v\\�\���\��zɚ\�\\H�\���R%�J\��I\�$ \�ǧ5�.}:\nPr�z�b,�I\�#�\�>���P�W�Q�~�H\�\����\�f�\�\�܏j��z�?Z�|㎴i��=\�q\�T\�#h� �x#��.\��\�\�T��:\�ql%\�!�/�\�Ztr\��Npi	�#�\�Q\��S;�\'\�?NإK��9\�B~\��\�I#=\�X.nXL$u���f�G\���?N��\�A\�<\�af\�@\��\�5��\'tI-�\�VC\�Y\�\�k&\�\�\�\��ˋU�M�t\�}+4\�j\�Ķ�\��jh\�1K�x5�C\�ɲA�\�}j�R+�3O@W:k+�\�9\�ZH\�ӭr�M�zz\���\�|sY�cD\�i�O\0Ul�5b\'�����H����9\�H\�<\�Z@\����<m��%1�z\���ή\�ܬ\��Z��x�A�rjZ-2���T2\n�\�MT�g>\�ey;b�\�&O\�V�\�g\� j\�3��\�$}9�z�\�̐��\�U\�J�\"�X2͜\��V\�圯��LNqXs1i��֣�\�\\\�\�\�[#��ri�>4$U\�S�\�N*\�*t}�y\�RcB\�Ap��}j,\�B\�\���\'�!;�^	\�$@D1�\�ȨH �\�S\��\0FE=T�M>��\0\��\�=�<�R�	�g�\0rT֣}ʌ\�&���E�;�`��#�� Prs������Xui�\�dzֵ��� \Z\�-���9t��.�㷶*B��j̖��\\P0j@&\�x�\�ӶS�=i\�.`��iP�Kɜ��!c�\�c�\�R̩\�ztù\�2\�V|�\��8\�TI\�x\�\�Ԯ\�L�QT�\�\�H\�C��4�X\�\�Ҩ� �\������=E9\�\�?yG\�M��|qH�\��E<e:to\�=9��\\��\�#�`�\r\0k\� {)bo\�`\�S\�l{i#n2x5J\��|\�4\�ipQs�m�ڐ\�wV�L�f��2I\�Mk\�HO͎A\�}\�!��!��ʘ9\�=\�HP�?\Zo\�\�lS���A���\�C��\�%�\����N�\�u�k*�֛��C8\�~\�c`\��\�[b�\ZЏ`�\�gR*Mj�!��\��V<�Ka&Lg���\�\��5���U� �Н��*)�T\0�\�U�[Ʒ�+;\ZϹӥ�r�e�9ǥ\\,\�k��\�\�z2v;[Օ0H�i.\�s\\u�\�ڿ\'r��շm~��!�\�֥�ŧ\�衸WjW�Ea\�r�\�<\Z�\�*z6i&\�N\�\�{�q\�����玔�\�3�\�]�Ⱥf\'���W�z�U\�FNi�OʫHT\�5\�\�j�\�\����+�c.��q�ƽ�X�$\�ҋ�ESw#=�s���p��bs\�}ۛ��BĞMW\�<\�5 CZ\\\�\�X\�k*S�\�5�(\�aX��\�����\�J�1\�GR!�\�Q\�\��s\�y\�j s�N$�[�1�\�\�:�\n���!4\�r\�?���1��\�` ԙ\� wiGL\��0Fi�\�@\r#��=1L�OҘ�\�϶bFz\Z{\�$~| \�\�\�U@#�i\�kgC˹ک2Z �\�d�\�z�ю\�e���0\�zw[\�\�*��[g\�1\�MI�5sc>��k>\��>\�\�V�G5�e}̜{A�T��rj\�1&v\���ک�Ԟ���\�q�G�B\�\\)���\�\��сVI?\Z�p)@\��R8\�\0�M\0\0�A\�|��f�}Μ���8 \�\��\�j\'\'�;c#�G�}i�0\�uȠ	�\�B�*sL/�:7\"���ýB\\\�zP��&�\�9\�MgN�~jX��+��Ȣ@9\�;�\�\�{�k�\�=1QH73:S\����$\��0�|��4\�HL�u�>�8�m5�J��D\�\�T�gSjxt5�=kN����O�lEڹ%�\�\\\0\�\�*\'�a\�M?�<����\�e\�*�攓|Ʌ~��,l�\���⋊\�9��\�ؕuܾ�i\"��-{���H\�\��\\鑾J\r�\�V�-ũ�\����\�*@\���y-g�#n\��<\�rve>\�Z1]��\�\�(���s&\�\�p\��\�쾴\�fuB�z���~;�\�rF�oZc\�M\'W4�P�Ύ\�V�8\�?X���>B=k9��}MFERI\�bK+JI&�\�;\��ۓ�i܋\�5)\0U��\nd����n�!o�a\�\�\�\�.=�\Z��\�S\�^��\�?*eY�����\�g\��\�Q\��\�:B_���r(H\�f�1�K\'AB��$m�\�rq��3�b�\��8�1NFy��A\'�=�\�;S{\�#8\�_$���t�\��I\�Jd��9\�(;��	\�\'~;�3��\�!3�\�\�V\�9\�]�Ӣ���&�\0#c\�j\�\�ӓ�\�^Z��Č\�\rOgy�	\'^��{gё�=똺�kyQ�A��k\�+K��U;\�߻�5��U�\�r�B\�̪0J��\0xQEs��~ԉ�h�������(Q��\���}(���\0|ҏ��\�E\r\'�\�U�j(�Lzw�S�U�\�E&4Mm���Q\�����QH�\��V����}(���*�%�S���~\�W,�;#�z/�R\�\�E���A�]@q�E���i�J(�\"u\�*�®>\�����̫�\�:\�W�(��\�\�=)�\�*�,GT/ED�b?\�W#Q@�@�V\�EDL\�\�?՚ɢ�\�;�\�Y�;b�)��[�\�H:\Z(�?D�P;QE!�z\�\���\Z(�d\����)v���(�B?\����hL�z�ҟ/z(�BC�{\�]�|Ц\�x��b-��t\�X\Z���(��p�7�\�Ǐ-xj(�@�\�','2025-02-27 05:14:58','female'),('9d72994a-e00f-11ef-a1d1-005056c00001','9d6f7f00-e00f-11ef-a1d1-005056c00001','Muluken','Tilahun','doctor','administrative','muluken.inbox@gmail.com','0900130082','Part-time','2025-01-05',0,2000.00,'day',NULL,'Addis Ababa','0913313103',NULL,'2025-02-27 04:33:51','male'),('bc1e5a81-d7d6-11ef-9523-005056c00001','bc1deb04-d7d6-11ef-9523-005056c00001','Derartu','Haile','doctor','medical','123456@gmail.com','123456','Full-time','2025-01-02',0,2000.00,'day',NULL,'123456','123456',NULL,'2025-03-02 23:43:09','female'),('c8485251-f794-11ef-a0cb-005056c00001','c846cbc3-f794-11ef-a0cb-005056c00001','Abel','Mohammed','labTech','medical','abel.inbo@gmail.com','0963524145','Part-time','2025-03-02',0,20000.00,'day','650e8400-e29b-41d4-a716-446655440003','Nifas Silk Lafto','0900130082',NULL,'2025-03-02 23:43:17','male'),('cc44f676-e01b-11ef-a1d1-005056c00001','cc43f355-e01b-11ef-a1d1-005056c00001','Almaz','Hamza','nurse','medical','almza@gmail.com','0900130059','Part-time','2025-01-31',0,3000.00,'day','650e8400-e29b-41d4-a716-446655440002','Addis Ababa','0900130082',_binary '�\��\�\0JFIF\0\0\0\0\0\0\0�\�\0.Exif\0\0MM\0*\0\0\0\0@\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0�\�\0C\0\n	\n		\n$ &%# #\"(-90(*6+\"#2D26;=@@@&0FKE>J9?@=�\�\0C\r=)#)==================================================��\0�\�\"\0�\�\0\0\0\0\0\0\0\0\0\0\0	\n�\�\0�\0\0\0}\0!1AQa\"q2���#B��R\��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�����������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\������������\�\0\0\0\0\0\0\0\0	\n�\�\0�\0\0w\0!1AQaq\"2�B����	#3R�br\�\n$4\�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz������������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����������\�\0\0\0?\0[\�_T�}�\�r\\!2\�\�\�X����\�֎2Gӌһ\�cބ\�\�t=+:\�F�7��u\����SF�dr�������\�\rV�֬5[S\�#R���&��i(�%�,�܆N0\n\�f\�.nfi4\�\�1¾0G\�ޚ�\�fE�A/\�\n~�j4vL�ЃO��������F\�P�\\���Q#�\�;c\"���.�\0�8\"���\�ڜs�s\�\�@\\�}\�*@�\'\��\�\Z��\���D_=@\�\�\�$;\��\�G����_֎G ��Ss\�\���B��s\�Sz��O\�A�\�L\�pJAK�?�T��\�1ҞϞ=\���\�\�8\���$�\�\\Ҍ\��Ӷ�0\�\�)�)�<\�\0F����ӞEE\�3�\�ޛ,����0=�\0^�z\�\\{��\��J��Xz\�R���p1\�\�L	�vO�#�Q\�2rzg�\�vҿ##�\�=(o\��\�1I��\'�^i�\�֔+`��.*�#�kKN\�Z\�\�]\�z�H\\\��6�y\�ޣ�C�8�5q�b��|��\�\�\�C7@\�*\�\��\�\�L�r1�T���`Q�֒A{� |\�xzS�0\0\0/=i�lq\�=��\�#�~z\�\�y#<I5)��\�F;Up3�zS����w\0\�\0�ޜ$\�?�Ԡu\�<\�Z~rT\�9 q�΀�$�\�\�\��\��E\�\�,9$\�eO?(\��K�t,3\�\nh�6G/\�o�`\Z�\�u\�֣8 a�n�#\�\�,	\�\r\0#\�\"	\�3�H��\�8\�[I3��\�\��d����\�8\�@X�Ќu4�!\0�\�8�F܌��\�C�`�\�#�{\�}2?Z�\�p�r\�\��\�\��\�\�ڀ�z@��-�O8\�j���\�\0�)\�#G���\���.h�?8ꦐ�+y�\�Ҥ�\��\�ңp��\�Go\�@�E\�\���\�\��\�@\�8\�U\0�=\�A�;cށܿ�����\0N*\�\�bkQ\�i�#�V8\0|\�)��\�R$�O\�z\ZCL|Ѯ�\�7\'���\�~.{]�WCldlW\0t�a.�>FG��\�\��U� \�\�I��a~Ǯ[jEH�����ִ~ؾߝy��\�\�[�L�Åns����Jf�\0�i�V=H��DF\�çc\\�Τ�\�F\�\�sR^\�\�,���\�Gzl�\�o3\�\�A\��$��Ti�nVK�7\�*oj%��?��D\�0P0F~��� ���a�g�2B�8i^m˸�\0���\�CO�\�W^�/�2��\�Fs�z\�Si�|��=Ekx�QL�F\�ƀ`\n\�}}�E�%�@��q���a#\�$}\�\�\��\�LW$}�9#\'����\��\�\�J\�\��(\���N�\0�h pi\�㯥&:w#�\0\'9\�y\�֑�\�J\�=:\�[$�F)�~]\�dZ<\�\'��+cp\�t��@Ƀ\�=3ޔ��\0�q\�OJ�\�y\�NO9��n<��\�\�@s���l\�2)\0m\�{\�y\�\�\�O\�*{.y\�9�\0\�}\�@n}H\�ґr8�(r0zq\�HD\'\0�O\�PNz~4�{�r(\�{f�\�c\�\ZNs\�~��9\�Ͻ;�;q��\�u����S�nB��ri�dc8��B�\�\�\�s\�֐��\0`����\�F1��\�%�\�\'�j\01�3ѻҒTq\��)ø\�\n��5�Nx�3��8�\�M�}	�(\�z�\0:sG�NF��O�\��;�M\�\�i\�\���D�\� \0\��̄\�\0\�I��߭!�:f�$\�OA\�\�,d�\�d*<�p����G#\�u�h�J\�($zS\�,�p3�\�Wz\��4�:~��)L�RA�\�i\�#.Z6\���\r$R\�c� ��\��\�V�\0+�\�@\�7%I�����\�\'��<�\�\�9�I�$��\�#�\0�@m�\�sH1�1�\�ҟ(}ŰW\'�)��\�~\�RJ\0�\�3�\�G�\0Z�\�+�\�b8\��E,\rNG ��Y\�q�$F�\�:�_�j��\�$�\�\�\��\0�Pr	ȫ�[6\��n#�\�7�\0^��}ޠs���0SЭDKs\�S\�ȑ3\�g���\0�kr#}��\��3��T�)�L�G��`\�H\�\�\�Nfy\�m\�\�)X\�\\�\�D	4d2�`zT\�\�\�8\�\�=��\�E��o9\�ջ4ImJ�\'�GJ�\�&�[��E��xV?��?\�~UJ\�\�\�H\�\�ѳ�j\�\��.z\�2\�^+ Hb\�X�U�[�28\��\�\�k6s�k�\'\\ӭ�<��M���Z\�\�\�>\ZF\'=I\�Sʁ6t]GdݶK$�/j�q\�[\�`�\�V4=:~xⲣ&\�b:(4\�ur\�b�U\0\�<\�\�99$\�}#�\�H�1�\�D:�A@��Rs\�\�4�\��i�9\��/=3L�D#�����9����zv����\0}\�\�ڂ���n�ds\�~Ɲ��2�Q=i\0񍅎2O8�a��H\�\�ޙ��qO\�\�8\�\Zb\��?Ji9���\�����ׁNw\�\0pAI\�\0rMM@��V=\0<�\��1�>���\0\�9\�Q$��\0F,$�������\0=*.O�\�Sc$����͙\'o^\�\�g`n��4��}\�{S\��L\�c�\�AM��x�\0��8\�1��\�a\�\�Մ��QN#(9Q���G�\�*\�\�sR<�	��y��<�\�#n�G*a\�?\��\�$\"𧌜�ʚ6�?(�5!c��1\�\�D�|�z\�!Dd\�\�f�ĂX\�x\���٤���FH9\���.!��p\�A�\0?C@\�l�2U�u4\�Ǡ\�zU˸��\�%�\���\�\"9�PK\�\\�\�\'��\�GnJN��#ۭ\0\'�R�\�)\0!~����*3��\�\0\0���ϵ7��\�Pg\'��@\�\�\���8�h�Y0�\0\�O�?�S\'���H\�^\�\�pÿց�Djs�!ד�\��\0\��\0�j����.@\�<~�a�LEy>�\�\�jB\ZP�\��\0��,P%�\�^�8\�U|\�\�$u�Y���p@\�\�\�<\n\0�\�`r	�\�\��\0֥��s\�i��\�ry�T\�,?Q�2\�h\�G��I����bl3�\�ӆ_\�B\�Dg�\\\'����pC��A\�}G�\0[�G(Ϗ�q\�ޫ���\"//\�a���\�\�P��J3\�~T\�I�\�\�@�,d�v�dT 1=�(vLdm#�\0\\K�{q\�:�\�Qyv�\�j�,\�H*x\�LRe��\0*qe��\��2W~;��y\��py��O�\�\n��R��\�J�m\�w1\�;\nW$\����I#;�\�\�94ކ��\�\�\�LM�\�{�L�A�=\�S�\'\�֐���\�\�@gO�\�\�\�ΡG�?\0ǏOz�NA<�\�4\�,�z�F�ӁS\��8�z\r��\0\�JpN09\�/\�@O�4��.h\r\0�\�H�>�\�}(f\�\0$Ӣ��>\�\�3@�F��^3\�i�0�<�9��f�\�A\�3֠\�3�h\0��px�v\�\�֜��\�r(]�r\�@4��=zRHv9\\\�>��<����� 9�� O�\�M��y\�\�\�~��\�-�\�`\��\0\Z�\�r0T��\�@\rL�\0pI\�.$%x\r�\��\0$RDc�T\�f�f2B�\�e[��\�4��<u�Z[�\�\0�\r�\�u�j�HC\��?Ҧ�}\���6����\�P\�q�r\�\�P�ؾФ�{�䐹;�s\�\�*2Xu\�΀-Z}\�#r7�?\�\�.P�R\��;O����\�7 )v\�Q��<{c�B]�8\0U�W�皑e�}\�g�\\r\�w\�\0\�\���wQ���x�\�9�\\s��۵�\�N	\��M$�ߍ(\�\���\0��\��Ԁ8��\�y\�3q\�2\01��\�@���s\�B3S�\�#\rW$�v��T�\��\��sѻf��Hc\�pq�z��i�C�\�3����۰!\�\�\�\�����D�2�x`{\���\�`*Fޡ\0�\0\�\�#���ޠ��w�\0�\�$[���:t�n>G\�)b��\�`õ:\�A��\�\�B\0��}�A�\� c�8���c֚\���:�\�񨡗\nP�\���\0\�#V\"=A\�r	\�����0?\�C(\�\���bX񃎃�z�B�0	\�@�\�R䟭!?Z(�\�\�<���\�Ac����\�ڟ�~\�:5\0K��c\�I���G����\�\�7��\�@�\�iı\�~B���z�L�t4�\�{\�1\�~t�\'\�ށ�4���waG���\�Iҝ�G\�҅\�z؊\'X�pi\0\�?JP:�{Ҍ&I\�@�=̓����&�\�<����v�w>�(\�\�1I�1ځ	\�8��)V2zu\��q�\�h��\��w��\�\�\0t���jI=gړ�c׹�,4�\�OJ@:g\�4\�	��<\�\�(\0\�A\�4\�%\�\�!\0 #�\�8\�*�>c�q\�ւ��׏J|`J@S��<f�~Abs\�;SW�^��\�\����\'N{����98(q��\�I\r\�@3��~��p#eG\'��\0X�@\�\�0�\�``�ޘK`�N\�*G \�N~^��\�֢9E\�\�@�\�A\�\�ޔ?_�K�\�0\�\�8�\0>�r=��H#\�>����F\�x�\'�q�n^�\�Il\�ݏ�p�M\�\�v3\�\�\��y���.\��\�Mn@\�\�����OaE\�+4\'ܐ���*9?\���N�$\�\�1\�ڙ \�c\�TH�=:���1\�\�w��ʟ_�\�;{\�!�1\0\�w�\�Hd<�E\�NGZnH�\�\�\0,q�\'�\0\�OjWu��@{���\0=я\�h\�Y\� ��\�i�\0��j�@:\�sR�Děb�9S\�\�@\�X�����\0�Nx�\�~��D�B� 7POF�\0*��zI�\�\�j\�A���$z\�:PF\�\�CQ9a �\�z�P>D\�\���$s\�qHbJᶒ2\n�����j,{�G�C�y8\�^rq�bbFH ��f\'�\0d0�T\'8\�J�\'\"�#�=�Z/�\�3\�;\Z�2`B�G�5g9B{�\��\�j�w{cԊʄ\�s\�\�\n=iG����y���)px�\�\�\�\ZL{\�\�n�\�M\�S@X�\�qM\�Ӱ6)y\�A\�A\"��rNA摉\'\�ԇ&�z\�11G#�\����a�P!P�\�C��\�2O\��}8nܩD\�<�P4@F<sɦ\0rr:rj\�\�|\�ʸS\�\�W(힀΁��G��\nS�qڕy ���\�$z�)��\�Jc<`\�=�\��+\�u���0�`0Ϸ\�AD[ \'i<\�<(OB9ϵZA\�\��T����\�\��*yV�H`?\�\�(\�6\n2�3�~�\0L�g�3\�L$89\�T`戆\�,O \��\0�@^\�\�5\0!�pr*\\���\�{RD�p@\�rhG�\�����\��$zRHC�P~U\�\0\�&�#q�\�?*M���R(\�{zSH\�۾jC�\��\�\�V��89\�\��j��_J\��\�(\�d\���HNc\\��K\� \�\�Қ�\n�\0t�\�@\\$c�u���GBx\�Rrd�s\�E�\�)�\0\�-��\�Fլ8�T�\�1� \��b���\�!~b�}\��\0\��t�\��$�:�\0UXH\�p�цQ\�\�p:~u\�)���K�apULnb?\�\�T�ǐ\�c\�\��nƆ x\�\�ǽf\�LP\�͜�>���1J	�����s\�(#ޖ;vx\��\�B�-X\�\�g\n��\�\�(Bp�p:\�R�\�s/g�\�\0�\�JԺ�\�!W�\��\�T\�\0\0w\�g�jZ\nT\�C�l��Q����\�&�\�\�Q\�Hc�<U\'s6��{t=�8�X�\�jL\�#�Nh$��\�ژ�I\n�϶;T\�\�s�x\���\0\n��9\���\�}õ�	\�@lX!\�	\�7RqRF�Р\�\n��\0\n�El�/\�Jw�T\�\�s@Đ2b@G\��\�n\��D�t$��\��\0>�F2B�NF	�b�2�\�c\n�\����L��\�\�\"��{�{S�e<�9�L���\�\\PH\�W�3A��=�{҄\��ɠD�\\)\�R\�t\��\�\�D�\�\�[�4��V2z�\�Ns@��~�JR3\�\�h$���@F)\�G�\�\�K ˏLq�:�3��c�\�\�s��f\���\�����`�΀#t\��h�@8�U!?{ߟʣ�q\�\Z^�Ӽ\�\�\�\�;g��R$��6�8\�P�\�`\�c��\Zo\�\�$�Ry<Ɓϯ�;i1\���!\�\�\��*ͪ�x�\�\�Us�\��*\�D�݉�h�Py\�q\�Ty�\�9e\�G\�9$⫝̸�\�$\�d\�~�sǯlPpO�AJ�=�h2�7V��\�V\��\�__�\�T\�u���\��\�Nũ	1���\�\�ߵ7\�\����n�\�3H\�\�\�\��&xWc\�\0g�ɏ �ރ*\"�\�{c�F\�	�@\r#a#��3\���o�㩦�������s�R�>�\���zS\�x�.<�8\��4�z\��#��S$l\�\��>�0 ܋�F9\�\�2B?�����}��B\��\0`�g�\0\�RJ�ǅ�ώ���\�DZ��eyANҪzQ!\����\�\�<\�})��88��{�|\�\0\�~\�\�Q��K�?�\�(���|\�`~5�en!�Tr\�w6=*g++\ZR�n\�\�4*��G9lqVbBa9_��H=�?*�$)/�\�O9>��$�!V=�k���k��L��\��~���H#\�ʏ\�#\'��?J֘J\�\�j��\�{g���^5�\�G\0-�� `\�\�\�\�*���:�ЃM��$RFR\"�~_��U�4cg��l�}��-�yY20\�=>��$O\�>B�;Ӝ��8r�L��q��2A��w��X��\�\�޵$L\�\�\�#��ۈe�ߑ��\�t\��\0^�.\�MYhS�F\�\�\�i\�U\���*Ġ�\��sP�Qǽj�ij4�y\�\�@\�\�N\0r{g�jP:\�gD�?OJS#+ӿ�. ~L*\�c�댨�\����!�\��c\��EJ�0T\�\�\�}E$\�lP\�\�y\�\�\�\��9#\�<\�A�\��G\r\�j#ʆ\�3�3\�\��9{r���@\�/\\�\0�R2GCӡ>��!$\�<��@��\�zhb$������ϗ\��\r \0#�\��\0�I��*\�\�\'�y\�|��\��\0\Z\0j #�I\��\\t\�jt`�>�қ��\�1����\0��\"#^���$_�\"��9<�N�t�\���D�01d\�Zc�\�C�Oދ\�@Ǯ)$\��\� \�1\�$�w\�d��\0ǩc�zI��\0��\��\��\��=9>\�\� �A��\�ҎA#�B)\09\��@l\�玼TX��\�x�>���l\�_C@22A=\0\�*\�p��:~5\0��܏A�8\�\�0q\�9�?\nEϦrh\�`�\\S�R\��\�4��<g��i\Z2yP\n\0h��;)\'$u\�	\�g\�E;1�\�{��D}�Ӳ9�\���\�\�V\"��\�؉\�\�x�\n\�$I\����m��\�s�\�\�53�~��@�\0�Ru�$��c�\�\�;PqRF�H>\�ҬE\"Ƅ9\�\�I���(�cz�c\��VD����`<��>��ɤB臐wg8\rT\�VL�#�t��e]\"��+c���]�s\��%�%��\�h��\�\�w�+	ɲWq\�\�KR\0:��Qހ�\'�RZ\�\�tƙ\�G��\' (rI]�rz�Z`�e1$��nCn1\�P\�\�й8\���Vzkɀ\�\0\�`´�\��Ɇ$^��\�ֹ�;��1\�VFdv�2\ZA\Zdc���\0_�,�o\n4�j ,r?N�n\�\�\�̑#�`67\�α\�R\�Q�,(�\�\�_\�\��\�>��\0�4%}\�ݑN�� PO���O\��\0_A\�L�U\�D1!��\0\�\�2�\0\rii�v3y�\r󑀤d/\�=O��\'�\�\���p@i\�j\�D(\�vcI#\����q\�\�i#`��v8\��\0׭��\r�\0m\�0J�-�I8<|�s��\�4\��,a=\\�\�4���c�\��\��\�x\0�	\�X�1ȎQʕ\�N\�1ڶ�\�˘l;A$�\'�B9��y<��\'\0l\'#�\�U�28$\�ҶG$��$j� �\'�\Zr��A�ru\��?9\��|\��ڙ$xm�\�N\r\�1\"\�r�>�`ż�n\0��\�Q.\�\rѻ\�a*ё�U������\�\�`r1�1\�\�\�N�\�J��[�ϴ\�\� �>���\0\�����\0�c�j�\0b3��\�\�q�\�)����}:\�y<c�z\��\�s\�=\�>h`�P\�G�^p��\���t �\�&ߒtcǰ�H\�\�.?Zfr\����\�P\�ȩ(�\�\�1\�9\�98�$��b�DHr\��\�\��\0Z�8޹\�MH\�fuQ\����$\��h.O�Ü�\�֤\��qQe�\�,~lQ�O��*`WL`\�Yy!�\\sGs\�\�/\���i\0�LF{\�s���N\�@�cʒ���Xđ\�yp\�8\�EVC�#;\�\�l1\�\��Є\�#�={�ңb[ܓJrr*O�\�LLw@~�=�e%l�\�ɨ\0�t�V\�-�\�@;��ha  _\�#�;\� ��N\�\�Ro\�R�\�.\�oN�� �\'�<;\�Q���N�Ӿ)O\��x\�\��\�c�\0*$�ߞ��U\�\�?�����.9�c\�$�qMx��\�_Ґdq�z\Z9G\'���I#��/W�\�\��\�pi7b\�\�У\r�*Iy	�\�{V�Z�# \�\�MW��a�8�)\0\�\nWf���������\��<r!\�+\� �U�n䏔2?\0�\���\��\�1�M� �G\��*�G)�\Zd����`G�6|ێ0\\&\�3\�g�j\��hN�ld�R��\0J�$Ti�=2�e�R\�g��\�\�\�٤q�H\�s���E\�a�j�)\"��\�z\�\�P|�N0GO��\�\�I�uB)-	!�@;�\�P1�\�ԒZ��&;��\�R	�\'�T�F\�.0pT�\Z���-�\����@ٛ��g�ۄ�00\0\���\��G�I�T��Q�s�s��>\�\�W�	H\�\�#\'m\'\�Sl\nN�\'\�3�\���\�\�S\��\'8��\�!�\rО1\�����{q\�5,fk\�\0p\0瑃T儌\�\�\���V��A\0/�\�Na��\�=�\�$\�b\\\�;{\�-\�@�z�:\Z\�\�\�\�\�ұ\�c\�l�\�ZE�\�\�	\"d\�l�\�FX�|�g+\�\ZՔrs߃�՟2o$��\�G_��n���M\�\�J\�\�T�\�\�z�ҒD(I�q�H��\�2h�Z,\�1�N/\�\�Y3�\�w�X 9\�Goz�.	;q�ȠL@H!�>S۽Iq\�\'�A\�ޢ8�\0h⥸p R;�\�Ы�O<�I\��?�(#��d���rG�9�H��\�{\�O\\�4�\�;g�\�j\0y>����\��zh\�q��<f�9�\0\�\�I\�/�\'z\0�<*\�OJ_0�{S3��@Ͽ=�\��=rI� yh\�\02\�\�\�S\0X��9o\��і\',Ibx�\0�jI�\�m<\��aV<\�?\�����\n�:\�����\�\�c��\�i\�g�4�\����֛)\�\�	\��h����\�\� \�I\�9\�I�1\�֐\�\0NM\�\0s�A\�=hÈ�ܞjm�X �=M1Q\�\�4\�H\���{\r\�\'�\�K��|Spi\�\�\�Z	%�1�>�>\�\�E\0�}i�\�[\0zq���Q�\�\�� �\�\�J\n*�d屄��Qm$n=\0\�\��\0�W�\� �{/�\0^�\�\�\�P6��_�h�\�\��\0Z��3�\�GAԞ����{�H\�-\�j7b\�[����V���L`d��\�m\0\0q\�b�c�\00?�c)\\\�DN$\�͹�\�\�c9�KH\�\�H��\�\�u|�e `u4�WFm��9h�@�\�\�pI��f;R\�pz�\�\�\�i,\�h\�Iذv>;\��?ε\���\�~d^q\��\0\�ݘ��+Cç\�\�>�\�Z\�v\0C\�eI#$���\0��;d�[�����g\��+8N\r\�\'G��b\�sU�H\��\0gjB\���\�G_�\0W5�d�\�b\�d\���\0&��0��\�\�:��f\�?)\�1ц\�ݿw\�[�M�$�߶jA1�\�jH\�9�d�zv\�RZ\�\0Lc�Lx�\����\�*\�\0s\��\�0=��,	�<`�;}zSvds\�Ԏ�)�\�{S6H \���2���\�کʙ\�G֯\�FJu\"�LC�py#FLþ:�+.\�>O�l\�g��뎵�q�pFG|UE��P\�3c<`�QYҌc#{V\�\�`d���.#F뀹5�Y��C\�\' 1=0J���=:��ICױ횬�=m�M<\�\��#�HGF1֣O�{�T���\�&�����IQ�.��\�EK��8\��\�\�$\�zP�\0�\�ʣ\�ELc<�� �o�FIv\�L��\�~&�JA$\�t\��\�!{gގ��\�c��Nh�u��rS\���\����R&6`�j>�ӻs�\0\\�G�)\�/�3L �\�~cM\�q\��f��<R�>���\09��\�~X��1�@$T�^Olb�M�\�@\�q=i�ٛ\0������֦w99>�T`�\�7\'�T\�>\�\�\�=)� ~t�\�X�\�\�Hzb��\�/AҌOl\�\�c���6	�\�����B�\�&\���\���\\�\�JN_\�=M799�=((�\�=\��qL\�\����(&�;��p4�n�\�\'>�ϔ�x��<�\��\���2d`�\�q=(D��\�Jc\�`/<\�?ZA\n����ƕ\�\�e�\�;\nг�={\�h\�;\��&��\�\��\�e7��5�n\0?�\�d\028\�n��\�\�\�l�$<���\�\�\��f\0tU$�\�E�W4�4�\�zq\�ҝ\�\�C\�r0�\�I֐g\n\�\�\�Mld`����S\�b���mn\0([r6\��\���9\�����}k2+��F��h8�*Ͷ�n\�	��\�63�\�)J-�I\�\�;(\�\\�*\� �lA��\�b�o9Z,\�+�j\�Q�ܴL˕��W��Ҳ\�f�E�\0G&\���ol���*\�(L1��U�;��k*�\�R	�A�\�UGL\����z\�F�T�\�P?LѲ\�֏k\�2GS\�EJ8\�@�\�֩\�I\�NW\���]�\�}*�%�\nw\'�=3���\�ӎ:Tø\�9\�Mq���}1L|_zd�=:}*bT�aױ\�i���K����QY��\���:ք�(��\�9�\�Y��\����e#:dnHS��Z˹v�\�az\�;V��w�s�`\�c5NPF8`@>�\�(śh\'\�\\g\�ɸp�p\� \�m\�%��ݜc�+*X\�	\nK1�8��c�2M�E$��QN�ܿ\'´.�`�\0*�\�$�\�\��&9\��\�kͦ�?\"OR��\0|\�Ni\�\�\�\�T�|\�\�\�Zq�O\�i�C�ބoP6\�\�;UG# \�\�Ҭq��*��Q\��\�ꓹ-X\\�\�$w9�2c\�q�8\�P��\0UN�HN�pV�\0�Q�b��?)*pCO;_��\�L#\�@�\�#�\�}i�cS\�\�`�b��Z4g�\�i:�K\��\�GC\�?:\0@:\�p3��\�jX�\�``u\�2y\�\0\�\�9�gg�s@ҁ\n\�.I\�\�%���\\\�1\�׏\�J{\�6\0P\0\�3\�Q��\0vX\�9��\��\0*\0\\>�֌l9%X\�\�<�\�{R\0bwy4�#�ʔ�\�OL\�gӏ\�L\�\�s����S�R�~B�\0}G\�I�N�\0΁߭\0=�\01R\�@�\�\�Pn�҇=�(\�F?N\�F\�^ǭWG�\0Z�\�|p3�t�kRx�\�ҧH�\'\nǸ���I�\�c\�Ա��$�3\�sR�);�	\�F;w�M�,I\�\�\�\��T嘔!��\���TI\�@\�\����V\�7��KpO$3pFp)9c g\��Wb\�$@\�8#�V�iXN\�\0>\�9�\���N����9�DSǘ|�\��\0a��v��8b2?񪏠M\�\��\�̃ٴg#�%Va��a���\����\0vx �\���_H�\�\��}�D�N�\n7.8�tÖH�\�\�D$q��s�\0\��9�����s�\��,\�_����<n^���\0\��s�FN:���)9#�7�o\��bv�V`rYq�A�}kj\��\0̐a�U�<�\�Ep\�n\\��2;�?ζ,&w2<<{	�9�\0\�VR�6��v��k�\�\�k^)��\�8\�ڹM7q*�N\�q�\\\n街��\�8�6e��ˀX\���\�ҝ�pq�l���\0\��\�`�?\�5W��\�\�&@\�<\�;\�I�\�*����e�#\'(�XK���pT�q��֪K\����\0u$����Z��Gq\�\��{\��@��J\�Q	� �\�8\��\�\�E�\�^�#rK�$\�g¨\�\r\�2$�31�B:�5��\�\�$aT�\0q�\��\0�dRC��\�NX��\��\0���.tEu$��.�8a�ʩIpL$}��ӎ9b\�Xs�p	,z�]\�<_\�ƅ�p0\��U�;lK�\�2Ig\�;�\�\'�\�U\�]İ\�!Go�\0U]7�?>B\�?*�5\�NUԞl\�$\�I�$J�*�A\�*7�d|�q�����ԙ!�ǌ\�9���0\���=3E�\�(H��:g�\�/95rH�ӀNFz�Uq�����L\�H����NNy&�\�,I9\'�+\����\�f�ɀ=s\����1\�zZ?\�)\��ޠ�4rm�\��\ZB	�i\���\�\rӧa@\�c\0`�GC�}�Sf�\�r�t\�{�񥷐c\'�\�\�i�	��z�oj.A�Ӹ�\�1���\�.Fq\�\\�4��6\�)\��y\�sғ<�ԇ\��\�<�\� \�\�J^}�����Z\0�\�\�}Ä==��\�N8�EX1�a�c �\�\0pI%W���\�l�03\��G֝&s�<���y��\�M\�O=)��� җ>�\�4�J;�i�\0%�P��?*��\�B��\�~c5-�* $ӥO(Xa=�Kn�9����\�]\�\r�9\�ԧ��VEtH�\�<�W,�%ʀ�\�6�\��{f�\�g�iB	\�;�f��\n\�ʶ>����t9\'�J\rjiۤ�\�\r:c?#d�����*\�Y\0�\�\�5�g|`*\�軗\0��\�=+J;��+�rT��\0]c+�:\"���1\�#O8��1�F\�\���\�v\0\�Ա_\�$�����Pib\�\�x�\\ci*�Β�p��b�\�\�\"�\0$BÜR<(6U�\�is4.Tr\��\�\�\�P�;fH\�\�\�usX63�O|v���)�:w�U�1R\�do*�V\�B��*\�\�\���Ղ<u\�\�\�F;����D�]8�c��`c���\��\��93��=Ekە\�s\��\�ԫhi�\��dSă\�@\�\�D�\�98\�\�R�z`\�+y3���&��.6n\\\�\�z�(;\��k>Q�;�q\�3�.1o��λ�8 ��\0氵)Z)�D+>\\s\���V��f<\0N^Ed^\�	�$��##޵�]I�_C*`Q\�q�1��\���L7���F\�<m\���^��iX\�L\��֡��g\�\�z�A�\�\�H\���D����!z3/O���rJ���\�SMc�,��g���=G;�wTg\�OO֩I�6c�lm�@9��0p�������\�6H\�\�i�\��?x\��U?֎t͜\�\0\�#=x�\�9?�n>�*�\'�T\�,%A�\�\�\�L\�̄鵫*\�r��\'�0iH8c\�@�D۔�\��\�\�*h�2N\0^@�\0���ĝ�ei\0\�\�\�#�=���\�<��{w�>lc׭4\�KVZp�3\�Q\�G��\�Ɨ� `w��\0\�S�\0y\�$S��#��R�@\�88\�FN���c �⬤�rq\���PH<(\�ޟ�#�\0�I\�\nN|T��M\�7zq\��}*\�9\'��\�=\�Fy\���t���g�\�=\r0���LU\�@�,	\r����$�\��?u�\�\��x8#�\�S�=\�\��\0v�%�\Z�԰3�\�#�@�\���\�#n\�@8�\0\Z�F�~(&s�\�\�N�\��)�\�NA�`�\�����szb�i�1Gz;f�ȥ\'��	�))h)h\�\0s@�d��Vq���\n\' U�c\'v��5��<C~Z�8�e��1\�N�>�ڦ����\�7Hz?L�֒\��B�|\���\�ڠyr9$�I{ ����\�#���\0\�\�Z0\��\0X꣯\�sX�ka[G\�O�O\�\'9�\0>������uco����ub\�G�9\�@\0\�1�����{�\�X��!4�\�@�S=z�f\�����\�fG\�>lY�\�V\�1l� e\�O߉�\�\��=7Q7.XJ>o�!8�\'��\'�\�3Bb�.�i�>�\r\rI3t\\6\0|�S�\�[�\�L�\�\��	~А��\��h\�O\�v>�*ߘ��y��[r�By�\r10	\�\�\�V�c9\��qU\0\�\�{SH.h[\�#\0�Jس$`\�%���T\�ը$�~��\Z�y��ބ�\�2\�e#�\�T�\�ұJ\�:�0zdJ�p\�{�qޮ]A=Kt\�e\\8�57-\"�\�7\�Fx��\���*쯝\�$\��A\�\�<��\�!�DLp9\�:\�5$Ve\�0psW#�r:�Q�\�\�bT@=�;\�\\�Q�Ӕ�,\�*豈c�\���\�\�UM\�#\�=s����\�e\��K�d\�\�\�\Z�y<�\��\0\�T&���<\�jK�$�*Nz�֪\�\�\�\��:Ѩ\�)I\Z�[o\'�U&�l �A\��^��\�9SdA�3�ӻE8\�\���C%NH\��gFLnq�޺[��c����\����#灌\��wGH\�\�\\\0d8\���G�kBd\�:���\�|�9\�Z3�\�I��\��_?!�.2@	8\"�N��s��4K����ێ�T��\�\�i\�z�>\�\����\������W︰�t�I\�$\�w\�H\�`g�x ��\��\\��>��秵=H�	\�7(\�`9dl\�O��K�\�(F[�j�$8���\��\� s@�\��\��S��o\�-Wp#>ǜzS�\�\�\�P2E9�0<\�\�U\�ns�ǥLp\0q�\n�\�&>��LOoƔ�8\�jG\n�e\�\'�Qg�4�N��\�\�y�^Ԥ�v\�E1\r��Lu��?\Z`\�\�R&׌�\��ր��R�dz@H\�\�K\�P2\�#\'5�oz\�d\'\'ץj[FD`�Me6t\�Z�w��d&HO#=:Ry+(\0�<U�ЀK`\�x��mb�\�fr8\�\0\�Y�\�9l���+J\�6��n3¯p?���qlãp;qW\��\�\�\�1MK/\���n3�\�\�|VΛ\nU\�8\�M\�M\\\��\�,|\�c���!�ty#,D�[\�O^���\�k4WH@�\�1X2�\�\�~P\�<UhM���u�o�Eq&\�F\�t\�z}j(�+�\�Fs\�e�:����;+�l�\�x\�\�(%�\\g�\�N+k\��2k\Zė$�5�\"aG\�~���+��֣�S�\�RNs��K9LD`�c���\0\��_J��\�K1\rm�l��G�zĆ�\�G�(�y\�)\�H?\���eꎘ\�{3��s\"s\�\'�Y\�9�	# r@\�Z�2A�\�� )*O*¨\�.�ۚ\�m\�wB\�HeEr0�ҷl�m�rk$\0�\�\��j�\0H\�Q&RFͼ�@Y��\�{Ԓ:\�\�R\�^|�q\�U�9N�J���*\\\�޲nK~=�F\�\�g�\�;Vm\�L�����Z\�$�\�\�\�$�c@<\�v�\�\�\�GBy\�zU\�7\��\�ZE�\��\�8�����I#d�V!�\�\�Yr\�đ�\�~g�\�KounQJ��pU\���U��\�F��\�ͣ�Йd��,l���\�ay�\��`Ty\0$v�\�)fq{���M\�P�$\�\�T\��Iu$v\�8�\�G|QQ�ɂ�J�\�\�4�\�	;�-V�H\'\�ٖ�&��!\��FZ�I@L������\�K�ȓ�:�A�\0\��S��W�㸌��\�:\�M\�	@ �\�:�և�)\��\�\�\�z�cP?�@\�Oj\�:TW*\�!@\�oZ�.G\'�\�\�`\n�\��\�g�\�\��j�s\��1�{i�\��\'\�M�OR{\�pA\�\�y5Fc�\�s\�b�I\�8\�|\Zv@\n\0縦�$�N�\�@\r=;c�4�s�Hz�S�`�\�\�:�h^7g#�jNN~��0sրR	V\�1\�( �`\�	\'鞔�ǧJ\0�A�?Z�cz\ZP\�ғ�Oր\'\0�G3�\�*)G\�\�Z�\�\��H\�ڣq�O�\���2\�~t?�!\�JZ4�\�;�g�8����\'�S�ϭ�ց�ׂ(\��\0��~`iH>�m\�\0��\�O�\r\���\�\��\�O\�\��f��g`�V�\\�\�>�Z\�\0\0~z(\���\�&vAY\�r0�\�Y\�\�q�\�㿷��b\�f\0�\�@l`dg���\�,P9y��\Z�ql3�:{\�\�E!.YT\�\0��\�\�#\�\n�!4aEl7\�ObqV\�\��\�,ON?\�*��j�T�\�\�pFG8��J6*\�;����4��\�#򬣡ۖ\0K$|�g�w�T\�=�֢򘓶6\�s�օ6�駹����c3��܌���]+���\�\�\�[Y\��M\�\\��OZ�S�.=N�\�ٳ\�3;�/��ɱ�i}��7G�<m�pq�ƣ:\�G#%����g\��=\�j\�\�S9NOP9?�>Q�za$��O3Ae\�Յ�\�<�$nΤrzf�>\�\�\��Y�%ߞI9b��X�0囟�Kwe%dJ9�~R\�NKzV���@\�0�n#RN�8\�jZ��\�\�N	��h��r\�,m,K\�1Vd8>� ��\rÕ=�\�\��W�5,\�\�瞕F~j�ѺLXѱ����\�+>C�#�\�B5�\\�\�湍kW�\�v�K)8\'��\�sjDe�)\�#�`�\�\�\�F\� 7\r��kN\�H�\�\�/��^\�\�\�\�\��U{\�y\�g1\�̒,�}ƺ�fk#\Z\�d\�a�N\�\�\�Ӛ\��\"E,�\�\�0t#\r�\�>�Ԛ\�sMH\�O)@i\�\�\�q�\r\�l\�\�b\�\�{hR\�.RM���\��gv@���ps\�z\n�e��^\\S*���Z&P\�q\�\�n\�ZꝮG�r0<\�\�y;\'\�Wa��A\�,Q�U-�o��՝J��\�M8JmcQ\��I\�c=�\�E�h\�\�16\�F�d\�hqL�\�H_�\�3��n9\�\�*A.P�u\�3ް�im\��\�G�z�/2\�n\�N+7lj�_r\�Ц>�\0�G�\0Z�*J\\\'\�\�\�V\�G��\�\�H�@�29�\0\nI\�pj��\\\�-�5\\�d�\nظ�Q�3REd\��dq�֑w1��\�a\'9�\�\��<ɦ�pI�=)rq�|�q\�Vg\�w?�.���\�i�\�}(PIϾ�	ylǶ)$�L犛\���#��\�U�\��é�\0g\�\�4\�\�{�jw\�zt`�\�|\�ozPz�ۚ:�{u��\���\0RN:\Z0\�Av杕��	r#C�wI��\0?ʗ8$\��\0]G+�e�y\'�ӆ)�ކ�ʘ9�\�\�S|�0O�\0Z��\�\�\0~7ǟJ���GcH\���!�S�c�Қ;S�\�ҀA\�Zj�� ���\�Z�#\�\�n�9��	�&����F�(K�켟z�N\��Gڣ��=q��<	�b3�\�l뎅�c,z�ML2\�4hY��\��\0U,ci銷\Z(!{\�=1�Ͳ\���#���4G8�88\�Kx$(\��I=j[ke�snc�\�57+�T�����\�M!H\�|\�\���>b\�\�[-��\�Na\�@\�l�w��g;�\09ϭ<Y�\�7�tg\�\���\�*BDd\� P�ʱئF�;U��U\0\0�=*p=\�ޑ\�@?�jw�;�>#\�j�p䃓�rz�\�Ԓ��p2x�����\�5\r�RV)Ƀ\��94Ȁv�\�\�אd� .1�JGrc��4�ZG\0B08��v�T*3\�zVLN\�a�\�洭�.q\��\����\�4j\�\�#L�n|rǽ9\��c<b��\"f,;1\�)�g5$�@\�:�Y�D\�q9\�\���d�����=(�n\�>S\�4�:�;�\�\�yR�)깥(*H<\Z����p\�y\�vW2nm��\'a-u\'8�c\�&�T�\�\ru0\�\�z�s�E1$(���~�}�\�fs�:�pK�:�	 \r�ʨIḢr\�W1H9��M*h��\�\�\�~\�An\��f#?\�5jmhC����\�U���[{]���O,k�k�\�%��\'�\�\�\�f>3�:\��\0\�Uű��~enx\"�;a\�\�\�r�n��d\�\'$T\�\�\����G<���-A \�\�=��\"��\�\�G9<�\�V�\�\0!@8\�\�M�<\�\�M^A��sTܹ�U`6m#�M\�U�P�\�!�J�G=�\nQ�{�k��e\�\�\��\�s\�润�0���\�\�c&GZ$�Mjs�Rs��\�s��ᘂ���\�2\�*u#��\0\�Sf�� �(\Z<�W\�O�B8C\�$�O(_<aGs\�4s\�@1\0<`�+���\�I�\� P9\�2N?�@u�I,q\��$u��X�z\n\0\"�\�`\�\�Z��W3}����s\�8��>\�\\\���퓟�\0(\�ӯ\�q\�)\�l�dR\�O�\�?*\0T\�\�\�8\�>������y\�?*s�@pz@��d繥 �\Zi�@�8\�4\0����2>�Ӄ�RH0A�c\�(\Zp#��zP 8\�@�8\����P2A\��l�\�\�郑\�h\��Ӝ\�KcXni��\��d՛t\�\�C\�F\�\�T�\�O�Zз�\�8�ҍ�$}r=�ռE36K�oj�Q ^r5v)`\'޳��.\"�0�n\'95<�9\�$\0}\�q�B\�$\�g�\\@�=�q�zԎ\�#�\�~f!F{հ��}*,1#i!A\���\�/\�cڐ69��\'<\�eF��%�{S�>�$\��1�Q�\�I\0w�B�q��?�F}>��q�n{�j;�yc\���\�Q�(\�v �.��\�:��q\�d��MhH1�s\�z\�҇r�Fp�\0gI?{\�\�8\�I#=})n.0\�PG .\�\�\0U�&ː�H\�+��\�sZ�u����\�;\�ڨi�\�\�\�K���\�-xʑ�i\�9�{\�f(�j�L�Q�6	\�=+R\�SvȨ���\�s�8\�I\�\�\��كpA\� c�SڲeO�;\ZӼ�w\0�	��!|;����jU\�&\"L�\�E\�\�jر%X}\�\0\'����Cr9l�*Ŭ�\"鱁 �s�Ɓ�Џ\�A\�9\0���A�0\�y\�y�6������B\���}�4\�!��p�FwuTOn���\�q\�_q�<sژ觧Lw���2e�_\�?J�qe\�\�9\�\��W\�!s \�v\�=h�?n@\�E\�Q��\�\n=0	櫺.q\���^�/�\�U����m�;O��ji����ϧI\�\�隽r0}8>�Bl��f�:��+JH��\�Ls�\�f<���bd@�\���t\���)\�s\�\�\"��\�\�O§GX�\�n\�\�4\�\�޵9�,;�������y\�\�08���\�c\�~t\�~��8�Z`˱�n��(!P1P��GB\���;L�\���%�Z\0�\\9\�*\�+\�`j!\�\0g\�\0]�\0~=�\�M�\�8���\0\�\\��u$�\�h(>nyw���`~_�za#\�z�z\�X9>�\�R|���>L.���\��\0\�L\�Ҁ��:��T�(\�zg&����Q\�\�Ӽ\�\�\�znx\�\0�\0C��\�Nt��\�{Ҏ\\f�x�R\���g�z;��\�@�\�G@KQ\�3\�m)�!C��r(X\�`:t�n�FJ��4q��q��z��l\nd\�T�L+�#=3L\��L�\0ǏJ�\�\�TU�\�\�z�ІC�����>��89\�j��	,G\'��e#x�\�\�A\�^H��\�$�98U\���a�/8�֌$pI�\�M�\"�I�\�ɩm˾K���@�&\�&<\��89\�[��D�q(\�\'��(�8��~i\�p��q\�MB\� �=3ޞG \0\�\�\0A%�x3\Z3�8\�q�eճLcer�x\��{�\�݀d�{�\�\�>��lB#�Ѕl\�\�8\�}9���28\�\�x\�\�I\�1��;ʷv0\�N=\�>�������,+�=\�\"��NS\�y\���%�6V�ݟ,y$\�\�\�1\�@\�b�ۈ���<R^M�\��j�\�f�t�y���[n\rtq:�<Wg0G\�`m>\�kr+�8�攻�U\�\�\�ܨ@8\�Gj�V�\�d\�G�\�>��kk\�\���گ�E\�l����}r\�\��串�&L1޳�-C� ry\�օ\�\��@\��^\"���ҧg���)[n�O-�A<{֪!C\�\��\�k�q傇� �\�v3\�\�\��ڐ\\��\�\�<z�@\'���9\�4�BYG\�{\�\"��\�\�F\�H#���s��#̈B�A8�\"�c.\�q�\�\�\��d�y0�\�:dP\"gAӶ;�P\�<{b�F\�=��<��\0����F3C�����\�����Ĩ\n���n\"##8ݷ�1U�0x#�d\Z\�2#;�N9\�d\�ģ\��\�[s� tojʹ2:\Z\�:\�\�\�<g��t\�Y�=s[y\'$�g�\�؜\�<b��\�=W�!8$c��5�\�q�S�JP3���v�3�\���\�F\�\��\�8�<w\�F<u\�\�L�#9~�@;P�\\�u�T\09����G�S@X�cU.�S���\�Rɂ\�\0|�=>�d��{�*I.y)�ǀGE�{\�1�\�\��0y��\0��\��\� ;�3L9\'��i=�PM\�`�\�I�J�o\��Rq\�@\�/�	\�QP�1\�)�rG\��\0���?�h\�\0\"���\��+ぞ\0\�\�H\�(\�\�4\�q�\�)\�pE!\�A\������rO�B9\��uj\�f3��{vj\�ŋ3\�y\�Y7#�\�\rj\nCǦk6\�\�2}O5sy\�kh�J\�x\�y�w\0���\�\�x�t�)�l�F\r-\�ӨJA\�9捘���\��֍����>��y�\�W��!@wӽf\�bjD\��\�Ȏ\�8\�=\�$\�g�^գ��k&j���\'\�I��Qɾa\�G�Q\�LX��`sWcA\���(��y\�q���@\��眊�7\�\�r}\�\\\�dg\�\�b�={�\�ђ>l�r\�\�$a���RF9\�K�\�s\�2h(TL\'�\��\0\�O(�N�\�5\0\�;zu\�;Fb:TC)]\0��c�q�J�\\\�\�(\�+��%\��2=�\0�U\�k�5�Ȕc\�\�Gjh:�\�\�<P���\��\�\\\�\�BL\��\�8��H��2Z\�\��u��@#$c8�)���ԋk\�d!r� �安u%�5tl�;\��M\�H7/JԱ�\�|��n�{UME\�E\'=�\�[ސܹ����\��8\�zV<h��\�\�=u\�Ĥd\�?6;\�1�n\�\�M+�o�Umn6���\�(\��\�zo���`��N2y�\�yX\0\�Z��;����9\�[8A+Bs��C\�~җ6\�k�㚻�#=�\�\� Z\�,�A�\�]>�1	\�9ǥsX\�z\"\�C\�?QP\�\�ʅS��,?��\0\�V\�8\�l�\�7\�\�9\'�\Z,M\�\�\��X�\�3��\�S��\�B1�\0�~\0<r\�LtęU\'ss��R�\�W\�\"�0\�i\�W2�p�2�\��k\�3rI\�\�,jFI\�9ϥ\r\�)O\�FO_�@\�pz�:\Z�2(\��*��\\��\�z�\���c�<dc5�xpH�\�޶nyp�s�\�k�L�+\�;rF1ZGq3&\�\�#\�&���\�kSQp~DVqd�=+�;\�\�تGJ\�\�\�\�i��	���җG#$�����I=zw�3\�s�Ҝ�I\�q\�M�iu�p(�.\���F0)v1\�4\�q�4g�\�zP\nOZ_�s\�@����\�ғ$��#ހ&~\�*>��ӟ�\'��\��\0�IS�pq�zӊ�?CM�\Zp�i�F?��7�_3\���\0�\�&SA\�(��8�\�џ/�\�T9�W\�1�Ӝ��l]=ˑJ�\r\�\�\rS����\�V\�#�=9�\�9HI��5�\�cb�@�A���}\�\'�&�\"\n,\�`|\�H�˜c�\������sWm��\��q}�P�\�$qP\�\"h\�\�\�\��U�]�s\�\�e�׮j�n\nu�\�Pk6��	��­\�~v9��Vh\�~F\�*ݬ�\��8\�f\�_H�r\�=*�<߯Z7\���\�\�R�����J�4XG\�ێ=\��\�׃���\�sRdq��t�l�$����!�\�\'\0})��\�\�Zd��$v�P�2\�E\�JǾ�\�W^��\�\��z\�$T\�\�9\�R̾�\�\�\�\�9\�Z�ml�\nH�\�\�^,�On�\\q���i�Z\r�L\�\�8\�G���G~�=�a�ܞpz֚d\�T�A\�\�3��̓�dw\��I���U�\����ض�l.\����Wˌ8>\�6\�\�sQ\�q -��q\�j�\�Q\�6\�^Tc�ɭ\�\�d=qޢK�p�y4��P~E}*\'��9]�)\�S]U�b?ON;\�}�k\�ʴ\"�N~�\�\�K�-�O8\�{хO�8\�1$8>�q���1��S&I9\�\�\�\��A8\�3N��T 6N\�1��zR\�Ā\�\�Oj���Ă>\�\�8\�\�/�8\�\'�&4E!\���+:T�pz�y��C6>R?\Z�66�~1���E)�~��\�\�\�zֵ\�\�2+\"��{ⴁ,�Ԝ�\0;�\�\"��}���7߽���B���\�9���\�9]�b��I\�Bi���\0~�6\0r:b�\�\���գ)h��y�\�i8�\0\Z~69ݟ�\�TJ���h�\'�S��ѓ�\�\�P\�8\r\��n9�\�ޚI=z��x`Sr;��\0Ñ�F\nsq\�\��\�GL{\����Ί	M�\0�%(\�\�0>��O&NHpMA\�y\�J�\��a\�&Rbb��\"��,���C\��A6\�\nĂz\Zl2mʓ�^Ԁ��A>�j\�P�{�d�?Q\�<\�\"B\�\r].\�\�;�p:\�ڡ�\�\�\�z�Vm��\0��FN*���t\'�s�\�KFn\�ѡo	�#�j�z�.c\�q�\�\�;-�# VV��\�0\�EJwf�Z\r�3\�z��d\�xFF=�\�@dRc�,�A:�Un#\�\�t���zu<\��1\�?J�Z4C�`�늻nv\�\�k2\�\0Oz��ϭf\�F�gx\���b��x��QI\�G~��V�\�?� $/\�<\�3\�\��\�\�;Ӂ\�\\{b��K�{�B�d�\�\��\0�L\����pG9\�\�Lߎ9\�}�\�s\�\�T��#�5NI�vG�X\�P\0\��\�Z�I���^Òj)$�\�\�zSMϕ\�SI�.\�\�3	@��\�5\�@H\�v�(�z~c�T\�+ \�\�{\ZJ\�\�\Z�ň8\�����\0hB�2��\�*���K})�f\08\�ACW�Ed#�\0�\�pz��\�\�\�Z�@�rx~ԉ+D@*6����hЏv>��n�M�X:t ��\�q\�A\�U��8#��&G\�SϥJ�;T�\0�8�������3׆�ܝ\�|\�r00p�&�x>��y9N����\��9 �n�\\\�\�Ў�^B�@\�&�i1\�\�\��zz�4�����Y\�\�\�su<PQ\�)�\rb]>�\�=N~��p�n�]JB!>\���\�\����v�#\�Z���zT\�H�)\�C��>��0Z\�/#��D�\�\\��@\��c\�S=s�\�\'=M\�=p�u\�R\�N3L\�O={R�y�EÌҙ	\�p=#)\�q�\�M1~���_q@\r\�)\�$r3Ȧ�\�q\�J1\�ځ�S c�f\�\�*Tl�#�}h>9�q��i\�K��s@\0�\�ւ�[t\�\��\��)p@\�=)\0\�!�*MDyϯqNG�\��\��$\\a� �L\06F}�������\���WXC��_�����@\�X9玵4W2Â�����/�4�Khξ[\�	�w9�V���d\�\�E�)�c�\�Fy���sS\Zmj\�\'Y5dtp\�՘\�\�qUa\'�欁Y\�\�%��?�u <c��\ZO֤N�\�2�8ϧ\�V��_�\�x>\�D@�5b�;q\�\'�hhӄ\�8\�&�\��a\�j�/��AS��<s�\�AE�N8֥`~^��\�\�\�\�jqr\�\�@���3\�8㚎Iv\0\�y�\�y<�Vm\��Ƈ�ױ\�BW\�\�02�sڲ&��&s\�\�Tn�6� >|w�OrII\�9ⵌ;�h\�2\�9#8\�[��dg�3�Z\���\���\0\�T�\0o\�kgi\�ǥU�Z����Q��\�i\�`8�q�)\�r1�#ڦ���brv�\�\��4<Ǝb8\�j\�Nd�\�aTf��q�\�\0�\�I\��4��hh\Zh�\"�qӭDeh�EW\Z��\�\�<�j��^l�\��n#^���g#5��\0��\�{{�I�dr2zV\�2��\�d��ڳ%�(s\��1\�\�4ر���攁�\�\��$�I\�\�P�\�\�u5\�z��NF@=�3ސ\�%�����Ue���w\�\�R�a��T�\�1��\r\"	�\�d�\�Fw\�8\�j\�\�\�?Y\��\�{\�HeK�\'9\�k\"\�����<֕Þ�\�ֲ\�m-\��F~��t3�����8\�ȖB\\�\�y�W;�=}*�@&�he7��n�\�8���=�{�\�!�\�Qu���喬N?Zqlt\�=\�2���)�.I\�\�o��\�K&3\�B8�\�\�\�ގ��#\�@ÿ��.[��2�3��ր���Ͻ<�:\�q\�@��\"\�\�#���\��c�8\�\0�H1ӡ�)䑆H�0*çzA�,�\�G���ϭ&O+۵)\��\� \��\��?3H)O� �H\�\�E!\��ZBsN<g�\�0Ҏ�\�F\�a�R��ӏʘRl9݀1Z���:@֨?�ZI�?�k�[��wH�9錟֞�0y���\�<pO\�PX\����U={\�X�\��\�Ҥ�\� ����,\�I��}*\�H\��N:U(� ux�\�#�桔X�\�d,\���\�R���=2W�C#\�灊�\��#���\nW��*�ݎ+���\�Ǔ\�޺+\�Y\�Td��Me\�i1]F�-ԝ٭)ۨ�{h`=\�\�Ҟ�A9<�ڴ`\�\�Gɑ�Q�\�sM��\�\�q��U\��\��\0�[��P�\��I$�`\Z\�\�t���Y\\���5��z\�\�z�Z6�>�n\�\�\�ܕR@4�H�N�F�h6\�r�8\����o�4:\�vp���&B3�s�ʞ,�񍺂�>o��A��m��ϖi�\�\�!ʲ��R�J���/���@\�YW��U[\�\"\�\�\�\�3*3��\�\\�\�50�Ҙ\�c�pSj:��V\�5��@b\�F\��\�4h+\�\�\�#!�<3��9lj\�w�c\n�\�zb�_>Q��g\�\�����h\�1\�A�\�cS�\�\Z�^ls�ߊװՀ@\0}Oz\�n-�ylx\�\�W�\�H�Xz�T�]	ͧfz}���\"��\�\r^3\�\�pzM��8V)����\�u\�sy���c�9�y+��y\��\�Q\�\�;{f�����3 dwG�H\�\��\�3\�Ng�?Z�G\�1\�j�ĐH\�pM��!\�Nx\����u9\�\n��\0L�UiG\'��\�T���<�\�4\�o5%��\�:��8��4\�Ul�\�RMk�!j\�\�\�nN+&g1��+��u�\�W3{ \'`\�kZwfU\�\�[9$�\�4g��\r.zV\�8\�)\�?�i3ڟ�\�1L �\�^�\0���\�i>��8s�q\�\�!c\0�\�3��?Ϟ)\���\�(cB\�u4����)\0\�c�OZ��r\�+|���\�\0\�\�F\��\0�*\"�\0XA\�#�}��\�4B��\\u\�`8B;�\�O�Q���\�J�s\�\�Rw\��`�J��\�\�~T����\�sQHF�G�\0)\�gh\�ɤ# �\�҄\�4��Xc$\�\�Pi\0\�NB�\'׵4�\�1\0\�J\�sߊ:`\�\Z\0L`�E9�!�:\�h��\�������@\�\�\�J\�,���\�\rtQ? �\�U�:���\�8\�BH\0\�*�9�z�3�\�\�X���\�4!!�\n@O9\�(\�@Z��Ƿ��\\�\�G\�Yѹ\�^1\�[��냎=\�\�m�\Z�c#�qUc�Ny\�SϵXF\0\�\��R(I\"L䌓\�&�\��\n=�*\�\�5ZS�\'�3\�hN\� �\�0��a����rq\�j�ہ���\�\�d\�\�\�;�ZKe�M�\r�\� ¦�Ŝ�?tv�F\��3ǭhۺ�p~�\�\r�\�ئ�2��hl7�\�O%��n@\�^�v��\�\�\'�PJ$\��f�\�2��E�U�3Ո\�\�GS\�JY,�!\0r\�Z�A\�U\�މ0Q@�\0t\�E�\�Yϥ�2u\0��߲���0r�wE!�8#�;\Z�\\��\0t4\"%;�[�\0\�;\�O\�\�\�,�#�iHW!v\�Ҥ�͌�\�m�\�K;!��(\�0Ml\�\�#s� g��\�`��=�\�p�\�7\'=\�);\�C\�q\�=I\�9�\�,9?Μ�\�s\�\�2�Z@�JG9=NH������3�RH��\�zsP��\�\��P�4��\'��V��q���\�\�<�\�S�8��J��\�\�\�d�ᑉ\�k\�W��2*��p<��Iɬ\Z\�\�\�R�Rї�5G�`樒I\�<�J+T�\�\�Srwl)h���I�B��\�ʦ���\���\�Q*\��iX�H\�Sҁ��S��\�4\�w)\�ށdʁ�r=��=�H[���\�B���,l\r\� �0y��9��\�)��뚙\�h\�y)ه�\�M90�c\�\09>f��_0>�/�?\��\0����\�<~4�4	O���b|u\�ҡ\�i\�\�G\��\���\�ڂ2�{��W@�\����h�o z�\0rFU	>�΢n�\�\�V.X���\�z�c\��=X�P�\���\�T���iC\� !������R�8�Pz\�R\�P ��\����O+��J�i9�`s���%tiN\\�\�s\����)\�\�}+6)w\��=\�\�r\�\�\\\�qw,�G�4\�3=�\0:	`:㊛L>\�f2Fr�\�J\�\�\�̃J�	\�	\�CE\�H `��\�S�����@�}�jpO���\�\Zd�\�.�@\�ޟ\"	�\�>��F\'�\ZE%@2N��n9ʞ�V̰�N����5�\�N)�am�w\�=j���8\�\�g\�\0��\0ʢ�\�c�\�J��R�GE����\�nj_\�t۞1�+��\�Q��Fz\nH�\�?��S��κ��\Z\�a����\0<ԇUWM���W��G\�\�⦌M�N\�Զe\�\�\�DNX\0O>��5\�L�N���p�H,;�Z1[�\���l��D\�\�sޭ$y�1\�4\�\�=~g��`=��~b:EC��9\��R\�\�\�L�0�\�\�s\�U�\�\�\�9\0�x��@!��p*<E�=3�\�$rZc3��\�6�Q\�\�&�\�.\0\�~u��]�a`>�\n\��3���ajWh�ftp*���$�\�ڕ�\�\�\�\�J(��C�~	N\���h\�N�@\�/\��\�֑�\�=O֓��4\�\��\�P2<\��֤¶\n�\�\�}~�\�\�ҁ��4S\��y�N;\�h\'y9\�\�\�FNz�E.\�((�1\�rA\�\ZIa\�\�H�3��\rV\\�\�\�CW!+p�Q�d\0���\�W��~s��Uϳ\'��_�\�\�w�|¯�#�\�F}\�o\�y\�\0���{\�\�id ��O\�H�Rr�\�I4�r#&C��g�E����I!\�S\�@\�.K�\'�ԅ\�͠\�g�zm�CE���RQց�E.)(P(��4�.	O�����\�dӊ�ӏ\����3�\�5�֧M6\�j��zqR\�$��A\�*d��\�\�`\�MX\�2\�uA��ϵXL\��UC\�߯�O�\�zԴ2\��C\�R�׿z���(3�c�<\�1�L���\�`\�\�*$@G�f4\�H��)\n#�\�Ja\�9<z\Z�4\�J��{}x\�R\�\�\�{<\�m�=\r\'\�H\'j�+hC���y\�(��}�\�Ǒ��sH,A`9\�D�c�ls�ن1�\�\\E=Es��<c��*H��R�nպl\�s\�Lt�ۀ�nԝ\�s:D\�3�j�!\�\0qV���\�\�(�\�<\�*�c�J���\r[�`{�\�y1����.C\�9��\�\�\��E0�@9\���\��\��?�\�=*���x\�Ӥ|g3�*����\�B\0�\�>\�j	����\�d�s��4ܜzqT�+\�m\�¢3�\�\�\�_\��\�g*8sV�.L({�ƲOj\�+���K� �Q�\��J)h\�z\0COO�i�\�\�~�?zS\�~���X�i\�2wg�(\�izt=M\'CK��\09\�\��H\'�h|dи?�z\0RKrr}\�J	�\�3�\"���8=~��?�\�pʞ\n�\��\�(\�$x�\0{\�\�G\�\��MD\�\�Rp=��\�տ\�U$g���3�<\�a\�OAN��q\�HC�\�t��}\�\0��\�\�@\r��R\Z\0LRS��\�P(���Z1@����@,�.�ߊ\�)ɬx&C\�kw�5\�ޞ���1��\�f9�#ߌTE5	\�g<\��U��j�F�I\�\�S[�1c�o�=+6�\�<��\�ئ\�sRՋN\�o\�/犵\�u\�zVtR�GcҮD�\�z�ɢ\�hF�\�g�j4�q�?�]��n�#�2G\�sV#8\�s��׭XR{r1�R�)C�ӽH1�\��\�P��s�ʥ\�>�\�\�gs\�O�1��)�pzSN=y�&\'�M\�L�\�dR+����\�\�JxǦz\�2.z��\�\�w�9\� \�=��Ld\�\�<\�py\�9�\�\���\�Ui\��Q\�\'�:t�$|c��$�c�\�U�A�x\�@\r��\�\�Td��\�)n%��Y�@����\"�&\�I-\�θ��V=\�\�d(s�\�T�JҒ8\'�\�P\\����\�[E$\�f\�L\�$�I94�R\�WI\�%RP!EQ@u\�Ҍ�P:\��9\'�\�*�ma��R!<�\�\�4\�\�G�\"��(F�\�z��nG�\�N$t\�I��~�����\�sH:P��O\�R�\�\�\�^�ր\Z\�ެĠ�7L�5W�ӟ�:9\Z\'\��\�C\�r\�Ǆ\�O\\n\�\�F��\0=��ԑ]��v�9��\0\�\��\0����@\�$#Q\�}��|�\�R��6�\�Rj�v�إ���\�ZN�\�zS�==\�qH�p�B)sI��\�u%1\0\�M�\�{\�E8t��H����	\��t1\�>\�\��\�t�0\�sڳ���.�]��\�5������H\��j\�\��cn*\�7�\�N���AT9(G\�OF-���\�\�lz\�\�\�\�`nE`\�r2qZ\��\��j\Z4M3r�z���\�\�g��\���\�\��\�\�w�\�M6\��A�S���x���OץZ�a�\��T4R5#���\�b7\0c9\�e\�6>�\�=\�x\�\'?� �{\��(\0\�u�\�j��#��8Ȧ+��c\�\0�I��9ҫ�\�\�\�J�\�pF(�\��5�>��s\���\0��Ɠ\�~>�VG\�d�\Z|�2y�\�T�A\�\�\�\"�M(9T.n:\��\�\�\���{����9��n\'+^\\����gҜ�\0�liNNp*x\�\0g�\"�\��\"��/3�Y>�u��U�@`�{�\����\��A�\�Rdw��\�֊0iOc�@	@��@8pҒ�9\'\�\���\��\�\�0\�9�)\�s\�\n�<\�gP1���nA=��	<~��\�\�\���?a�4�>�΀\Z�0[\0�\�0�ۃ�=ic�t$���$_\\u��$a��\�\0\�wta��M\����3\�*/,��1\�2h|�XrF{�w\�Ͽ\�*2@\�9\�ҏ���HP9\�\�\�Ddղ�M�\�a���J�ؚA\�\�\\Q\�)\��Si��}\�-���z\���M4��z�\�)\�\�Q\�)@\�:S\r8R�i��Q@\�B��Nl\��\n\�\�5���\�c\�\�OcZOR���\�N##�\"�=�j\\dq�\�\'REir?*�,ds\�ִ�8<~uX�?\�4\�E�,w��\�\�K$#�?*��IϥV\�lh\�s\�ڭ\�r{�\rb\"��o�⥢\�.\�A\�#�Њ\��\�s1\�\�\��U��)�I�\�M��.y\�P*\�\�q\�\\\�W��z\�ĸcY�b\�m��:zԿi\�=8�Qpá\�\�5*\\��\�R�\Z\�\�9\�~��\�$sש9��r��i~\��h�\Zbf�\�ϽC%\�\�\��\0�Y�{�\�\�^�^K\�KdE�\Z\�k2\����_�\Z\�yK�\�ӊ�ø��-\�\��pj�!\���#$�J�#=\�qW�؛\\�!8\�n����\0T\�=�i�?,f��\�+<\�[��7�*뎼}*���I�\�$\��\�~��=i�|��֣\�\�b<\�\n(�ځ��c<��\0$��\�>c\��ܓ\�\�qI�}M�\�\�N�M�!\�\�ޙ��\�:�h\�\�yd\�s�B��S9^���\0=)c�\��O̼����C\'ˎ�\�\�ր%{�F�=��\ng�G\�\�黡�a��������9L|\���\�;�{�������?#~�ҹ\����ph\�\��R�\�J�M�Z@]���\�\\�j�>N*�s�3\�[��^\�\r�\�99&����4\�zP\":&�\��Dz\01҇ޔ�Z\�\n\0��\'\�ޤ�\0\��)�kҹ\'�\�L�QA�`���;֮��}�+$rkCJr\'#\�T\�]\ZSvhُ%{T\�=J� FH��\�x$v5\�\�\�!E#�A$G�*\�@9��=\�\\�A�?�G$@\�֮\�SU\��O֭2\Z)�\�\r7\�>���n��<�Z�\0\�r�ܖW,��\�K�u�)�[t\�cޢ0x �\Z,�]瑆�\�0�9�\�;�b�`�\�\�i2��7#ԽMN���k�\�/\0sϦi�\����\\-N\�Du�Jc߂x$�\�w\r��!�\�Iz\\�\�3BK\�8\'�&�7E�վ�T)jO%}�5d[`�^�Y �c2\�\�\���q\�$�)�œ�\�ҭ\�1\�\'�⥲����\�zs���`ps�J�G\��S���u8�l��3fx=�4\�\��\0�I����\�\�*n3:P\�v��1ڴ%L�\0\n�.\n���3�\��\���*�hj�\�uo\�\n�1]�wH�+I�0Mw��M� p\�H�\�i\�L@9\�@	�\���A<��K����\�4J#\�\��)��i0*\0(��A�|\�$ߎP;TX\�NM\��\�z\�\�yr�*Ê�\�<�åF�	���\�\�\�N\�A�@Ʌ�Il�\�\���\0�j�0p{U\�\�\�%�r��\Z�\��($�p��oAML��\\\�\�ٷ�?� 	�$�\0xb�\�j�gs�\�r��J\0���\�\�BO5}j]�d\�2~���\�J�d�׭Nc(\��ƀXHǡ���\�\�֮\�c\�\0s�Q�{\�v\�M3z6iIȥ\�M=\��A��G�\r�9���O�j͓\�OBqP \�>3\�΄v4�Qѣ����	�G�U��^j\�}��GlK\�₃�ZPZ]��;\�ܢ�9���\'\��U����=�4\�\��=�@ߜ��\"� �>\�F;��\�W&�\�\�t\�w���\�=;U�\�9\��\�K�<�~��RE?��G\��1W�}ȥ�\�\�ò(%�Q\�0q\�O���\'��b�T� \�M-���\�5�$t\'5 �\�$g\�W.�䎴��\�85<ñHDFH�\n_+\�\�*痞\�0(��\�\0}�\�r)\"�A��1�#\�\�R�|�G\�VR.}�jn;\r�d\���ל\nv�\�R$g\�1Sp!�1�\�%�\�*\�O�%O��`^i�*c<�ꌨ3Z�5BA\�\0q\�֑15��\n�5�k���Kl\�\�\\\�\�u\�wV8k�J\�dq�)\�?Zmh`.\�ZLv��F��ȥA�\�\�s��)\��\�۠�\��p��?� <�\0T\��h\�\r?\�ʀ\��?��ڥ����TQ���\�Jz�\�( \�~�Q�\��qR0}&��OZ\0�\�\�К<��6e\��8\�R\�_j@0�\0���sR�q\�Q�������4�\�ѳf)9s֐\���\n�${\�䜑\�T\�8\�p:\��L|\�\�p:P4[�08=qT$�ŹW��]^�\�$�@��M4��I�b\np\�!\�S\��\�G����LҌ\�Ɓ\�,c.)o\�xR9���*���\��5z>�ynu\�\�ZB*~�*�f�\'�C4@q�\�QI0G~\�g�\��\�JW3e>�\Z�$\�թc\�}\�9�[ԑ���qK��=i\�9\�ҥ�\Z�\�Cy\�N\n~�\�O�=��8#d5IhX�\��j\�`3�\�M\0`c\'�T��<ԶQ �\��8ێ\ZxF$��\�@\r)���\'�\��\0�=j\�(���]��\�\�֐\"�\0z���f8\'L�=}*@��\�-����?�zy�� �\�$P\�\'��#x\�Zp:��T.z�\�4Q��0*�\�\�ZԖ3�~�Nh\�8�j������u�Z\�?.\�\�]t����sW�\�s��\n\���ˈZ\\\�\�ѳ�\0\�J@Ү\�A�\�q�c�9���R\�4\�\�\�M\�F?*A�b���)��\�\�Ȥ\0\�8\�0z�\�(9玧އ��{�SGPF}h\�1\�퍠P\�\����\�j�xS;�;q@��0F@\�B\09\�Ow\�!���\�\�Y8�i\0��09�\�\'�e�Ǹ\�\���C_�5$[FI\�\�b��G\�@\nNI\'�Jxw�\�q�ڤ�&���\�h\�u�\0g\�r\�dR˄�GQ�5Bh�=h\�\�MJ�}\�Κz\�s\�a�\0\Znߗq���cq\��\04��f!�����\�V�)�FT�\�)\�<7\�@��i�\Zi9gٱ|\��\�iFx5��\��0�9�x��z\�3\�\�\�a�S�P\'\��Փ6E��{S\\p\�\0��HeG\�Nj�9\Z�(��\���I�>03�j`�\r$|�\�{Ց\Z��\�ҥ��@���9\�L�A�\�J!9$�\�=\�T�c����l�\"Fp1�2\'�)�\�\nd��*Dy\�=\�nQc�c�\�N\�LqJ-�\�\�_L\�\�\Z�t\�z.�\�$c$�)\�\�G^G�\�V\0_A��\�r\r+�s�:g?ZP>��rG\�N�O~�\0\�3ڐ��}����h�\�ߊ@BP\�\��\�D`�3\�{Փ�\�zS\\t\�\\b��3�\�\�T\�#\�\�9\�{V���\�����Zh�S��\�d\�\�l$w�ޙ?�\�f\�&A>��%fg5uc�\�aߚ�\�\0�\�j}J\�\�L�>V<�U(\��\�N\�\�%gfO*c�\�#�|�ڣ�&\0��w89u���)\���X\�M)t\�$�?,S��@\�N(<�J�[��\0\����]�=O\�J%���y\��\0]1�ep��\���T2�\�О�J[\����\����j���\0��k�Tt=i�$\����)\�@;I\��ʁ	\�\�(\�փ��\�\�:\�o4\0�\njR� ����3�@6\�\�P\�\�\�\�\�����u\"EH�\��*���ǊI]�fC���c\0�q��8�\�kn\�IYcL~f\�@\�s\�Wm\�U\�\�:~u~\�\�#B�\'[��`zP3o$	�o\�T@!}\��u7W�/��\�9\�r\r�\�\�V%�(UC\�.\���\�aU\\l\���\�\�|T�rM\0��\�\�\���P\�0\�\�z�\�\�G��°8�?Jڄ��N��MΊOB\�$�{\�\�8\�P�LT��1Y�tL��\��F;\Z�?/L\�1�\��j��z�A�A\�\�dc5H,,}G�[�Г튯\�F~�\�e��g=�d4<c�\�\���B*�G�a:��;��R%B2#(\�QL�g\n�!ϰ%\0װ���i<�S�<dP!F8���d�p<\���v����)\0\�g<sޤ#�JH\�?�\rK\�z\n\0@2	$Q�җ\�=�@\�sҐ)�\�J�\�z��\0\�FW?�j`Wd�t\�ڪ�9\'�\�=*\�A\�Ҡ���c3\�>��4_!ִ�׊��\�Qbf$�����A\�o,�$P�\�n#\�:UY�)�\�tBvg=JjH\�Nh�^��hId_OJ�卛��5Нև#�N\�h�A��<\08`u\��(��ǚ˰b{\�c4&y�� �ԏҞ�F\09\�Gz\0���O=Ͻ7\0͝������\���\�\�\�r��\0��lI\�\�юN\�ja0G\�@\�f{�@�\0\��\�Ͻ7\�f�y>�}i�#\�	$�\�f}�ʊ\0�s�@8\�)�����\�\�b}9���ki�\�3��\�\\�L�\�\�je�a0W#�:)n\'�Gy\'� <\�\�ց�\�B�\�߽t�<^d �=�\0ϥq���;F85\�\�\�[ک�;R{\�\�7�ֹ\�H�C��\�t�;��\��寳�;�R�\�V��ǫ*��#L�5|Ŕ\�n	�W\'\�|g+��\�\�Nk*O��U\�8�D)\�\��\�`3ڊQ\�Vc�q\�<\�\"\0�};\�8\��ք�ꐖ�\�c$TpPr3�h}8~��A�ه�\�YZr��\���g=Ίz\"\��2^�\ng�N������$C�=�*dpj\�\�R�pjYB8�\�\�TNsV=�TG\�\0�=3֭G����*�>��f�DJu�!�\�\���<`��\�\�P��\�5<n\�\�\�f\�D\�BzT�p~^�\�.q\�&�\��\'�\�H��1\���ޔ&8\�:�M8�\�(�\0��\�<��\��Ԋ@B\�F*�`��g�\�(�b�z{\�\�9\�=h �\�@�Μ\�\�\�sLp:\nr�\�֠�#׽Zt<\�^<��r�\�\�ڪK2z\�({\�̀g�z�)��1���uȭ+�=\��Z�+%�\�x�\�9\\��i�u�,yq�5X\�_�A\�\�*\�\�\�\�POs��\�HI\�2=E@zb�i-�:f�M�+\�\�\�}s[Fi\�sJ�\�c:|hS\�?t�=\�̖FN\�\rA\"I�ǭh�fN-n���\��\0צHA���\���j3��\�+�\"����P(;\nN��:��M1\n3ǥ;+\�M�P3R\�l��8n�޺[���O \Zɵ�/��G&�lщ��7�T�����6�4<7�S/��\�zWC�Z�f*A�:�k��Z9\n�����\'�\�n\��]\�*��m��9�rZ\�<=x�2�%�I\�4o\�89��<q�\�\�w0�\�Jؼ�Ǔ��\�YV���\�\�(8��.Km�o�pN3\\\�\�;�>���\�\�1.|�`\�3#�s\�)�1$�ʃ�z`L��V&~�\�\�l\�Ӝ�:�L�#*8?�M�rs\�,�l\\\�\�REb\�8\�H\�\0X�s\n�-�POZ�%�\0\�\�mZ}6\�8D�܎qUK&A\�\�4n\�=��{��\�\�P\��\Z���\��\�V2gLU�E��R��i���~lҳ5CӃ\�N�9=�P�\�ۮjh\�pEK)�\�D\�$��P?ZB<r)\\d@s��c��2t\�\�M\�q�=*H\�^�q�\"`yG�X�\���\�@ �z\�G�����,�1��\�{Հ\��\��Uq�\rǡ���#\�\�@H\0\�u\����\�_Ni��\�*D���@\0\�s\�ڜF?�~�\�})A<�?\Z��s�@qҜH�\�4�3�h\�\�.���#�\0;P!�����c�皛�Ƙ�\�<\�G��\�H��1֤8\�za��\�\�g\�x��0z\�H9=고\��\�4f�`j����\�pzsU�y\�j���䄜�֬\�\��t�:\�\�\�q��PI��ε|� �Q������H��y\"#�\�Q<(xa�\�:\�ɶ\\�\�G�bN\�\�?:�\"\\L)t\�o����i�Tt��\�\�F�0\�R�ћ��\�y\�Zf\�1޺��\�U\�\�U_I����D\�\�\�\�\n6q�R1\��4r��HNM6PN\�Gl�T����\�C:�\����\�X��\�Ӛg�����G+:6&\�N	\�\��-�\�g��uֹ;+װ�R\�}kz\�\\2\�0vx9\�R\�\Z$�e���l�xa\�X\Z��\�\�F@\�t�\�\��c�\�5�\�7\\ہ�)��\"�ԍ�4\�:\�\�\��\�\�.�fx\�\�\�5�}\n\�!\�\�\�Ҟ\�jڛ��\�\"�\�z⴬R4�\n�n#�-$d<\ZѲ\�\�\�\�1��&�2}^\�K����MP�##�ږg3L\�w&�X�\�1~�\�rͼ-8\\硫QBK�F�Єx�ʝ���\�#M+�c*X�9	�\�^\�e1��\�#�:U33��k{�Y�\'�	-JQ\�\�\�<\�\�+�1�	��9�/\�\Zgܣk߽%�\�N�Ϸ�\'�**윎I\�\�8\�J��b�:1��K��\�\�QD{\Z�q�J�Z\�\�\�\�Ѹ\�0�ZA�?JCE�\�\n����*8�\�z��*\�\�C)㎜�Z�>Lg v�:��t��\��)\\c\��t��	�8\�\�\�U\�r;`���s\�?�i2�\���\�pj\����:\��MH\nv-�\�\�R9\� ?\�8�#4���\�\�4\0�\�\�\�N�\�I�\�9\�>�e{�\02	\�)T�a@:}M\0����)1#䞴\'\��\�\�i\�\�0ix�\�֙#\�zf��s�R�1����ّ\���DO\�_�0��\'��Lq�qQ�zg��\�3�z\�eFj\�\0&�\�\�\�\�\Z(ʝG�j�\��Ҵ\�\�*���xZi���M��y|c��\�O�\0U;�\\�a֔��\�\�\����sM0\�\�t5lG�\�Zv�I�qE��c\�\�0ï����\�\�\�B\�p��h\�\�N\�Rx\�@*$8\�^�\�p�P{\�Lv(Kj��0\�Z�%�x�\�\�1�޵q�v���\�(2�#JV%�\���z�\�\�\��\��u�b�\�db�\�_F����<�\�,\��Rl	�:�&ӧ�%�\'ޯ\�BHʹ#���R�V�g\��k�\��Q�����6�	5�z%�\�O�Cut\�F~L\�b�\�\�x\�\�$�16\'\�e\�\�\�MX�Ӯ/\�\�\��V���\�\�O\�]��[�\n1�\�\�&\�	\\\�\��\�Gg\�3T��Kxv�\����Z�T>X<�ҹ\�d$g4\'q\�\�zU\�[/6��9�\�jH?*�o/�A\�s\�LDG΄���\�N2�\�W\�\�Q\��5Q\�k���\0@/q��&�-uXc�\�U\�8栏Mi9\�,z*\�%�>��Y.Z\�\�\�\�x��\��Ҫ[i\�Ž:V�\'j\�r\�oN6Wb8\�P\�)\�S��\�GE\�{U�c��\�Ҧ�{��R�O#�Lt�6zz��\�\�\�H	\�r�\�5ey\�U\�\�ըǾG�K)#��A\�*Nq\�_\�Hw�~�1ؒ	�	�P\�g��c\�;H�\�I��Q\�J�gN�\0�@\n�\���#u p9�*X\"x\�l���)!�z\� �\�\'\0�T\��#\�\�\�@��&\�Nq\�\�Q	x\�ȧ�={u8�,IӦA4��\�ri�a穧G��z\��\�	c���\0��y\�ޥ\�\�\'ނX��\���\�8����	Zv1�\�zP!��s\�*2��\�ڦ�\0SH\�Fh��\�L �z\n��\�ҘS�@ʥ3Q�<�t�~Y<�Te=\nr�ûޛ��L\Z�\��1�\�L\0dzf� \0t��6��ޤ(	\�&{�@\'�ۃO\��J\0��A�~�\���Q\�\��I\�\�\�\�\��yLq\�C�`W� s���<\�V��lq֓\0��`zS\�\�~G\�j_,\�\��zT\�1\�<М\�{P&\�\�\�$~y�}�ަ�\��i�i��\�\�n�����\�5\�\�:�\�HbFX늵{=\�&(Ǘ9�\�k.\�\�I\'\��\�\�\�y\�\�u��\�\\��,K\�=\�J�]�\�#��\�̯�*�}렖\�+{2\0�q\�Cv\ZA�Ek����V%\�)c\�:�U_2I\'d\�۞�y\�U)�SJ\�\�u���\��\'��\\\�/6\'oJ\�,��\�ck>\�6j���\�c�{V7~^9\�>\�\�Xp��\\p��ƶ�b6j�FG\�;�\���-\� �@�\�SC\�:�����+[y\0\"\0>�:��&@w�h�\�J\�\nF6�z�\�dDX��K��|\�z�E\�\�\�\�IظE�,q�=\�tJxJx��:���!\�\�\�(@\\�\�Hcp1S�lw�o\�RF�\��j[)\�Zn0\�*\�3\�1\�\0Bi\\\�rpz����\�p�t�ǿZLh��\�9����FzmϾjt��*E(\�E(�A\�8\�j�g^��)�:qE\��F\'�MI\�2=�Җ>Ns�펵0>��4�0D3�\�NHT����ޥ\�:t=\�)\�\�O��Ԍ!�z>Q�r{����=�\�8�z2F\�!{c�Dv\�\�8�ps\�;w���x��d�ON\��(\�A �\n�\n�|S��J3�S�jh\�sR�<�bcpzt4~���^:*,\ZG\�M �\�R������`����\�)�\����\�P�wu\�@\�\n	\�BC\�0*cГ֣�\�rO�J\n\Z��M��\�\�>N�\�4\�}@\�\0��s�Қ�x�\�#=:\n�9$���\'���$q�\��\�׭F%q�֘o\�;=�\�q\�x\�U>\�$�\�\�r����XW4<\�\�\�M{�A\���.��!r\�}*��\�ぐ\r;04.5$Byɪ\�ګ\�*d:s9�j\��r�ʝ��\�cS1\�F�\\U�\�(�\�B�{p=�\�i;\��W\�䊂\�\�-\���\0Wm\�8��B�\�\�56��\�.z����$�!��9PqI\�Q�&�b�e\�ҩ/\"�\�pkz\�ڔ�q\�\\\�\�XץQi\�	�#�Y7\��`��Z\�D$A�\�SX\�\�8\�9�3����A!r3W~\�\�\�%#nz�U-Z���\��\�Ӣ�@�\�bE��\�#\�\�Z��\�a�\�\�ZB0;\�5\�ۍ�˟Cҩ�m#�rI\'<\�r�Fу{�\�,w\�]\�=*X\�\�)�+&\�\�V\"\��ӂp}jB�{\�@�dH��;Ҟ;w�v68�<\�ץ\0�g\�\�\�V��c�J�!׊�\Z:`�Ա����\�R8\���cg\0\�$�������u�\�\��#�N�猑�S\��\�i�-\�\�ק֮F���\�]�=�c��\�\�2�\�SJ�GAۭI�N\�R�t\'<zu�2�t<z��pGS\�ӽ;gR\�p=~��\�4���\�ޗ�\�u�\��3@1\�;\�JLc9旜1\�4�q\�Ҁ��rGsތ7\�\�HF_�I���A\�Ҟ\0\�\\R�9?�<z�(%�?\�i\�\�sM\�\��\0J�ܟ���*�9\�\�&\�s�\����7�^L�\��\�s�����r��\�iD��p��\�\�\��\\\�NU3�婏p�=\�N;T2u\�\�+�~z\�ܨ\'\�U�\�\�=�6�PI,=�ڝ�.\�O\�ҚҌu�5�.�;U^�\��sϥ;�e<�\��*�\�\�k\'\��q�niR)e#qa�\�V˒^�8��z\�;EH�,�-�:�;5\��ǥ\Z�?2Yぞ���ɂ\�\�=�ֵ��NA����#�)_�XˏNQ���zb�E`�$��\��\�\0\�N��\�3�.؛*\�j�d�jo%j}���J~�\�HW1^ټ�L�\��Y\�]It\�Ew%��\�]j\058\�1��؞yFr\rt6�1\�\�M�\��ҺkiG�Fhc%�1$g�nm��r3�+u\�J#`}+:\�\�\�r})�/\��/5�1�+0y��GlV.����)Dl\�\�bk�\�\�\�Z�&Q\0��֙��(\�\�K�\�ޢS��֝;\�\�\�<�\��\�YH���\"�J��\�X9\\\�J\�[1ENPHc\�c \�M�>�\�4\�\"� \�\�z\�\�r3L*x�,=�Wc#�V�?J�\�3��P�zv���Lt�\�r9�\����^A�*\��������c8��Q�\�U��9\���{p\�z��n\0⥔�qN\�ޗc\'����\�\��R,7�\'��\�F;���\'�zQ䞹�0L�\r\�\�3\�s�������s\�Ҁbq�\�a�S\�\�N;�\�\�DI�\�;�\0�:9\0\0g�9��=鼎����>pBOl�\�Ji�=�c�j�\'ӊa$\�=\��ǧN����g\�\�ސ@\��nɦ\�� �ab3prs��j\r\�\�q�ǭ;c�`Tf\�,٢ð׼�8\�O\�P�\'�I\�ɩ���\�t�-C�8\�\�F��]\�_�j\'�RN8\�\�\�d�˟SN�*�MXv2vJ�I\�(�bNs�5� �wt\�J�jg�$pjw�qg\�q�>�(�S�\0>�V�[�I$dr=\�D;�<ph�hQ�Ȧ1�;��B�\�\�Q1\';B��*X\�Þh\�H\nB#�O$���o�8_n\�0�\�R��q@�\"KpNO�L#Q\�\�qO\�G�Ҏx��Wc�0{q@#�7?�?�h\�O�;���\�3�v\�\�@�\�','2025-03-02 23:43:24','male'),('cdc6c59d-e020-11ef-a1d1-005056c00001','cdc4f8a7-e020-11ef-a1d1-005056c00001','Almaz','Hamza','doctor','medical','uiare@gmail.com','0900258963','Part-time','2024-02-06',0,5000.00,'day','650e8400-e29b-41d4-a716-446655440002','Addis Ababa','0900130082',NULL,'2025-03-02 23:43:31','female'),('db6f12f8-f2be-11ef-8b3a-005056c00001','db6db3d6-f2be-11ef-8b3a-005056c00001','Zelalem','Amare','doctor','medical','zelalem@gmail.com','0900130082','Full-time','2025-02-12',0,3000.00,'day','650e8400-e29b-41d4-a716-446655440002','Nifas Silk Lafto','0900130082',NULL,'2025-03-02 23:43:43','male'),('e40a03a1-e013-11ef-a1d1-005056c00001','e4086171-e013-11ef-a1d1-005056c00001','Melate','Eshetu','admin','administrative','hilcoe@gmail.com','0900130085','Full-time','2025-01-18',0,3000.00,'night',NULL,'Addis Ababa','0985856978',NULL,'2025-03-02 23:43:49','female'),('f3a57ee1-d7d6-11ef-9523-005056c00001','f3a56945-d7d6-11ef-9523-005056c00001','Samrawit','Eshetu','doctor','medical','samreawi@gmail.com','0913008256','Part-time','2025-01-17',0,2000.00,'day',NULL,'Nifas Silk Lafto','09110802451',NULL,'2025-03-02 23:44:04','female');
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
INSERT INTO `patient` VALUES ('190a4330-d5d9-11ef-9523-005056c00001','1907d2e1-d5d9-11ef-9523-005056c00001','Girma','Meskel','2222-02-12','female','0900130082','married','J','j',NULL,_binary '�\��\�\0JFIF\0\0\0\0\0\0\0�\�\0.Exif\0\0MM\0*\0\0\0\0@\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0�\�\0C\0\n	\n		\n$ &%# #\"(-90(*6+\"#2D26;=@@@&0FKE>J9?@=�\�\0C\r=)#)==================================================��\0��\"\0�\�\0\0\0\0\0\0\0\0\0\0\0	\n�\�\0�\0\0\0}\0!1AQa\"q2���#B��R\��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�����������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\������������\�\0\0\0\0\0\0\0\0	\n�\�\0�\0\0w\0!1AQaq\"2�B����	#3R�br\�\n$4\�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz������������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����������\�\0\0\0?\0�����\�\�&)1O��1�R▊L\�\n8S�)@�� c@���)0IN�9�!��R\�BbR�EC5\�V\��$U�M%��˺׭��Ȥ\��\0��\��b\�?�?Lӳ&\�-r�x�GC�\\�$棏\�8���1N\�9�\�方�InH.[@\��V\�<R���D\� �֥�4\�\�\�b�ǉl�̥}F�\\�\�mn\�̧\�q�\�C�e\�^�\�A\�1N\�!�Hi٤�\�S�(1I�u\0\�֤\�Q@���M\�@�b�)qH(M\�>�@\0������\�R�\rS�\�;\�\r���(�\�S��\�R\�h�b�S�HӅ�Si\�\�^hi�\�@&)i�\"\�	b\0$�BqT\�[k0|\�>`8Q\�kV�+\�g����\�<��\�݋>rI9�Q�\�9v:��S�#g�\�.�&����[<��\�b\�#��Gz	\0���I\"[l�9ݞzO��\'�\0%O���\�\�s\�ɥ2c�\���T\���\�GZh;��&�\�lwp\'4Ӈ=q�@�<ν3�\�H	\�29\�1���&��\�7g��@\nCdu\�\�\�OI\�R3\�\�2!�g4Ȥ �2=\�5�\�j[I�\�\'�~lWI�,\���W\'\�b�W�d$�T\�A\�S�\�\'=y�i1�4zJH���FA4\�\�\�5[�\\\�T��\�\���\�\�\n\�\�\��i�ԓ6)1H���=��E\r���(1F\�p��`\�)�P!�R\n��Rb�M��(NhO��� �\n9�\nb�����\0��J�\�u��L\Z\\R�i\�(\�L�1N\� �Z1E0\no�;=\�\\Ֆ\�ت\��\�B\�@nĺ��o`�q\�E�=G[��,�쉆B���q3\�\�K�3Ԛ�\�\�\����Hɶ��\�r8\�J$\�8=\�3��\�p;Ӕd�MQ!\��g�9\�\�g�8����$(��\�JCЕ\�@\rpz\�g\�qOx\�O\�<�t�\�d\�=Gl\�4\0���\�RǷa\�lIRGr0{\�\�\�<�@�ޝ�\ZX��s�3N�@?)\��\�P\�#׭\01\����\'\�\� ����H�`d\�j?/\�g\��8<�\0�z\0t[rW������+\��B�\�\\榓\"b\�&�\�d8\�g�\�4\�0\� (̣�	\'ێ\�\\�;d\r\0ki���\�;4\�a �\�M/_��\0\� \�(t��#\0��N\�)񖈬�\�H�\"��\�M�\�\�)Ef\�\��\�}\�\���\�\Z\�cU���ENi�Ԃ�QqXeb�(`�\�N\"��`�)����b��\r(�\�b�@��\�4R�1N\�\�/4����S���QE\0�QE\0�TWkl�¨\�4e-_W��\ne|\�25\�\�]Iu9�b[w4\�\�׺��V<�\�5]g�\�h�����\��\� b�.A=v���\�\'�v\�9�Ou2�$�Vb7d\�@�Ƃb؀x\�z7��SxrFp\�\0�8\�,9\�/�jYKd\ZG�\�B\�\n1�3M��\�Rx�y*\�,��zY,�A\�\�����\�\�\�\��c8�;Wr\�\�dZ.�\�Qoa\0T!\�\�\��B\\~8\'$gtiҒi�jc�2WqqSΑ\\�\�c0�~n���lr�pp�c�jɦ���\rS��`I\nq�\��)&\'��ǘH\�\rWx�	\\�I�\�Ryj�\�=h�Y� �>aY�Ny\'�j_��9\�8\�Hm��\�r\0\�%�\�˒p2:S�0+�xO\0g4\�*��\�\�5+���;T|t��\�E��\�I\�)πF$u#�D�zw=�)Ns\�n��.h\�ڔ�2S��(\�]݅\�W�\�,-�?�y�����V��/\�\��aa\�HpsQ%sH\�\��\�58ȩx�\�R\�s@i8�I�b(\��)!��\r5 �\�120*AIK�\0N)=iM6���S��v �\�֔t�@)sM�PR\�\�-AE��W\'\�\�\�%-�cs\n\�f�Ec\���b�\�w�8 �p\r\\�\"oK���(	��\�;\Z8\�\�4�NH�\�\�Z${���R�9�\�H\'���VM�\�pF3�\�)^\�J\�m�\'{T�\�\�\r�\�\�Jӵҥ~J����\0\�\�9�F��\�\�%��\'g\�Fj\�d\�\�pk��\�(\�}���$A��]n\�񠖬ŷҔg\r��PFsZ0\�\�\Z�t$f�\��*T�\�nm\�n��U��J�Ӓ\��0;UČ\�N\�=y�\�er\"�¸h�b�I�G\�\0s��2?Jc��\�>f	�2���9Q\�\�B4\�\��\��m��\�R�\�3ȣ\�2}�1�\0���wQQM��	�!\����9#�F�9�\�!:h\�4�-���ɭ؞�\003]����+*\�\�s�㱭�S��J+�\�\�\�\�NF}k^k@�zUY���8ke$\�w��;;f��\��\�\Zg)�\�3Ҕ\���sTI\��oV����uROZ\�S8�/��\�:6H*r\�^�c ���\�RV\�\�.�\�\nv(⤱�Q�ZAE�1E8Q@\0�\��M	���	K@!\r&)ih�R\�HE;��\Z`&)ih�\0b�)i\0�S�*9�b���Q\�09\�jfE�do�r}q�8\��jWF\��Y�;\�\�\0sҴ��1��!	��Bt\�pFI\�1M$rq\�W-�/ @8\�:�i�`��%��2\'ʹ\�\���c��`@��쬄 r?ƴ�5�\�~k�uC��4�cDj��{S�?�8vg4�3�²f\�Xf\�H��CB��֤i\rH�\�R�\�z�:~:��R*\�.A�\�\0�\�M\��sK\�s\�j\0�ks\�4ҟ�Yڸ��y�\n\�\�\�,`�\�y{3\�sȦ�x�\n� \�\�Z���mҢ1�}E1X�\��ҫ\�|\�\�\�\�zTOZ�\�h\�6\�栖\�`�\n\�tZ�\���f.\'1yfɓ\���8\�d{������\�⹻���\�\�\�E9]Y��!gtW,}�8�\�\�z\�J��f5�\�\�\�P;z\�\�\�Y_$�3�})\�]fzvsM��\�\�Yc�a�Gz��\�\�f(\�()9�����IH)�\�h�4��ޝ�Sy��`���\0\\TdԼRqH�\�\�\'\�@��P\�be�\�\�r�c&��\��ْo+��I\��\0\�\�q=�>��rFpNA4�G^\�4�\�\�#\�9�kcTی�\�jX${��AB8���\'\"����͞xz\Z\�Z����\0�pcR\"N1V\�\�|q\\��~T\�;�ڡ�!�\'ק$b��R���\�CS\"t��,x\�\�\�ȃ\���А6F:\�.�\�(�\0x\���T\�#���\�/���\�U�r\0\0\���Ǩ�\nvϱɣ\�\�<P=\�<���};U�����l���ğJG��nzc4apzt��\"u��\�:֌\�8\�Z�\�	��\�\\⣑C늘\�Tm�J�\�\�(Ks\�Y\Z��\�I8\��[\��Yב��9\�Z\�٘\�]ϖS9\�;R\�=*k�\�7=z�ګ�G�+�jr=�\�׆\�M\nz\��\�q\\��fW�H��d\n긬���uCh�S1H�)h��	IN\�(���\�4\��\ZJZ`QE ��u�\�/Jx��J)\�\�@\�s\�/*4��ya�+�\�s4���qmc�\�T��8�>�\�O9\0�\�M@\0\�S��\�a\0��9�L<!�\�8�f�2N\�_J\�L��G\'�\�W����沚��7fn\�\�\�ո�\�TmN�ۭ_� \\\�4�ؓ<T��5���3�\�\�`A\�\�*�ɤ$sNNI��\\�9=1��Մ-\�1�\�}j�hr\�V8\�\�x�����܌�:)y\��ry�S��>\�\�H�@\�=q\�O�N\�\�Њ\0k�\��\�3�NMJ?�Ƣ�)Ds\�\\g�g?�H�ǹ\�P�8�����\�\�4��*	3��\�i�2#�ʚG�\�ӹ\���5H�G/|\�B^\��\��*��\rZ3g=~�$\'\�G��КֿA��rp+!�\�t\�t�\�U�\��+t\�\�W\�\�Dz��\�\�]\�\�D�.(\�\Z��\�Q�p��P)E-0E\�@����E0ER\0���)��Rf��AHhu���2��\��d�K\�WQ\\���4<��;�{^[Ǹ\�*h����FrOZ�q\��\��\�ʜ�\��Z3�-$gh\�n\0\��\0֧��&`�\�rsڒ�=��W-����:���\�\�\��R\�0:\�5v3Ub\�3\�\��\�\�gdU�#�T�\�j�ȩ\�\�=�K�(\� w�2TS>\\��\�f��\��4IG�?Lt���Q\��\�S!S�P�`c���T�0zS�\'ޚ\�\0ϩ�\��v�.���W^�\�1d�Q��=\�Ȅ�\�<�\�J̫��\�ޘG\�ڭ\�Bj��\�8��cEy#$\Z�\�85{o�`\�-�# ���\�1���.ڧ.9�\�2Z)9#5ZL�\�VfB>�_$��h���z�\�O��\�GzWIr?v}1\\\�e���oL嬵6<\'�\0!o�\�\�;�\�\�\�9�Ͻz\Z�\'�Sz�J)�\�RP�KMJ)\0R�Ju1\r�\�4�h��F(���S,\���b�)\0\�\nm.i94LӳM��Hbf��E�X\�WS�\��(\�R�.⣁UȖ��\�#�\�\�ըs\�㑀H�i�q֭Şy9�\�Z�Q�ܿ_\�\�s\�ZVv\�>f\�\�T,\�2\0>\�\�k~\�\�q\\\��:\�E=E\�\�5\"d{\�yg\'?�9�Ƅ�0I5��\��\��f��H\�\�v\�Ed��P��$��\�2.er�n\�\�b�0\�\�s\�Y/��\�A\�\��\0���]y��h�\�e���_$rA\�PJ�&[\�p�g8\�h�\'9-�\�\�\� V�\�\�ȵ�\�$z�\�\Z�M\�b;�\��\�F.�>��\"J�$zM����\�gЎ��z���A\�G\�ڼ\�\�\�Dq�\�#\��\�}+S�L�?69\�o��g(���&\�\�R�(<�I\�\rL.yS\�X�L3��ڟ�9t5�\�\�\�usXʙ�\��=i�\"\�\��&��L�{}jI.Ӄ��\r�(���\�R�\�\�F@\�]]g\'\nk\"\�虜d�@\��\0=\�J┬�w\�T!c\���\�	�h�\0�2:�º\�vf0x\�p9�\�/�#�\�\�dt��4s��\�9\�Z�\�ے3���\0*�{�#\�\nČp1BGq#��z\Z�f����5N��\�q\��T�W@\�A�+0\�J\�\�\nΧ�\�n0\�m�-.�)>��Q��Z\�>{�f�\��B3\\��\�ˁ�UKvEm�\�x6\���\�#\�h>��`+\�Zq��R\�\�q�\�c�)\�ݓd7�Z\\R\�Ԕ ���Z`>��AECiE%:�N\�Q�7�(��P\r8���f�=�\ZQKE )2(�\�\�ES\�\��NNT�*ȡ\�9\�E4�O*GV��\�$o�v\�P}*��텾�\'O�\���\��GJ\�é���}k��W3��\0��5\�\�:n+��\�m\r�\�ڡ�\�;G5o�3\�=�GCҲZjn\�Ă\�\�\�\�V\�$\����8\�B�\nY/b�	vP�4��\�QE�)rPTt\�\��D@�\n�{c�k=J\�蟲@Y3�\�\��\n�\r��\�\�K�\�\�\�P�\�\�\�ީ&ȓ�u�A2�ʼv\�O�k\�\�I��Q\�ZWV7q}\�D\�zm?稬�e��;�$\�\�\�\�Ui.�^/�M#0�\�F�\�\�k�RJ\�1\�@/�Ȏx\�98?�Z`�\�o�I.�\�7��\�ӽ_�]\�\�\Zŷ�ڴ\�1�VOsd�.��=>�\�3K�玠zT\�\�@3��t5J\� c�<P\�P�Rw�<�Tn0I\�\�S\\Lk:K�\�=*\�s)$\�6\�+��ϭX�AYX�\�j;Qs6h��\�s�\0�kv\�J���F�g\�\�δ���ҬZ<�jO�\�N-�N��=�*)~\�v\�+�\�\0\�U^�\����Q���KR\�Z\�]��\0w�AT\�m�\�<�t7�L܆<b�\�\�i&\�I���>X\�n+-��\�DYq�ƺTL\�y�\Z-��Ĳ9�j\��g%E�;H�\0T���\�O���\��T�P\r;���NJ!�S)\�\n4�4\�K�\0����i�\�\�)��S�E\"��J��c1@�N)�R\0\�\�\�x�b��\�tQ\�Hzj�\�ﮒ\�\�\�1� 3Q6\�\�Ҕ�odS�F�,�ܠ��r+��1��r+\�\�n\Z\�\0�H70�\�r����d\�e���\�\�\�{0�E%\�;K\�x�\�k��t\�\\΋n�@\�N1�ҫ�\�臜R\�.{S\�\��\�V>]�`\�җS2IDhq���ǒ-\�[\�PrҶn-Z\\\��\�\�+\�E2ɆrNzgqJ��ɻhK�w}��\�>\�%\�\�ڹ\��o\�w\�R�\�\�8\�ӽu\�*M���0��\�Qҳ5�\�\�\�=�yF_����\�EosT�ٟ\�\�}�\�\�I᷎-д����\�:kwL���s�C�[\\y\�d\�����y�r9\�w\�Z\�:T6��j�ƻC;\�?�S�I�9\�r�t�\�S)\�\\c����enLjwnRv\�\'�֤�}�a%͌�r\�s�\0\�XYOc$�]��\�ΰ���:c��~\�\"��\�\�l�f����D�5�e�\�u�\�D�5H_#�\�`\�9\�sҶ\�|�\�\���+�m\���p���su9N�I�\�\�6\r;�\0\nzӒF��\��J��\�\�^wH.�pf8\�m+�&�R�J��\�*��O\�V\\�u�\\Mu}po��H\0ᗿ#�\�&�k�����\�u\�v6\rp�>��GhYv\�{~U\��\�8M�v�\\\�u	p����ON\�ʷ/�\��|}��\�\�g$TzN�&�~���>UA�\'�MV\�\�TB��$£4�(��$�0\��&e�2OQ޶-��\�\�\ZQ��<涬\�0\�|VS��5�\�ޤ�1Q\�1*j�N\�*��8��\�\��$hة\'�3I;&�Q��45V\�\�`�px\�jچA,*�\0\��\�\�xW�%�\�{<}�0;.1N�Yh�!�N���S��b�4\0\Z@\�\�t\�I�RdSy�\�\0:�(�\�\0%Q@\r\"�rjSQ\�\r<TiR\nHdoM\�\�4P�6}kX\�\�\�\�>\����\��\�C�*��\���\���*=QهWL��x\�\�9ҳ�2��|��J\����$0��κ�vR2\0\�Y\�\�\�\�iZ\�6�J\�t\���\�\�T4\�\�)&��*�5�\�\�\�zj\�\"\���I\�>�*�C�j\�]�d��7B\�8<UIl����@\�&����\n�-\�:�j4sBYa%]P�PqO�pO\�@MnIj3��~���ʁ�\0ծO$\�\�0\�\�\�#\�\"f��\�7���9\��\�)S8\0\�iBH��j��*-�6��,\�I5%\�8D\�1\�5y\��=I�|��}k9O��i\�VV�9\�]�\0\�\\&=)cr\�\Z�\�Z\Z�=���\�^+M$s�UK��8uC\�\�<e�M�,Skg#��]q\�\�]	\�O�v2j\�%�\�n��\�GZ�\�.���\���V�G�\�r;\�8\��\� Us!4\�cx\�\�_\�\�5�8QϷ5�c��v�{�)�f]\�W\'�&�E�8Z�r�\�\�b�(����w��E\���\�k-\n�\��j[ku�~s�1M)�jŁ\0\�\Z��\";\�ϒ\�F������\��=��Vu\�_\�ދ�+R���ܚ\�D�1\�3�jN\��zÁ�Tc4\�H撊=h������ө�ZL\�\�7�qx��P1���J1\�\00w�(\0R)X6\�Sri٠�\�4\�oԆ;D))\�d\�:nُ�cUXw�\"����桓M�(l\�4�$�S�ڢ�+�`\��Z\�m.[���Y%do\'��E\���/c\��KQԊMK	��2\�:\�\�`�v-Ōոp\�\�8A\�<\�U�\�&kFdg5y\�gÞݺ\�\���\�6c�뚬Cs�ȫ�\���\0��\�\�E�ir2A>�\"[�\�]�\���I�4%�\�=iz��I\�\�H\�\Z�\�S$����RT \�8\�5%\0�Kz��L|��\�j#�\��$,v�M^�\�\0z�C\�\�$Q\�E2=\riCPq\�P\\\�6���W\�s\�#\�=�UC\�sZ�1�\�Am�GQ޴[5�~\��\0�\�ϳ������}\rj\�\�ӽO[�!�2�\�}(�qW�q��qQ�x��@X�$cJϚ0	\�sZRg��F\�>�\�3>@9�r\��ۥ:L\�\�6�=\����\�-$�\�\�:8\�?\Z\�\�\�߷Ơ�#\�&��֞\�5��ai�\�\� ����\�\0SM�8��A����R&jA�hb�*^)�E-��P	�\"�3J{\�1Jh�\�\�s�II\�5�f�wh��Z3�Q�K�\0֩)�O*@\�m<\Z��\�ڌ�\"��b�\�smbsJe�����(\�t�I��I��9*9\�iF�\\!\�1\�5�\�\�\��\�dYDs�F\Zd\'8�5(R1ǝ��*��\�\�Z�Q�\�F�DqV\�=y��\�]���+mh\�~Aӎ�j_�\�5�O~@\�3W�\�=zTܻb\�Հ\�<T�\�g��ԓҳ�!Ю\���+\�q�?\\U&&�\���\�\�o��E\'�J�\�\�\��8\�Utidzg�\�\��|r�ݎMmZ\�sc<�\��Z\"$L��8\�k*\�Z��J�#�M6�ؕ$�s�0\�9\�\�\�Ep�\�+\�|,�E���V���\�\�Z6\';�N\r+\�q�[�\��\�Xe�Je\�\�D++�nj�\��l8a��gk�^�\�\�\�B�֖+a\Z`\��sW^!KWh\�YI\�\0~5\0���\n��5|�\�9���͹z�\�*��\����\�\�\�#ԁ\�*\�s?�K]\�O��%\�\�\��.Ƴ\�`s략 ~�1<c�l���\�\�+�pJ�\�y\�Ter3�;Є�*ˁ�m�/�\��\�NA��\�\r-�\�s�\����Z\�\�X�s,�CԌ�Zb�\�\07\�qWkds\�w��f�CVf(zC�h�E\0(\�.)���)\�ԧP\�\�ih9���\0��R* jM�Pd❾�Fi�a�֐�@i\�\0\�Lp#��\r6�\���ʯC\�W~X\����\�s\�l\�\�\�Q8r\���=��j\�\�\�}JԤ%۹\�5�\�[���m�q\�Xq��\�U�Vw&��I\�y���eŚp\�=\�\�Kֲ�p*ϛY3TˆS�랸�d��xSP���\�Aspc��\�h\�w\"��\�\�}jݴd!�5�o\�\'�\Z\�Ȋ>zU\�M\�8\�$Lu>�\�Ysh�H\��V\'<V��L\�#ːJ�\�i�\�\�i=\�#I�\\:�)�:!�	�t\�Zy�\��\�ڬ\�\�\�c�����M�!�\�\�In�\�r#1(�\\\\��2�\�޷�°qs�#4�b��\��=7��\�\�f����q֏���e�l⴦�>c����\�>��\�i���.�\�j鍱�ҩ\�\�*\�R��Y��&�`�b=;\�:L}ES�9\�3�y�\�\�sCW\�]yH�ڪ\�)�2z�߭Blc��m��\�\'ި�\���qJ�Lh�#\0Z\�e}u4,��;��sV�q��\�\�-l�V9[�lZm:��\"\n)i(IE\0*\�邖�I�J(h���\"��\r;4�7�M:�P84`\�\���\0����Pi0\�>V`=3N���\Z�[2��	_-\�y��@��\�\�l�twG\�f�\�[B�&ެx}#sK8�@9\�VꎣA#ҥBx��#\�ty�\�\�2\�/\�%<ـ\����\�h�3�N8\�E\��|\����\�6\�\�z{\�fK���U\�\�!���O���]�Bz�b���B\�q�ȋ9�V|���g��A\�U{���QۓT���\�-��\�\�\�f=�\�XG�\�\�\'U#�{\�x�fr�2\�lY\�!��Ӟ�9�\�H�f�|�s�&F@8\�\�?ʡy��;�21\�\�F�\�\�\�OBM\�\�;sE�\�m�3\�+�\�p}\��۔�Z��!�ȸ\�Rب\�\�s��pH9��0\�k�u\�A�`\�����[L\�g�M$s0\�+S�\�w2�x݌b��Ĺ_cB2%Nq�)\�\�c��\��8�qǈ�Rr*Z�qw*J@\�V\�榛���\�\�\'��8�\�D�d��\�[�[E\�#]�\�Ȱ�̽A\�~c[\�V\�Z�%����\"��\�\\\�RRf�ƒ�4�\�\�nh�C��\�`\�\��њ�4o�`$\�h��%6�L椡┚@\r.) !$Ѽӈ�\�4�\\\�f�b�\0��\�8P�\�\�\�?+�����&`�i=�\�6\�V�MgD������#�y+pz\n�昇�Jq�� \�ݟ��44���\�\�\�:\�\ng�\�T������z\\IsK�\�\�7��m\�.���Y�1^\�\�GUQ \�7���(��\�T\�Tw\�q4@Hm��mZ\�\�m\�ă\�w]�H��Ȟ��J\�>\n���ƣh9`k�-HY\�.U9\����\\��m5�����X�G͸w\n����\�\�F�\�uZ��-n��jG�lt[;[\��`�u�r\�\�\r��o\�\�;��q�$M���i[x\�K�&थr\�Q���$��o��k�{\�\�>\�����/�4K��1۠E\�u\��\�4�9\�㿆=\�a`wˎ\�뚶�2\��\���G\�Ao\�M4�	*�nAe\�K?;\�V,p23�Y�hvv6{\�a��ǵV���\�4\���\�\�${�V�Ư�A$WW*�\�/�\�n\�\�\�\�1����Y�p\�\�Ve\�I\��S�m�7Ox�ʣh\��s�ñ\�\�q\�1�b\�ߕ�6��\�\Zz�\�\'�\�\�n�;�.����2z`p	^\�\�9\�\�b�4��O�\�I\�;Rɑ�\�)S\�Q\�\��\��ҹ-\�\�\�b9�S\�\�\�Z�\r�?f�D?{5)���#�N\�\�i��\�\r\0���&�E�\�\�\�\0ǵH-\�Ӱ�3p�\�V�\Zp�ji\n\�L\�\�\������N�SHW36n\�:Y����lTb�%��؛�aoCEt�g_J(�\\\����M\�(5��(�\�\�\�a\�]��i\�\��)qN�\�P+��\0�ȥ\0b�\�)�W=\�5r���u��\�MT	\�s2�\�8\'��o/��\�Q#�\��k\rՎ��4����?\n�9?*R�>\�\r\Z&K\�Lg5�o) �\�>�\�/Nyj\�F\�t\�&�CLՇ�\�m#8�Kx\�.C\�w�8\�<�q��$\�8\�qM1Z\�b`;m��\��!G��߮i.-\�ɑ~�zj\09�\�V��\\�,\�\�$e\���g5f\�x��\�H\�\�$t�\�K� d��\�#��ӓV�4|�u��\Z|N\�����8\' v�\�Ef�4�\�����Y1E�v\��<�rZ5%F���4\"B[\0z�1Tn?v\n�\�<[3J�Hʎ1�X��I,\\\�A\�J�\�%$��\�X��\�wv85�\�\�h\�NIB߻t�|Â3ɨn\�\�|ҀL�HI<�\�R\�)�G$�ZV�@�U�6\�\�\�#䏒}j�\�E\�f8\0WKef-mB叭i�1�;+8�O~��ۼ��kk�\"$\�g\�\riť\�q\�\�;S���d�sS%�����Z�[���WfDv>\�f;QZ^R\��cҝ�r�[\np�Z�c�\�@EJ\"�R\� D�5�\04�8��\�(�4�5&)\���\�LT�E�m.i(�c鏊QHh\0i\�4-<B4\�|�\�\�)��G#�Ο\�$�\�4g9�\�\�\�s}\��\�N?+�:\�ED���֧�P\�~���R����\�$\�њ	�\�Vb\�\�\"\��1:�\�4h���Ԋ�$ �qU#~�ʧĆ\�8\�PRe�p�Y�h>��t\�ޛ*I;\�+=ሓ��ЃM:\�\�԰�<-\�\0\�9l\�r~_����y\"\�������փ\�\�8\�T��\�W\�9�.�*u�;��D�+\�j���RF�r\��枖\�1�sS�X�\�8�l5{���i����q�*Q�\��j���8#��W.iF\0&���RI(}*\�E\�jh���&C\�с\�]-�+��\�|ɳ\�]M��\'v���\��\�Q\�\�3�[�iEn���*ϖ�FASЃ�i\�Z\�w��QE0\nZAE\0;4曊1@9�����3`\�\r\�	曊|}\�\0\Zx�\�e0M8P��̢�\�\0\�)sHi+#a٥��u\���48\�I\�48QE\�8T���M\0J\r={\�)��j�g7�G�@7��\'�Ux�\�ix�1�\�\rgD�zW=EfuQwB<`\�ڨ\�D{u�Zc�j9c=*��W3!��\�\�\�5u%WN\� 	#�c�d2�\���uvORkFm[\�y\�\nф��8�k�IOU\�\�Z6\�A��⥢�6\�ks\�NqUm\��\�ܑV�\�Ǹ\�;\�X\�2x헓\�=\r(\�\�\���pI\�Zj!p\�-�К��7$C���Mx\�\�ש57��m �P�FG�\�E�\�j��O֧|c\'5�$c9\�\�-\�yO\\c�Lz\��\�\'|pj��rz\�(\�n\�z}j\'惻8\�i\�Y�ִz�MmO)&oq[\�H:�\�\�q��\�$�=�\0�\�+F rs\�[\�\�G4��\�\�_\\[\�ˑ�z�sWbץF�q\�g�b�H\�\�,���X%�%�����G [\�sXE\�Y�\��\�)�Ս�\n\\\Z\�F�3�n;\Z�\�c\�Q�XV\'\�T�7�ϭH#S��\ZV<\�sS�`R\�i���PNj-OJ_$\Z\0��Bc�\�\�#N\�\"ܾ���ɢ�8:9�\nk\�F\�A\�E0N�bP(\�-\n)h����Il�i��;���UG��SJ\�݈�\���\�UȬ�|\�v/r\�V>*S�%#�L\�\���u��-\�&7n\�V�\0C�KPQob-~\�u�/圳�\�|}�\� �9��\�k�n��TՕ�@\�\�zӈY9\�9�\�1דR��s�\�\�(\\[�}��\�b98\������;\�\�-\�=�\�=jӱ\r\\\�IH�l\�w�p\�߯��f�\�\�Trd�W�3\��\�OQҬ}��\��ڹ�nZ>�#9�U\�\�\�\�\�\��S[3j+\���=�Կj��\'$g�s\�\�\�:c�E*\\I\��\�q\�G+27\�\�\�s\�4\�AaY	rÎ��=\�\�\0\�\�&��s#F[�\'<\��Z��%��g��ع\�Bx\�P�NH\�\'�5J7%\�ŗ���\�1<sPI>�\�!\��9��!�}j�Dj\��N;Ӷz�\�OJz���������.@�\�,�\�~tp	!�ҷ\�O64��R\�+�\�?����ԁ\\��Z6\�:�\�t	���z�BU\��\�q\�������\�QYܷ\\U\�{�\�O��m�a\�85�*`\�\"[2\�ӂu�\�\�E_���\0\Z<��JF\�h�=^�\��(Cȣ\���W\�T\�\0SQ�D�y��GFS�cʨ\�G�,�\�=g\��O\�U0ҍ��c�\��E��\�ޙ\�����\�RO�F}:PH̵1CE\0y\�4�Ի)6V&\�x��Q�\0m&\rHR����HJ�\\U��g�\0�5dh+\�ff>��`gY�{x���\�<�g�\��\�T���M�̇D\�u��;�7\Z���\0VU�\0�ꦬ�Jw�G�h�g��Y����Ց\0�x�� B)\�3�j\�r�;c�\\�\'��$kޕ\���\�*[�iX�cӚp��hA\�<���t\�Iv�H�?\\梖!��Ʈ$j�\�\�\�F@\'=@#4\\M2\�\� z�-�䯧<\�̊\�9SǥW1#\�\r\�ERd4b��1L���\��[/k�\�>�T&\��?PjԈp3��&7nR=Fjd�^μ��b��ۮ:���l�~\�\�\�)&K�E��y\\�CL7�\�@5_\�\0g�i\�ja�֝йX�\05NNKdv�>�!9����w�\�J\�Q]\�8���\r,q�8\�8�0\�\�c�Cf�EFF	\�q\�\��4�2�\���\'�|/4�Z����\�i�C�Q�C��c\�\�5g\�R���4jZ��[�\�kjo[UZ\\�\�h���z0\�5��\�fh�^\���(\�YO�x\�zֲ\�A\�0���\���x9�\0\Z8�( :S�֝�sI\��b��\'Z1ցl��6)	�TF!V�M\�\0V��{)<�ht\�1�����\��h�48҂�a5lBOj���\�5����Y�,v,{֪E�\�\�\�;RcFtZ`�\"j���\Z`\�\�\�\�\�\�U��S�\\�\"TQH�)\�nN3U�� ���hB�F�j�\�\�;�Y!�AI�QҔ�ҧNEha�\��\�>�{qi&wB�s\�=�F\�]���-\�\�cN\�\�\�\��s>P<\�\rH�\��i˚(��ӑ*scG�ֳf�D�0\�\�1\�z��\0\nE!6�\�Q\�\�\�:z�Հ���>�Ҹ\�T�d�ƫI��\�\�iyc�\�\�Nj?(g�{\�fyd}\�Ν\�}�\�<ց�뚂KQ\��\�SLV*I\� \�EFm�\�T{\�U�\'\�\�\��\�\�3\��\0�;�\�Cn�8V�S\r���E\\!�c\�\�\�?��q4Tx5,q/l~Y�E�pI\�֬Gl\��f��\"�\�ԃv{rj��@>ޔ\�c4�U�H9=})�1\��\�\�\'\�5&\�w%������6�+C\����E��{�\�oϵ��)�/�|K\�e�9BL�\0�N;֔ިʢў��	cy�D1\�co\�zֺ\Zĳ3%\�	\�UvPw��տ>�f�#5\�p��\�c\�K�E\�N\�\0\�M8�)���\�cҥ��S�$�\�LC�M\"��\0f)���P)Eҁ\�\�!0(���\�j02~�\"\�EblN�<`QE1#��S�\Zκ�\0V\�QI\�R\�\�BJz���J(��c�\�nU� ח\��\0�\�Q\\؍\�ُׅ sH\0�h���\��$tQI��S�9��CEPp\�Q\�\0\�\0f�(\�P�.O�QE4&4������QT!\rǭISE�����%\����25\�R\�Z(�/\�5�w>$E�\�\�f\�\�#4QZS\�\��Y\�Z�j��^T\0:v��袻�N)\�)\r\�O�R@�\��\�E\�>�(��E\0\��\�(��\r$\�(�g�\�',1),('27fa02aa-b5a4-11ef-970a-005056c00001','550e8400-e29b-41d4-a716-446655440001','Eden','Dereje','2002-05-11','Female','0912 345 678','Single','Senior Accountant','Ethiopia',NULL,NULL,1),('27fa1576-b5a4-11ef-970a-005056c00001','550e8400-e29b-41d4-a716-446655440003','Abel','Birhanu','1999-05-11','Male','0912 345 678','Single','Forex Trader','Ethiopia',NULL,NULL,1),('4a8f2b6c-d845-11ef-b188-005056c00001','4a8d34ed-d845-11ef-b188-005056c00001','Selamit','Gebremeskel','3333-03-23','female','0900130082','single','yuyyu','hhhhh',NULL,NULL,1),('6c002f6e-d582-11ef-9523-005056c00001','6bff076f-d582-11ef-9523-005056c00001','John','Doe','1985-07-15','Male','+1234567890','Single','Software Engineer','USA',NULL,NULL,1),('8c939d8c-f6cd-11ef-8b3a-005056c00001','8c9202c1-f6cd-11ef-8b3a-005056c00001','Marselas','Eshetu','2025-02-26','female','0963524112','married','House Wife','Canada','jjeej@gmail.com',NULL,0),('91750c0b-f6c3-11ef-8b3a-005056c00001',NULL,'Mihret','Tilahun','2025-03-25','male','0900130056','married','Engineer','Ethiopia','mihret@gmil.co',NULL,1),('a6b6de77-f6c2-11ef-8b3a-005056c00001',NULL,'Meseret','Defar','2025-03-01','female','0913665698','married','Accountant','Ethiopia','meseret.inbox@gmail.com',_binary 'data:image/jpeg;base64,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',1),('c4d4e549-d582-11ef-9523-005056c00001','c4d29db6-d582-11ef-9523-005056c00001','John','Doe','1985-07-15','Male','+1234567890','Single','Software Engineer','USA',NULL,NULL,0),('cfb2590f-d5d6-11ef-9523-005056c00001','cfb11070-d5d6-11ef-9523-005056c00001','Edini ','Amare','2025-01-07','male','0900130082','single','Job','Ethio',NULL,NULL,0),('d1119ee1-f6cb-11ef-8b3a-005056c00001','d10db9b4-f6cb-11ef-8b3a-005056c00001','Zufan','Alemseged','2000-03-06','Female','0913133103','Single','Neurologist','American','zufan.inbox@gmail.com',NULL,0),('f5deec2a-d79a-11ef-9523-005056c00001','f5db8f2b-d79a-11ef-9523-005056c00001','Mihret','Tilahun','2025-01-08','male','0900130082','married','Engineer','Ethiopian',NULL,NULL,0),('fb752087-f6c2-11ef-8b3a-005056c00001',NULL,'Tesfaye','Girma','2025-03-21','male','0900130085','married','Engineer','Ethiopia','dddddffh@gmail.com',_binary 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEAAAAAAAD/4QAuRXhpZgAATU0AKgAAAAgAAkAAAAMAAAABAAAAAEABAAEAAAABAQAAAAAAAAD/2wBDAAoHBwkHBgoJCAkLCwoMDxkQDw4ODx4WFxIZJCAmJSMgIyIoLTkwKCo2KyIjMkQyNjs9QEBAJjBGS0U+Sjk/QD3/2wBDAQsLCw8NDx0QEB09KSMpPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT3/wAARCAHaAdoDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwBOaXJoIorqOcXJpwJpopRSGOyadk0yn0AO3mjeabRQBJk0u40ylFADwTUokOKhFLSAl3mmlzTMnpnA9ajkIAyG6dc1LZSQtxN5UeSfmboKxL2+jhBGcyMeg5xVXUdVZ5z84CqcDFZhlkmfczgJn1xmspVH0Now7k9zdRxgMhLydSAOlVUimuP38iFVXnJ4p6OpkCopZs4FSXsspQRM2G6BRWDepvGOhnyOHPVtueMDOaikmEfEe0v169KdelbUCMn5iMnHJNUv3vLqiov95u1Na6g9NCOeV5s72HXsKhACHIz7mpH3P3Y/7RGc1GcH0H14qjNknlg5z6cEVFymTj8KU7U6MB9aRMnvk+tMQA8jPc8U+4jYSBgOCPypuBsJ9PSneY2wA/MBwPagBwkVNjlTjODg0/EcxzHIBk/dbimkJ5Lfw88g9qgeMpgr0x1FADpYnjch1IPai4j+RHXqvalhuMfKzEqeqkZqeQLIAFz14FK40iCLH6c0sYUEByQFOAfShF2OT0BOKdKjEfKGI68c4ouFhkkZQkAYBPrmhI2Qhgc46YqxbOroFk6ZwT6Ustq0RLDDRk5GKL20C3VF2y1UcRzqRzww4xW2kqzRj5gT1DdK5mOJZo90Lk46qe1S2dzLbTBQOhzjpmspRT2Noza3OiELEBk6qc8c0+3vJIiUIBUn5kPGfpVO31NXfaSY5Ce3GKvI8U7kXY46ebGOn4Vk7rc1VnsV7zToJQXt2ZSTjaecVlyaZJC5L52ZzlRmt2azlhQujCSNuQymmC6TCpOCV9RxiqUmJxXUybeFgf3c6jJ7itGS1vbceYdrKRnOMZq0LKKRC9sEOTnDd6s2wuI8xhUC4w0cnIP50OVxKJmC/wD3e1gM9wTU0X2a8AQsY5RwCTSX1nbpIWaM2+B1T5lqlJYyEBlIwBkSKcYoVnqNprQnkhv7OTK7XTP3gM1etr8/KZ1wM4LCs631G805hHebZYGHDA5xWp9nhuI/Nt3ByM89DRqhaNGohXYHU+bERgkdRT0iJXKnIxkVzqXTWcg2u6gHDKR0roLaZbhA8cinjoK2pz6GFSFtS9ZXBKFD95eDUzuay4pWjvMdm4NaOeea6U9DlaswJNMJNOOabVANJNNJNKaSmITJpCTQaaaAAk0mTRTTQA7Jp+8+tR0+lcLEB60YpT1orQgKWkp9IYUopKcKAFoxRRQAUuKBS0AFOFJUc1wkWQTgn07UmxpDJJcE4xhfWud1vXBGDGjnJ4LD+lXNY1KG3tSN2Nw4A71xN1cG4kzgk54FYSl0RtGPcdvluCXy2WPHvV+K2aOHBz83Vj/SmWcIt08ybBfGQvXFWEeS9dEJ2IT19BWDZukW7YwwRlgDvxgGkIEMbXE3+sYYQY+7/wDXNWYbdXIj6qp4H+e5rP1aU+YLfIO05OKyvdm1rIziF8wtJ+8lbn0AqGXjG87mJwqD/PFOkLRZKn5j3NQRlo0LseWGAfStrGLZHLM4QoAq544qoeFGTz7VO4HLHp2HrUed2ecf1qkZsbgmpo8ccc578UkSE55HHU1NvTeCfu9xjOaGx2G+URG/BO7oahTKYUhgfWrUl4OVRBs6AE5pok8wZwufYUahoG9sYIUg8ZIzSDIH3Vx0Ix0p3y/3cnrxxVmJAdrgYJ4JPIpN2Glcz3KoSPLUn8RirUQzjCAZ5IzU0tooJYklCeg7U2UYzsQ/MNozSbuNKxEEyTuX5s5GR1qNyUOEbBzwaf8AZ5ocHqV52g5qeSJZozKqEHgkA4waL2C2hVBOSZkJ4xkcYq5bSq48vduUjhTwahYCYgbmDHrnjJqMxywkNndg96bs9GCutS09s8J86AkY5I60+OWK7GyQBJB3FMtbk+/XkVJcWpcedbjJHOAOtRdp2NLXV0I0UsRCzjzEzwT/AENadkWMZRJC0fXDcFapWd4LmPyJFxnjjsfUVKmbV9wPfhgMg+tTK7XmVGyfkaQuZrU7vmZOh2jOPqKfKba8QMpWN8ZOeM//AF6s2EnmYdBnj5l9fpViWwTO+NUeI88DpWKdnqatXMSOSaxc/IzRsf4Oa1bbU0uIyk8TFc4BYYK1RvbL7RGylMFejKcYqtppvIZ2t2mYMv3d3OauyaITaZszWbFCBIHi/hJ+UiqJzb3CKCUTIycZx/8AWNXEuLiEkXcS4xyy9D+FNlFvdblhJjlXnBPDUkmtypNPYLoW1vCSVDQuckYzg/8A16oxQyWpMmmyEM3WFuQw/wAacAIz5MwOG4KnnNNs5Y4nNrPxk5jYng/4GqI9R/2pL/kR+XKo+eM/0/wp9q8tjchlB8snnHaq97I0NztuBuzysi8Mf8akTUGIG7ay4wexH/16aWt0D1VmbjyZvLeQdGGDg9a2e1ctZ3SJNH5zYUHKntXUgq4BUggjgjnNdVOV0cdSNmN5pKeRTTWqMhhpppxplMQhpKWkpgNppp1BpANFS81HUlIZCRzSYpSeTRWmpAUUU6gQtKKSigB1FNp1ABTh3/nSVBJI0mQudvrQxrUdJdCMMYyOByx7Vi3V8CjylgEBxz/Eak1a5jEYt0bDA5PvXPajeLKiRIPkTqB3rnqS1sdEI21Kt1M905ebq3CqO1Vo0KyfLh3BwPapSjlCTwT1/pWjp1mkcOZEzITxjtWDlZG0Y3Y1IXl2Rgc4yxx1rUtbBo0MaqpdyAWPOPYUluvPloAWblnI4Uf41qCJbW1+0E8oMAE1hOZ0RikQxxx2vmENxEDk+prmLh/NnmduATyfatq/lMOmyclmlP0xXPzAuI4M8A5ZvWqpq+rJqO2iI7e2a9mJYN5Y6Ci5AdySMRJx0xV0BobcQIP3jDJ7YHrVO8hMf32KRjpnvWl7syasjNkBlkJwfZR2prosf3iM9lFSyXCgEJkL/OqwkYMT8ucdeuK0SZm2iZMlOgC56HimHljyDj0pRjg5b8aJEIjJCkt9aYhEKk5+YZ/GrCRqfuuMt1HSq0QYYyCPr2pJS0cwIyARzQwRpRQsh+cc9u4NOIkyVc/KxyG9Kis7pocFzuiJxyORWsQvkeYih4mPUc5rJtpmySa0M+Pz4PkmXKHgGl/ehyIwrdtvpWrFFbXqKpwBnbnPSqd7o8ttIPLwzKcDJxmkpK9mDi1sQxxNg70MZPHBxS28SI8kRZiGXPzCpYvMuIWjuI3VlOCGqVU8raJoyAvQ5zSuVbYxZYp7dy6uTG3oelPt7lpMo7fKw4J5xVzUY1hnzGVAZeVJzVTyoXBBVkcDcChzWid0ZNWYro0Z3bQRngjvWjYXC7wjnBJ4zxWfDLGEwpZu5JOKmEsT5+Vwe3PSpkrqxpFpao177Si/7+E4fqcc1Wttzv5c/wC7dDk5HDirlnctsjILHaMhs5/OtKSG2vVHmKEbHDJ0J/8Ar1jdrc1snqilYu9ldBGyqNypH8q2hDJIGkg+YdTg/wCeayHhkimWCfIjYZikxnOP6itKyl+ylQ7MNx29Oh/wNRKz1RS0Vh2EuSMERzMMMpGA3+Bps1h5cYZwzRNzx1U1duNOjuSJo2IA5Pqv/wBcUfaGjjkjuAGkA2kDgOD0b69qSZLRngLDIkVwfNt5BtEg4ZM+vqKp6lplzZZmUM8Q6OnOPr7Ul5uiwyH9znDBuSv/ANatTQNVWaNraRlDoMYbo61o7pXQLXRmOkhuYQWILAEbhzj6+lZdxdMCVcDJ79c1s+INHk0yc3FruEDcnByV+vqKw7grMCeOueO1XGzId0Ti8MsYhuG5HKMeR+FOETwncQ21vUVlZ5MbEjH3c96v6Zeq8gt7hiA3AJ5xVWshXuWXjIwQcp1K+n0rY0rUpLFxFI2+AjKt1xVOWz2ZByyLyMdxUNviN9pzzyrelOLtsTJXVjto5o5kDI2QR2pxrnbK6eMlkRtynBUHIrUttTiuXKDKuByprpi7nJKLTLRFMNPNMNaEiGkpaSgQ2inU00AJUlR0+kMgJ5NFB6mitjIdTqYKfSAKWkopDFpR1pKa52IT36CmA2WQuQi9B1NVr26W2h2jhyOFqYSLbwl352jPPGTWFNdLJ5lzcHAA4rKbaVkawV9zN1O5VOAxMzD5iDnr2/Cq0MKxoC3L9x1qrLcebO0nTJ49qvWA4MmMADjNcsnbU6Yq5JDD84GMueee1bESRJHsIJlI4x2qtZW+SHJAXOck1fiKR5kAGWGFYjt61hKVzojG2o22tvKB3ZCqdzHrk1Tvb5rqY5b5AcADpUd9ftJiFGPzHJxxiqT7hgZCheuaSj1Y3LoibUrkyQqucqD+dQW9k0g3yOqdz3qOZ4okBZwSOneqEt7K5wrMATjA71rFXVkZSdndl+a6WKZltsl8cs5zmsi4eW4mLSPuOcDvirG9I7Z5CmWJxkNUUMYmf5A3ryc1aVkZt3ZVuF2IT6iooogQck5PQVamG9wh780kkpiJjjVVHQkDk1V9CHuMPHGOnOcUyQMRkZODng04ZJ74PFS+USGxnIHGKL2Ha6IU3A5JJz1BqeSLzUIB+YDIHrUMZdyA5LL0we1Wh+7Ebg8qcH3pN2GloNswsoKk8jqPSrNrcvps/lTDdbS8jJ/l6GopYfImWaMrskGeD0//AFVNKcw8oTEecY6fSpbT3LSa2NSSxYQteWGZYjgNg5x/9eksdW82CSK52uOgVhyKpWN/LbBhb5wRkqOOnqO4q9bxWurgyQgJOo3FU4yPb1qGtNSovUe/kxESguoHBI+YGrAj3hWgmjdGIyucVT8mSMM4GVIwVIyDS2QiuIXBUpIASrYx0qLXW5pez2K/iC3kjuVbaMY5YjGKyhkOjL0zzn0rpdSiZ0wozuUFgeTxWJNCECsEypOMjitYPRGU1qylJGYbsqOMjI96tIcjP3SOpxkVJfwsYYZEwQvB9RTrdA2AVOGHBHFNu6ElZ2Jra4eI9BnsRxn/ABrbtrxXgyu0ZPKkdD/gaxQgifGcE8FWGQadmSF1l/gH3lHaspK5rF2Opsry3cm1vBuicja2cbT6j6VauLFZI2jDFmU5GOM//XrA3xXNt/dcDhgcgitHSdTdIVinBJi+UNnp/wDWrFxe6NE+hdsJTbb0uThScH8e9Muoy5aLG7ZyG9VNWrlIpsSDAYckDnNUIpmS58tm/dlcKSMjnsfakl1GypJJJIkiMFyo2vkfe9/xrAvDJYzxzx/wnB/z711RiBkZdvOSpBGcVj3FmxeWFgSpOMHtWsX3IkjattRi1LSkV3BcLhWJ/Q1yl7GLeRtowu7Dr6VPpiNbTGNs+Ux2sDxj/wDVS6vC4jFwF3BTtlAH+ePeqirMmTujJcKDtcZjJyrelWPsuSjbgpzjfjOaYIj5JkjO6PqM1e0l47r90yhdxxkHIq2QuxuW8k4hWObHmoMqwGQw/wAKimt4pCHTKlhyp4xRvl0jEU2XtW9Dkr7ipLmISwi4s3WVR1ZT1/8Ar1CbTLsmgt5Giceo4btmrMtsJXEqfLKvIYd6rRolxAGQ/vOjKTyuOh+nap7KUthX+Vs8GuinK+jOapG2pftrpiAkww44z61aI71SKb+vUdCO1WIZSU2t95eDXQjnY+kp2KQ0xDKKKKAEp9Np9IZXPWikPWitmZDhS00UtAD6KbTqAEFNc5fHZadnAqpcTeUkjE4C+tSylqUtYmAQR7sZOcZrltW1FZQIU+6vf1qTVdRaS5PPGe9Y8j5JJHJPFc8pXZ0RVkSQhpJAo5JOK6S2t2lEdug92x2rL0e1YBriRSFUYBNdBZgBBglDJlsg9FHUn2rmqPojpprqyzbW6TTeSp/dL98+uP6VDqV00QYADb0GP5VceZUtS8KY83gAcfQf1qjNas8yxkjCjLMR09T/AErnvrqbGJvxl2O3PVjzmqFze7ARnkngdcVY1W5jifCkErwAO3/1zWSQ0h3FhknPA6V1RjfVnPKVtESCVZDl2IA9s5pyYd/kKkngY4qHy+QvfPAA61pW1g0ah8DJ4Ge1U2kSk2xJotkMaEDgZ9qs2duPIeQdThRjjFOuoi4GP4euK00thb6OwI+cqWB+tZuWhqo21MBI1uLmRx91RjH0rOKMkzM2Rk5ANa8QW1tZXx+82569Kx0VpNzsSSeDmrizKS2HISCOODz9KvQp1ORnrVAuUkK/gK0YT0YfwjmhhErXEQhudpB2sMgjip404IwMMNtS3UQlQKeP4lYdqjijZAV6svBBpXuikrMfbx+dbSQMMup3qev1FR28rR5jbLA9Pf8A+vVmM7ZFmQfOD8wovbNeZoSCCeVxjaf8DU3WzKs90NEbR5lhXdtVhk9RkVVtHb5JYmMcqjOR1B/+vWnpo8wsHJJ2nOeMfWkOnOhJRcNnG3FCktmHK90aVldfbg5AUSqMyIBjPv8AjTpLZIi77WVCMNjnaf8AA1lEXFnIJk+WaPnaeM+orYtblblPOU5VhhlB6e1ZNWd1saJ3VmSHdKF2j9/EuQBzuxUD26uUfYFiuTjA52v/AEqWYmORDbthhINjHt7fnxSWd4UvHjmTEVwdsiY+63qPQ0XaWgWTKstkyxyIwOU6gjqtVbOPyr1IpBlGG1fQ1081rLsDZ3vgKWHG4VnXNjvsjKrKJLc/K3TP/wBcUKV9BuNtR9/pC+ShROGGRnt/9Y1iJLLESmFZM8JJzj6Guus7qO902Pdy8YxJz1Hr+H9axL/TlkcmPA3n5c9D/wDXoi3swaT1RVt0jcnyS0bMM+W46H2q67tD5cxXZKq/vFxww9aygGjA3Z45Ge1aYeWWMAbXMYztfuKJK2wRs9zYs5gYQ2VMTHg/3f8A61VL2QxzO/R4zkH61V06UWpKnP2dzyjfwH0+lWrlMBCxDBSYyc53A/5FTHcp7FwyrNHG8ZxIVyDnAb/64qLUYxDJFdqCNwBYDnj/ABFZemTBt1o7ncrHy2J6f/WrftUV43guVBK5XBpNWYJ3Rj30KxSGUICJAGYDofcexqQhJbZSgDoBhge49/pUlzCLcG1Z/mVt1vIeeO6GsxLo2N6Y2DKWOdvZh7etWrtXRDsnZlVLGSwvyLfLRMM4PK4NCRLbXSvGoTcMlUPB+nofard06zRkKW2Mcgk/d/8ArVUS6W1/dXiblB4IHT3HrV819yeW2xup5d/bNEyEhRnrgr+HpWbNZTaTP51mGlgk4Kg/pVgWzR+Td28gIPO5TncP8auSXENzbSDHJOGXGNp9R7UtFtsMzQ7Sfv4M/N1XuParVvcrJMSqkBl3Y9CKx5C+nTks2Vc5BBxUguWiKXSH5Qfmxzirjo7oiVmrHW2ziWNTxkjNTFACCPXFZ1hKsiFoyPUYq8khfAxzmuyLujjkrMlzSUpJpKogTFIadTaYCU+m0+kMqn71FB6mitjIdS02loAcKdTKXNIBTjHNc1rd11weCeBW9dy+VC3qeAa4XV7ppDyehwMVlUdlY1pq+pmXEpdyTyxNPtbfzZlLZIz0HeoDyQOuOT71tWNq3ycfM3PpiuaTsjpiruxriQeTHGyjaOuPaljf7SmUyGmcIFHACCh0+zwFmHJ+UE1NpAUzNIR8lupIJ9a55PS50LsakhjF0PkzFbrkc4zIf8BXP63qZhhMMeBLKfnI7D0/rW5qUi2VlGzZ3sDMw659BXB3tyzyyOwy55YnnH/16mnHmd3shVJWVinIGkk3E/IOhPf/APXVmytmmcIoZnY4HYCm2Ns9zIT12jJz3re0q18ve5YAqMgDknNdMnZGMVdlCxsDcXhIHyqecDOAK2rqNrWDzSnygHHHar1np4trZDgiRuCBUOtB5Y0hGSWbYqgcHHWuaU3J6bHTGCitdzMt0Z0hdlykucH0Na1y4l0qF9oDspVseorEj81LJ2JP7uUAY7Zrbj23NkgPyP1wPWnLSwJXuc3cCNLDEm4bmIJHtVCONJPlSRevcYq9qyMJxCfu5Iqp5SxEgA5Vck1stjCW5WljZJSflJBPQ5q7ZcON4wjdc1C8TGUZHDDJp4HOOcAcA96G7qwJWdy9IPLhG7lVOAfaqiSB5MByGU4HqP8AEVb+aa1ZG4ZRnis/YJcMQN2MEipRTLiPsPzDbu4yO9XIwRGZOGBG11rJSSQEBX+YcjPOa0rK9y7ROixO4wrDofw96TRSZIY/KAkTJiY4LY6ex9qtwkxvgnfER3GSPp7VTlcSEtasCFGZE9P/AK1SWsmQGztXoM9DWbTKTRryWAvoxLGQ0q84P8Q/xrBeCfRLvJBe0lOQw/gbtn/PNdBZyqCfLYxSD/ln1/EeopJXivSY5ABIThkbgP8A/X70oya0ew3FNXDC3Fs8wKh2YB1Hb6fXrTr6x+05l3BWwAZAOp7Z+tRfYpYo2jyRhlB5znHQ/wBKfHvjmCyyEKwKMvuKb8hR8y3p11LJYSQzL+9iGAw70kc0CPjaTFKNwB49jWja20QwxU574Od3vWJeRNZvcOy5VW3lc8BTwSPbpULUtlGAy2WpSRo2YwTjHOR6VoPcxx+WCqtazn5Sf4G9Kz33I6ScsAwBI/Q/0q5MiwhrdwGglOQcY255B9qq9ybWH3NgTMVRlIjHLdSP8RVc2zfZhKgxKpwVPQg+nqD+lT6TfJHePDdgqRgxsed3vWne27eRI0hVY8YwOg9CP89qbfQF3Mq38uWDdld33SSevsff3piAXEclsXIYHKc9DWZfSNY3SODmOUYYeh/+vUsV8qPvJ64wR1BFFraoG76MrJcfZb+ObnrhuMV01xchCbhPmUqCwHf/AOvWDrEef3yfdchgRzjPWremO8lvIG+cKQSD/n0ptXVxJtOxPf3K3Nsu1juUckdvRh/Kss3S3qNZ36/OnMbgcg055Pst6YxnA+UEnOf8jFUtSiYfODg5yG9qcNHYU9VctxzS2YJmi+0Q4wWT7w+oqzJbRXdt5lvIrxNwMjlfrVHQdQBuRHMBuPBz3rU1bTnt0N7Yg8cXEIPUeo+lD313EtrmXb3VzorkOha3c4KkcD6Voect1GJYGCuvp3qkZllTBPysM4PeoIvMspCEJw3qOtO33j9Avy0qFWI3qOB61n21yw3RFiAwxzWjJIkhPctzkdqzry3YSb1H1xWkdVYylvc2vD+pmFzFJyM447V10RyVbIIPpXmkdw0NzG4BBPBrvNOmaWCOUEc9Vz0rem+hhUXU1qKRHDj3707FbGI2m08000CEp2aaaXNIZXP3qKQ9aM1sZDqWm0ooAdRQKBQBna85SwJVsMK4i8ziPPOBzmux8SZ+wHHY81yV9zg44wK56m50U9iGxsRcXSKWCqTliewrpv3SfcXbngE84FZ2lRokO5l+duuatjfKdoXGTgsT0rjqO+h10lbUL+QiFPmJydxz6CtLSkP9mICeJDubAxisfUpoiCGcKgG0EDNbFlIU0YFR8nlgj3/+vWUlaJqtzL1zUxJMcEEjgD6f/XzXLuC6FjyFbLE9zV28JlkBGd2cHPegiOTy4kH/AC05b/PpW9NKMTCbbZctfJstMEkmXllbBUdAB7+vStbQIiYA75JmbO3pxWfeRCZ7W2jQLhQeOwPr+Fa5kW1RIoWUhBtUjnn/ADzWU5XVjamrO5fS+XzvlySgLAdeegqKbL6hbICCIImIPuf8ms+3lUvNIONuCCe2P8T/ACpkdw3mRsc5YbT71mkaNkMaEveQqpZSeR9KtQo8rg5xjANRh/s2oMB1YkH8RVi3cG8WYHEUxKn2b/69VJaaCi9TP1u3cwLIoIZTtbArO2CSAvj5sAH3rqrpF+zGfY3lN8smedvv+FZRtVjd4XC8jcjLyGFEJ6BOGrZn+S2CdvQZqGW1ZkDKpywyMVtRQh4GbAIAHI+tXYbFEs8TMgKEjJ6+1U5W1JST0Oati6feAxjGCKcIlG7jGW5x2qWWFkmLEExk4B6Vb+zDfjj5lDDPem5aCUdTHlhOcKM4POKvWYXA3JuKjIPQ/wD6xTiixjfj7vUeo71aFq0UwCAFJF3xsD1H+NJyuh8ttUNl0xIrpriCQ7ycsAcEZ/mDSm1a6hL26Krr/rY1PT/aHsfSpwGlkjdeCyY4GM4/qKbbXUUV18+Y5ccYP3v8+lJ3aErJkwhc2yqVxOhzGwPDD0/GlAYmNpEyh+63of7prR+zpcWy3NvKWjDZK+h/oaJI15dQAjDEinjGeh+nb2qFqXe2xJbTKiRpMFZZFKcc5xz+YqtqMIikw7KfMO4MO57fnUdyjQiJ4cnaNzKfUcfninSS/aLYxyFtmMq2OVNFmncV7ovadfq8Kqy8jIXnHTtUWpyLNG4fPyjBx6H+eKx7e+WzmAkJ2bgzEdq6J7ZbhJY02htokhJ7+o+lJqzuUmYVrEs1kVGDIp24J61eurf7Rp+CMPGMZz1HX+p/KoJLfyX+0rxHxvAHQj/61bMqLJHHID+7ZcnHf/69Np3uTfocVM7QylJBu2nof5j0rTtdXaS2aGckgDaCeoqTU7QGRFCgSKfvHnI/yaoJpkr4UqTuyAelVo1qGqIryVZBtkwVZcDHNUIcj5N2Coyc9xUt1DJE7xkDenOM9arxTLKQDww4DCrS0Ib1NVJFdPJc/IVyAR0PY/TtSadeNa3hjY4WXgjpUO/YVVhkIoBZeaZcxtcJuXHmKcAZpeTH5otamg3koMsvB9xUCSxeWEuCfKY7S2M7T/hS21x9phVJMLIvAJ459KbJDjMbA4cZBI/z0ot0C5UurB4ZvMgYMVOQQa6qwv8A7ZZguQHUAMeuP/rGuWErFNu4ieMEYP8AEKt6DexC8aOf5Nw7Dr/+qm02r9iU0nYsalZi3JAX92xyFzjaappNmERzHO04DE9Pat+9tvOQ5O9VAHXqvT9K5q5iKSFG4kUZBx1/+vTWugPTVCzRtbusoGY2HUUjkOMgn5evvTYpd8JRj8ucFSaiBMT7GPHY+tNEscY1wW64OfrXV+HnElsUzkKcHPbNcqkmwleqkcEdq2PDdz5dz5f8L8H2rWDszKaujrk5Qf3hwakD+tRISCw9eafxjmulHOx5xTTSZpuaZIGn5ptLRYCuetFB60lbGYtKKbTqQDqM0lIeKAKerQ/abOVO+OK4+8jOI+oK8EEV2d0eCB1IrmbyPzLrPRc5yO3/ANeuepZK5vSu9Bum/cOPvZwM8Yq7fXAigMcZXJHzMO3tVRCQSkI6jk9cVRuZW4gzncck1xtXZ2xdkRTOPsRdycuTiuisiw8PDLHPk7gtc1dHhVX7qcfStzTZTLHJC2dwi4NKa0QQbuzBlI8sleQ4wzdwal0eEzXUceOeSSeMVAQ2BMnIBwyn1/8Ar1raUkey4vxkIke0oTjBP+NW3ZEpXZY+0ibUplBURIcFh3AqCa6x5ZGATkgdOn/66Wwtm+zebxhlJPOMf/qrLmuPMLEZCkbRn/PesrJs1vZFgXjAKmcb25rZ0yUSXVqhC43HJ+grlhIPOV25C9B0zW1p1yC6uE+YEY56VbjZERd2Wr7e87uBywJXHbmmxzH7KSOFfh168+v1rUuLfmL5Rznj8KypEMI3gZjY4dR29x71CaehrZrU17K9Z45YpsMki4Y9c+/49KygJLG68twWg5MYJ6A9vwqK2uHtpgyEFT09/wDPpWo4TUYAquqyY/dseAT6H0qWrPyHe6HQ2aPCWgcbCOSB0/CovNAMYZ8pjY59ff8ACqYuGiITcUdeAy8YxTJL2YyFp0VyP+WiDr9RTsxXRoJaxujISWXOQRzTri2CQwtGMnywwz7HFULa4KOHtZFck8x5xir0tyyQW7shVlDqUJxwanYb1ITaqXAkBKuMZHapbNAAbN8B4m3RMe3/ANamxXKnML9A2Rk9KfeA+Z50OFK8kj+H/wCsaXkHQknt/NtZSp2vFIGAHGM9ao39r9ojLMdrbdynpk/0NadvKl1A3GJCuHGfyPviqQkCJtuTmJjgkDpTTYmiDRdXezuTDcZBzwzcbvr7+9b2pPHsW7tQ2zJEkZ/h/wARXP6nYkRiTKyRkZjZRn8KgtdcaECN2ZkHAbqce/qKpq+qJWjsy5NdFAU370YZjYHOR6H3FQR6liQnc20cDJ6UXkUZAnt2EkUgy0YPKn1FY0obj5iQT8rAYz7H3ppX3Bu2qNa85yVGY2GSOv5Vr6LrCyR2qOR5kTGI+6kcf1rl4r1ox5RIDHoD2oivPKugRlGBBK+pFDj0C/U62+laxvZEwDFOuCD3P+NSWN7shNunIZSRuOcVm61dC68mYYG8AZB7j/Gs6K5b5ZFY9g3salK6G9Gb1vcEmGaRwQRhgf4SOKnj23MbopOWzgZxgjpWXbhTJJHJ9xzktjp71D9qaHUCikqWAZWz0NK1x3sWtas1QRXwAK8CRfTsf8a53UbL7PeHaPkPJ9x611ZuRclkIBilTBUDOCKzDambTWjb5pLcHDeq+n5U02iWrmN9pMMkbqcqy/MPX/64rVQRTQLJHwenFYs0BicofmVRx7g1b064FsSjfMRgg5xuU/1q5K6uiU7OzJrmFi4YABm7jv8A/XpRN5kYicfOp3Kxqd3TYflyCMkE43e49x6VGwjuMZ+VwMg560tepej2Kt4PMIlC7ZF4YEVnnImWZOCpyccZrUO5DhgcsMHvmqc0RTOBh1OQDxVRZEka+k6mib4ptzR9FPXAP+FLqVsjzFQQXxuVicbqxrKZobpiVOFGOe3NdBrULW+0rhomAeNvQHqPwNDVnoJO6sc4JWjmwyjB4IxReJ8mRjkZUjvTLwoXywKZ6kDpUkQ+0QNHkF1+ZSO9X5k+RDbSncATWrppMV0p6EkH8axYgSTnqDitK1dvOhOec45qupPQ76GUSAN+dT4FZdlI2XTuADWmDlA3QYrqi7nLJDQev1pKOn480lUQGadmmU/FIZEfvUlKfvUCtTMTFAcdKWmuOh9KAH5FB5XJ4xTcgio5ZFjhcnIwCeKfQRmX17mZkhGSBgmsWQl3++pJP3c013e4mdkyM+9KlrwWdwqnqc81w1G29TupqyJInUAkZG0YJ9az4o2JaZgQASQK1BbF4VVU2hjwT6e9OmtQU8mPnjaD6/8A1q57pHRa5jmE/ZVkY8SNmrEdw1lMJ2PCkLx3qe9jVHjt48N5Yxkd6z9TjZAgPQccdCaaaloxNNK6EJ2XMmACkpwV9f8APWtIQm30yOIsAsrZwO+KoadEt0Yw5OwHDn0x3rW1O5WG5hhdFZFHDA9P89aUnqkgilZtkWpyLZ6UkYdQSNpwa5kykuvp3q3cym5nkj3ZBHGeeetUTu56+gz3qoRstSZu7uSAgH6CtLTCfOTPIAycVlckhBye9a9mPKxgDngU5bBDc6uO4MoAJ6Rgj2qpJEMuMdD0pumv5oXPXGCas4L3JBGOO1czdmdkVdamVcWTRETQdRyVPOaiiunQFo1G3+NPT3rphbfuQVHzLyeM1kajpzRzGa2GxiMlSMg//WqlNPRidPqjLlvgwD7QHBwxx196SWXzACNyOBwwOM0pSKTKMNkn909D9KqxzBAYn7HA9qteRk/MkTaeHXLdmQ7at295JsMM3zr/AAhzkj8aqoi4yOg68VbjhWaPkfMBncO9JtdSlG+wzzIyVfc0bY2neMg/jVlLl+AQWwMZU5zVWWL7y5+VjkD0NUjG8MoPP09KSSYO6N2K4ks5EljjLxqcspBGPpVqWW3+1Oo+TzBuTeflYHsfQ9q5yOVwchnBHYEitPzXvLONJNrSICASM5Hp/Wm13JL9vcC2DqyuYGOWiIy0XuPUVia3piwv9otf9U55Udj6j2NJDey252Ekqv3QT0+np9KZLceYjGFm6fNET+ooimmDs0UrW+ltXC/wE4IPapzcREE5wf40IzVCYgP90EHkEmk8xXG5cq6cHvkVrZPUxvbQtzJHJjy2DAjIBODULxyYDFWDLwSe9Jw6AxsCvdT2qHY0ZJILRng0JBc2JS32KMqxKgAlfQ0yzvDC5ZkV0kBBBqtY3GyNoWGRnIJq1ZwoZBvyI2bAI5xU2toVdvU1ra6EUcLMc5YqWPpTNRQPIroeAcqQOh9PoapmKS2uZoHXqQyj19cVNFcrIHiuTlSPvDv/AIEVk01qjRNPRj4bpgm7J3KclQcVb068IvSvynzDwD3Pp+PSsuWJrYiQMJI2HDrzn6+hqsLjZIpU98g5p2ugehf1uyZC0sI+VfmXI6qf8OlZY+e1L45VgOO2a6qS8jvbBhgBiu4Kffhh/WuYKNCZom4Vl6f59KqD0sTNa3JIpTJCc4LDkg9/f61EbxclJFwOxHaoEl8t9jnAPRh2q2YorkBXwjHgyLyDV27ka9BI7phjkso43A5xUhuUIG8Bl9CKznDWchB5Geo71Y2LJGXD4x/CeuKXKh87tqLJJEOkpGDkqec1sW98t1phWfDeQ27OckK3X8jiuXlAfOxuR1U8Vd0W4+z3TKcMskZBU96px0uQp6lq5th5YOMo3QjmqFs7W82R2NdHbxJKj2652yDfESc474/p+FYuq2zWskeQQzrkgjFSnrYtrS5XfCXkiH7rcg+lX7ZSXhz95XGPes+8IEsDdyorX06LzNhxkAgEVotbGb0udTZ4E0pPc4rRAygPIHYVm2YCThCeTyK1SOAK6onKyI0lOoqiBKkqOn80hkJ+9RQfvUVqZi0lLRQBWuC0ILqpYdwKpy38UsEik4baTg8VeeYAlCfm6jPes7UrNJkZ1UCQDIYd6mTfQqKXU5pLgI52kgA5BHap/tkDnMjs7dlAxWa8jW87ZU4J6VbhNs+GIw/XjtXDNHbE1nvP3KbvlB5C02F3lkJ+7F/ExqlLdW2Bh8lfQU/7e0qJCgUIAc4HJ4rJo2TJLFA8dxdEZCn5Qe9ZuqhhOsbEEYyCPetoRm20tFAwGIGB3zWXcxK84B5KtkZ7+1KLVxzvaxDaubSEKRy/X6VVvrgyX+cnBGAc1fuf3iCQDBxkj0rIwH69R0PpVrV3IeisM8xgS3BKnrTpTG7l8lS3I70yRCgIPQnOfWlSMyINpDbeDVkO+wttGTJyRgnJPoK0oziRCOhPT2qKKIJGCRjjOPWpbb95MCR0Gazk7msFbQ29Ndug4LcCt24thFHFIR7GszSbflWx34FdXeWx+xFiB0yM1yzeuh2wVlYrWyDBbjG0VLcacTFsKgqeVPpRY48kk88DIrUhLPiMjIA4B7VFxnC6noJkJK8HORnj/Jrl7u2lhlIkUhgcAmvYpLVZMiaMEEdetc14k0iNLNpFAcLzgjmtYVGiJ01NaHDWspd0jb7x4zW+lmUjEq/dJ596o6lojWyLcQhmgIBDDkp9farmnX+bZUk2hlOCcZzVSd9UTTTWjKbwh5pEzg9QeuKoXAIyGzkHBHp/9atqOFZJy6kH1FVb+xYAyRjocYJ6UovXUc43V0ZQJjwe47jvV6K4QwGMcSA7lIPSqeCnK856gimPHjDwnjrt64rXRmFmi3J5RJk/gYfMBzj/AOtVW4iaPDRsNpOQQelRpI0ZLJxnqpqzHGlzGTbnEwOTCTjd9Pf2oWgnqUXCyA4wG7gVDZxiS6ETDHmArkVM4Bc9VYHoeMU3I3qzD51OQw4rRMzaD7K8TEqccZweDT/M3gLIuG6bumatXPliYqHYxsodCRjGeaZ5ZKYyG/XFK/cduxHHbmTPl8OvIz0NWrACV3gJKysNyZP8QqGISW7h0zjPTrVy5jSQJcIdsoO4MOKlspIuW0olcGYBty7QW42tVe4tyjl1zhuGU85pT99ZozhXxuHo3/160LOWJ5vLuf8AVMcbh/D71F7alpX0MRJZbKdo2AZMYKkdR/jUMiI4LQ9jn0xWzq+mtbzEOAXU5DDkOvrWObcZLRNgnrzTTT1E01oJFfFBg8Mp4p9zcLMA+ACowajOAhEiA4HUdqrPuj5Q7lPIq0uxDdtGPePzYyBncpzUcdxJb9MEdCD3pYXPmA8/MCDTXDH51/FfWrXZkPuiU3S3CFDwT/eGcfSrVrp01wAqFTkYKs2MVmPESN8J5HUZ6Vt6Sblxl4/lXhmc7cfjSei0BO7syve6DcW0e90289AM1Wt4tk0eAcg85rqnurQweVPerIGPTcT9ORWPeYjnKRKoUA4I7/8A6qE29waS2LNldRWSQySBm8vOMc4zRre24s45xyWfO4n72R/Ss2KQGQZ+6Dg59KdNdM1mtocFYHYqR3BqbapjvZWKd9Hj7OQe1dFoqZQEdjnFZNxbebGrL0VQ1bmjjYUUchhnPrWkXsRNbm9aw5nEh6KvFXTyait/ufSpjXVE5GM4opaSqJG0+mU+gCuepozSHrRWpmOzSc0lBoAz9TRZYTyVIGQemK5uTV5Y90bv04z1zXUajt+zHI5A4b0rjbmITIxbGR0A6msqmmxvT21K1xMsjglt1M3hCGUgZqu8IGck5x2qPJGck1ytG9yZpAXJPTOT71ds5D5idsg9azEySOmM4zV61B89Cfug9D3pSSsVFu501xJm1iU8bQpIHaseYnBbj5pMAYxVuS4EjiPdt3DAJ7Gs+SZfPUOSNvXPY1zxTR0SaYtxKHRwh5BwRVO3jzIfapbYq9y6E5DHjHepLdFS6kjPvWlrIi92VXkaMtwrAH7pGafDcqM7IkVu5C9KbcoMMfbrTLZPkbucU9GhWsycP5pPDMzcDJxitXTrcvhQOM846VStbZpSAgzngn0rtdB0UCMMRzWNSSSOmnC+rLWlWTZjJXAzjitfUtwgEf8AdHJ9aux2i21up7g5qjqT/uJG7t0zXNuzdasZZRqCynjIB/Sr8cY+UjqKqWZU3RUcgoOtaCqCSRkD2pdRkwx/Eelc94nkD7IQ2Gc/dHpW3cXEVlBJLIRgDI965KJzqWoSXkxxDFySTjB/+sKa7giVwsMPPJYbdnXNYup6RbW8ay2zmKUjLRkZGfatyI+bvuCNqdFJHas68/0mbYnLHoBzirTY3FMxRNLE+2RB/dJHGavQzxywGJyA2McitL7AsbxxnDhASQeckiqr6cs0xWNCAoyccc0Npis0ZV5YjIKjD45A5BqpJYsR5kGcgcr6VsyWc0YwxPB4JGKRLGU/MoU7uqimpNEummc3Lbk54w/cHvUCIQwByGB4PSuql05nBzFx+eKz5bAcqVP5VoprqYui90ZEpWYgvxIBgse9VnRgSMZ9RV25tmQAMDgcBh2qk4cHqSvr6VrF32MZxa3BJN6bWJ+XgHripY8DhuvYjvUaY3HdyCMZFWIkzHgJv9MdRTZKuWbeIu67XH41dktznJUr6isuO4kicZzsHUAdK2LO6W5jER5J5XmsndG0bMrIjwyAryh4I6g1biiWbPksUkXkoe/0NKBsm8uQcfTGanBjjcspIwMHA6VLZVrbCyvI9rtYE7egPasaaHZiVOATgqa3La6Es3zqNp4JHenXunLHnAxHIeKSdnYbV1cwpbZXhD/3jg45rJkzFIe4zitl0e3keFuE/hPrVG6t0B+YMCe4Oa1g9bGM1pcobyCGQsGBzTvtRB5xk9cimFMPwcj61GdpJBHuDWq1Mm7FkXDRvuVIwT0bbmmS3M0u4SOxPUdsfhUUUxjfKEHPVTzmtN0gvLYTR/JKg2so7f8A6qbsiFd7FAOeUfgsM5B61Olw2E3kl4zgn1FU3LHhgQy9OKni/fABgQy9x3pNWGnfQnhkyHU/eXkUHnIHfpUUh8qYEdQKWObEnT5TyMUwubmmSK8GxyNwjwB6Vf0wgbRkfKOvtWBHMEdWz14q9CJeRC5C9aIqzB6o7WGRdowQeKmyK5vTZriIhJFJXqMV0ET+YgP6V0RZzND6ZTyKYasgQ0+mE0uaYiE9aSmk80VqZjs000UmaAKupDfZuBy2Ogri/MMM7b8kE9PSu4uifJIGMkc5rmLq1glfpjtu9awqK70OintqYcz5JwBlu9QGJieec9xWrdWEcI3Fzx0GKoSyGMEIxrB3TNlYAgABIwq9zTonbeH6DtVQyNI6qxJx2q1G48wA9+KhjT1LUshdN/dTmoLqUTYb+PHX1/8Ar08OHJj6ZPFU5QYyVPIB6jmlFFNk1u5SRWBzg/lVyUMJgwHOeccYrOtueQe9Wr5yNnXJHNJ7lRelx7g8qcYIxTbVMybByTwTUcPKg45NX7KMRXp3LkZFS9Lo0jq0zotH04EpgcDmu6sYVjjAGOBz7Vz+ioAo/StbUb9LG1LZAkbhcnFc0ldnXdJWRoXEqu6x7unXFZGsXMaRtmRdqnqeM1gSeIpIz8pIAPfvVDUdYa82K+WAORkUcjYuZI6u2uYo5A7yhcjnntT7jxLZwwkK5ZgM4HOa4CW/lL7WdgDwB0qe22yP83Uc5NP2Yc9zQ1LWLnVpgASqg8KO3/16tW1rKY443z5Q529Afc1BHbGRwyGJR1OO1aUVk1yAjznZ6JxSasXFojurocW9uRKw49h9auWFi0MYYAlyMliOprSsdKtrYDy0Bb1IrRjt0jGT17e1TboVzIxvsLDJxyR1qtHC0bs5HJat949+Rnr+tRvZDy8dT14pJBfuYcyNIhXHOM4I61WSMxDMZ4J5U1tS2rYxjj+96VVNk2SvbrQwWoRJDJjzEMTYxnqDVC8sUSdvRuhroLe3BhAIJOOwqO6smkjHTjjgUajVrnI3tgqISADk9hnNc7c6dICWVceuO9egy6a2Dxz1GOc1j3tiyZGzAJ6HnNaQk0ROCaOHeJgRkYIPapk/dOJIzgjtWvNp2JCW57cis+WHyn6cVspXOVws9CZJo7kncg3HgjpUo0xopBLay47gHjFVhbpJh0Yqcc471PbXk9svzruTOM4zSafQcbdTSluILyDy5P3F4gyAw4Y+31qGItJbGRQAejZ7GiWaK4QbkXkcd8VURza7gGJjc4PtUpaFN22L9tJE+CTtYfeXFdB5SXungBtxXocdK46SQx891PDCrdhq0tsThsr3BqZQe6KjNbMLqMO+3HzqcHNUL1N8ZTjcvI9xV2+uhNIZoxtbv71lXMpJ3ZIJ9aqCdyZtWKAAzg9TwPeq7jYc+hqxJyT6Zzmopeu/sfvLXQjkkVDwSRyO4q1YzNHMD/CeDmo3iXkq4X/ZPepYYsHllwRng5zVNqxEb3NC501tgmhkO1hkDP8Ann2qjDmOYevetOx1EW4MUmJYGGGUjp7j3FV7zbDISUDx9VYcZFQm9mW0t0F0FKB1BwByKgxjIyRnpV6MQTQfIzcHgNxVWZDGQjqcDpntQuwPuNCORgfMOvHar1jcmN1VuAOD7VRD7MMpIwe9WorhZDhgAf51RJ2FjKsgwSDgYIHY1pQ5jcgEsuMjPauSsrxbaQEcgjnJrbttTiOW3rk9BmuiMk0YSTTNcuPzphNUft6O3DhmPRV5qeMs+CwIHpVp32Id0T5zTsUwU/NMkqk80maQmkzWpmOzRSUlAijqbt5LFOoHNYsLtgvIvPb2rZuXwW9zWMbg28+5xvTPGaylvc6IbDNSBNluK/M3Kj1rn3THXrity5uPOkBY8AdPSsiVC5PT2zXPU3ubR2KsXBLntT43zMv14okAACj8SKi5Dgj1qNx7F6YFCHX1qK5Cvl15VuoHUVKJFdQG6HrjtUMsRToeOxHekty2FqAnHvkGp74l4Ub3IpkWcZPC+4qQYuIHXoVORUve5S2sPsQCAPUYFdDptqrzrvUFWXBB71kaLbNNNgDhRkCuuS3W28p9pzjFZyeptDYtROthAWJJVegHJP0rDvryW8mZzjzc/Kuc7R7n1p2p3E0p2A43dFB6VTj8zB8tQSDyR2qbdS7tjNrRoSR87c5J3YqvKFycctnqe9aEkjCHyymC3Vgc5ql9lVyzAtk+9NNCaZHLIFQhlXb+eagjmXjAZRnsacbUnILHj1qJ0KZA+YA96vQizL0d6IsYmP4nNa1l4hVMLlsjvjg1ypjz7HNSxpIOhqHFMuMmj0ew1uKXALkMeoPFbUN0kw6gY968rtriSIjPTPB9K6Ox1dk24YdMVm1Y2TudmZAD1+lSRzLyCRzXOSanvIOeSPWrMV+pAH51Gxolc2SVIPoe2KheJXIP8IqBLpSBz+FSb8jOeKCrWLcZWPCjoR+VDnFUROMkEmmy3QH8VBLRLNMsZJYjH8qzL28t8b3wBnjPOarale/uzj72cCubvp88b2Y+uauKM5PQ1NSv7IoFjP7xuvHSsi5jhlQAOp49cYrMmlbJP4AelVi5J7n2rRIybZZTdGTt2nHQE5BqWO+a34ZM5GeDxVKNDg7iR6YokQkjDN7EGqsjN36FiW6jkIYZiPXOMg1XkupR1wy46jvTgh6EMacYvVc9uuaaaQrNlq2uYpIRkA9iKbI8TkKjKAOAp4xWeYmjckIQPrQf3mM8NnB9qLILs0TLJHHtwCp/iHNUbh2k4J6VLHaz7CQ2F9CcZpmDsIP3vWpWmw99yk+ShXuDmoN5BI6kcjPerk0fRx1xyKquncHArSLMpKwjoDGHVAUzzz900+1jZyCFxjnimRzNCW24O4EEEdf/AK4rTsYtiAt95gD9KpuyJirsrSxmM4A5IyRUofEISQdRwTUs0e+bp/CTUNwSURT/AA8ip3KegsUZS2kPYDBxSW9yHQwzYbaflJ71OCBpkhbGWHFZuwmEOOq9acdbieljRjijckwHJ7of8804W8T8Z2svaslJmJDBiGFXUupeG+VuMcjrTs0TdM27C2iJAcq49TxW3DpFnIAWTP1PSuWstSZJApXaDweM119jKskYZXzxyMYxW9NrZoyqK2qLFvawW3EMSj3qYn2pBS1sYhTsGm06kIpHrRQetFamQtLSUuaYGNqvmxPvCkp3rGuLhD0/I9q7CRFkTaQCPeqFxpEEuTtGT39KiUG9jSM0tzji7OSBRNayxwCRgQp6V1KaPBasWwPpmq2p24mhbC4VRgAVjKk7XNo1FexyRy/A71G2UTB69hUpPlSH1zxTnhEo3IRnGSprDY13GxOdmeDTvObPAUD86YBsG3n16UJGScUmUrk4dpELE5wM06IlXR8ZB4I9aQ4SE4+lS2aBwFPIBzU9Cknex0fhu1xOWByrDIrrbiz3wAgHI5GKzfDlkBbBiODyPaun8pfLAPTFc8nqdUVZWOLv7LBOSMEZBJqiB5YwMccYHGa6W/s96Nxn09q5W98yHK7TQncpRGyXSxZL4wP0rPkv3c/uEJFNKNK4ec/ux/DnrTJbkuTFCgVRxx3q0kyZO2iIpbi4PVlANVZLhkP+tJ+laMmkv/Z8k5ydoyOKx3jYdRwa2SVjmlJpkv2h+DuNWIrmXsQRVeS5llhhgYgpECEAGMZ/nVm1s5fMGO46daTSQQm2Wob1TgONpq9HKvBBH1rOMJyVcYbtnvSxo8Y5yU/lWTS6HVGTW5ux3R45zitPTpHuJMDPpXMRTFHAOdprsPD0WXBxkdaykrG0ZXN+3sW2DoMVcS2CINwzxVmKMuBweBTpY2QdD6VnoHM3oYN+PKyV49K5+5v35GTXT6jbvIh4P+NcTqqNA568Gmi76DLq/LghjWXLc5zzUE1wxPPSqsjs/C/nWyiYSn2JJLhE+8ahN6B0jJ+vFEdvzyCWPSrUujy/YJJzkBRnAHWtEkYyckrlB79zwAB6d6bHeydCR+IqBAbeZHZAwByVYcH2PsadNIstw8gRU3NkKgwF+ntWnKrHO6juXhNcY4VSO2KkjvmQ/vFKn3FUrcSh8Lk5HSrsdwDlZEz2Oe1S0jWMiwbyKUDcMn1FV+N5I6MaV7PjdEeDzSxxtgKw+nFTZIrVlqKUlAp7Dinm3+QN2Apbe1aUAjgj2q0LWUAqQcY+tQzRK5kyR4znoeaoSRshI7Ct6W3ZByOntVK8iAQYXBxTjImcdDJjQvIOO+AK27aLCYIGWOBnis+3QI+49uauQyNJMRyeOB6VUtTGKsMkJ85gD04qBx5024fczj8KnkjMkkjA/OTgcVDJthG0HgjH+frVITQy6l/cbV6ZxTLYBwUPRl49qimk4A7nmpIeAAOvWqtZE3uyB4TkgdaIpGTB9DyPSppcpNn3pRD+/wAHlWGRTTuQ1Y1ooUuIVnh+8B8y10Gk52DAIHY1haTE0LgEfKTjNdTZx7AQcYPIraCu7mc3ZWLYJ/GlpKWtjESn02n0gKJPNFITRmtjIdRmm5ozQA6kJ4pM0jk4460AV7l8YA6k8k1QurlRBIkalpCMAAZq9JbNIcux+gpBbpGhCqOevHWpkm/IuLSPP7qN45yJPv55FMEjRkEEitHVUaW/mcoQN2AcVSmUO4BGMCuNq1zqTuPR3kAOQaeAN4XOSeuKjVAiEKTnvSxYBLdl6VmzRE0wxgVoadbZKKOp61nITLMo966PSISb2JQOCeaiWisa01d3O00iLy4EGOcVsiPKY9qpWaAKK04u3FcsmddrGbc2TOh2hT9eK52/0fP3wyjsAc5rtzD5nfH0pqWsSHcVye5PNSmyk0ecSaBLIQTHsjUcA1Zh0qwcmPayHH3iM5NdbqNtvcMigjuPWs6GwiMzdlPI9q0UwUepFHoqxWZieLdFKuAw5z9K4698PyWszJJETFnCsB1FegpbzRODA7ERnhc5q498JJI/Ot4sg5YbcZq+d9zJ0U3dI8uttE2ES+QxXOBxnNdNpPh4AG4mUmRxhYwMkV2X9rpsWOG0RYgSSMZ+lRLcSvOJQFRscY7Gk5ruVCi0tVY4e98P+bIzOREqnBYjpWfb2DR487a8TNtK5+Ye/wBK9HljDvm4KNnseKkEVo4G+FDxgcVm5u1jdRildo86uNAeKcKinYRkHrXV+H7XyUTjtzWpdQxlFEagAHGMdKIoxC4A6Z7VLk2rMlJdDYtQB+NXTEpjyR+lUbbJwa08jyTx0HWqS0MZ6MyLyNSpBFcFr1mZZikY+8cmu9uuQfWsGS2V58nHJxU3szVLQ4dfD80jnC8npkVHe6HLbFY40YljgkjpXp9rFBFCcoNy8g0GW0k27kGV6MRVKbuJJdUeY2OiT/aTujZgp4JHWutttOheyeGdCNy4ORitxzHJI7oVVm43EdKjIlJCq6sFHBIqud3uOUFJWPNNW8PtbTMhiYqDwwGc1Qh0hUPIJJ6ZGa9eNyMBZrdDgjOB1/8A11XN1bec7R2CITyAVzWim11MHRu72OG0nw4RGZ5kJdhhUAqvf+Gnin8yQbQ3Ydq7i6uZZZECRiNCuCBxVd7eTY4mYsCcrntS9oWqSRx6aBIY9wY+uM9aWPTpUfY21sdCeM13dlZKIUJADYxkVM+mW8w+aMA9iOKhyZSikzkLWxeM8wthuuORWglkxPzIQvvXQppiR/cdh+OaSW2YdSTgelS5BZHOTaark8cY+lc3q9sYz5YHeu6mTGc1ymtW5eRmAqoPUiSujlLnEZCoSQP1qzZoUhL5+duB7VAbcyXRGDgHk+lTTXRhysYGV6Vu9dEcy0buSyOtrGWZSXI4zxWMZWkmLseSeB1xSyu1wd7ucnnDGmJGR+PpVpWIbuB5yT61etYy2Gxx71VEYJGauRyfIEU4Gcn3p9BK1yG7HznHrinAkCJjng4pkoLnPqafIMPAg5yQSKaREnqddYQq8AOMZGR7VqxkAAHtVOwHl2yDGMKOtXODXXFaHNJ3diYFT3pahAFOHFMRKBT6iBqTNAFA9abmkNGa1MwJpc03NFIB9JmkzRTEOqNxkGlJpDQBi6tbF49sa5bORgVmR6ckaSPcHLAZrqCgJyRzisLWoyQAmevOBWM4pXZvCTehjmNTGWB74FR8JGferyWrCzdmUjHIzVLGcj05rkaadmdcdVoPsh86n3rr9AXNyDxgDrXJ2wwQx6d66vw+V/HNZTNqeh29qAUBrRiFZtkRsGOa0oj0rlkdSLIHHFN8snvx3p6cipEAIpDIPs6kHArOutIfl4G2t1x1zW4I8cDpTjGMYp2FzNPQ46SW9tT88DHH8S81F/aLnOY2GTzkYrsXt1OchfyqE26hui8+oo5fMtVF2OYS5kkxhHPYYFW4o7h8ZRk9zW4bdeATjuMdqX7OSeAT9OKfJ5lOr2RnJahPvHJ68VPHbbAWIGOuMVeFuMDI6VHMcEKOlJ2RF22VEjDryMYNQlAXPsanLkMai7+5qNy0rF6zP14rRy3lnHp1qjagEDHXvV8geX9K0jsZT3Mq6B5HesqRP3g+tbE3OTWbIOelQ0ax2JI35GfTFSvZCQbl/lVXJBFX7WbOAelEXZ2ZM01qilJYMeMYxzkVSeK6ibKgMB2PFdI8ORkHg9RUZh5+YcduK0cUSqjtqcu+pyxH9/E6leORmon1iN+4+h4rqzbKeNoIqB9MtpD80Mf4gUnHzK9ouqOaOqxnHK56dakt/NvH+XAXPc10CaLaociFPyqwlhAg4jUfQUrA6i6Iz4bOeIdiPrVlAR98Y4q0I1TOCwHuc0hPHNFiL3IdgHPH1FRygYNS8dqikqWxWMi8jw4PbFc/qcYdG4rqblAQfpXN6jwG47cVpATOMkAjdmPRTkD1rLkcuQTxWrqeE3cfeOeKzNm/FdS7nJLew3yx+B6UjoIxzwT2q2gRBjkt6+lJ9mL5IUknuTTT7j5brQpRo0jgYOKuxiOMEsecVcGm+TZGeRsFugHGKypZM4VecGmnfYmScdwd982B0HatDSrNpr2N3GVHQVHpumS3Mhbbhe7Gumhs0tzGFA4GCR3raEG9TnlJLQvIAg4qQGo/enCunY5tyUUZpoNLmkMdmpN9QU/PtSApk0tN70VoQOoptOoATNLSZpKAHU00UGmA2q8kKyHLCrFJSauNOxSurMG2kAxjb3rmktn2OcHK8/WuxIBUg8+1VhpyyW0kQ4lRtyn1B61x4lWs0duF952ZzCZRPaul0BwDtzgE81mzWBAI6HrVnQ8pchH6g4zXM3dHVytM9BsSMAelaaZIGKxrB8Ae9bERrna1OmL0LMZ4qaOTnFQCn56VI7XLiOKfx2qrG/51IZDkAD2ppicR7xscdaaYmA4GTj1qZDwCe/FSCIde54NVa5N7FSOHPXrVjYIx0/LtTwgBznHpTZe4/lRayC92VpHAGe9Z8xYnOe+avTdD7VQkOTWcjWKsMODj3FM5yDT8H1p3l5A9jkUiky3ZZ4IPU4+laEuUjPHUc1TskwMYq9cf6nHftWqWhjN+8ZFwcjj8apnnNW7jIzVNzgGsrG62GY5+lTQvzUGTj61NFQD2NKGQ9OvGasDa/OMmqtuD17CrSAgHHrkVojGSVxhhGQRkU3ys/Q+tWEIIGcZpw6fTqKdrk3aIvJAx+tLhQDgU5yPz6VBJJgYGKWwWbGSOMcVWdyTSSSv5gGPlPU0nWpvc1SsG41FI/UHvSyEJUMhyBSE11K9yeD9K5zUiTnH6963rl+CM1zepygZP90ZrSmtTGbsjkdWcGQjHeqkYDkL3xUt0WmnyByakFjI83yggKcZrp0S1MEm3cRLcu4AB+tadtZ/J8w+lW9OtY4hiQfjVvZvmC4woPbvUN3Z0xSMTV0nljjt04BHQU210BUjPmHc7DIx2NbM8a/ajjovAp0Z6exNdlKmuW7POxFS02kMtUUWy9MrwcDFWMdPY02MYdhjg8in4roitLHJJ3Y4cfSpBUYFPFMQ+jNJRSAWn0yn0hlLNFIaKsgWikooAWiiigAoNFJTAKKSigBemD6UvIImHbgj1FNNOQ9iOG4rOpBTi0zWlNwkmie+s0kjDoPvCsaG3a2vVLEYJ5ArpLcB7YKOccVlajbtG8THOSea8naVj2pJSjzI6GzfhfQjiti3fiudsJSY156VtW8mcc896UkEHoaSHipUOeKrITxVhD0rNo0RYRBT0HHvnNMR+KeCKEGpaixgZH1FT5U47461USTGDxUvm4xjvVp2MpRb1CRhvGACKR+R2601yWOf5d6a5AFJu47WsV7jIzVI4CmrVy4QHd+VZU0rF9q1k9zaKbRLvG+rCHt6VRXdvGetW4ny4FNDsaUParExGyoLYGrEiZTv+NarYwdrmRcEk8DvVKUc471pSpgkVnXAwc1m0brYr+Zh/arVvIr4APvWcUeTOAcg8U6EsrgYOR1ApFWujficD0/nVkEY+npWXDI/A/UVdSTHHJ9j2ppmbRaTGc5yT1wKk384P0FVkZguCPfk4zTw+DuzVpmbQ5++D34BqrKDz9anMoOeB16iq8j5J+tS9S4qxFgHNMIxmnZpnPPNIbIJOp9qgkfAqaVwM+tULiU80JCbKl5J19K5XWJiTtBPPWt+6lzniuX1N/wB4AM8nH0ropo5qrtoZ6QlJMnkZyK2bZA8YJ61Uht2dyRyFFblrbCSASAHkUTeoU1oRC3MmCOx/OrYRIYGkYD5RxT4U2deKo6jcCWQQxn5VPOO9OmnN2RpUmqcW2V4wSS56sc81IBzSxoMZ9DTvWvSiklY8acnJtsP6c08Gmjv+VOq0ZiilFIKdQA6ikooGOFSVGKfSApGkoNJVEi0tJRQAtFJRTAWikooAKSlpKYCelLk9fTpTaDmkIkhvmtiT1U9R6VcluIb6FSCpwODmst0xz/k1m3jvZSB42KRucMBXDiMOm+ZHoUMU0uR6nS2Z8s4z7Vt2sox1rldFuDNbFmJLqcfWtyGXGMHn0rlkjrpyvqb0co4q1GeOtY0UpcjBx65rSikGAM1izpRdQipUcdaqhxTt+Oe1SOxb3jBB70ocYAB6VV8z060ebii4WLXnYzk/1qM3AHOarSTL3PaqsknmcLn86TY1FPcmubnOcVWiBeTJHvS+S2Cep9DTIpgjnPBzgikr9S9FsTyYRwasQouQwrPubkYzT7G/VxtJG4VaQntodLbIo5zxU8oBXcSOnSsMXpAAzxT/ALdkHn86rmVrHO6bbuTTEFyOOO/rWdeYwc9KdLegZOaybrVYydu8ZPapNkXLYKQad5X77PQHk1Ws7hNmdw5qSS5XIGe9JoaZfi2jipAVzwR+IqFI8gHFSCM9QP1oFoWQ7e/55o3k9c9MdelV8sOoJ980gl38ZouKxL/q8+/PWoy45xSF/emZBzQMXfnNMdyKYXIyAKhlkIHNAmRXEnU1mXNxjjPWprmfg1j3EuSeelXFEthLJknmsO6TM5PYHIrVJIjyRnnrWdMMzn0610w0RyVHdi2VysTlSASTg1spqMUcIHyhQPyrzy91G4t72VYSNgPcZqpcaldXCbWlbaeqg8VLpNu9xrERirWOy1HxGskpitSGJOCw7U6wdpUbdw6nBzXGadKVmXnHNdrHEGCuh2swycd66qMFF6HJWqOa1Lg2hODxTTJ02DJPU+lNSIDkkn61J/Kumz6nK2gHHFPpgpaokXNLRSZoAfmlplLQA8VJmoc1JmkBTPWig9aKYBS0lFABS0lFMQtFFFABSUUUAFNJPaiimIaE6ZqnrFuZ7Bio5Xkir1KQChUjhhjFTJXViouzuZfheVgWjboRxzXSb9kgPQ46VgWFn9j1A+WDsbp7VunPB74zXmVFaVmepRd1dF63uAT1GR1rSiuOlc2kpD+3U8Vfhuhxk98VhJHVFnQJLkCpA/FZ8M2emamMpA46msWbLUs78dDTTKcVX3sQO1Mfd3bj0FItEpkMnf8AAVYhibiobeMuQcYHrWhGMD+tC3JbsL5YIwOuOTXIa1dSWF4wJIVuQfWuvL4/KuR8bwySWaMo6HOR2q0lcSehz1z4oaF8Hcw9qfZeIFuCHhbDjqp4NcpLuydwJohGCHQlWHcdq6FBWMHUaZ6RD4hQoAxw31p515B0cfSuGjvd4AkIVh36Zp32kZ++D+NQ6Zaqo6jUdcfyyFbn+Vcpc6+scx2lpH7kHGKr3960y+WjcfxEd6zxCOvtWkaaS1MpVm3ZHQ2vie5OBt2j61tWWrNNJGN3ORXDRuwPFbOkuxuYzgkg9PWplBLVGlOo3oz2C1dTCpJ7c1OSccdPeqFmWS2QkckdBVkOcc/lWDZdtRCmc8nmmkKMEDkd6HkxURfPcfnUXKQvmjJ3U13qORwP5VA8jHHOAOvvQmNlh3wKo3NxxgmlluCgJOeKz5pSybu56CrSM2yG6uQE68etZcjtJgr685qxdfOVX05NRoOuBWqVjNsVz+7HsPzrNuH2I7H+EZrRlGxPY1jam7LZyHI6YGa2jsc9Q5Gd8zSNnqe9RgZp2wlyaXB4Hc1tc5bD7cDzkHvXcQjZGm0k8AiuLhi3zRqOrHiuxsXLQKp4dBgitKOrZFVWRbBzzilplOrpOcdS5popaBDqKSigY+im0ZoEPp9RA0/NAyucU2l6UlADqKbRQA6im0UxDqKKKBhTaKKBBRRRTAKXr9KSlGOlJiFRB5gbuDV4g4OeePSqYBfgHHvV5AfLAY5wK4MSrNM9DCO6aK0aMST68YqRB5bj1qdI+B0yKJYunqOlcbZ3ovWznYD61ejwQPQVmWb/AMJrUjGBWUtzWL0AkJ1OajBMhHUjPSkk3ZCKMsx/KrcNqsaD+InqfWoLvYkhPQDtVkPxxTUjUDPFLGcvimlYlu45EMg/WoL2xS8hMUi5Uj8qtE7MYx704EEc8VQrs4m68DAkmNhgnuKzrnwfJbxllAOB0A616O57CoJY/MB4zVczXUWj3R4teRNE5Vhgg4qgXwa7fxTojPM0sKd8kDvXIvZyA4Kn8q6ITTRz1INPQrg5xV21s3uCAFJ+lPsNJnupwiIxJPYdK9H0Hw1FZwq8yhpCOnpROologp0m9WcfZ+Fbi4wQuB7iur0Xwmlq6yTEMRyBiunhtkjT7oH0qTjtWDm2bpJbCBAgUDoBij5efapAM8U0hQKiwNlKUM5+WoHEg4bpWgdgz61Vll4xtyc44FJpFplYkFc1C5J6GpZYmcH3Haq0QO85HI4qUN7DJRwQe/61UlGKt3G7JBx7VUlPYmtYmcinJH85oETAjBGO/HWp9mXJ7GnuOP8ACtEZmdeYAPvXPa2cQhM8Hk1vXpHA71yfiGU+eig/dGTit4rQ56jMzyQmTnPoKjyAxPVv5UDdJ360vlY69evFVqYeha02JprxR2Xkn0rqo0Ibjhh6d6yNDt8IZSOp4raHUEdq66MLK5hVld2JwTS00U6tTAWikpaBi5ozSUUAOoptLQAuadmmU/igCDPNFFFABRRRQAUUUUAFFFFABRRRTAU0lKaSgQUUUlMQ9CQavQnMfGazxVuzfkjtXLiVeN+x14SVp27luLKcVOY8jrUSYz/WrkabwPbrXmSPURDDgOPY1ph1wB/erOIMch9CavQupQHuBWMi4jk4kJxnin/aCO4A75pgcRoT6nv3rMv5mAJHAxQi2aFzqyQJkNk9AM1NZ6kkkYzjJGa851LU5Uk25PB61s6DqUciAzP09DV8rtcm6eiO9jlEgB7VLwfwrJi1O1CALIvtzUn9swj+JT9DSasNRbNTZnPOM9qckWQfXOQD3rH/ALciGSG5PFA1xEOd2eMUivZtmhcaYkoBYDk88Vmy+GLeRydi5+matW+vRuQG4z0q6L6ArneB35qlYlwknsVNO0GK1BbaoPYgVcMYjHAqjc69FECqMDzVJ/EkYGGxyetJtFKnLqbLcpx34poGO/TrWT/b8BAw4HYUDV4jzvH50EuLRqySMCcNxisy61FosqScjkYqN9Wi/wCeg6etc9rWuW8YOZFDY45otfYm1tzY/tpcYZhnPrUiaqhIBYYrzo601w+1M4zwa1tMdncb349M03BrcpNPY7wSrImVwcjtUaJznHvzVXTZIgCi4yPWrcz7AayW42VLojrxWfMSSBT7iUkke9QHcXGa2ijNk6DCgYpkxABFTIMDPftVG6k5IyBWsVdkPYoXEmZM+lcXqshlvGPYnFdTdS4EjE9Aa5CY73JJ710ROSoxojMYBPTtUlvE1xIFX+I1Fy/Hb3rc0WyKDzXHPbNaQjzMxk7K5pW8SwwxoB0GD71ZQcn0ppAOOKemcV2pW0OSTuSCnUyloJCnU2igY6lpKKQC0UlLQAU6m06gCGlpppaBi0UlLQAUUUUAFFFFABRRRTAKKKKACkpaSgQtPjcgjFR04GpklKLTKg3GSaNKJycY+73zWjC4Ixmsa3l4xkZFXoZMnOfxrx5xadme1CSaTRauADyBzT7aQJ16GmFyycHp1qIuyYx0rFq5exoSFiMgAj0qu9kbjOc89hT7abeAK0YU4BrPU0TMuHw1actPEHJ7EZqreeEdNuOYI2t5OzRnFdQmSOahlhB5Xr7VabQKzZxFz4WvLcH7NcGTHQPxWadO1qMkCDeo9GxXoZLB9rYwfWobi1GNyHDDmtFO6N4W2bPPxHqkZHmWk3zcADmpvtlxbnbPDKpB6Mp4rs1uHhcOygSL90+lXba9t5YyLiNWdj94jNO6e5o00rpXOA/tcI/3irds8U248Ru+U8wbQcDHOa9CmtdMuLkLJFFJGOp29arxaPosZ3NaJzwMDvQ0hKXdM4CTWmkwqhiAOwzmmG8uJE+W3nYHgfKea9KMenQxp5MMYYEEjHWmXN7BsIhjVcHjA6U9ELWXQ8wc6g5OLOcAeoxTAmrNwls4z3zmvRvlmcH1HJ9aeIUTOcU012E4JdTziLTtauSFCOB0yeK0bXwNdXMnmXkoUZ5Gck12M1zHbpgYyTgAVPZBpfmYEc96hza2MXFdTOs/B1jDGNqDOOp5qw+gWsWMJhh6VtjAIA9KguCCxHYdTWUm3qSrLYp29qtsMqAP61FeTDnB+tS3NwoGKw726wSATiiEbsTlbcUyb5AKncKgFZts5Mm41oOfkBrdqxmnce8oSPnrisa9uBz25q1dTbEPesaWQkknr2FaQXUmb0sRXJzbSHsBxXMOMk8d+5rqpY82RB/irPttIV33tkjPQ11Qg2tDiqSSepn2Nk0sy5GF/nXTxxiMAKOMUiQpHgKoGOlTCuqnDlOSpO+wmyjpT6bWrMgp1Np1IBaKKKQwooooAdRTadQAtOplOoAhNLS0UhiUtFFABRRRQAUUUUAFFFJQAtJRRQAUU2igB1FNopgSIcEH098VcimGflbOOvtWfk0JJ5Z9j+lcWIpX95Hbhq1vdZvRTKeCcH+dK78EVlRykYIOR2q4kpcZH/6q85qx6CdyzbSDeOep5rat5OMZHSucAcTBl6HtWtC5IHPIHas2rM0WpsI+Rz2pSy/nVS3kITDEmpCyjpRcdhlxjr3qobhoydxOKtSOHGKz7gHnihDTaFkuIpRhsccg9KiJjHRuevWqkwIBPQ+tZd1cNHnDHPvVrU2jWa3N+KQg/eH51I9xwASDg8Vx5vJ+MNj1NR/b58n5ztHvVK6LdeL1aOskmIOT0zxzURmUkAlR+NcuNQkfGWb2yalS8bIHfuaNSXiF0R04vUjxzUE2rKCQvJrFEzyevNWrazZyCR+NL1MnUci1bl7icO+evArorfEaDmsy2h8vGBzV3LcD+VQ9SC19oAyc/Sqssp654700hkzn61VuHZx3A9KSVx3K9zMXzzWVKC7mrc2cnk1DsGRmtoqxk9WPths5IqSW4A4HNNBwPas+5mPPP41S1Ylohl1NvOB09qqHJIHrxQSSSalt0Mkyj05rRaGb1LDoBAoNNGAMVYvAAi1WBr0aFuS55mIb52gpwpBS1sYD6KbTqACiiigBaKSigBaKSloEFLmkooGLmnZplPoER0tJS1JQUlLSUALRSUUALRSUUAFFFNoAdTaKKADNJRRTAKKKKACkIzwe9LSUWTVmCbTuhI5Shw2MDpV+3mCAHjFUdhkGB94dKbFKyEhvoQa8qvT5ZNI9WhU5ops3BIMg/jkd6v2w5yCOe1YcMpwOc46ZrasHXvyT0FckkdUXY0lG8AVMI/k5GagJbKkY57ir0XzAH8xUF3KwQkgbePWontg+fStLyxSeV7UwuY01gH9azn8PtISTuOTwK6xIh3FWY4V6Y601foF0cM3hhj0VvcCoH8LyHjDD2xmvRBGvPA4o2L6Diq1FzJdDzuPwjKfvA5+mKnTw0sY+63HXIruzt9O1QkDFJ37jv5HHx6QI/wCGrsdnsGAtbbwqeeOtRGECpbY9CjFCfzqyIQgzjmpkjA5pHIFITZSmjPNULjCIcde9aFw565rHvZOvXn0q4olspzZ654qDzMcUPIOR3qs8uwnBrVEkstxj2GKzppN5NLNMTwOtVy/JxzVxEx/HrV6wXL5rPBzgY61s2EZTGew5pt6GfUdfD92PY81SFaV8mYSQDwM1mivQwzvA83Eq0xaUUlLW5zi06m5ozTAdRTaKAHUU2nUAFFFFAgpaSigBadTKfQBGaWm0VJYU6m0UCHU2iigB1NoooAKKKSgAoopKAClpKKACiiimAUUUUAOjOHB9+aS+iMTiVR8rdaStCNFuINjc5GK4sWrNSO7CO6cTOhnIIIPFa1ndDjt6Gufk3Ws5jfpnirdvNjkEjPTmuKSvqdyfQ7KzlaUDJGM/lWhFIqEjIOa5qyv14GAOMHHeteOUcHrxzisGrFo2o3GPrSkHBqnFLwORj2qwJVK4BGe1IaHJIASDVhHOBz0qtw/ORS9OAetNaA9S1nOeeKX+VVhJ0GfrTjJ1xTuA+Ruo7VCST34qN5iH5/xo8xev5UmxpDz6Ux+tJv700vlv1pXAVyAKpTS4z71LNJwazJpGyeeP5VSVxMWaX5CO9Yd9cAE881cv7xY0OeDiuburrzCcZIzxmtEiWyR7kDPr3zVZ5utVzIznnNIXJ+lUCFJPP86EFNxUkaNI4Ud6pAyezi82Ye3Oa37WIDLdgO9UrSFYwFXr3NaZIRABnGPzpN3IsRXH7yNl9qycYrW56H6mqNzD5chP8J5rsws1rFnDi4N2kiCkpTxSZrtOIWiiimIKWkooAWiikoELRRRQA6im0lAD6XJpmaXNACGkooqSwooooEFFFFABRRRQAUUUUAFJS0lABRRRQAUUUUAFFFLimAlXbM8Y9DVTFWLM4cj1rnxUb079jpwkrVEu43WrUSwiVR8y9RWJFMRweldg8QlhIPUiuUv7Vra5IxwTkV5sXfQ9Rq2pbtrhgRtII7AnFbNnfrjhs5OBXKCQ+2f51NHcsh9G9zScbjizu4b4IgySR7VYhuQ+Gz/9auNh1FsYJxgckmr1vq2zALcfyrJwaLVjrhc4PtS/aTXO22qo5PznJPANWkvySamxVjX+1bPSgXm/jP5Vhy3TYzu/+tUYujzhiSOoqkiGbzzB6d5wAxmuf/tLnr35pX1Hp8w6UOI1c2pLsIDzzVY3zEkZ4rEuNS4G0jp3qm+qkd6FEDoJb0kEZqjLfBEOW5zyaxnvzjduOewBqjNdNJkdO9WkJk1/fNcSEA8ducVQ7ZNKcA5JpMl/p7VdxW7ijOKUCkFBzQPYeMVoWNtwGI61XsrYzOOwFbkUIG1VGTj8qbdidx9vH1wOPX1qV+p9qnSIBNoOcDk1BJjJ9qlPUlkXelkiEke0/gfShATk1MEyKrmcXdEcqkrMx5YmjJBFQGuhe1WRMMM1l3WntFllyV713UsSpaPc4amFcdVqioDS80mw1KkZzmupST2OVxa3GYpQKmER9PzppdE6nP0qZ1IwV2yoUpzdooixRT8pIcIcH0Pekx2NOFRTV0yZ05QeqG0lLSVZAUlLSGgAp1MzTs0AFFFFQWFFFFMAooooEFFFFABRSUtABSUUUAFFFFABRS0UAApaKdTATFTW+BMM9+KjFOTiQH3qKivBouk7TT8zYhPSq2q2KXUJOPmAyDU9uehq2UEkZH5GvEd0z3N0cDJEY5CrcFTjmmkcc1t6xZFHLbfoRWPsxWyd1ci1tBgLdOqiniRhgox45+lIRik/zxTsO5Ol1IhyCc/zqwmptzncpI6g1nb2HQ59jR52BygPuDipcbjUrGp/asg7547VH/abk53tjpg9qz/tKjqjfnSG5j7q1HKF13L7XrBwQ+QR16Uj3LHnd196oi4i54YD6UouIv7zY9xRYd13LJmbIPJ9aJJFcgopAwMg9qr/AGmEcfM30GKT7Sx/1aAD1PNFhtruWMM/zHHuegqIyqOE5PrUW9pPvsTTwAOlFhX7CgEnJOTThSZo60guOzUscZcgDvUQBrV021LuGIyO1Gwr3ZfsbURoMj68VpxQ4GehPSkijUAFui9BWhFCMBn6kZx6Vm2UlYrmPEfA681SkBJxWnNk5PbsKolOc/rTTIaItmMfrmpUHQeppuA5P61Yt48zZ9BxQ3oJLUtJH8gGKrzW4Parwxjms+/1OG2BAId+wBpRvcq1zOuLAgF4wBjnniqBuFiB3YZ+wHQUtzqM90SGJCj+EdvrVPYe5ArdVGla5HsE3doWS6eU4z17CnYGwZ79qZDH5kjdD6Y71aSMYxkj1zUOXc2UbLQpHKSDBHXgZ61bQ+Yg/vVE4UAYIJHSiKQfwj681dOo4NNGNSipppjvakp0nXPrTM160JqSTPFnBwbQUlLRVEjadTadxSuOwUUlFSMWiiimAUtJRQIWikpaACiiigBKWiigAooopgFFFPoEIBTgKMVNDA0mSPujqaUpJK7KjFydkRHApIyryBcgc96g1O6is4SehHrWPo8suq6qm0ny0OSa5Z4htPlR1Qw6TXM9TtocjtV6LpkdR1FVYx2qwh2YrzZanqRIr2FbiM5HOK5S6tzFIRjHNdzhXHIwT3rF1ax3gkDnqKISs7A1c5Upz7dqYRVmVCpwRyKgPNbEkRpp71IRUZFAmiM4pDjj1pxB7dqbgmmKwmBRgU7BoxQKwm2nACinDrSKSFpwNJilApDHDmnCmgYp6AucCgLk9rE00gWuosrXZEAOAOtZ+kWYTDsOTXQwwk4GP0rKbLS6jrW3BcMR8qngGr2ByW/GljjCIMDp0pr5OR+dZbjK9xh84GBVI85AFXpsgbc9e1U3dY0Jbge9UmJoYFxTHvorXOWG49FHOazr3VWzshI64LGs3Pnbt3Xvk/yPY1YKN9zRutanuMom5AOoXk//AKqoZORvOC3RuxoEigCOQkN/CxGCKnjTIBkJIY43Y/nRexaiMCSD+EjHOO4/xFNkTZDvzx0yBV5Axj2KB8o4J5rPv7gJAw4U4waE7spqyEsXRzIV5B6kcYqxJKUjJBJx6isTTZds5Uk/MM8VqeXLcIUjQhT1Y8VTVmRfQrPNgE4zuORinQ+dyyxt8x4yKv2ekrHlpnDv2UDAFX9mzAVeKLpbCs2YxS54wn1B4qQRPInKEMOorYcZIz0xUX7sE5eqjWlHYzlh4zd2Zht37CmmN06qfyrWBjfOAW9OKadxP+rP41vHFyW6MJ4GD2Zk0vFan2bzHAeLFT/2VH/c/Wtfri7HO8DLuYdJTpPvn60g7V1nEJmlop1ADaWlFFMBKKdRQISilo9KAG0tLSigBtLTqWmIZUgGSBR/hUlt/rlpN2TKirtFmG1XGW5OOlOEywgpxirMX+sb6Vm3P+ub615lSo5PU9alTjBKyOR8T3LvIVx8ueK6HwdpotdN89h+8cZFc3r/APx8r/vV3Wjf8g2L6ClL4ETHWoy6BirEYV+tM7VJF1FYM6YluNPlwfwplxD5gI71NF0p0tZstHIatpzI5YDg+lYUqNGcV3Go9PwrkL//AFh+taQkyZKxQLjpimkjnFOb+tM9a1JG0tHeloFYTg0cUtJ6UAHFJkU4d6joAkBFG+o6cOooAlTJI4rW06xaZxwazrf74rsdF6D6VE3ZFQWpdsrFY0AI5FaUcQA9sc01egqb/lkfpXPe5qyJ3zwO3f0qMnGakHeo5OpoEyvNIqAuxAA5JPFczqWpNMxVQPJJxuBxk1r+IP8AjyX61zcP/LT6VaBIjIY5GWDdTkZxTURkIJ49O+f/AK1SJ1T/AHjUsn/HzH9aoqxPDHFcpiTBXHB71KHEIHOQvBH97/69QWv+sP8AvVJcfcP1qOpqkMubxIY/NgPyk8qe1ZIhk1e6A5SInkmp5/uSVe0T74+lXsjOZYs9JhsyAkeWH8R5zV5wsZwSAD1xVpP9YPpVKX/WfjU3bFsOj27/AJQSOxNPcNvGMURdqn9KBIY8PmAZ471Ve1Dv8yj2I4rUP3B9KiHahMZUitvLIAyc1M+2NCzEDHep4+/0qjqX3F+lHUOgG+AB2gE9jTP7SuPQfkKpx9vpUlWkS2f/2Q==',1);
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
