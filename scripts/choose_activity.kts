val GAMING = "gaming"
val ACTIVITIES = List(3) { GAMING } + List(1) { "movies" }
val COMMON_VIDEOGAMES = listOf(
    "Mario 3",
    "Keep Talking and Nobody Explodes",
    "Overcooked",
    "New Mario",
    "New Luigi",
    "Super Mario Party",
    "Minecraft",
    "Pokken Tournament DX",
    "Just Dance"
)

// Also contains games in progress with both single and multiplayer.
val MY_VIDEOGAMES = listOf(
    "Mario Kart DS",
    //"Witcher 2",
    "Mario Kart 8",
    "Worms W.M.D"
)

val TABLETOP_GAMES = listOf(
    "MtG",
    "Carcassonne",
    "Dominion"
)
val ALL_GAMES = COMMON_VIDEOGAMES + MY_VIDEOGAMES + TABLETOP_GAMES

val activity = ACTIVITIES.random()
println(activity)
if (activity == GAMING) {
    println(ALL_GAMES.random())
}