-- DropForeignKey
ALTER TABLE `book_author` DROP FOREIGN KEY `book_author_ibfk_1`;

-- DropForeignKey
ALTER TABLE `book_author` DROP FOREIGN KEY `book_author_ibfk_2`;

-- DropForeignKey
ALTER TABLE `book_genre` DROP FOREIGN KEY `book_genre_ibfk_1`;

-- DropForeignKey
ALTER TABLE `book_genre` DROP FOREIGN KEY `book_genre_ibfk_2`;

-- DropForeignKey
ALTER TABLE `book_tag` DROP FOREIGN KEY `book_tag_ibfk_1`;

-- DropForeignKey
ALTER TABLE `book_tag` DROP FOREIGN KEY `book_tag_ibfk_2`;

-- DropForeignKey
ALTER TABLE `feedback` DROP FOREIGN KEY `feedback_ibfk_1`;

-- DropForeignKey
ALTER TABLE `feedback` DROP FOREIGN KEY `feedback_ibfk_2`;

-- DropForeignKey
ALTER TABLE `user_bookmarks` DROP FOREIGN KEY `user_bookmarks_ibfk_1`;

-- DropForeignKey
ALTER TABLE `user_bookmarks` DROP FOREIGN KEY `user_bookmarks_ibfk_2`;

-- AddForeignKey
ALTER TABLE `book_author` ADD CONSTRAINT `book_author_BOOKID_fkey` FOREIGN KEY (`BOOKID`) REFERENCES `books`(`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `book_author` ADD CONSTRAINT `book_author_AUTHORID_fkey` FOREIGN KEY (`AUTHORID`) REFERENCES `authors`(`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `book_genre` ADD CONSTRAINT `book_genre_BOOKID_fkey` FOREIGN KEY (`BOOKID`) REFERENCES `books`(`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `book_genre` ADD CONSTRAINT `book_genre_GENREID_fkey` FOREIGN KEY (`GENREID`) REFERENCES `genre`(`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `book_tag` ADD CONSTRAINT `book_tag_BOOKID_fkey` FOREIGN KEY (`BOOKID`) REFERENCES `books`(`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `book_tag` ADD CONSTRAINT `book_tag_TAGID_fkey` FOREIGN KEY (`TAGID`) REFERENCES `tag`(`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `feedback` ADD CONSTRAINT `feedback_ID_USER_fkey` FOREIGN KEY (`ID_USER`) REFERENCES `users`(`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `feedback` ADD CONSTRAINT `feedback_ID_BOOK_fkey` FOREIGN KEY (`ID_BOOK`) REFERENCES `books`(`ID`) ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `user_bookmarks` ADD CONSTRAINT `user_bookmarks_USERID_fkey` FOREIGN KEY (`USERID`) REFERENCES `users`(`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `user_bookmarks` ADD CONSTRAINT `user_bookmarks_BOOKID_fkey` FOREIGN KEY (`BOOKID`) REFERENCES `books`(`ID`) ON DELETE CASCADE ON UPDATE NO ACTION;
