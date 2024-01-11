select * from mysql.user;

create user 'ana'@'localhost' identified by '12345';

grant update on *.* to 'ana'@'localhost';

revoke update on db_senac.historicos from 'ana'@'localhost';

create user 'joão'@'localhost' identified by '54321';
grant select on *.* to 'joão'@'localhost';

revoke all privileges on *.* from 'joão'@'localhost';

drop user 'joão'@'localhost';

create user 'henrique'@'189.9.36.206' identified by '123321';

grant all privileges on *.* to 'henrique'@'189.9.36.206';

revoke all privileges on *.* from 'henrique'@'189.9.36.206';

create user 'lucas'@'localhost';

grant all privileges on db_consultorio_medico to 'henrique'@'189.9.36.206';

revoke update on db_consultorio_medico.pacientes from 'henrique'@'189.9.36.206';