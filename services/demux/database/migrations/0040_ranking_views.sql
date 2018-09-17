

CREATE VIEW "${schema^}".vranking_graveyard AS
  SELECT *
    FROM "${schema^}".pets AS p
   WHERE (p.death_at >= '2018-01-01 00:00:00')
   ORDER BY id ASC;

CREATE VIEW "${schema^}".vranking_active AS
  SELECT p.id, p.pet_name, p.owner, p.type_id, count(a.id) AS actions
    FROM "${schema^}".pets AS p
   INNER JOIN "${schema^}".pet_actions AS a
      ON a.pet_id = p.id
   GROUP BY p.id
   ORDER BY actions DESC;

CREATE VIEW "${schema^}".vranking_collectors AS
  SELECT p.owner, count(distinct p.type_id) AS pets
    FROM "${schema^}".pets AS p
   GROUP BY p.owner
   ORDER BY pets DESC;

CREATE VIEW "${schema^}".vranking_battle_pets AS
  SELECT bp.pet_id, p.pet_name, p.type_id, p.owner,
         count(bw.id) AS wins,
         count(bl.id) AS losses
    FROM "${schema^}".battle_picks AS bp
   INNER JOIN "${schema^}".pets AS p
      ON p.id = bp.pet_id
    LEFT JOIN "${schema^}".battles AS bw
      ON bw.id = bp.battle_id
     AND bw.winner = bp.picker
    LEFT JOIN "${schema^}".battles AS bl
      ON bl.id = bp.battle_id
     AND NOT bl.winner = bp.picker
     AND NOT bl.winner = ''
   GROUP BY bp.pet_id, p.pet_name, p.type_id, p.owner
   ORDER BY wins DESC;

CREATE VIEW "${schema^}".vranking_battle_players AS
  SELECT bp.picker,
         count(bw.id) AS wins,
         count(bl.id) AS losses
    FROM "${schema^}".battle_picks AS bp
    LEFT JOIN "${schema^}".battles AS bw
      ON bw.id = bp.battle_id
     AND bw.winner = bp.picker
    LEFT JOIN "${schema^}".battles AS bl
      ON bl.id = bp.battle_id
     AND NOT bl.winner = bp.picker
     AND NOT bl.winner = ''
   GROUP BY bp.picker
   ORDER BY wins DESC;