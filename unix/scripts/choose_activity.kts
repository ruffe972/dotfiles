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

val game = (gamesBothWant + gamesIWant + gamesVikaWants).random()
println(if ((0..3).random() == 0) "movies" else game)
