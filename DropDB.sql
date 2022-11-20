SELECT pg_terminate_backend(pg_stat_activity.pid)
FROM pg_stat_activity
WHERE pg_stat_activity.datname = 'SenioCare_DB';

DROP DATABASE IF EXISTS "SenioCare_DB";