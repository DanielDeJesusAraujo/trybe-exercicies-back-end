use Scientists;
SELECT * FROM Projects;

SELECT * FROM Projects
WHERE Hours >= 156;

-- a porcentagen dentro das aspas ignora tudo o que vier depois

SELECT
	*
from
	Projects
WHERE
	Name LIKE 'Bac%';

