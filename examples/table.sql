CREATE TABLE production(
  id SERIAL PRIMARY KEY,
  version TEXT NOT NULL,
  host TEXT NOT NULL,
  path TEXT NOT NULL,
  timestamp TIMESTAMPTZ NOT NULL,
  full_log TEXT NOT NULL,
  loglevel TEXT,
  payload TEXT,
  class TEXT,
  thread TEXT,
  uid UUID,
  cid TEXT
);
