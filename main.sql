create or replace Table USER
{
    USER_ID             SMALLINT
    USER_GAMES_ID       SMALLINT
    USER_FRIENDS_ID     SMALLINT
    USER_BLOCKS_ID      SMALLINT
    CHAT_ID             SMALLINT
    USER_LNAME          VARCHAR(15)
    USER_FNAME          VARCHAR(15)
    USER_PHONE          char(8)
    USER_EMAIL          char(25)
    USER_GAMERTAG       char(25)

    PRIMARY KEY(USER_ID)
    FOREIGN KEY (USER_GAMES_ID) REFERENCE USER_GAMES (USER_GAMES_ID)
    FOREIGN KEY (USER_FRIENDS_ID) REFERENCE USER_FRIENDS (USER_FRIENDS_ID)
    FOREIGN KEY (USER_BLOCKS_ID) REFERENCE USER_BLOCKS (USER_BLOCKS_ID)
    FOREIGN KEY (CHAT_ID) REFERENCE CHAT (CHAT_ID)
}

CREATE OR REPLACE TABLE USER_FRIENDS
{
    USER_FRIENDS_ID     SMALLINT
    USER_ID             SMALLINT

    PRIMARY KEY(USER_FRIENDS_ID)
    FOREIGN KEY(USER_ID) REFERENCE USER (USER_ID)
}
