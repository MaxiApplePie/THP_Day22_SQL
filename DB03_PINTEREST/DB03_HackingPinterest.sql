CREATE TABLE `user` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `user_name` TEXT
);

CREATE TABLE `pin` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `user_id` INTEGER,
  `contenu` TEXT,
  `pin_url` TEXT
);

CREATE TABLE `comment` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `user_id` INTEGER,
  `pin_id` INTEGER,
  `text_comment` TEXT
);
