import kotlin.system.exitProcess

val gamesBothWant = listOf(
    "Overcooked 2",
    "New Mario",
    "Minecraft",
    "MtG",
    "Super Mario Party",
    "Monopoly",
    "Mario 3",
    "Worms W.M.D."
)

val gamesIWant = listOf(
    "Keep Talking and Nobody Explodes",
    "New Luigi"
)

val gamesVikaWants = listOf(
    "Carcassonne medieval",
    "Carcassonne prehistoric",
    "Pokken Tournament DX",
    "Dominion",
    "Overcooked"
)

var games = gamesBothWant
if (args.size == 1 && args[0] == "-all") {
    games += gamesIWant + gamesVikaWants
} else if (args.size != 0) {
    println("Wrong args.")
    exitProcess(1)
}
val game = games.random()
println(if ((0..3).random() == 0) "tv" else game)
