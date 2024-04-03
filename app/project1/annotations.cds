using GolesDeRiver as service from '../../srv/goles-service';

annotate service.Goles with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'N° de gol en el ciclo',
            Value : numeroCiclo,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Goleador',
            Value : autor_ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Rival',
            Value : partido.equipo.ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Minuto',
            Value : minuto,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Ejecución',
            Value : forma_ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'N° de gol en River',
            Value : nroPersonal,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Asistente',
            Value : asistente_ID,
        },
    ]
);
annotate service.Goles with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'N° de gol en ciclo',
                Value : numeroCiclo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Goleador',
                Value : autor_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Partido',
                Value : partido_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Minuto',
                Value : minuto,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Ejecución',
                Value : forma_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Fue en contra?',
                Value : enContra,
            },
            {
                $Type : 'UI.DataField',
                Label : 'N° de gol del goleador en el ciclo',
                Value : nroEnCiclo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'N° de gol en River',
                Value : nroPersonal,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Asistente',
                Value : asistente_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'N° de asistencia en el ciclo',
                Value : numeroAsistenciaEnCiclo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'N° de asistencia en River',
                Value : numeroAsistencia,
            },
        ],
    },
    UI.FieldGroup #GeneratedGroup2 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : partido.ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Fecha',
                Value : partido.fecha,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Rival',
                Value : partido.equipo.ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Competición',
                Value : partido.competencia.ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Condición',
                Value : partido.condicion.ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Director técnico',
                Value : partido.dt.ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Goles a favor',
                Value : partido.golesAFavor,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Goles recibidos',
                Value : partido.golesRecibidos,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Goles',
                Value : partido.goles.autor_ID,
            }
        ],
    },
    UI.FieldGroup #GeneratedGroup3 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Resumen del partido',
                Value : partido.video.url,
            }
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'Información del gol',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet2',
            Label : 'Información del partido',
            Target : '@UI.FieldGroup#GeneratedGroup2',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet3',
            Label : 'Resumen del partido',
            Target : '@UI.FieldGroup#GeneratedGroup3',
        },
    ]
);