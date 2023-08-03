DROP SCHEMA IF EXISTS autodetect CASCADE;
CREATE SCHEMA autodetect;

CREATE TABLE autodetect.auto_table
(
    gid     SERIAL PRIMARY KEY,
    feat_id INTEGER,
    geom    GEOMETRY(POINT, 4326)
);

-- INSERT INTO autodetect.auto_table
-- SELECT generate_series(1, 3) as id,
--        (random() * 100000)::int as feat_id,
--        (ST_DUMP(ST_GENERATEPOINTS(st_transform(st_tileenvelope(18, 235085, 122323), 4326), 3))).geom;
-- INSERT INTO autodetect.auto_table
-- SELECT generate_series(4, 30) as id,
--        (random() * 100000)::int as feat_id,
--        (ST_DUMP(ST_GENERATEPOINTS(st_transform(st_tileenvelope(0, 0, 0), 4326), 27))).geom;

INSERT INTO autodetect.auto_table (gid, feat_id, geom)
values (1, 71951, '0101000020E6100000211700C9E6DA6140F510E7C8F4DA2740'),
       (2, 9437, '0101000020E61000005DC569C7E9DA6140CEC346FD7FDA2740'),
       (3, 10709, '0101000020E6100000325F66F8E7DA61402FEEB913C5DA2740'),
       (4, 70797, '0101000020E61000001CB4FF744BBD25C0BA329AF5570E5540'),
       (5, 55425, '0101000020E61000001A9CADC39CB264402CC28861D96609C0'),
       (6, 34933, '0101000020E6100000D21D13F4388C45C08A99F840FD1149C0'),
       (7, 78891, '0101000020E61000000E5F9A5AC5364540584BA4A03CF31C40'),
       (8, 51663, '0101000020E6100000B81C879D88DD5FC0644E7CD053D439C0'),
       (9, 93945, '0101000020E6100000DBB399E0178A584048183AEEFCDA5340'),
       (10, 17259, '0101000020E61000009633C32DCCFE4F40B3146ED8D7B346C0'),
       (11, 26778, '0101000020E6100000087148D449A02BC0F95A2F60F6E841C0'),
       (12, 921, '0101000020E6100000E04D125E8D185EC039BAF402A28F4840'),
       (13, 62646, '0101000020E6100000B7FA72B6A32B3BC0CCF234580EAC3440'),
       (14, 56090, '0101000020E6100000952B6EA7470654C0B4BFE4DB36213A40'),
       (15, 14681, '0101000020E61000001C61802A806E61403212918F4FAF45C0'),
       (16, 2042, '0101000020E6100000D81618AA67453D4077068459211A5240'),
       (17, 71290, '0101000020E6100000EEFC29E57F046540A8838DDFA4AE0A40'),
       (18, 86526, '0101000020E61000004EDCE036C1765C405FB54DED58CB5040'),
       (19, 42544, '0101000020E61000005EAF676356CF49C01C71E517855131C0'),
       (20, 81737, '0101000020E6100000B3DADB584C84514019BFD2EE3C234340'),
       (21, 52337, '0101000020E6100000A102D7D0DFDB64C05DB051C746B94AC0'),
       (22, 29153, '0101000020E61000008E0CF54B76E35640C2B0F17CD34C5240'),
       (23, 70091, '0101000020E6100000C5C9BC82DBAC434018C3058D1D652CC0'),
       (24, 3334, '0101000020E6100000B28E82F0E58F61C00BA6D4F65F695440'),
       (25, 71750, '0101000020E610000050527E5BE5691CC06B9DB1B09C2B41C0'),
       (26, 24924, '0101000020E610000041AA2CDA78F963C07C118FE29D084240'),
       (27, 50823, '0101000020E6100000313E08EFA54859C051F0059F9FB95240'),
       (28, 76138, '0101000020E6100000E72E767A1FD941C06AFA84BD7ADB13C0'),
       (29, 63733, '0101000020E61000009A34CC4D671844C0903C5B00CF1B1340'),
       (30, 98054, '0101000020E6100000FCB7E4474EBA6140468D5E7496BD43C0');

CREATE INDEX ON autodetect.auto_table USING GIST (geom);
CLUSTER auto_table_geom_idx ON autodetect.auto_table;
