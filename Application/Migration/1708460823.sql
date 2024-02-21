ALTER TABLE comments RENAME COLUMN "comment" TO body;
DROP INDEX comments_created_at_index;
DROP INDEX comments_post_id_index;
CREATE INDEX bodys_post_id_index ON comments (post_id);
CREATE INDEX bodys_created_at_index ON comments (created_at);
