CREATE TABLE `springdb`.`tk_cafemember` (
  `id` VARCHAR(20) NOT NULL,
  `passwd` VARCHAR(20) NOT NULL,
  `username` VARCHAR(20) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mpoint` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

CREATE TABLE `springdb`.`tk_cafeboard` (
  `b_id` INT NOT NULL AUTO_INCREMENT,
  `b_title` VARCHAR(45) NOT NULL,
  `b_main` VARCHAR(1000) NOT NULL,
  `date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `writer_id` VARCHAR(20) NOT NULL,
  `b_viewcnt` INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`b_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

ALTER TABLE tk_cafeboard ADD CONSTRAINT writer_id FOREIGN KEY (writer_id) REFERENCES tk_cafemember (id) on delete cascade;

select * from tk_cafemember;
select * from tk_cafeboard;

INSERT INTO `springdb`.`tk_cafemember` (`id`, `passwd`, `username`, `email`) VALUES ('ihp001', '1234', '박인효', 'inhyopark122@gmail.com');
INSERT INTO `springdb`.`tk_cafemember` (`id`, `passwd`, `username`, `email`) VALUES ('ok9938', '1234', '뇽뇽이', 'nongnongiii@gmail.com');

INSERT INTO `springdb`.`tk_cafeboard` (`b_title`, `b_main`, `writer_id`) VALUES ('게시판 테스트', '게시판 테스트를 진행중입니다.', 'ihp001');
INSERT INTO `springdb`.`tk_cafeboard` (`b_title`, `b_main`, `writer_id`) VALUES ('게시판 최종 테스트', '게시판 최종 테스트를 진행중입니다.', 'ok9938');

# b_id will be different because of AI type.
DELETE FROM `springdb`.`tk_cafeboard` WHERE (`b_id` = '7'); 
DELETE FROM `springdb`.`tk_cafeboard` WHERE (`b_id` = '8'); 

DELETE FROM `springdb`.`tk_cafemember` WHERE (`id` = 'ihp001');
DELETE FROM `springdb`.`tk_cafemember` WHERE (`id` = 'ok9938');

DROP TABLE `tk_cafeboard`;
DROP TABLE `tk_cafemember`;







