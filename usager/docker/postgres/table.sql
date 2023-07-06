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
    ResultatEquipe1 INT default -1,
    ResultatEquipe2 INT default -1,
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

CREATE TABLE schema.PresenceMatch
(
    cip varchar(8) NOT NULL,
    MatchID INT NOT NULL,
    Presence INT NOT NULL,
    PRIMARY KEY (cip, MatchID),
    FOREIGN KEY (cip) REFERENCES schema.users(cip),
    FOREIGN KEY (MatchID) REFERENCES schema.Match(Match_ID)
);

DROP FUNCTION IF EXISTS schema.presence_trigger();
CREATE FUNCTION schema.presence_trigger()
    RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO schema.PresenceMatch (cip, MatchID, Presence)
    SELECT C.cip, NEW.Match_ID, -1
    FROM schema.Constitue C
    WHERE C.Equipe_ID = NEW.Equipe1 OR C.Equipe_ID = NEW.Equipe2;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER ajout_match
    AFTER INSERT on schema.Match
    FOR EACH ROW
EXECUTE FUNCTION schema.presence_trigger();


--6 sports
insert into schema.Sport(Sport_ID, Sport_Nom) values (1, 'Balle-donnée');
insert into schema.Sport(Sport_ID, Sport_Nom) values (2, 'Balle-molle');
insert into schema.Sport(Sport_ID, Sport_Nom) values (3, 'Soccer extérieur');
insert into schema.Sport(Sport_ID, Sport_Nom) values (4, 'Spikeball');
insert into schema.Sport(Sport_ID, Sport_Nom) values (5, 'Ultimate frisbee extérieur');
insert into schema.Sport(Sport_ID, Sport_Nom) values (6, 'Volleyball de plage');
--3 division
insert into schema.Division(Division_ID, Division_Nom) VALUES (1, 'A');
insert into schema.Division(Division_ID, Division_Nom) VALUES (2, 'B');
insert into schema.Division(Division_ID, Division_Nom) VALUES (3, 'C');
--4 équipes sport 1 div 1 à 3
insert into schema.Equipe(equipe_id, equipe_nom, division_id, Sport_ID, Victoire, Defaite, PM, PC) VALUES (1, 'P01', 1, 1, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (2, 'P02', 1, 1, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (3, 'P03', 1, 1, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (4, 'P04', 1, 1, 0, 0, 0, 0);
insert into schema.Equipe(equipe_id, equipe_nom, division_id, Sport_ID, Victoire, Defaite, PM, PC) VALUES (5, 'P01', 2, 1, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (6, 'P02', 2, 1, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (7, 'P03', 2, 1, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (8, 'P04', 2, 1, 0, 0, 0, 0);
insert into schema.Equipe(equipe_id, equipe_nom, division_id, Sport_ID, Victoire, Defaite, PM, PC) VALUES (9, 'P01', 3, 1, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (10, 'P02', 3, 1, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (11, 'P03', 3, 1, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (12, 'P04', 3, 1, 0, 0, 0, 0);
--4 équipes sport 2 div 1 à 3
insert into schema.Equipe(equipe_id, equipe_nom, division_id, Sport_ID, Victoire, Defaite, PM, PC) VALUES (13, 'P01', 1, 2, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (14, 'P02', 1, 2, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (15, 'P03', 1, 2, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (16, 'P04', 1, 2, 0, 0, 0, 0);
insert into schema.Equipe(equipe_id, equipe_nom, division_id, Sport_ID, Victoire, Defaite, PM, PC) VALUES (17, 'P01', 2, 2, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (18, 'P02', 2, 2, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (19, 'P03', 2, 2, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (20, 'P04', 2, 2, 0, 0, 0, 0);
insert into schema.Equipe(equipe_id, equipe_nom, division_id, Sport_ID, Victoire, Defaite, PM, PC) VALUES (21, 'P01', 3, 2, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (22, 'P02', 3, 2, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (23, 'P03', 3, 2, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (24, 'P04', 3, 2, 0, 0, 0, 0);
--4 équipes sport 3 div 1 à 3
insert into schema.Equipe(equipe_id, equipe_nom, division_id, Sport_ID, Victoire, Defaite, PM, PC) VALUES (25, 'P01', 1, 3, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (26, 'P02', 1, 3, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (27, 'P03', 1, 3, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (28, 'P04', 1, 3, 0, 0, 0, 0);
insert into schema.Equipe(equipe_id, equipe_nom, division_id, Sport_ID, Victoire, Defaite, PM, PC) VALUES (29, 'P01', 2, 3, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (30, 'P02', 2, 3, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (31, 'P03', 2, 3, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (32, 'P04', 2, 3, 0, 0, 0, 0);
insert into schema.Equipe(equipe_id, equipe_nom, division_id, Sport_ID, Victoire, Defaite, PM, PC) VALUES (33, 'P01', 3, 3, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (34, 'P02', 3, 3, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (35, 'P03', 3, 3, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (36, 'P04', 3, 3, 0, 0, 0, 0);
--4 équipes sport 4 div 1 à 3
insert into schema.Equipe(equipe_id, equipe_nom, division_id, Sport_ID, Victoire, Defaite, PM, PC) VALUES (37, 'P01', 1, 4, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (38, 'P02', 1, 4, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (39, 'P03', 1, 4, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (40, 'P04', 1, 4, 0, 0, 0, 0);
insert into schema.Equipe(equipe_id, equipe_nom, division_id, Sport_ID, Victoire, Defaite, PM, PC) VALUES (41, 'P01', 2, 4, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (42, 'P02', 2, 4, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (43, 'P03', 2, 4, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (44, 'P04', 2, 4, 0, 0, 0, 0);
insert into schema.Equipe(equipe_id, equipe_nom, division_id, Sport_ID, Victoire, Defaite, PM, PC) VALUES (45, 'P01', 3, 4, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (46, 'P02', 3, 4, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (47, 'P03', 3, 4, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (48, 'P04', 3, 4, 0, 0, 0, 0);
--4 équipes sport 5 div 1 à 3
insert into schema.Equipe(equipe_id, equipe_nom, division_id, Sport_ID, Victoire, Defaite, PM, PC) VALUES (49, 'P01', 1, 5, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (50, 'P02', 1, 5, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (51, 'P03', 1, 5, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (52, 'P04', 1, 5, 0, 0, 0, 0);
insert into schema.Equipe(equipe_id, equipe_nom, division_id, Sport_ID, Victoire, Defaite, PM, PC) VALUES (53, 'P01', 2, 5, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (54, 'P02', 2, 5, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (55, 'P03', 2, 5, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (56, 'P04', 2, 5, 0, 0, 0, 0);
insert into schema.Equipe(equipe_id, equipe_nom, division_id, Sport_ID, Victoire, Defaite, PM, PC) VALUES (57, 'P01', 3, 5, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (58, 'P02', 3, 5, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (59, 'P03', 3, 5, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (60, 'P04', 3, 5, 0, 0, 0, 0);
--4 équipes sport 6 div 1 à 3
insert into schema.Equipe(equipe_id, equipe_nom, division_id, Sport_ID, Victoire, Defaite, PM, PC) VALUES (61, 'P01', 1, 6, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (62, 'P02', 1, 6, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (63, 'P03', 1, 6, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (64, 'P04', 1, 6, 0, 0, 0, 0);
insert into schema.Equipe(equipe_id, equipe_nom, division_id, Sport_ID, Victoire, Defaite, PM, PC) VALUES (65, 'P01', 2, 6, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (66, 'P02', 2, 6, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (67, 'P03', 2, 6, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (68, 'P04', 2, 6, 0, 0, 0, 0);
insert into schema.Equipe(equipe_id, equipe_nom, division_id, Sport_ID, Victoire, Defaite, PM, PC) VALUES (69, 'P01', 3, 6, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (70, 'P02', 3, 6, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (71, 'P03', 3, 6, 0, 0, 0, 0);
insert into schema.Equipe(Equipe_ID, Equipe_Nom, Division_ID, Sport_ID, Victoire, Defaite, PM, PC) VALUES (72, 'P04', 3, 6, 0, 0, 0, 0);
--Ajout de 2 joueurs par équipe dans le sport 1 div 1
insert into schema.Constitue(Equipe_ID, cip) VALUES (1,  'bour0703');
insert into schema.Constitue(Equipe_ID, cip) VALUES (1,  'lebg2708');
insert into schema.Constitue(Equipe_ID, cip) VALUES (2,  'lavm1927');
insert into schema.Constitue(Equipe_ID, cip) VALUES (2,  'trew1501');
insert into schema.Constitue(Equipe_ID, cip) VALUES (3,  'jans2001');
insert into schema.Constitue(Equipe_ID, cip) VALUES (3,  'jace1402');
insert into schema.Constitue(Equipe_ID, cip) VALUES (4,  'lanj2131');
insert into schema.Constitue(Equipe_ID, cip) VALUES (4,  'pagm1302');
--Ajout de 2 joueurs par équipe dans le sport 1 div 2
insert into schema.Constitue(Equipe_ID, cip) VALUES (5,  'bour0703');
insert into schema.Constitue(Equipe_ID, cip) VALUES (5,  'lebg2708');
insert into schema.Constitue(Equipe_ID, cip) VALUES (6,  'lavm1927');
insert into schema.Constitue(Equipe_ID, cip) VALUES (6,  'trew1501');
insert into schema.Constitue(Equipe_ID, cip) VALUES (7,  'jans2001');
insert into schema.Constitue(Equipe_ID, cip) VALUES (7,  'jace1402');
insert into schema.Constitue(Equipe_ID, cip) VALUES (8,  'lanj2131');
insert into schema.Constitue(Equipe_ID, cip) VALUES (8,  'pagm1302');
--Ajout de 2 joueurs par équipe dans le sport 1 div 3
insert into schema.Constitue(Equipe_ID, cip) VALUES (9,  'bour0703');
insert into schema.Constitue(Equipe_ID, cip) VALUES (9,  'lebg2708');
insert into schema.Constitue(Equipe_ID, cip) VALUES (10,  'lavm1927');
insert into schema.Constitue(Equipe_ID, cip) VALUES (10,  'trew1501');
insert into schema.Constitue(Equipe_ID, cip) VALUES (11,  'jans2001');
insert into schema.Constitue(Equipe_ID, cip) VALUES (11,  'jace1402');
insert into schema.Constitue(Equipe_ID, cip) VALUES (12,  'lanj2131');
insert into schema.Constitue(Equipe_ID, cip) VALUES (12,  'pagm1302');
--Ajout de 2 joueurs par équipe dans le sport 2 div 1
insert into schema.Constitue(Equipe_ID, cip) VALUES (13,  'bour0703');
insert into schema.Constitue(Equipe_ID, cip) VALUES (13,  'lebg2708');
insert into schema.Constitue(Equipe_ID, cip) VALUES (14,  'lavm1927');
insert into schema.Constitue(Equipe_ID, cip) VALUES (14,  'trew1501');
insert into schema.Constitue(Equipe_ID, cip) VALUES (15,  'jans2001');
insert into schema.Constitue(Equipe_ID, cip) VALUES (15,  'jace1402');
insert into schema.Constitue(Equipe_ID, cip) VALUES (16,  'lanj2131');
insert into schema.Constitue(Equipe_ID, cip) VALUES (16,  'pagm1302');
--Ajout de 2 joueurs par équipe dans le sport 2 div 2
insert into schema.Constitue(Equipe_ID, cip) VALUES (17,  'bour0703');
insert into schema.Constitue(Equipe_ID, cip) VALUES (17,  'lebg2708');
insert into schema.Constitue(Equipe_ID, cip) VALUES (18,  'lavm1927');
insert into schema.Constitue(Equipe_ID, cip) VALUES (18,  'trew1501');
insert into schema.Constitue(Equipe_ID, cip) VALUES (19,  'jans2001');
insert into schema.Constitue(Equipe_ID, cip) VALUES (19,  'jace1402');
insert into schema.Constitue(Equipe_ID, cip) VALUES (20,  'lanj2131');
insert into schema.Constitue(Equipe_ID, cip) VALUES (20,  'pagm1302');
--Ajout de 2 joueurs par équipe dans le sport 2 div 3
insert into schema.Constitue(Equipe_ID, cip) VALUES (21,  'bour0703');
insert into schema.Constitue(Equipe_ID, cip) VALUES (21,  'lebg2708');
insert into schema.Constitue(Equipe_ID, cip) VALUES (22,  'lavm1927');
insert into schema.Constitue(Equipe_ID, cip) VALUES (22,  'trew1501');
insert into schema.Constitue(Equipe_ID, cip) VALUES (23,  'jans2001');
insert into schema.Constitue(Equipe_ID, cip) VALUES (23,  'jace1402');
insert into schema.Constitue(Equipe_ID, cip) VALUES (24,  'lanj2131');
insert into schema.Constitue(Equipe_ID, cip) VALUES (24,  'pagm1302');
--Ajout de 2 joueurs par équipe dans le sport 3 div 1
insert into schema.Constitue(Equipe_ID, cip) VALUES (25,  'bour0703');
insert into schema.Constitue(Equipe_ID, cip) VALUES (25,  'lebg2708');
insert into schema.Constitue(Equipe_ID, cip) VALUES (26,  'lavm1927');
insert into schema.Constitue(Equipe_ID, cip) VALUES (26,  'trew1501');
insert into schema.Constitue(Equipe_ID, cip) VALUES (27,  'jans2001');
insert into schema.Constitue(Equipe_ID, cip) VALUES (27,  'jace1402');
insert into schema.Constitue(Equipe_ID, cip) VALUES (28,  'lanj2131');
insert into schema.Constitue(Equipe_ID, cip) VALUES (28,  'pagm1302');
--Ajout de 2 joueurs par équipe dans le sport 3 div 2
insert into schema.Constitue(Equipe_ID, cip) VALUES (29,  'bour0703');
insert into schema.Constitue(Equipe_ID, cip) VALUES (29,  'lebg2708');
insert into schema.Constitue(Equipe_ID, cip) VALUES (30,  'lavm1927');
insert into schema.Constitue(Equipe_ID, cip) VALUES (30,  'trew1501');
insert into schema.Constitue(Equipe_ID, cip) VALUES (31,  'jans2001');
insert into schema.Constitue(Equipe_ID, cip) VALUES (31,  'jace1402');
insert into schema.Constitue(Equipe_ID, cip) VALUES (32,  'lanj2131');
insert into schema.Constitue(Equipe_ID, cip) VALUES (32,  'pagm1302');
--Ajout de 2 joueurs par équipe dans le sport 3 div 3
insert into schema.Constitue(Equipe_ID, cip) VALUES (33,  'bour0703');
insert into schema.Constitue(Equipe_ID, cip) VALUES (33,  'lebg2708');
insert into schema.Constitue(Equipe_ID, cip) VALUES (34,  'lavm1927');
insert into schema.Constitue(Equipe_ID, cip) VALUES (34,  'trew1501');
insert into schema.Constitue(Equipe_ID, cip) VALUES (35,  'jans2001');
insert into schema.Constitue(Equipe_ID, cip) VALUES (35,  'jace1402');
insert into schema.Constitue(Equipe_ID, cip) VALUES (36,  'lanj2131');
insert into schema.Constitue(Equipe_ID, cip) VALUES (36,  'pagm1302');
--Ajout de 2 joueurs par équipe dans le sport 4 div 1
insert into schema.Constitue(Equipe_ID, cip) VALUES (37,  'bour0703');
insert into schema.Constitue(Equipe_ID, cip) VALUES (37,  'lebg2708');
insert into schema.Constitue(Equipe_ID, cip) VALUES (38,  'lavm1927');
insert into schema.Constitue(Equipe_ID, cip) VALUES (38,  'trew1501');
insert into schema.Constitue(Equipe_ID, cip) VALUES (39,  'jans2001');
insert into schema.Constitue(Equipe_ID, cip) VALUES (39,  'jace1402');
insert into schema.Constitue(Equipe_ID, cip) VALUES (40,  'lanj2131');
insert into schema.Constitue(Equipe_ID, cip) VALUES (40,  'pagm1302');
--Ajout de 2 joueurs par équipe dans le sport 4 div 2
insert into schema.Constitue(Equipe_ID, cip) VALUES (41,  'bour0703');
insert into schema.Constitue(Equipe_ID, cip) VALUES (41,  'lebg2708');
insert into schema.Constitue(Equipe_ID, cip) VALUES (42,  'lavm1927');
insert into schema.Constitue(Equipe_ID, cip) VALUES (42,  'trew1501');
insert into schema.Constitue(Equipe_ID, cip) VALUES (43,  'jans2001');
insert into schema.Constitue(Equipe_ID, cip) VALUES (43,  'jace1402');
insert into schema.Constitue(Equipe_ID, cip) VALUES (44,  'lanj2131');
insert into schema.Constitue(Equipe_ID, cip) VALUES (44,  'pagm1302');
--Ajout de 2 joueurs par équipe dans le sport 4 div 3
insert into schema.Constitue(Equipe_ID, cip) VALUES (45,  'bour0703');
insert into schema.Constitue(Equipe_ID, cip) VALUES (45,  'lebg2708');
insert into schema.Constitue(Equipe_ID, cip) VALUES (46,  'lavm1927');
insert into schema.Constitue(Equipe_ID, cip) VALUES (46,  'trew1501');
insert into schema.Constitue(Equipe_ID, cip) VALUES (47,  'jans2001');
insert into schema.Constitue(Equipe_ID, cip) VALUES (47,  'jace1402');
insert into schema.Constitue(Equipe_ID, cip) VALUES (48,  'lanj2131');
insert into schema.Constitue(Equipe_ID, cip) VALUES (48,  'pagm1302');
--Ajout de 2 joueurs par équipe dans le sport 5 div 1
insert into schema.Constitue(Equipe_ID, cip) VALUES (49,  'bour0703');
insert into schema.Constitue(Equipe_ID, cip) VALUES (49,  'lebg2708');
insert into schema.Constitue(Equipe_ID, cip) VALUES (50,  'lavm1927');
insert into schema.Constitue(Equipe_ID, cip) VALUES (50,  'trew1501');
insert into schema.Constitue(Equipe_ID, cip) VALUES (51,  'jans2001');
insert into schema.Constitue(Equipe_ID, cip) VALUES (51,  'jace1402');
insert into schema.Constitue(Equipe_ID, cip) VALUES (52,  'lanj2131');
insert into schema.Constitue(Equipe_ID, cip) VALUES (52,  'pagm1302');
--Ajout de 2 joueurs par équipe dans le sport 5 div 2
insert into schema.Constitue(Equipe_ID, cip) VALUES (53,  'bour0703');
insert into schema.Constitue(Equipe_ID, cip) VALUES (53,  'lebg2708');
insert into schema.Constitue(Equipe_ID, cip) VALUES (54,  'lavm1927');
insert into schema.Constitue(Equipe_ID, cip) VALUES (54,  'trew1501');
insert into schema.Constitue(Equipe_ID, cip) VALUES (55,  'jans2001');
insert into schema.Constitue(Equipe_ID, cip) VALUES (55,  'jace1402');
insert into schema.Constitue(Equipe_ID, cip) VALUES (56,  'lanj2131');
insert into schema.Constitue(Equipe_ID, cip) VALUES (56,  'pagm1302');
--Ajout de 2 joueurs par équipe dans le sport 5 div 3
insert into schema.Constitue(Equipe_ID, cip) VALUES (57,  'bour0703');
insert into schema.Constitue(Equipe_ID, cip) VALUES (57,  'lebg2708');
insert into schema.Constitue(Equipe_ID, cip) VALUES (58,  'lavm1927');
insert into schema.Constitue(Equipe_ID, cip) VALUES (58,  'trew1501');
insert into schema.Constitue(Equipe_ID, cip) VALUES (59,  'jans2001');
insert into schema.Constitue(Equipe_ID, cip) VALUES (59,  'jace1402');
insert into schema.Constitue(Equipe_ID, cip) VALUES (60,  'lanj2131');
insert into schema.Constitue(Equipe_ID, cip) VALUES (60,  'pagm1302');
--Ajout de 2 joueurs par équipe dans le sport 6 div 1
insert into schema.Constitue(Equipe_ID, cip) VALUES (61,  'bour0703');
insert into schema.Constitue(Equipe_ID, cip) VALUES (61,  'lebg2708');
insert into schema.Constitue(Equipe_ID, cip) VALUES (62,  'lavm1927');
insert into schema.Constitue(Equipe_ID, cip) VALUES (62,  'trew1501');
insert into schema.Constitue(Equipe_ID, cip) VALUES (63,  'jans2001');
insert into schema.Constitue(Equipe_ID, cip) VALUES (63,  'jace1402');
insert into schema.Constitue(Equipe_ID, cip) VALUES (64,  'lanj2131');
insert into schema.Constitue(Equipe_ID, cip) VALUES (64,  'pagm1302');
--Ajout de 2 joueurs par équipe dans le sport 6 div 2
insert into schema.Constitue(Equipe_ID, cip) VALUES (65,  'bour0703');
insert into schema.Constitue(Equipe_ID, cip) VALUES (65,  'lebg2708');
insert into schema.Constitue(Equipe_ID, cip) VALUES (66,  'lavm1927');
insert into schema.Constitue(Equipe_ID, cip) VALUES (66,  'trew1501');
insert into schema.Constitue(Equipe_ID, cip) VALUES (67,  'jans2001');
insert into schema.Constitue(Equipe_ID, cip) VALUES (67,  'jace1402');
insert into schema.Constitue(Equipe_ID, cip) VALUES (68,  'lanj2131');
insert into schema.Constitue(Equipe_ID, cip) VALUES (68,  'pagm1302');
--Ajout de 2 joueurs par équipe dans le sport 6 div 3
insert into schema.Constitue(Equipe_ID, cip) VALUES (69,  'bour0703');
insert into schema.Constitue(Equipe_ID, cip) VALUES (69,  'lebg2708');
insert into schema.Constitue(Equipe_ID, cip) VALUES (70,  'lavm1927');
insert into schema.Constitue(Equipe_ID, cip) VALUES (70,  'trew1501');
insert into schema.Constitue(Equipe_ID, cip) VALUES (71,  'jans2001');
insert into schema.Constitue(Equipe_ID, cip) VALUES (71,  'jace1402');
insert into schema.Constitue(Equipe_ID, cip) VALUES (72,  'lanj2131');
insert into schema.Constitue(Equipe_ID, cip) VALUES (72,  'pagm1302');
--2 match par équipe sport 1 div 1
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit, resultatequipe1, resultatequipe2) VALUES (1, '2023-06-05 18:00:00', 1, 3, 'Université de Sherbrooke',2,0);
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (2, '2023-06-05 19:00:00', 4, 2, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (3, '2023-06-05 20:00:00', 2, 1, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (4, '2023-06-05 21:00:00', 3, 4, 'Université de Sherbrooke');
--2 match par équipe sport 1 div 2
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (5, '2023-06-06 18:00:00', 5, 7, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (6, '2023-06-06 19:00:00', 6, 8, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (7, '2023-06-06 20:00:00', 6, 5, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (8, '2023-06-06 21:00:00', 8, 7, 'Université de Sherbrooke');
--2 match par équipe sport 1 div 3
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (9, '2023-06-04 18:00:00', 9, 11, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (10, '2023-06-04 19:00:00', 12, 10, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (11, '2023-06-04 20:00:00', 9, 12, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (12, '2023-06-04 21:00:00', 10, 11, 'Université de Sherbrooke');
--2 match par équipe sport 2 div 1
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (13, '2023-06-02 18:00:00', 13, 15, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (14, '2023-06-02 19:00:00', 14, 16, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (15, '2023-06-02 20:00:00', 14, 13, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (16, '2023-06-02 21:00:00', 15, 16, 'Université de Sherbrooke');
--2 match par équipe sport 2 div 2
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (17, '2023-06-03 18:00:00', 17, 19, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (18, '2023-06-03 19:00:00', 18, 20, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (19, '2023-06-03 20:00:00', 20, 19, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (20, '2023-06-03 21:00:00', 18, 17, 'Université de Sherbrooke');
--2 match par équipe sport 2 div 3
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (21, '2023-06-07 18:00:00', 21, 23, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (22, '2023-06-07 19:00:00', 22, 24, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (23, '2023-06-07 20:00:00', 24, 23, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (24, '2023-06-07 21:00:00', 22, 21, 'Université de Sherbrooke');
--2 match par équipe sport 3 div 1
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (25, '2023-07-02 18:00:00', 25, 27, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (26, '2023-07-02 19:00:00', 28, 26, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (27, '2023-07-02 20:00:00', 25, 26, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (28, '2023-07-02 21:00:00', 27, 28, 'Université de Sherbrooke');
--2 match par équipe sport 3 div 2
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (29, '2023-07-03 18:00:00', 29, 31, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (30, '2023-07-03 19:00:00', 30, 32, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (31, '2023-07-03 20:00:00', 29, 30, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (32, '2023-07-03 21:00:00', 31, 32, 'Université de Sherbrooke');
--2 match par équipe sport 3 div 3
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (33, '2023-07-07 18:00:00', 33, 35, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (34, '2023-07-07 19:00:00', 36, 34, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (35, '2023-07-07 20:00:00', 35, 34, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (36, '2023-07-07 21:00:00', 33, 36, 'Université de Sherbrooke');
--2 match par équipe sport 4 div 1
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (37, '2023-07-12 18:00:00', 37, 39, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (38, '2023-07-12 19:00:00', 38, 40, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (39, '2023-07-12 20:00:00', 37, 38, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (40, '2023-07-12 21:00:00', 40, 39, 'Université de Sherbrooke');
--2 match par équipe sport 4 div 2
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (41, '2023-07-13 18:00:00', 41, 43, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (42, '2023-07-13 19:00:00', 42, 44, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (43, '2023-07-13 20:00:00', 41, 42, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (44, '2023-07-13 21:00:00', 44, 43, 'Université de Sherbrooke');
--2 match par équipe sport 4 div 3
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (45, '2023-07-17 18:00:00', 45, 47, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (46, '2023-07-17 19:00:00', 46, 48, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (47, '2023-07-17 20:00:00', 45, 46, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (48, '2023-07-17 21:00:00', 48, 47, 'Université de Sherbrooke');
--2 match par équipe sport 5 div 1
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (49, '2023-06-12 18:00:00', 49, 51, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (50, '2023-06-12 19:00:00', 52, 50, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (51, '2023-06-12 20:00:00', 51, 52, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (52, '2023-06-12 21:00:00', 50, 49, 'Université de Sherbrooke');
--2 match par équipe sport 5 div 2
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (53, '2023-06-13 18:00:00', 53, 55, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (54, '2023-06-13 19:00:00', 56, 54, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (55, '2023-06-13 20:00:00', 55, 56, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (56, '2023-06-13 21:00:00', 54, 53, 'Université de Sherbrooke');
--2 match par équipe sport 5 div 3
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (57, '2023-06-17 18:00:00', 57, 59, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (58, '2023-06-17 19:00:00', 60, 58, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (59, '2023-06-17 20:00:00', 59, 58, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (60, '2023-06-17 21:00:00', 57, 60, 'Université de Sherbrooke');
--2 match par équipe sport 6 div 1
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (61, '2023-06-22 18:00:00', 61, 63, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (62, '2023-06-22 19:00:00', 64, 62, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (63, '2023-06-22 20:00:00', 62, 61, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (64, '2023-06-22 21:00:00', 63, 64, 'Université de Sherbrooke');
--2 match par équipe sport 6 div 2
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (65, '2023-06-23 18:00:00', 65, 67, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (66, '2023-06-23 19:00:00', 68, 66, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (67, '2023-06-23 20:00:00', 66, 65, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (68, '2023-06-23 21:00:00', 67, 68, 'Université de Sherbrooke');
--2 match par équipe sport 6 div 3
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (69, '2023-06-27 18:00:00', 69, 71, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (70, '2023-06-27 19:00:00', 72, 70, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (71, '2023-06-27 20:00:00', 71, 72, 'Université de Sherbrooke');
insert into schema.Match(Match_ID, Heure, Equipe1, Equipe2, Endroit) VALUES (72, '2023-06-27 21:00:00', 70, 69, 'Université de Sherbrooke');


BEGIN;

ALTER TABLE schema.match ADD COLUMN date date;
ALTER TABLE schema.Match ADD COLUMN time time;

UPDATE schema.Match
SET
    date = Heure::date,
    time = Heure::time;

ALTER TABLE schema.Match DROP COLUMN Heure;

COMMIT;



CREATE VIEW schema.horaire as
SELECT *
FROM schema.Match a
       join schema.Equipe e on e.equipe_id = a.equipe1;

CREATE VIEW schema.classement as
SELECT *
FROM schema.Equipe;
