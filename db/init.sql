-- Schema do Song Request Queue para PostgreSQL (Neon)
-- Idempotente: pode ser executado mais de uma vez sem erro.
-- Alternativa: após o deploy, acesse GET /api/setup que executa estas mesmas migrations.

CREATE TABLE IF NOT EXISTS twitch_users (
  id                   SERIAL PRIMARY KEY,
  twitch_user_id       VARCHAR(30) UNIQUE NOT NULL,
  twitch_login         VARCHAR(50) NOT NULL,
  twitch_display_name  VARCHAR(100) NOT NULL,
  access_token         TEXT NOT NULL,
  refresh_token        TEXT NOT NULL,
  token_expires_at     TIMESTAMP NOT NULL,
  channel_name         VARCHAR(50),
  created_at           TIMESTAMP DEFAULT NOW(),
  updated_at           TIMESTAMP DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS favorites (
  id         SERIAL PRIMARY KEY,
  user_id    INTEGER REFERENCES twitch_users(id) ON DELETE CASCADE,
  video_id   VARCHAR(100) NOT NULL,
  title      TEXT NOT NULL,
  channel    VARCHAR(255) NOT NULL,
  thumbnail  TEXT,
  service    VARCHAR(50) DEFAULT 'youtube',
  added_at   TIMESTAMP DEFAULT NOW(),
  UNIQUE(user_id, video_id, service)
);

CREATE TABLE IF NOT EXISTS user_sessions (
  id           SERIAL PRIMARY KEY,
  user_id      INTEGER REFERENCES twitch_users(id) ON DELETE CASCADE,
  session_uuid VARCHAR(32) UNIQUE NOT NULL,
  created_at   TIMESTAMP DEFAULT NOW(),
  expires_at   TIMESTAMP DEFAULT NOW() + INTERVAL '7 days',
  UNIQUE(user_id)
);

CREATE TABLE IF NOT EXISTS playlists (
  id          SERIAL PRIMARY KEY,
  user_id     INTEGER REFERENCES twitch_users(id) ON DELETE CASCADE,
  name        VARCHAR(100) NOT NULL,
  created_at  TIMESTAMP DEFAULT NOW(),
  updated_at  TIMESTAMP DEFAULT NOW(),
  UNIQUE(user_id, name)
);

CREATE TABLE IF NOT EXISTS playlist_items (
  id          SERIAL PRIMARY KEY,
  playlist_id INTEGER REFERENCES playlists(id) ON DELETE CASCADE,
  video_id    VARCHAR(100) NOT NULL,
  title       TEXT NOT NULL,
  channel     VARCHAR(255) NOT NULL,
  thumbnail   TEXT,
  service     VARCHAR(50) DEFAULT 'youtube',
  position    INTEGER DEFAULT 0,
  added_at    TIMESTAMP DEFAULT NOW(),
  UNIQUE(playlist_id, video_id, service)
);

CREATE INDEX IF NOT EXISTS idx_twitch_users_twitch_user_id ON twitch_users(twitch_user_id);
CREATE INDEX IF NOT EXISTS idx_favorites_user_id ON favorites(user_id);
CREATE INDEX IF NOT EXISTS idx_user_sessions_uuid ON user_sessions(session_uuid);
CREATE INDEX IF NOT EXISTS idx_playlists_user_id ON playlists(user_id);
CREATE INDEX IF NOT EXISTS idx_playlist_items_playlist_id ON playlist_items(playlist_id);
