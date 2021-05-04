CREATE TABLE `user` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `user_name` varchar(255)
);

CREATE TABLE `article` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_user` int,
  `titre` varchar(255),
  `contenu` varchar(255)
);

CREATE TABLE `categorie` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `titre` varchar(255)
);

CREATE TABLE `tag` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `titre` varchar(255),
  `couleur` varchar(255)
);

CREATE TABLE `link_art_cat` (
  `id_categorie` int,
  `id_article` int
);

CREATE TABLE `link_cat_tag` (
  `id_categorie` int,
  `id_tag` int
);

ALTER TABLE `article` ADD FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

ALTER TABLE `link_art_cat` ADD FOREIGN KEY (`id_article`) REFERENCES `article` (`id`);

ALTER TABLE `link_art_cat` ADD FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id`);

ALTER TABLE `link_cat_tag` ADD FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id`);

ALTER TABLE `link_cat_tag` ADD FOREIGN KEY (`id_tag`) REFERENCES `tag` (`id`);
