using goles.de.river as my from '../db/data-model';

service GolesDeRiver {
  entity Goles @readonly as projection on my.Goles;
  entity Partidos @readonly as projection on my.Partidos;
  entity Jugadores @readonly as projection on my.Jugadores;
  entity Directores @readonly as projection on my.Directores;
  entity Equipos @readonly as projection on my.Equipos;
  entity Formas @readonly as projection on my.Formas;
  entity Competencias @readonly as projection on my.Competencias;
  entity Condiciones @readonly as projection on my.Condiciones;
  entity Videos @readonly as projection on my.Videos;
}