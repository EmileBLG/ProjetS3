drop schema if exists schema cascade;
Create schema schema

    CREATE TABLE schema.users
    (
        cip         TEXT PRIMARY KEY,
        enabled     BOOLEAN,
        firstName   TEXT,
        lastName    TEXT,
        email       TEXT,
        realmRoles  TEXT[]
    );



WITH users_json (doc) AS (
    VALUES
        ('{
          "realm": "usager",
          "users": [
            {
              "cip": "bour0703",
              "enabled": true,
              "firstName": "Raphaël",
              "lastName": "Bouchard",
              "email": "bour0703@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "lebg2708",
              "enabled": true,
              "firstName": "Gabriel",
              "lastName": "Leblanc-Fontaine",
              "email": "lebg2708@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "jans2001",
              "enabled": true,
              "firstName": "Simon",
              "lastName": "Janelle-Bombardier",
              "email": "jans2001@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "jace1402",
              "enabled": true,
              "firstName": "Emile",
              "lastName": "Jacques-Tighe",
              "email": "jace1402@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "canb1801",
              "enabled": true,
              "firstName": "Benjamin",
              "lastName": "Canuel",
              "email": "canb1801@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "pald2501",
              "enabled": true,
              "firstName": "Domingo",
              "lastName": "Palao Munoz",
              "email": "pald2501@usherbrooke.ca",
              "realmRoles": [
                "enseignant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "sevm1802",
              "enabled": true,
              "firstName": "Mathieu",
              "lastName": "Sévégny",
              "email": "sevm1802@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "bele1103",
              "enabled": true,
              "firstName": "Émile",
              "lastName": "Bélanger",
              "email": "bele1103@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "keif1201",
              "enabled": true,
              "firstName": "Fatoumata",
              "lastName": "Keita",
              "email": "keif1201@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "chab1704",
              "enabled": true,
              "firstName": "Benjamin",
              "lastName": "Chaussé",
              "email": "chab1704@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "thip0901",
              "enabled": true,
              "firstName": "Pape Malick",
              "lastName": "Thioye",
              "email": "thip0901@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "lanj2131",
              "enabled": true,
              "firstName": "Jordan",
              "lastName": "Lanouette",
              "email": "lanj2131@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "laby1302",
              "enabled": true,
              "firstName": "Youcef",
              "lastName": "Labassi",
              "email": "laby1302@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "pagm1302",
              "enabled": true,
              "firstName": "Maxime",
              "lastName": "Pagé",
              "email": "pagm1302@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "lavm2134",
              "enabled": true,
              "firstName": "Mathias",
              "lastName": "Lavoie-Rivard",
              "email": "lavm2134@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "lavm1927",
              "enabled": true,
              "firstName": "Michaël",
              "lastName": "Lavigne",
              "email": "lavm1927@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "rerm1001",
              "enabled": true,
              "firstName": "Malik",
              "lastName": "Rerhaib",
              "email": "rerm1001@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "lamg0502",
              "enabled": true,
              "firstName": "Gabriel",
              "lastName": "Lamontagne",
              "email": "lamg0502@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "barr1306",
              "enabled": true,
              "firstName": "Raphaël",
              "lastName": "Barrette",
              "email": "barr1306@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "lant1401",
              "enabled": true,
              "firstName": "Tristan",
              "lastName": "Langis",
              "email": "lant1401@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "stao0901",
              "enabled": true,
              "firstName": "Olivier",
              "lastName": "St-Amand",
              "email": "stao0901@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "dufj2908",
              "enabled": true,
              "firstName": "Joël",
              "lastName": "Dufault",
              "email": "dufj2908@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "beab1802",
              "enabled": true,
              "firstName": "Bernard",
              "lastName": "Beaulieu",
              "email": "beab1802@usherbrooke.ca",
              "realmRoles": [
                "enseignant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "cotr3901",
              "enabled": true,
              "firstName": "Roxanne",
              "lastName": "Côté",
              "email": "cotr3901@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "gaud1401",
              "enabled": true,
              "firstName": "Daniel",
              "lastName": "Gaucher",
              "email": "gaud1401@usherbrooke.ca",
              "realmRoles": [
                "enseignant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "kilv1201",
              "enabled": true,
              "firstName": "Vincent",
              "lastName": "Kilanowski",
              "email": "kilv1201@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "aubj1202",
              "enabled": true,
              "firstName": "Joseanne",
              "lastName": "Aubut",
              "email": "aubj1202@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "lede2401",
              "enabled": true,
              "firstName": "Eric",
              "lastName": "Leduc",
              "email": "lede2401@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "cars1804",
              "enabled": true,
              "firstName": "Serge",
              "lastName": "Caron",
              "email": "cars1804@usherbrooke.ca",
              "realmRoles": [
                "enseignant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "lals1003",
              "enabled": true,
              "firstName": "Simon",
              "lastName": "Lalancette",
              "email": "lals1003@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "maif1401",
              "enabled": true,
              "firstName": "Frédéric",
              "lastName": "Mailhot",
              "email": "maif1401@usherbrooke.ca",
              "realmRoles": [
                "enseignant",
                "coordonnateur-session",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "trus1706",
              "enabled": true,
              "firstName": "Simon",
              "lastName": "Trudeau",
              "email": "trus1706@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "ronk2602",
              "enabled": true,
              "firstName": "Kevin",
              "lastName": "Rondeau",
              "email": "ronk2602@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "laus1801",
              "enabled": true,
              "firstName": "Sylvain",
              "lastName": "Lauzier",
              "email": "laus1801@usherbrooke.ca",
              "realmRoles": [
                "enseignant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "sowa0801",
              "enabled": true,
              "firstName": "Ali",
              "lastName": "Sow",
              "email": "sowa0801@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "clof1603",
              "enabled": true,
              "firstName": "Félix-Olivier",
              "lastName": "Cloutier",
              "email": "clof1603@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "bils2704",
              "enabled": true,
              "firstName": "Samuel",
              "lastName": "Bilodeau",
              "email": "bils2704@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "aubo1502",
              "enabled": true,
              "firstName": "Olivier",
              "lastName": "Aubry",
              "email": "aubo1502@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "carv0701",
              "enabled": true,
              "firstName": "Vincent",
              "lastName": "Caron-Thibault",
              "email": "carv0701@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "turv5324",
              "enabled": true,
              "firstName": "Victor",
              "lastName": "Turcotte",
              "email": "turv5324@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "hasa3302",
              "enabled": true,
              "firstName": "Ali",
              "lastName": "Hassoun",
              "email": "hasa3302@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "keib3201",
              "enabled": true,
              "firstName": "Brenda",
              "lastName": "Keimgou Tchio",
              "email": "keib3201@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "roua0701",
              "enabled": true,
              "firstName": "Alexandre",
              "lastName": "Rousseau",
              "email": "roua0701@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "stds2101",
              "enabled": true,
              "firstName": "Sébastien",
              "lastName": "St-Denis",
              "email": "stds2101@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "bild2707",
              "enabled": true,
              "firstName": "Dannick",
              "lastName": "Bilodeau",
              "email": "bild2707@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "bele0801",
              "enabled": true,
              "firstName": "Étienne",
              "lastName": "Bellerive-Blais",
              "email": "bele0801@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "houy2303",
              "enabled": true,
              "firstName": "Youlian",
              "lastName": "Houehounou",
              "email": "houy2303@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "cake0801",
              "enabled": true,
              "firstName": "Enes",
              "lastName": "Caku",
              "email": "cake0801@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "hofm2702",
              "enabled": true,
              "firstName": "Max",
              "lastName": "Hofheinz",
              "email": "hofm2702@usherbrooke.ca",
              "realmRoles": [
                "enseignant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "gerz0501",
              "enabled": true,
              "firstName": "Zachari",
              "lastName": "Gervais",
              "email": "gerz0501@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "labc0301",
              "enabled": true,
              "firstName": "Cédric",
              "lastName": "Labrecque",
              "email": "labc0301@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "boie0601",
              "enabled": true,
              "firstName": "Emile",
              "lastName": "Bois",
              "email": "boie0601@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "trew1501",
              "enabled": true,
              "firstName": "William",
              "lastName": "Tremblay",
              "email": "trew1501@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "gell3101",
              "enabled": true,
              "firstName": "Louis-Xavier",
              "lastName": "Gélinas",
              "email": "gell3101@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "lavd2311",
              "enabled": true,
              "firstName": "Daniel",
              "lastName": "Lavallée",
              "email": "lavd2311@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "labg0902",
              "enabled": true,
              "firstName": "Gabriel",
              "lastName": "Labrecque",
              "email": "labg0902@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "tria1001",
              "enabled": true,
              "firstName": "Alexandre",
              "lastName": "Trial",
              "email": "tria1001@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "dufd2802",
              "enabled": true,
              "firstName": "Denis",
              "lastName": "Dufresne",
              "email": "dufd2802@usherbrooke.ca",
              "realmRoles": [
                "enseignant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "cyrm2101",
              "enabled": true,
              "firstName": "Marc-André",
              "lastName": "Cyr",
              "email": "cyrm2101@usherbrooke.ca",
              "realmRoles": [
                "enseignant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "caua1101",
              "enabled": true,
              "firstName": "Arnaud",
              "lastName": "Cauchon",
              "email": "caua1101@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "cany2101",
              "enabled": true,
              "firstName": "Yorman Esneider",
              "lastName": "Cansimance Castro",
              "email": "cany2101@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "sinn1901",
              "enabled": true,
              "firstName": "Newton",
              "lastName": "Sindayigaya-Simon",
              "email": "sinn1901@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "brel0901",
              "enabled": true,
              "firstName": "Laurent",
              "lastName": "Breton",
              "email": "brel0901@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "sehk2201",
              "enabled": true,
              "firstName": "Kenza",
              "lastName": "Sehnani",
              "email": "sehk2201@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "boua2511",
              "enabled": true,
              "firstName": "Audrey",
              "lastName": "Boucher-Genesse",
              "email": "boua2511@usherbrooke.ca",
              "realmRoles": [
                "enseignant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "puic2701",
              "enabled": true,
              "firstName": "Chantal",
              "lastName": "Puig",
              "email": "puic2701@usherbrooke.ca",
              "realmRoles": [
                "enseignant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "laft1301",
              "enabled": true,
              "firstName": "Tristan",
              "lastName": "Lafontaine",
              "email": "laft1301@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "durp2003",
              "enabled": true,
              "firstName": "Philippe",
              "lastName": "Durette",
              "email": "durp2003@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "arnp3401",
              "enabled": true,
              "firstName": "Prescilla",
              "lastName": "Arnould",
              "email": "arnp3401@usherbrooke.ca",
              "realmRoles": [
                "enseignant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "guea0902",
              "enabled": true,
              "firstName": "Alexis",
              "lastName": "Guérard",
              "email": "guea0902@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "robw1901",
              "enabled": true,
              "firstName": "William",
              "lastName": "Roberge",
              "email": "robw1901@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "amae2901",
              "enabled": true,
              "firstName": "Élodie",
              "lastName": "Amar",
              "email": "amae2901@usherbrooke.ca",
              "realmRoles": [
                "etudiant",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "farg2101",
              "enabled": true,
              "firstName": "Ghania Sarah",
              "lastName": "Farhi,",
              "email": "farg2101@usherbrooke.ca",
              "realmRoles": [
                "coordonnateur-pédagogique",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "boof2101",
              "enabled": true,
              "firstName": "François",
              "lastName": "Boone,",
              "email": "boof2101@usherbrooke.ca",
              "realmRoles": [
                "directeur-département",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            },
            {
              "cip": "ploe1701",
              "enabled": true,
              "firstName": "Éric",
              "lastName": "Plourde",
              "email": "ploe1701@usherbrooke.ca",
              "realmRoles": [
                "enseignant",
                "coordonnateur-programme",
                "default-roles-master"
              ],
              "credentials": [
                {
                  "temporary": true,
                  "type": "password",
                  "value": "projet"
                }
              ]
            }
          ]
        }'::json)
)
INSERT INTO schema.users (cip, enabled, firstName, lastName, email, realmRoles)
SELECT p->>'cip', (p->>'enabled')::boolean, p->>'firstName', p->>'lastName', p->>'email', ARRAY(SELECT jsonb_array_elements_text(p->'realmRoles'))
FROM users_json l,
     jsonb_array_elements((doc->'users')::jsonb) AS p


ON CONFLICT (cip) DO UPDATE
    SET enabled = excluded.enabled,
        firstName = excluded.firstName,
        lastName = excluded.lastName,
        email = excluded.email,
        realmRoles = excluded.realmRoles;


CREATE TABLE schema.Sport
(
    Sport_ID INT NOT NULL,
    Sport_Nom varchar(64) NOT NULL,
    PRIMARY KEY (Sport_ID)
);

CREATE TABLE schema.Division
(
    Division_ID INT NOT NULL,
    Division_Nom varchar(64) NOT NULL,
    PRIMARY KEY (Division_ID)
);

CREATE TABLE schema.Equipe
(
    Equipe_ID INT NOT NULL,
    Equipe_Nom varchar(64) NOT NULL,
    Division_ID INT NOT NULL,
    Sport_ID INT NOT NULL,
    Victoire INT,
    Defaite int,
    PM int,
    PC int,
    PRIMARY KEY (Equipe_ID),
    FOREIGN KEY (Division_ID) REFERENCES schema.Division(Division_ID),
    FOREIGN KEY (Sport_ID) references  schema.Sport(Sport_ID)
);

CREATE TABLE schema.Match
(
    Match_ID INT NOT NULL,
    Heure TIMESTAMP not null,
    Endroit varchar(64) not null,
    Equipe1 INT not null,
    Equipe2 INT not null,
    ResultatEquipe1 INT,
    ResultatEquipe2 INT,
    PRIMARY KEY (Match_ID),
    FOREIGN KEY (Equipe1) REFERENCES schema.Equipe(Equipe_ID),
    FOREIGN KEY (Equipe2) REFERENCES schema.Equipe(Equipe_ID)
);

CREATE TABLE schema.Constitue
(
    Equipe_ID INT NOT NULL,
    cip varchar(64) NOT NULL,
    PRIMARY KEY (Equipe_ID, cip),
    FOREIGN KEY (Equipe_ID) REFERENCES schema.Equipe(Equipe_ID),
    FOREIGN KEY (cip) REFERENCES schema.users(cip)
);


insert into schema.Sport(Sport_ID, Sport_Nom) values (1, 'Balle-donnée');
insert into schema.Sport(Sport_ID, Sport_Nom) values (2, 'Balle-molle');
insert into schema.Sport(Sport_ID, Sport_Nom) values (3, 'Soccer extérieur');
insert into schema.Sport(Sport_ID, Sport_Nom) values (4, 'Spikeball');
insert into schema.Sport(Sport_ID, Sport_Nom) values (5, 'Ultimate frisbee extérieur');
insert into schema.Sport(Sport_ID, Sport_Nom) values (6, 'Volleyball de plage');

insert into schema.Division(Division_ID, Division_Nom) VALUES (1, 'A');
insert into schema.Division(Division_ID, Division_Nom) VALUES (2, 'B');
insert into schema.Division(Division_ID, Division_Nom) VALUES (3, 'C');


insert into schema.Equipe(equipe_id, equipe_nom, division_id, Sport_ID, Victoire, Defaite, PM, PC) VALUES (1101, 'P01', 1, 1, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (1102, 'P02', 1, 1, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (1103, 'P03', 1, 1, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (1104, 'P04', 1, 1, 0, 0, 0, 0);

insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (1101, '2023-06-05 18:00:00', 1101, 1103, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (1102, '2023-06-05 19:00:00', 1104, 1102, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (1103, '2023-06-05 20:00:00', 1102, 1101, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (1104, '2023-06-05 21:00:00', 1103, 1104, 'Université de Sherbrooke');


insert into schema.Constitue(Equipe_ID, cip) VALUES (1101,  'bour0703');
insert into schema.Constitue(Equipe_ID, cip) VALUES (1101,  'lebg2708');
insert into schema.Constitue(Equipe_ID, cip) VALUES (1102,  'bour0703');
insert into schema.Constitue(Equipe_ID, cip) VALUES (1102,  'lebg2708');
insert into schema.Constitue(Equipe_ID, cip) VALUES (1103,  'bour0703');
insert into schema.Constitue(Equipe_ID, cip) VALUES (1103,  'lebg2708');
insert into schema.Constitue(Equipe_ID, cip) VALUES (1104,  'bour0703');
insert into schema.Constitue(Equipe_ID, cip) VALUES (1104,  'lebg2708');

CREATE VIEW schema.horraire as
SELECT *
FROM schema.Match a
         join schema.Equipe e on e.equipe_id = a.equipe1;