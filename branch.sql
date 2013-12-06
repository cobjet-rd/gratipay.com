-------------------------------------------------------------------------------
-- https://github.com/gittip/www.gittip.com/issues/1683

BEGIN;
    ALTER TABLE participants RENAME COLUMN anonymous TO anonymous_giving;
    ALTER TABLE participants ADD COLUMN anonymous_receiving bool NOT NULL DEFAULT FALSE;
    ALTER TABLE homepage_top_receivers ADD COLUMN anonymous boolean;
END;