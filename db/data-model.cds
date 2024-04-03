namespace goles.de.river;
using { managed } from '@sap/cds/common';

entity Goles : managed{
    key ID: Integer;
    numeroCiclo: Integer;
    autor: Association to Jugadores;
    partido: Association to Partidos;
    minuto: String;
    forma: Association to Formas;
    enContra: Boolean;
    nroEnCiclo: Integer;
    nroPersonal: Integer;
    asistente: Association to Jugadores;
    numeroAsistenciaEnCiclo: Integer;
    numeroAsistencia: Integer;
    inicio: Integer;
    fin: Integer;
}

entity Partidos : managed{
    key ID: Integer;
    equipo: Association to Equipos;
    fecha: String;
    condicion: Association to Condiciones;
    competencia: Association to Competencias;
    golesAFavor: Integer;
    golesRecibidos: Integer;
    dt: Association to Directores;
    video: Association to Videos;
    goles: Association to many Goles on goles.partido = $self;
}

entity Jugadores : managed{
    key ID: String;
    goles: Association to many Goles on goles.autor = $self;
    nacionalidad: String;
    asistencias: Association to many Goles on asistencias.asistente = $self;
}

entity Directores : managed{
    key ID: String;
    nacionalidad: String;
    goles: Association to many Partidos on goles.dt = $self;
}

entity Equipos : managed{
    key ID: String;
    pais: String;
    partidos: Association to many Partidos on partidos.equipo = $self;
}

entity Formas : managed{
    key ID: String;
    goles: Association to many Goles on goles.forma = $self;
}

entity Condiciones : managed{
    key ID: String;
    partidos: Association to many Partidos on partidos.condicion = $self;
}

entity Competencias : managed{
    key ID: String;
    organizador: String;
    jerarquia: String;
    partidos: Association to many Partidos on partidos.competencia = $self;
}

entity Videos : managed{
    key id: Integer;
    url: String;
    youtube: String;
    partido: Association to many Partidos on partido.video = $self;
}
