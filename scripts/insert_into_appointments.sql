-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(p.given_name, p.family_name, d.given_name, d.family_name, time, date)
SELECT TIMESTAMP '2016-08-12 10:00'
  FROM patients AS p, doctors AS d
  WHERE p.family_name = 'Wilcox'
    AND p.given_name = 'Marsha'
    AND d.family_name = 'Hilton'
    AND d.given_name = 'Vicky'
  UNION
  SELECT TIMESTAMP '2016-08-12 10:00'
  -- In the 3rd question, how can someone have two appointments at the same time?
  FROM patients AS p, doctors AS d
  WHERE p.family_name = 'Wilcox'
    AND p.given_name = 'Marsha'
    AND d.family_name = 'Hubbard'
    AND d.given_name = 'Spencer'
  UNION
  SELECT TIMESTAMP '2016-08-17 13:00'
  FROM patients AS p, doctors AS d
  WHERE p.family_name = 'Talley'
    AND p.given_name = 'Ivory'
    AND d.family_name = 'Hubbard'
    AND d.given_name = 'Spencer'
  UNION
  SELECT TIMESTAMP '2016-08-17 13:00'
  FROM patients AS p, doctors AS d
    WHERE p.family_name = 'Hodge'
    AND p.given_name = 'Blake'
    AND d.family_name = 'Hilton'
    AND d.given_name = 'Vicky'
  ;
