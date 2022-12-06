# https://github.com/mattnedrich/ruby-excel-library-examples
# https://github.com/woahdae/simple_xlsx_reader
require 'simple_xlsx_reader'

require 'benchmark'

# PENSER A FAIRE 'rails db:drop db:create db:migrate db:seed' pour mettre à jour la seed (pour les correspondances d'ID)

# ----------- DESTROY DATABASE -----------

# ------- RESULTATS -------
puts "destroying résultats candidats"
ResultatCandidat.destroy_all
puts "destroying résultats communes"
ResultatCommune.destroy_all
puts "destroying scrutins"
Scrutin.destroy_all

# ------- LOCALISATIONS -------
# puts "destroying communes"
# Commune.destroy_all
# puts "destroying départements"
# Departement.destroy_all
# puts "destroying régions"
# Region.destroy_all
# puts "destroying nations"
# Nation.destroy_all

# ------- CANDIDATS -------
puts "destroying candidats"
Candidat.destroy_all
puts "destroying formation politiques"
FormationPolitique.destroy_all
puts "destroying courant politiques"
CourantPolitique.destroy_all


# ------------- TERRITOIRES  -------------

# puts "creating nations"
# Nation.create([
#   {
#     nom: "France"
#   }
# ])

# puts "creating regions"
# Region.create([
#   {
#     nation_id: 1,
#     nom: 'Auvergne-Rhône-Alpes' #1
#   },
#   {
#     nation_id: 1,
#     nom: 'Bourgogne-Franche-Comté' #2
#   },
#   {
#     nation_id: 1,
#     nom: 'Bretagne' #3
#   },
#   {
#     nation_id: 1,
#     nom: 'Centre-Val de Loire' #4
#   },
#   {
#     nation_id: 1,
#     nom: 'Corse' #5
#   },
#   {
#     nation_id: 1,
#     nom: 'Grand Est' #6
#   },
#   {
#     nation_id: 1,
#     nom: 'Hauts-de-France' #7
#   },
#   {
#     nation_id: 1,
#     nom: 'Île-de-France' #8
#   },
#   {
#     nation_id: 1,
#     nom: 'Normandie' #9
#   },
#   {
#     nation_id: 1,
#     nom: 'Nouvelle-Aquitaine' #10
#   },
#   {
#     nation_id: 1,
#     nom: 'Occitanie' #11
#   },
#   {
#     nation_id: 1,
#     nom: 'Pays de la Loire' #12
#   },
#   {
#     nation_id: 1,
#     nom: "Provence-Alpes-Côte d'Azur" #13
#   },
#   {
#     nation_id: 1,
#     nom: 'Guadeloupe' #14
#   },
#   {
#     nation_id: 1,
#     nom: 'Martinique' #15
#   },
#   {
#     nation_id: 1,
#     nom: 'Guyane' #16
#   },
#   {
#     nation_id: 1,
#     nom: 'La Réunion' #17
#   },
#   {
#     nation_id: 1,
#     nom: 'Mayotte' #18
#   },
#   {
#     nation_id: 1,
#     nom: "Collectivité d'Outre-Mer" #19
#   },
#   {
#     nation_id: 1,
#     nom: "Français de l'étranger" #20
#   }
# ])

# puts "creating départements"
# Departement.create([
#   {
#     nom: "Ain",
#     nom_formate: "ain",
#     code: "01",
#     region_id: 1
#   },
#   {
#     nom: "Aisne",
#     nom_formate: "aisne",
#     code: "02",
#     region_id: 7
#   },
#   {
#     nom: "Allier",
#     nom_formate: "allier",
#     code: "03",
#     region_id: 1
#   },
#   {
#     nom: "Alpes-de-Haute-Provence",
#     nom_formate: "alpes-de-haute-provence",
#     code: "04",
#     region_id: 13
#   },
#   {
#     nom: "Hautes-Alpes",
#     nom_formate: "hautes-alpes",
#     code: "05",
#     region_id: 13
#   },
#   {
#     nom: "Alpes-Maritimes",
#     nom_formate: "alpes-maritimes",
#     code: "06",
#     region_id: 13
#   },
#   {
#     nom: "Ardèche",
#     nom_formate: "ardeche",
#     code: "07",
#     region_id: 1
#   },
#   {
#     nom: "Ardennes",
#     nom_formate: "ardennes",
#     code: "08",
#     region_id: 6
#   },
#   {
#     nom: "Ariège",
#     nom_formate: "ariege",
#     code: "09",
#     region_id: 11
#   },
#   {
#     nom: "Aube",
#     nom_formate: "aube",
#     code: "10",
#     region_id: 6
#   },
#   {
#     nom: "Aude",
#     nom_formate: "aude",
#     code: "11",
#     region_id: 11
#   },
#   {
#     nom: "Aveyron",
#     nom_formate: "aveyron",
#     code: "12",
#     region_id: 11
#   },
#   {
#     nom: "Bouches-du-Rhône",
#     nom_formate: "bouches-du-rhone",
#     code: "13",
#     region_id: 13
#   },
#   {
#     nom: "Calvados",
#     nom_formate: "calvados",
#     code: "14",
#     region_id: 9
#   },
#   {
#     nom: "Cantal",
#     nom_formate: "cantal",
#     code: "15",
#     region_id: 1
#   },
#   {
#     nom: "Charente",
#     nom_formate: "charente",
#     code: "16",
#     region_id: 10
#   },
#   {
#     nom: "Charente-Maritime",
#     nom_formate: "charente-maritime",
#     code: "17",
#     region_id: 10
#   },
#   {
#     nom: "Cher",
#     nom_formate: "cher",
#     code: "18",
#     region_id: 4
#   },
#   {
#     nom: "Corrèze",
#     nom_formate: "correze",
#     code: "19",
#     region_id: 10
#   },
#   {
#     nom: "Corse-du-Sud",
#     nom_formate: "corse-du-sud",
#     code: "2A",
#     region_id: 5
#   },
#   {
#     nom: "Haute-Corse",
#     nom_formate: "haute-corse",
#     code: "2B",
#     region_id: 5
#   },
#   {
#     nom: "Côte-d'Or",
#     nom_formate: "cote-d-or",
#     code: "21",
#     region_id: 2
#   },
#   {
#     nom: "Côtes-d'Armor",
#     nom_formate: "cotes-d-armor",
#     code: "22",
#     region_id: 3
#   },
#   {
#     nom: "Creuse",
#     nom_formate: "creuse",
#     code: "23",
#     region_id: 10
#   },
#   {
#     nom: "Dordogne",
#     nom_formate: "dordogne",
#     code: "24",
#     region_id: 10
#   },
#   {
#     nom: "Doubs",
#     nom_formate: "doubs",
#     code: "25",
#     region_id: 2
#   },
#   {
#     nom: "Drôme",
#     nom_formate: "drome",
#     code: "26",
#     region_id: 1
#   },
#   {
#     nom: "Eure",
#     nom_formate: "eure",
#     code: "27",
#     region_id: 9
#   },
#   {
#     nom: "Eure-et-Loir",
#     nom_formate: "eure-et-loir",
#     code: "28",
#     region_id: 4
#   },
#   {
#     nom: "Finistère",
#     nom_formate: "finistere",
#     code: "29",
#     region_id: 3
#   },
#   {
#     nom: "Gard",
#     nom_formate: "gard",
#     code: "30",
#     region_id: 11
#   },
#   {
#     nom: "Haute-Garonne",
#     nom_formate: "haute-garonne",
#     code: "31",
#     region_id: 11
#   },
#   {
#     nom: "Gers",
#     nom_formate: "gers",
#     code: "32",
#     region_id: 11
#   },
#   {
#     nom: "Gironde",
#     nom_formate: "gironde",
#     code: "33",
#     region_id: 10
#   },
#   {
#     nom: "Hérault",
#     nom_formate: "herault",
#     code: "34",
#     region_id: 11
#   },
#   {
#     nom: "Ille-et-Vilaine",
#     nom_formate: "ille-et-vilaine",
#     code: "35",
#     region_id: 3
#   },
#   {
#     nom: "Indre",
#     nom_formate: "indre",
#     code: "36",
#     region_id: 4
#   },
#   {
#     nom: "Indre-et-Loire",
#     nom_formate: "indre-et-loire",
#     code: "37",
#     region_id: 4
#   },
#   {
#     nom: "Isère",
#     nom_formate: "isere",
#     code: "38",
#     region_id: 1
#   },
#   {
#     nom: "Jura",
#     nom_formate: "jura",
#     code: "39",
#     region_id: 2
#   },
#   {
#     nom: "Landes",
#     nom_formate: "landes",
#     code: "40",
#     region_id: 10
#   },
#   {
#     nom: "Loir-et-Cher",
#     nom_formate: "loir-et-cher",
#     code: "41",
#     region_id: 4
#   },
#   {
#     nom: "Loire",
#     nom_formate: "loire",
#     code: "42",
#     region_id: 1
#   },
#   {
#     nom: "Haute-Loire",
#     nom_formate: "haute-loire",
#     code: "43",
#     region_id: 1
#   },
#   {
#     nom: "Loire-Atlantique",
#     nom_formate: "loire-atlantique",
#     code: "44",
#     region_id: 12
#   },
#   {
#     nom: "Loiret",
#     nom_formate: "loiret",
#     code: "45",
#     region_id: 4
#   },
#   {
#     nom: "Lot",
#     nom_formate: "lot",
#     code: "46",
#     region_id: 11
#   },
#   {
#     nom: "Lot-et-Garonne",
#     nom_formate: "lot-et-garonne",
#     code: "47",
#     region_id: 10
#   },
#   {
#     nom: "Lozère",
#     nom_formate: "lozere",
#     code: "48",
#     region_id: 11
#   },
#   {
#     nom: "Maine-et-Loire",
#     nom_formate: "maine-et-loire",
#     code: "49",
#     region_id: 12
#   },
#   {
#     nom: "Manche",
#     nom_formate: "manche",
#     code: "50",
#     region_id: 9
#   },
#   {
#     nom: "Marne",
#     nom_formate: "marne",
#     code: "51",
#     region_id: 6
#   },
#   {
#     nom: "Haute-Marne",
#     nom_formate: "haute-marne",
#     code: "52",
#     region_id: 6
#   },
#   {
#     nom: "Mayenne",
#     nom_formate: "mayenne",
#     code: "53",
#     region_id: 12
#   },
#   {
#     nom: "Meurthe-et-Moselle",
#     nom_formate: "meurthe-et-moselle",
#     code: "54",
#     region_id: 6
#   },
#   {
#     nom: "Meuse",
#     nom_formate: "meuse",
#     code: "55",
#     region_id: 6
#   },
#   {
#     nom: "Morbihan",
#     nom_formate: "morbihan",
#     code: "56",
#     region_id: 3
#   },
#   {
#     nom: "Moselle",
#     nom_formate: "moselle",
#     code: "57",
#     region_id: 6
#   },
#   {
#     nom: "Nièvre",
#     nom_formate: "nievre",
#     code: "58",
#     region_id: 2
#   },
#   {
#     nom: "Nord",
#     nom_formate: "nord",
#     code: "59",
#     region_id: 7
#   },
#   {
#     nom: "Oise",
#     nom_formate: "oise",
#     code: "60",
#     region_id: 7
#   },
#   {
#     nom: "Orne",
#     nom_formate: "orne",
#     code: "61",
#     region_id: 9
#   },
#   {
#     nom: "Pas-de-Calais",
#     nom_formate: "pas-de-calais",
#     code: "62",
#     region_id: 7
#   },
#   {
#     nom: "Puy-de-Dôme",
#     nom_formate: "puy-de-dome",
#     code: "63",
#     region_id: 1
#   },
#   {
#     nom: "Pyrénées-Atlantiques",
#     nom_formate: "pyrenees-atlantiques",
#     code: "64",
#     region_id: 10
#   },
#   {
#     nom: "Hautes-Pyrénées",
#     nom_formate: "hautes-pyrenees",
#     code: "65",
#     region_id: 11
#   },
#   {
#     nom: "Pyrénées-Orientales",
#     nom_formate: "pyrenees-orientales",
#     code: "66",
#     region_id: 11
#   },
#   {
#     nom: "Bas-Rhin",
#     nom_formate: "bas-rhin",
#     code: "67",
#     region_id: 6
#   },
#   {
#     nom: "Haut-Rhin",
#     nom_formate: "haut-rhin",
#     code: "68",
#     region_id: 6
#   },
#   {
#     nom: "Rhône",
#     nom_formate: "rhone",
#     code: "69",
#     region_id: 1
#   },
#   {
#     nom: "Haute-Saône",
#     nom_formate: "haute-saone",
#     code: "70",
#     region_id: 2
#   },
#   {
#     nom: "Saône-et-Loire",
#     nom_formate: "saone-et-loire",
#     code: "71",
#     region_id: 2
#   },
#   {
#     nom: "Sarthe",
#     nom_formate: "sarthe",
#     code: "72",
#     region_id: 12
#   },
#   {
#     nom: "Savoie",
#     nom_formate: "savoie",
#     code: "73",
#     region_id: 1
#   },
#   {
#     nom: "Haute-Savoie",
#     nom_formate: "haute-savoie",
#     code: "74",
#     region_id: 1
#   },
#   {
#     nom: "Paris",
#     nom_formate: "paris",
#     code: "75",
#     region_id: 8
#   },
#   {
#     nom: "Seine-Maritime",
#     nom_formate: "seine-maritime",
#     code: "76",
#     region_id: 9
#   },
#   {
#     nom: "Seine-et-Marne",
#     nom_formate: "seine-et-marne",
#     code: "77",
#     region_id: 8
#   },
#   {
#     nom: "Yvelines",
#     nom_formate: "yvelines",
#     code: "78",
#     region_id: 8
#   },
#   {
#     nom: "Deux-Sèvres",
#     nom_formate: "deux-sevres",
#     code: "79",
#     region_id: 10
#   },
#   {
#     nom: "Somme",
#     nom_formate: "somme",
#     code: "80",
#     region_id: 7
#   },
#   {
#     nom: "Tarn",
#     nom_formate: "tarn",
#     code: "81",
#     region_id: 11
#   },
#   {
#     nom: "Tarn-et-Garonne",
#     nom_formate: "tarn-et-garonne",
#     code: "82",
#     region_id: 11
#   },
#   {
#     nom: "Var",
#     nom_formate: "var",
#     code: "83",
#     region_id: 13
#   },
#   {
#     nom: "Vaucluse",
#     nom_formate: "vaucluse",
#     code: "84",
#     region_id: 13
#   },
#   {
#     nom: "Vendée",
#     nom_formate: "vendee",
#     code: "85",
#     region_id: 12
#   },
#   {
#     nom: "Vienne",
#     nom_formate: "vienne",
#     code: "86",
#     region_id: 10
#   },
#   {
#     nom: "Haute-Vienne",
#     nom_formate: "haute-vienne",
#     code: "87",
#     region_id: 10
#   },
#   {
#     nom: "Vosges",
#     nom_formate: "vosges",
#     code: "88",
#     region_id: 6
#   },
#   {
#     nom: "Yonne",
#     nom_formate: "yonne",
#     code: "89",
#     region_id: 2
#   },
#   {
#     nom: "Territoire de Belfort",
#     nom_formate: "territoire-de-belfort",
#     code: "90",
#     region_id: 2
#   },
#   {
#     nom: "Essonne",
#     nom_formate: "essonne",
#     code: "91",
#     region_id: 8
#   },
#   {
#     nom: "Hauts-de-Seine",
#     nom_formate: "hauts-de-seine",
#     code: "92",
#     region_id: 8
#   },
#   {
#     nom: "Seine-Saint-Denis",
#     nom_formate: "seine-saint-denis",
#     code: "93",
#     region_id: 8
#   },
#   {
#     nom: "Val-de-Marne",
#     nom_formate: "val-de-marne",
#     code: "94",
#     region_id: 8
#   },
#   {
#     nom: "Val-d'Oise",
#     nom_formate: "val-d-oise",
#     code: "95",
#     region_id: 8
#   },
#   {
#     nom: "Guadeloupe",
#     nom_formate: "guadeloupe",
#     code: "971",
#     region_id: 14
#   },
#   {
#     nom: "Martinique",
#     nom_formate: "martinique",
#     code: "972",
#     region_id: 15
#   },
#   {
#     nom: "Guyane",
#     nom_formate: "guyane",
#     code: "973",
#     region_id: 16
#   },
#   {
#     nom: "La Réunion",
#     nom_formate: "la-reunion",
#     code: "974",
#     region_id: 17
#   },
#   {
#     nom: "Mayotte",
#     nom_formate: "mayotte",
#     code: "976",
#     region_id: 18
#   },
#   {
#     nom: "Nouvelle-Calédonie",
#     nom_formate: "nouvelle-caledonie",
#     code: "ZN",
#     region_id: 19
#   }, #102
#   {
#     nom: "Polynésie Française",
#     nom_formate: "polynesie-francaise",
#     code: "ZP",
#     region_id: 19
#   }, #103
#   {
#     nom: "Saint-Pierre-et-Miquelon",
#     nom_formate: "saint-pierre-et-miquelon",
#     code: "ZS",
#     region_id: 19
#   }, #104
#   {
#     nom: "Wallis-et-Futuna",
#     nom_formate: "wallis-et-futuna",
#     code: "ZW",
#     region_id: 19
#   }, #105
#   {
#     nom: "Saint-Martin/Saint-Barthélemy",
#     nom_formate: "saint-martin-saint-barthelemy",
#     code: "ZX",
#     region_id: 19
#   }, #106
#   {
#     nom: "Français établis hors de France",
#     nom_formate: "francais-etablis-hors-de-france",
#     code: "ZZ",
#     region_id: 20
#   } #107
# ])


def recuperation_liste_communes(liste_communes_brut)
  @row_count = 0
  @col_count = 0

  liste_communes_brut.sheets.first.rows.each do |row|
    @row_count += 1
    next if @row_count < 7

    row.each do |cell|
      @col_count += 1
      case @col_count
      when 1
        if cell.nil?
          @col_count = 0
          break
        end

        @num_dep = cell
        @departement = Departement.find_by(code: @num_dep)
        @departement_id = @departement.id
      when 2
        nom = I18n.transliterate(cell).downcase.gsub(/\W/, "-")
        @nom_formate = "#{nom}(#{@num_dep})"
        Commune.create!(nom: cell, nom_formate: @nom_formate, departement_id: @departement_id)
      when 3
        @col_count = 0
        break
      end
    end
  end
end

liste_communes_brut = SimpleXlsxReader.open '/Users/lazareboddaert/code/LazareBoddaert/projets-perso/resultats-elections-data/liste_communes_par_departement.xlsx'

# puts 'creating communes'
# recuperation_liste_communes(liste_communes_brut)


# ------------- ELECTIONS -------------

def formater_nom_departement(departement_cell)
  @nom_departement_formate = I18n.transliterate(departement_cell).downcase.gsub(/\W/, "-")
end

def formater_nom_commune(commune_cell, code_departement)
  @commune_cell = commune_cell
  if commune_cell =~ /.*(\(l.\)|\(les\))$/i
    nom_array = @commune_cell.split
    nom_array.pop
    pronom = @commune_cell.split.last.chop.sub("(", "").capitalize
    @commune_cell = nom_array.unshift(pronom).join(" ")
    @commune_cell.sub!(" ", "") if pronom == "L'"
  end
  @nom_commune = @commune_cell.capitalize
  nom_commune_unformat = I18n.transliterate(@commune_cell).downcase.gsub(/\W/, "-")
  @nom_commune_formate = "#{nom_commune_unformat}(#{code_departement})"
end

# Récupère les infos générales sur le scrutin
def infos_scrutin(row)
  row.each do |cell|
    @col_count += 1
    case @col_count
    when 1
      @mandat_scrutin = cell
    when 2
      @annee_scrutin = cell
    when 3
      @scrutin = Scrutin.create!(mandat: @mandat_scrutin, annee: @annee_scrutin, tour: cell)
      @scrutin_id = @scrutin.id
      @col_count = 0
      break
    end
  end
end

def recuperation_donnees_resultats(resultats_brut)
  @row_count = 0
  @count = 0

  resultats_brut.sheets.first.rows.each do |row|
    @col_count = 0
    @row_count += 1

    if @row_count == 1
      # Récupère les infos générales sur le scrutin
      infos_scrutin(row)
    elsif @row_count == 2
      next
    else
      @blancs_et_nuls = false
      row.each do |cell|
        @col_count += 1

        # Récupère les données générales du vote
        case @col_count
        when 1
          formater_nom_departement(cell)
          if Departement.find_by(nom_formate: @nom_departement_formate).nil?
            case @nom_departement_formate
            when /(corse-sud)/
              @dep_commune = Departement.find(20) # Corse du Sud
            when /(nouvelle-caledonie)/
              @dep_commune = Departement.find(102) # Nouvelle-Calédonie
            when /(polynesie-francaise)/
              @dep_commune = Departement.find(103) # Polynésie Française
            when /(saint-pierre-et-miquelon)|(saint-pierre)|(miquelon)/
              @dep_commune = Departement.find(104) # Saint-Pierre-et-Miquelon
            when /(wallis-futuna)|(wallis)|(futuna)/
              @dep_commune = Departement.find(105) # Wallis-et-Futuna
            when /(saint-martin-saint-barthelemy)|(saint-martin)|(saint-barthelemy)/
              @dep_commune = Departement.find(106) # Saint-Martin/Saint-Barthélemy
            when /(hors-de-france)$|(etranger)$/
              @dep_commune = Departement.find(107) # Français établis hors de France
            end
          else
            @dep_commune = Departement.find_by(nom_formate: @nom_departement_formate)
          end
          p "--- Département #{@cell} non trouvé. Ligne #{@row_count} ---" if @dep_commune.nil?
        when 2
          formater_nom_commune(cell, @dep_commune.code)
          if Commune.find_by(nom_formate: @nom_commune_formate).nil?
            p "----- Commune #{cell} non trouvée | Ligne #{@row_count} -----"
            @commune = Commune.create!(nom: @nom_commune, nom_formate: @nom_commune_formate, departement_id: @dep_commune.id)
            p "----- Commune #{@commune.nom} créée -----"
          else
            @commune = Commune.find_by(nom_formate: @nom_commune_formate)
          end
          @commune_id = @commune.id
        when 3
          @inscrit = cell
        when 4
          @abstention = cell
        when 5
          @votant = cell
        when 6
          if cell.nil?
            @blancs_et_nuls = true
            @blancs = nil
          else
            @blancs = cell
          end
        when 7
          if @blancs_et_nuls == true
            @blancs_nuls = cell
            @nuls = nil
          else
            @nuls = cell
            @blancs_nuls = nil
          end
        when 8
          # @exprime = cell
          resultat_commune = ResultatCommune.create!(
            commune_id: @commune_id,
            scrutin_id: @scrutin_id,
            inscrit: @inscrit,
            abstention: @abstention,
            votant: @votant,
            blancs: @blancs,
            nuls: @nuls,
            blancs_nuls: @blancs_nuls,
            exprime: cell
          )
          @resultat_commune_id = resultat_commune.id
        end

        # Récupère les scores des candidats
        if @col_count > 8
          @count += 1
          case @count
          when 1
            if cell.nil?
              @count = 0
              break
            else
              next
            end
          when 2
            @nom_candidat = cell.capitalize
          when 3
            nom_complet_candidat = "#{cell.capitalize} #{@nom_candidat}"
            if Candidat.find_by(nom: nom_complet_candidat).nil?
              @candidat = Candidat.create!(nom: nom_complet_candidat, formation_politique_id: nil)
            else
              @candidat = Candidat.find_by(nom: nom_complet_candidat)
            end
            @candidat_id = @candidat.id
          when 4
            # @score_candidat = cell
            ResultatCandidat.create!(
              resultat_commune_id: @resultat_commune_id,
              candidat_id: @candidat_id,
              score_candidat: cell
            )
            @count = 0
          end
        end
      end
    end
  end
end


# puts 'Creating Scrutin'
# ------- PRESIDENTIELLES -------
# ------ 2022 ------
# ----- T1 -----
# puts 'creating pdt 2022 T1'
# resultats_brut = SimpleXlsxReader.open '/Users/lazareboddaert/code/LazareBoddaert/projets-perso/resultats-elections-data/presidentielles/2022/t1/presidentielle-2022-T1-par-commune.xlsx'
# recuperation_donnees_resultats(resultats_brut)

# ----- T2 -----
# puts 'creating pdt 2022 T2'
# resultats_brut = SimpleXlsxReader.open '/Users/lazareboddaert/code/LazareBoddaert/projets-perso/resultats-elections-data/presidentielles/2022/t2/presidentielle-2022-T2-par-commune.xlsx'
# recuperation_donnees_resultats(resultats_brut)

# ------ 2017 ------
# ----- T1 -----
puts 'creating pdt 2017 T1'
resultats_brut = SimpleXlsxReader.open '/Users/lazareboddaert/code/LazareBoddaert/projets-perso/resultats-elections-data/presidentielles/2017/t1/pdt-2017-t1-communes.xlsx'
recuperation_donnees_resultats(resultats_brut)

# ----- T2 -----
# puts 'creating pdt 2017 T2'
# resultats_brut = SimpleXlsxReader.open '/Users/lazareboddaert/code/LazareBoddaert/projets-perso/resultats-elections-data/presidentielles/2022/t2/presidentielle-2022-T2-par-commune.xlsx'
# recuperation_donnees_resultats(resultats_brut)



# ---------- TEST ----------

# p "---TEST---"

# resultats_test = SimpleXlsxReader.open '/Users/lazareboddaert/code/LazareBoddaert/projets-perso/resultats-elections-data/TEST-resultats-elections.xlsx'
# recuperation_donnees_resultats(resultats_test)

# ---------- FIN TEST ----------


# ---------- PROBLEME NOM COMMUNE ----------
#
# Pianottoli-Caldarello // Pianotolli-Caldarello // creuse
# La Mazière-aux-Bons-Hommes // La Mazière-aux-Bonshommes // creuse
# Saint-Julien-Innocence-Eulalie // Saint-Julien-Innocence Eulalie // Dordogne
# La Bâtie-des-Fonds // La Bâtie-des-Fonts // drôme
# Moutoux // Moutoux (Le) // jura
# Rix // Rix-Trebief // jura
# Larrivière-Saint-Savin // Larrivière // Landes
# Courcelles-le-Roi // Courcelles // Loiret
# Ferrières-en-Gâtinais // Ferrières // Loiret
# Breuil-sur-Vesle // Breuil (!! pas Le Breuil !!) // Marne
# Arrancy-sur-Crusnes // Arrancy-sur-Crusne // Meurthe-et-Moselle
# Cléry-le-Grand // Cléry-Grand // Meuse
# Cléry-le-Petit // Cléry-Petit // Meuse
# Ile-d'Houat // Ile- d'Houat // Morbihan
# Saint-Loup-des-Bois // Saint-Loup // Nièvre
# Aix-en-Pévèle // Aix // Nord
# Braisnes-sur-Aronde // Braisnes // Oise
# Pronville-en-Artois // Pronville // Pas-de-Calais
# Saint-Girons-en-Béarn // Saint-Girons // Pyrénées-Atlantiques
# Feilluns // Felluns // Pyrénées-Orientales
# Chessy // Chessy-les-Mines // Rhône
# Le Rousset-Marizy // Le Rousset - Marizy // Saône-et-Loire
# Amné // Amné-en-Champagne // Sarthe
# Douillet // Douillet-le-Joly // Sarthe
# Fillé // Fillé-sur-Sarthe // Sarthe
# Rouez // Rouez-en-Champagne // Sarthe
# Saint Paterne - Le Chevain // Saint Paterne-Le Chevain // Sarthe
# Fraissines // Frayssines // Tarn
# Étaule // Etaules // Yonne
# Limours // Limours en Hurepoix // Essonne
# Roinville // Roinville-sous-Dourdan // Essonne
# Périgny // Périgny-sur-Yerres // Val de Marne
# Hérouville-en-Vexin // Hérouville // Val d'Oise
