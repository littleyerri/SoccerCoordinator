// Project 1 - Soccer League Coordinator

/*
 --------------------------------------------------------------------------------
    Individual Dictionary Collections holding data for each player.
 --------------------------------------------------------------------------------
 */

let player1:  [String: String] = ["Name": "Joe Smith",
                                  "Height": "42",
                                  "Experience": "true",
                                  "Guardian": "Jim and Jan Smith"]
let player2:  [String: String] = ["Name": "Jill Tanner",
                                  "Height": "36",
                                  "Experience": "true",
                                  "Guardian": "Clara Tanner"]
let player3:  [String: String] = ["Name": "Bill Bon",
                                  "Height": "43",
                                  "Experience": "true",
                                  "Guardian": "Sara and Jenny Bon"]
let player4:  [String: String] = ["Name": "Eva Gordon",
                                  "Height": "45",
                                  "Experience": "false",
                                  "Guardian": "Wendy and Mike Gordon"]
let player5:  [String: String] = ["Name": "Matt Gill",
                                  "Height": "40",
                                  "Experience": "false",
                                  "Guardian": "Charles and Sylvia Gill"]
let player6:  [String: String] = ["Name": "Kimmy Stein",
                                  "Height": "41",
                                  "Experience": "false",
                                  "Guardian": "Bill and Hillary Stein"]
let player7:  [String: String] = ["Name": "Sammy Adams",
                                  "Height": "45",
                                  "Experience": "false",
                                  "Guardian": "Jeff Adams"]
let player8:  [String: String] = ["Name": "Karl Saygan",
                                  "Height": "42",
                                  "Experience": "true",
                                  "Guardian": "Heather Bledsoe"]
let player9:  [String: String] = ["Name": "Suzane Greenberg",
                                  "Height": "44",
                                  "Experience": "true",
                                  "Guardian": "Henrietta Dumas"]
let player10: [String: String] = ["Name": "Sal Dali",
                                  "Height": "41",
                                  "Experience": "false",
                                  "Guardian": "Gala Dali"]
let player11: [String: String] = ["Name": "Joe Kavalier",
                                  "Height": "39",
                                  "Experience": "false",
                                  "Guardian": "Sam and Elaine Kavalier"]
let player12: [String: String] = ["Name": "Ben Finkelstein",
                                  "Height": "44",
                                  "Experience": "false",
                                  "Guardian": "Aaron and Jill Finkelstein"]
let player13: [String: String] = ["Name": "Diego Soto",
                                  "Height": "41",
                                  "Experience": "true",
                                  "Guardian": "Robin and Sarika Soto"]
let player14: [String: String] = ["Name": "Chloe Alaska",
                                  "Height": "47",
                                  "Experience": "false",
                                  "Guardian": "David and Jamie Alaska"]
let player15: [String: String] = ["Name": "Arnold Willis",
                                  "Height": "43",
                                  "Experience": "false",
                                  "Guardian": "Claire Willis"]
let player16: [String: String] = ["Name": "Phillip Helm",
                                  "Height": "44",
                                  "Experience": "true",
                                  "Guardian": "Thomas Helm and Eva Jones"]
let player17: [String: String] = ["Name": "Les Clay",
                                  "Height": "42",
                                  "Experience": "true",
                                  "Guardian": "Wynonna Brown"]
let player18: [String: String] = ["Name": "Herschel Krustofski",
                                  "Height": "45",
                                  "Experience": "true",
                                  "Guardian": "Hyman and Rachel Krustofski"]

/*
 --------------------------------------------------------------------------------
    Individual player Dictionaries collected into a single array.
 --------------------------------------------------------------------------------
 */

var players = [player1, player2, player3, player4, player5, player6,
               player7, player8, player9, player10, player11, player12,
               player13, player14, player15, player16, player17, player18]

/*
 --------------------------------------------------------------------------------
    Individual collections for holding players into 3 separate teams.
 --------------------------------------------------------------------------------
 */

var teamSharks:  [[String: String]] = []
var teamDragons: [[String: String]] = []
var teamRaptors: [[String: String]] = []

/*
 --------------------------------------------------------------------------------
    Individual collection to hold the 3 teams.
 --------------------------------------------------------------------------------
 */

let teams = [teamSharks, teamDragons, teamRaptors]

/*
 --------------------------------------------------------------------------------
    Collections to hold players based on experience.
 --------------------------------------------------------------------------------
 */

var experiencedPlayers:   [[String: String]] = []
var inexperiencedPlayers: [[String: String]] = []

/*
 --------------------------------------------------------------------------------
    Logic to sort players into collections by experience.
 --------------------------------------------------------------------------------
 */

for player in players {
    for (key,value) in player {
        if (value == "true") {
            experiencedPlayers.append(player)
        } else if (value == "false"){
            inexperiencedPlayers.append(player)
        }
    }
}

/*
 --------------------------------------------------------------------------------
    Variables to hold count of experienced and inexperienced players.
 --------------------------------------------------------------------------------
 */

var experiencedPlayerCounter   = experiencedPlayers.count
var inexperiencedPlayerCounter = inexperiencedPlayers.count

/*
 --------------------------------------------------------------------------------
    Logic to sort players into team colletions by experience.
 --------------------------------------------------------------------------------
 */

for team in teams {
    if (experiencedPlayerCounter > 0) {
        teamSharks.append(experiencedPlayers.removeFirst())
        experiencedPlayerCounter -= 1
        teamDragons.append(experiencedPlayers.removeFirst())
        experiencedPlayerCounter -= 1
        teamRaptors.append(experiencedPlayers.removeFirst())
        experiencedPlayerCounter -= 1
    }
    
    if (inexperiencedPlayerCounter > 0) {
        teamSharks.append(inexperiencedPlayers.removeFirst())
        inexperiencedPlayerCounter -= 1
        teamDragons.append(inexperiencedPlayers.removeFirst())
        inexperiencedPlayerCounter -= 1
        teamRaptors.append(inexperiencedPlayers.removeFirst())
        inexperiencedPlayerCounter -= 1
    }
}

/*
 --------------------------------------------------------------------------------
    Collection to hold individual letters.
 --------------------------------------------------------------------------------
 */

var letters: Array! = []

/*
 --------------------------------------------------------------------------------
    Logic to create/print letters to parents/guardians by team.
 --------------------------------------------------------------------------------
 */

// Sharks letter

for player in teamSharks {
    let sharksLetter: String = "Hello \(player["Guardian"]!),\n\nYour child \(player["Name"]!), is joining the Sharks team. Their first practice is on March 17th at 3pm.\n\nDuring practice, I would like to have at least one adult participate whenever I can work them in.\nYou don’t need gear, just appropriate shoes and clothes.\n\nPlease do not forget your child’s gear!\n\nThanks!\n\nGerardo Zayas\nYouth Soccer League Coordinator\n\n\n"
    letters.append(sharksLetter)
}

// Dragons letter

for player in teamDragons {
    let dragonsLetter: String = "Hello \(player["Guardian"]!),\n\nYour child \(player["Name"]!), is joining the Dragons team. Their first practice is on March 17th at 1pm.\n\nDuring practice, I would like to have at least one adult participate whenever I can work them in.\nYou don’t need gear, just appropriate shoes and clothes.\n\nPlease do not forget your child’s gear!\n\nThanks!\n\nGerardo Zayas\nYouth Soccer League Coordinator\n\n\n"
    letters.append(dragonsLetter)
}

// Raptors letter

for player in teamRaptors {
    let raptorsLetter: String = "Hello \(player["Guardian"]!),\n\nYour child \(player["Name"]!), is joining the Raptors team. Their first practice is on March 18th at 1pm.\n\nDuring practice, I would like to have at least one adult participate whenever I can work them in.\nYou don’t need gear, just appropriate shoes and clothes.\n\nPlease do not forget your child’s gear!\n\nThanks!\n\nGerardo Zayas\nYouth Soccer League Coordinator\n\n\n"
    letters.append(raptorsLetter)
}

/*
 --------------------------------------------------------------------------------
    Print letters.
 --------------------------------------------------------------------------------
 */

for letter in letters {
    print(letter)
}




