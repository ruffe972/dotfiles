import kotlin.system.exitProcess

val gamesBothWant = listOf(
    "Overcooked",
    "Overcooked 2",
    "New Mario",
    "Pokken Tournament DX"
)

val gamesIWant = listOf(
    "Mario 3",
    "Keep Talking and Nobody Explodes",
    "New Luigi"
)

val gamesVikaWants = listOf(
    "Super Mario Party",
    "MtG",
    "Carcassonne medieval",
    "Carcassonne prehistoric",
    "Dominion"
)

var games = gamesBothWant
if (args.size == 1 && args[0] == "-all") {
    games += gamesIWant + gamesVikaWants
} else if (args.size != 0) {
    println("Wrong args.")
    exitProcess(1)
}
val game = games.random()
println(if ((0..3).random() == 0) "movies" else game)