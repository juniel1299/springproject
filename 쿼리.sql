/* 회원 */
CREATE TABLE main.tblUser (
    id VARCHAR(20) NOT NULL, /* 회원아이디 */
    password VARCHAR(50) NOT NULL, /* 비밀번호 */
    name VARCHAR(20) NOT NULL, /* 이름 */
    nickName VARCHAR(50) NOT NULL DEFAULT id, /* 닉네임 */
    tel VARCHAR(20) NOT NULL, /* 연락처 */
    address VARCHAR(255) NOT NULL, /* 주소 */
    state VARCHAR(20) NOT NULL DEFAULT '활동', /* 상태 */
    level INT NOT NULL DEFAULT 1, /* 등급 */
    score INT NOT NULL DEFAULT 0, /* 활동점수 */
    userImg VARCHAR(200) NOT NULL DEFAULT 'defaultImg', /* 회원이미지 */
    reportCnt INT NOT NULL DEFAULT 0, /* 신고횟수 */
    lickCnt INT NOT NULL DEFAULT 0, /* 좋아요수 */
    scrapCnt INT NOT NULL DEFAULT 0, /* 스크랩수 */
    followCnt INT, /* 팔로우수 */
    followingCnt INT, /* 팔로잉수 */
    PRIMARY KEY (id)
);

/* 관리자 */
CREATE TABLE main.TABLE2 (
    id VARCHAR(20) NOT NULL, /* 관리자아이디 */
    password VARCHAR(50) NOT NULL, /* 비밀번호 */
    name VARCHAR(20) NOT NULL, /* 이름 */
    nickName VARCHAR(50) NOT NULL DEFAULT id, /* 닉네임 */
    tel VARCHAR(20) NOT NULL, /* 연락처 */
    address VARCHAR(225) NOT NULL, /* 주소 */
    level INT NOT NULL DEFAULT 2, /* 등급 */
    PRIMARY KEY (id)
);

/* 차단계정 테이블 */
CREATE TABLE main.tblBlackList (
    id VARCHAR(20) NOT NULL, /* 회원아이디 */
    PRIMARY KEY (id)
);

/* 팔로우  */
CREATE TABLE main.tblFollow (
    id INT AUTO_INCREMENT NOT NULL, /* 팔로우아이디 */
    followerId VARCHAR(20) NOT NULL, /* 팔로워아이디 */
    followingId VARCHAR(20) NOT NULL, /* 팔로잉아이디 */
    state VARCHAR(10) NOT NULL DEFAULT 'y', /* 상태 */
    PRIMARY KEY (id)
);

/* 게시글 */
CREATE TABLE main.Board (
    id INT AUTO_INCREMENT NOT NULL, /* 게시글아이디 */
    userId VARCHAR(20) NOT NULL, /* 회원아이디 */
    title VARCHAR(50) NOT NULL, /* 게시글 제목 */
    content VARCHAR(2000) NOT NULL, /* 본문 */
    regdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL, /* 작성일 */
    viewCnt INT NOT NULL DEFAULT 0, /* 조회수 */
    reportCnt INT NOT NULL DEFAULT 0, /* 신고횟수 */
    likeCnt INT NOT NULL DEFAULT 0, /* 좋아요수 */
    scrapCnt INT NOT NULL DEFAULT 0, /* 스크랩수 */
    PRIMARY KEY (id)
);

/* 태그 */
CREATE TABLE main.tblTag (
    id INT AUTO_INCREMENT NOT NULL, /* 태그아이디 */
    tagName VARCHAR(100) NOT NULL, /* 태그이름 */
    PRIMARY KEY (id)
);

/* 게시글_해쉬태그 */
CREATE TABLE main.tblHashTag (
    id INT AUTO_INCREMENT NOT NULL, /* 해쉬태그아이디 */
    tagId INT NOT NULL, /* 태그아이디 */
    boardId INT NOT NULL, /* 게시글아이디 */
    PRIMARY KEY (id)
);

/* 이미지 */
CREATE TABLE main.tblImg (
    id INT AUTO_INCREMENT NOT NULL, /* 이미지아이디 */
    imgAddress VARCHAR(255), /* 이미지주소 */
    boardId INT, /* 게시판아이디 */
    PRIMARY KEY (id)
);

/* 댓글 */
CREATE TABLE main.tblComment (
    id INT AUTO_INCREMENT NOT NULL, /* 댓글아이디 */
    content VARCHAR(2000) NOT NULL, /* 내용 */
    writerId VARCHAR(20) NOT NULL, /* 작성자아이디 */
    boardId INT NOT NULL, /* 부모 게시글번호 */
    reportCnt INT NOT NULL DEFAULT 0, /* 신고횟수 */
    regdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL, /* 작성날짜 */
    PRIMARY KEY (id)
);

/* 게시글 화이트리스트 테이블 */
CREATE TABLE main.boardWhiteList (
    id INT NOT NULL, /* 게시글아이디 */
    PRIMARY KEY (id)
);

/* 댓글 화이트리스트 테이블 */
CREATE TABLE main.commentWhiteList (
    id INT NOT NULL, /* 댓글아이디 */
    PRIMARY KEY (id)
);

/* 그룹 */
CREATE TABLE main.tblGroup (
    id INT AUTO_INCREMENT NOT NULL, /* 그룹아이디 */
    userId VARCHAR(20) NOT NULL, /* 방장아이디 */
    groupPw VARCHAR(20) NOT NULL, /* 그룹비밀번호 */
    groupName VARCHAR(50) NOT NULL, /* 그룹이름 */
    groupImg VARCHAR(200) NOT NULL DEFAULT 'defaultImg', /* 그룹이미지 */
    PRIMARY KEY (id)
);

/* 채팅방 */
CREATE TABLE main.tblChatRoom (
    id INT AUTO_INCREMENT NOT NULL, /* 채팅방아이디 */
    groupId INT NOT NULL, /* 그룹아이디 */
    regdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL, /* 생성시간 */
    chatName VARCHAR(50) NOT NULL, /* 채팅방이름 */
    PRIMARY KEY (id)
);

/* 메세지 */
CREATE TABLE main.tblMessage (
    id INT AUTO_INCREMENT NOT NULL, /* 메세지아이디 */
    chatId INT NOT NULL, /* 채팅방아이디 */
    userId VARCHAR(20) NOT NULL, /* 보낸사람아이디 */
    content VARCHAR(2000) NOT NULL, /* 메세지 내용 */
    regdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL, /* 보낸시간 */
    PRIMARY KEY (id)
);

/* 그룹멤버 */
CREATE TABLE main.tblGroupUser (
    id VARCHAR(20) NOT NULL, /* 그룹멤버아이디 */
    userId VARCHAR(20) NOT NULL, /* 회원아이디 */
    groupId INT NOT NULL, /* 그룹아이디 */
    level INT NOT NULL DEFAULT 1, /* 등급 */
    PRIMARY KEY (id)
);

/* 채팅방 화이트리스트 테이블 */
CREATE TABLE main.tblChatRoomWhiteList (
    id INT NOT NULL, /* 채팅방아이디 */
    PRIMARY KEY (id)
);

/* 그룹게시글 */
CREATE TABLE main.tblGroupBoard (
    id INT NOT NULL, /* 그룹게시글아이디 */
    groupId INT NOT NULL, /* 그룹아이디 */
    boardId INT NOT NULL, /* 게시글아이디 */
    PRIMARY KEY (id)
);

/* 그룹게시글 화이트리스트 테이블 */
CREATE TABLE main.tblGroupBoardWhiteList (
    id INT NOT NULL, /* 그룹게시글아이디 */
    PRIMARY KEY (id)
);

/* 스크랩 게시글 */
CREATE TABLE main.TABLE20 (
    id INT AUTO_INCREMENT NOT NULL, /* 스크랩 게시글 아이디 */
    userId VARCHAR(20) NOT NULL, /* 회원아이디 */
    boardId INT NOT NULL, /* 게시글아이디 */
    state VARCHAR(10) NOT NULL DEFAULT 'y', /* 상태 */
    PRIMARY KEY (id)
);

/* 게시글 좋아요 기록 */
CREATE TABLE main.tblLike (
    id INT AUTO_INCREMENT NOT NULL, /* 게시글 좋아요 아이디 */
    userId VARCHAR(20) NOT NULL, /* 회원아이디 */
    boardId INT NOT NULL, /* 게시글아이디 */
    state VARCHAR(10) NOT NULL DEFAULT 'y', /* 상태 */
    PRIMARY KEY (id)
);

/* 게시글 신고 기록 */
CREATE TABLE main.tblBoardReport (
    id INT AUTO_INCREMENT NOT NULL, /* 게시글 신고 아이디 */
    boardId INT NOT NULL, /* 게시글아이디 */
    reportCat INT NOT NULL, /* 신고카테고리 번호 */
    userId VARCHAR(20) NOT NULL, /* 회원아이디 */
    PRIMARY KEY (id)
);

/* 신고 카테고리 */
CREATE TABLE main.tblReportCat (
    id INT AUTO_INCREMENT NOT NULL, /* 신고카테고리 번호 */
    content VARCHAR(2000) NOT NULL, /* 내용 */
    PRIMARY KEY (id)
);

/* 댓글 신고 기록 */
CREATE TABLE main.tblCommentReport (
    id INT AUTO_INCREMENT NOT NULL, /* 댓글 신고 아이디 */
    commentId INT NOT NULL, /* 댓글아이디 */
    report INT NOT NULL, /* 신고카테고리 번호 */
    userId VARCHAR(20) NOT NULL, /* 회원아이디 */
    PRIMARY KEY (id)
);


ALTER TABLE main.tblBlackList
    ADD CONSTRAINT FK_tblUser_TO_tblBlackList
    FOREIGN KEY (id)
    REFERENCES main.tblUser (id);

ALTER TABLE main.tblFollow
    ADD CONSTRAINT FK_tblUser_TO_tblFollow
    FOREIGN KEY (followerId)
    REFERENCES main.tblUser (id);

ALTER TABLE main.tblFollow
    ADD CONSTRAINT FK_tblUser_TO_tblFollow2
    FOREIGN KEY (followingId)
    REFERENCES main.tblUser (id);

ALTER TABLE main.Board
    ADD CONSTRAINT FK_tblUser_TO_Board
    FOREIGN KEY (userId)
    REFERENCES main.tblUser (id);

ALTER TABLE main.tblHashTag
    ADD CONSTRAINT FK_tblTag_TO_tblHashTag
    FOREIGN KEY (tagId)
    REFERENCES main.tblTag (id);

ALTER TABLE main.tblHashTag
    ADD CONSTRAINT FK_Board_TO_tblHashTag
    FOREIGN KEY (boardId)
    REFERENCES main.Board (id);

ALTER TABLE main.tblImg
    ADD CONSTRAINT FK_Board_TO_tblImg
    FOREIGN KEY (boardId)
    REFERENCES main.Board (id);

ALTER TABLE main.tblComment
    ADD CONSTRAINT FK_tblUser_TO_tblComment
    FOREIGN KEY (writerId)
    REFERENCES main.tblUser (id);

ALTER TABLE main.tblComment
    ADD CONSTRAINT FK_Board_TO_tblComment
    FOREIGN KEY (boardId)
    REFERENCES main.Board (id);

ALTER TABLE main.boardWhiteList
    ADD CONSTRAINT FK_Board_TO_boardWhiteList
    FOREIGN KEY (id)
    REFERENCES main.Board (id);

ALTER TABLE main.commentWhiteList
    ADD CONSTRAINT FK_tblComment_TO_commentWhiteList
    FOREIGN KEY (id)
    REFERENCES main.tblComment (id);

ALTER TABLE main.tblGroup
    ADD CONSTRAINT FK_tblUser_TO_tblGroup
    FOREIGN KEY (userId)
    REFERENCES main.tblUser (id);

ALTER TABLE main.tblChatRoom
    ADD CONSTRAINT FK_tblGroup_TO_tblChatRoom
    FOREIGN KEY (groupId)
    REFERENCES main.tblGroup (id);

ALTER TABLE main.tblMessage
    ADD CONSTRAINT FK_tblChatRoom_TO_tblMessage
    FOREIGN KEY (chatId)
    REFERENCES main.tblChatRoom (id);

ALTER TABLE main.tblMessage
    ADD CONSTRAINT FK_tblGroupUser_TO_tblMessage
    FOREIGN KEY (userId)
    REFERENCES main.tblGroupUser (id);

ALTER TABLE main.tblGroupUser
    ADD CONSTRAINT FK_tblGroup_TO_tblGroupUser
    FOREIGN KEY (groupId)
    REFERENCES main.tblGroup (id);

ALTER TABLE main.tblGroupUser
    ADD CONSTRAINT FK_tblUser_TO_tblGroupUser
    FOREIGN KEY (userId)
    REFERENCES main.tblUser (id);

ALTER TABLE main.tblChatRoomWhiteList
    ADD CONSTRAINT FK_tblChatRoom_TO_tblChatRoomWhiteList
    FOREIGN KEY (id)
    REFERENCES main.tblChatRoom (id);

ALTER TABLE main.tblGroupBoard
    ADD CONSTRAINT FK_tblGroup_TO_tblGroupBoard
    FOREIGN KEY (groupId)
    REFERENCES main.tblGroup (id);

ALTER TABLE main.tblGroupBoard
    ADD CONSTRAINT FK_Board_TO_tblGroupBoard
    FOREIGN KEY (boardId)
    REFERENCES main.Board (id);

ALTER TABLE main.tblGroupBoardWhiteList
    ADD CONSTRAINT FK_tblGroupBoard_TO_tblGroupBoardWhiteList
    FOREIGN KEY (id)
    REFERENCES main.tblGroupBoard (id);

ALTER TABLE main.TABLE20
    ADD CONSTRAINT FK_tblUser_TO_TABLE20
    FOREIGN KEY (userId)
    REFERENCES main.tblUser (id);

ALTER TABLE main.TABLE20
    ADD CONSTRAINT FK_Board_TO_TABLE20
    FOREIGN KEY (boardId)
    REFERENCES main.Board (id);

ALTER TABLE main.tblLike
    ADD CONSTRAINT FK_tblUser_TO_tblLike
    FOREIGN KEY (userId)
    REFERENCES main.tblUser (id);

ALTER TABLE main.tblLike
    ADD CONSTRAINT FK_Board_TO_tblLike
    FOREIGN KEY (boardId)
    REFERENCES main.Board (id);

ALTER TABLE main.tblBoardReport
    ADD CONSTRAINT FK_Board_TO_tblBoardReport
    FOREIGN KEY (boardId)
    REFERENCES main.Board (id);

ALTER TABLE main.tblBoardReport
    ADD CONSTRAINT FK_tblReportCat_TO_tblBoardReport
    FOREIGN KEY (reportCat)
    REFERENCES main.tblReportCat (id);

ALTER TABLE main.tblBoardReport
    ADD CONSTRAINT FK_tblUser_TO_tblBoardReport
    FOREIGN KEY (userId)
    REFERENCES main.tblUser (id);

ALTER TABLE main.tblCommentReport
    ADD CONSTRAINT FK_tblComment_TO_tblCommentReport
    FOREIGN KEY (commentId)
    REFERENCES main.tblComment (id);

ALTER TABLE main.tblCommentReport
    ADD CONSTRAINT FK_tblReportCat_TO_tblCommentReport
    FOREIGN KEY (report)
    REFERENCES main.tblReportCat (id);

ALTER TABLE main.tblCommentReport
    ADD CONSTRAINT FK_tblUser_TO_tblCommentReport
    FOREIGN KEY (userId)
    REFERENCES main.tblUser (id);
    
    tbluser