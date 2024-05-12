-- DropForeignKey
ALTER TABLE `book_author` DROP FOREIGN KEY `book_author_AUTHORID_fkey`;

-- DropForeignKey
ALTER TABLE `book_author` DROP FOREIGN KEY `book_author_BOOKID_fkey`;

-- DropForeignKey
ALTER TABLE `book_genre` DROP FOREIGN KEY `book_genre_BOOKID_fkey`;

-- DropForeignKey
ALTER TABLE `book_genre` DROP FOREIGN KEY `book_genre_GENREID_fkey`;

-- DropForeignKey
ALTER TABLE `book_tag` DROP FOREIGN KEY `book_tag_BOOKID_fkey`;

-- DropForeignKey
ALTER TABLE `book_tag` DROP FOREIGN KEY `book_tag_TAGID_fkey`;

-- DropForeignKey
ALTER TABLE `feedback` DROP FOREIGN KEY `feedback_ID_BOOK_fkey`;

-- DropForeignKey
ALTER TABLE `feedback` DROP FOREIGN KEY `feedback_ID_USER_fkey`;

-- DropForeignKey
ALTER TABLE `user_bookmarks` DROP FOREIGN KEY `user_bookmarks_BOOKID_fkey`;

-- DropForeignKey
ALTER TABLE `user_bookmarks` DROP FOREIGN KEY `user_bookmarks_USERID_fkey`;

-- AddForeignKey
ALTER TABLE `book_author` ADD CONSTRAINT `book_author_ibfk_1` FOREIGN KEY (`BOOKID`) REFERENCES `books`(`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `book_author` ADD CONSTRAINT `book_author_ibfk_2` FOREIGN KEY (`AUTHORID`) REFERENCES `authors`(`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `book_genre` ADD CONSTRAINT `book_genre_ibfk_1` FOREIGN KEY (`BOOKID`) REFERENCES `books`(`ID`) ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `book_genre` ADD CONSTRAINT `book_genre_ibfk_2` FOREIGN KEY (`GENREID`) REFERENCES `genre`(`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `book_tag` ADD CONSTRAINT `book_tag_ibfk_1` FOREIGN KEY (`BOOKID`) REFERENCES `books`(`ID`) ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `book_tag` ADD CONSTRAINT `book_tag_ibfk_2` FOREIGN KEY (`TAGID`) REFERENCES `tag`(`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `feedback` ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`ID_USER`) REFERENCES `users`(`ID`) ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `feedback` ADD CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`ID_BOOK`) REFERENCES `books`(`ID`) ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `user_bookmarks` ADD CONSTRAINT `user_bookmarks_ibfk_1` FOREIGN KEY (`USERID`) REFERENCES `users`(`ID`) ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `user_bookmarks` ADD CONSTRAINT `user_bookmarks_ibfk_2` FOREIGN KEY (`BOOKID`) REFERENCES `books`(`ID`) ON DELETE CASCADE ON UPDATE NO ACTION;
