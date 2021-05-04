CREATE TABLE `user` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `user_name` TEXT
);

CREATE TABLE `lien` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `user_id` INTEGER,
  `contenu` TEXT
);

CREATE TABLE `comment_lien` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `user_id` INTEGER,
  `link_id` INTEGER,
  `text_comment` TEXT
);

CREATE TABLE `comment_comment` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `user_id` INTEGER,
  `comment_id` INTEGER,
  `text_comment` TEXT
);

