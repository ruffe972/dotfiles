val GAMING = "gaming"
val ACTIVITIES = List(3) { GAMING } + List(1) { "movies" }
val MULTIPLAYER_VIDEOGAMES = listOf(
    "Mario 3",
    // "Keep Talking and Nobody Explodes",
    "Overcooked",
    // "Overcooked 2",
    "New Mario",
    "New Luigi",
    "Super Mario Party",
    "Minecraft",
    "Pokken Tournament DX"
)
val SINGLE_AND_MULTIPLAYER_VIDEOGAMES = listOf(
    //"Witcher 2",
    "Mario Kart 8",
    "Worms W.M.D"
)
val TABLETOP_GAMES = listOf(
    "MtG",
    "Carcassonne",
    "Dominion"
)
val ALL_GAMES = MULTIPLAYER_VIDEOGAMES + SINGLE_AND_MULTIPLAYER_VIDEOGAMES + TABLETOP_GAMES

val activity = ACTIVITIES.random()
println(activity)
if (activity == GAMING) {
    println(ALL_GAMES.random())
}