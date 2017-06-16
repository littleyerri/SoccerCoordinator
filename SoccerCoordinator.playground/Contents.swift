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
 Logic to sort players into team colletions by experience,
 while adding Team name and Practice time to each player.
 --------------------------------------------------------------------------------
*/

// Experienced Players Logic

var experienceCounter = 0

for (var player) in experiencedPlayers {
    experienceCounter += 1
    
    var remainder = experienceCounter % 3
    
    switch remainder {
    case 1:
        player["Team"] = "Sharks"
        player["Practice"] = "March 17th at 3pm"
        
        teamSharks.append(player)
    case 2:
        player["Team"] = "Dragons"
        player["Practice"] = "March 17th at 1pm"
        
        teamDragons.append(player)
    case 0:
        player["Team"] = "Raptors"
        player["Practice"] = "March 18th at 1pm"
        
        teamRaptors.append(player)
    default:
        break
    }
}

// Inexperienced Players Logic

var inexperienceCounter = 0

for (var player) in inexperiencedPlayers {
    inexperienceCounter += 1
    
    var remainder = inexperienceCounter % 3
    
    switch remainder {
    case 1:
        player["Team"] = "Sharks"
        player["Practice"] = "March 17th at 3pm"
        
        teamSharks.append(player)
    case 2:
        player["Team"] = "Dragons"
        player["Practice"] = "March 17th at 1pm"
        
        teamDragons.append(player)
    case 0:
        player["Team"] = "Raptors"
        player["Practice"] = "March 18th at 1pm"
        
        teamRaptors.append(player)
    default:
        break
    }
}

/*
 --------------------------------------------------------------------------------
 Collection to hold individual letters.
 --------------------------------------------------------------------------------
*/

var letters: [String] = []

/*
 --------------------------------------------------------------------------------
 Logic to create/print letters to parents/guardians by team.
 --------------------------------------------------------------------------------
*/

// Create function to set up letter content.

func printLetter(player: [String: String]) -> String {
    return "Hello \(player["Guardian"]!),\n\n" + "Your child \(player["Name"]!), is joining the \(player["Team"]!) team. Their first practice is on \(player["Practice"]!).\n\n" + "During practice, I would like to have at least one adult participate whenever I can work them in.\n" + "You don’t need gear, just appropriate shoes and clothes.\n\n" + "Please do not forget your child’s gear!\n\n" + "Thanks!\n\n" + "Gerardo Zayas\n" + "Youth Soccer League Coordinator\n\n"
}

// Sharks Letters

for player in teamSharks {
    letters.append(printLetter(player: player))
}

// Dragons Letters

for player in teamDragons {
    letters.append(printLetter(player: player))
}

// Dragons Letters

for player in teamRaptors {
    letters.append(printLetter(player: player))
}

/*
 --------------------------------------------------------------------------------
 Print letters and players.
 --------------------------------------------------------------------------------
*/

for letter in letters {
    print(letter)
}

for player in teamSharks {
    print(player)
}

for player in teamDragons {
    print(player)
}

for player in teamRaptors {
    print(player)
}
