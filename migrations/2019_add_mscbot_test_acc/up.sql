INSERT INTO memberships (fk_member, fk_team)
SELECT u.id, t.id
FROM githubuser u, teams t
WHERE t.ping = 'matrix-test-org/spec-core-team' AND (
    u.login = 'mscbot-test'
);