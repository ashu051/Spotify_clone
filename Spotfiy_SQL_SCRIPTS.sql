CREATE TABLE users (
  username VARCHAR(255),
  email VARCHAR(255),
  country VARCHAR(255),
  premium_id INT,
  User_id INT NOT NULL,
  PRIMARY KEY (User_id)
);


CREATE TABLE Podcast (
  id INT NOT NULL,
  PodcastName VARCHAR(255),
  PodcastDuration TIME,
  PRIMARY KEY (id)
);

CREATE TABLE playlist (
  id INT PRIMARY KEY,
  PlaylistName VARCHAR(255)
);

CREATE TABLE Songs (
  id INT NOT NULL,
  SongName VARCHAR(255),
  SongDuration TIME,
  SongGenre VARCHAR(255),
  Album_id INT,
  PRIMARY KEY (id),
  FOREIGN KEY (Album_id) REFERENCES Album(id)
);


CREATE TABLE Premium (
  premium_id INT NOT NULL,
  PremiumType VARCHAR(255),
  PremiumActive BOOLEAN,
  PRIMARY KEY (premium_id)
);

CREATE TABLE Albums (
  id INT NOT NULL,
  AlbumName VARCHAR(255),
  PRIMARY KEY (id)
);

CREATE TABLE Artist (
  id INT NOT NULL,
  ArtistName VARCHAR(255),
  ArtistBio VARCHAR(255),
  PRIMARY KEY (id)
);


CREATE TABLE Users_Playlist (
  playlist_id INT NOT NULL,
  user_id INT NOT NULL,
  FOREIGN KEY (playlist_id) REFERENCES playlist(playlist_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);



CREATE TABLE Playlist_Songs (
  playlist_id INT NOT NULL,
  song_id INT NOT NULL,
  FOREIGN KEY (playlist_id) REFERENCES playlist(id),
  FOREIGN KEY (song_id) REFERENCES songs(id)
);


CREATE TABLE Artist_Albums (
  album_id INT NOT NULL,
  artist_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES Albums(id),
  FOREIGN KEY (artist_id) REFERENCES Artists(id)
);

CREATE TABLE Artist_Songs (
  artist_id INT NOT NULL,
  song_id INT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES Artist(id),
  FOREIGN KEY (song_id) REFERENCES Songs(id)
);

CREATE TABLE Artist_Podcast (
  podcast_id INT NOT NULL,
  artist_id INT NOT NULL,
  FOREIGN KEY (podcast_id) REFERENCES Podcast(id),
  FOREIGN KEY (artist_id) REFERENCES Artist(id)
);
CREATE TABLE User_Like_Songs (
  user_id INT,
  song_id INT,
  FOREIGN KEY (user_id) REFERENCES users(User_id),
  FOREIGN KEY (song_id) REFERENCES Songs(id)
);

CREATE TABLE Subscription (
  SubscriptionType VARCHAR(255),
  Cost BIGINT,
  SubscriptionDetails VARCHAR(255)
);

INSERT INTO Artist (id, ArtistName, ArtistBio)
VALUES (1, 'John Smith', 'A talented musician'),
       (2, 'Emma Johnson', 'A versatile singer');
INSERT INTO Albums (id, AlbumName)
VALUES (1, 'Greatest Hits'),
       (2, 'Love Songs');
INSERT INTO Songs (id, SongName, SongDuration, SongGenre, Album_id)
VALUES (1, 'Song 1', '00:03:45', 'Pop', 1),
       (2, 'Song 2', '00:04:10', 'Rock', 2),
       (3, 'Song 3', '00:05:20', 'R&B', 1);
INSERT INTO Artist_Albums (artist_id, album_id)
VALUES (1, 1),
       (1, 2),
       (2, 1);
 INSERT INTO Podcast (id, PodcastName, PodcastDuration)
VALUES (1, 'Tech Talk', '00:30:00'),
       (2, 'Business Insights', '00:45:00');
	   INSERT INTO Podcast (id, PodcastName, PodcastDuration)
VALUES (1, 'Tech Talk', '00:30:00'),
       (2, 'Business Insights', '00:45:00');
INSERT INTO Artist_Podcast (artist_id, podcast_id)
VALUES (1, 1),
       (1, 2),
       (2, 2);

INSERT INTO Playlist (id, PlaylistName)
VALUES (1, 'Favorites'),
       (2, 'Party Mix');
INSERT INTO Artist_Songs (artist_id, song_id)
VALUES (1, 1),
       (1, 2),
       (2, 3);




