sealed class ActivityType {
    object Movies : ActivityType() {
        override fun toString() = Movies::class.simpleName!!
    }
    data class Gaming(
        val name: String,
        val singlePlayer: Boolean,
        val multiPlayer: Boolean) : ActivityType()
}

data class Activity(
    val type: ActivityType,
    val iWant: Boolean,
    val vikaWants: Boolean,
    val weight: Double = 1.0)

enum class Mode(val flag: String) {
   BOTH_WANT("both")
}

val myGames = listOf(
    Activity(ActivityType.Gaming("Witcher 2", true, false), true, false),
    Activity(ActivityType.Gaming("Worms W.M.D.", true, true), true, true),
    Activity(ActivityType.Gaming("AR Games", true, false), true, false),
    Activity(ActivityType.Gaming("Steins;Gate VN", true, false), true, false)
)

fun createTwoPlayerOnlyGame(name: String) = ActivityType.Gaming(name, false, true) 

val allGames = myGames + listOf(
    Activity(createTwoPlayerOnlyGame("Mario 3"), true, false),
    Activity(createTwoPlayerOnlyGame("Keep Talking and Nobody Explodes"), true, false),
    Activity(createTwoPlayerOnlyGame("Overcooked"), true, true),
    //Activity(createTwoPlayerOnlyGame("Overcooked 2"), true, true),
    Activity(createTwoPlayerOnlyGame("New Mario"), true, true),
    Activity(createTwoPlayerOnlyGame("New Luigi"), true, false),
    Activity(createTwoPlayerOnlyGame("Super Mario Party"), true, true),
    Activity(createTwoPlayerOnlyGame("Minecraft"), false, true),
    Activity(createTwoPlayerOnlyGame("Pokken Tournament DX"), true, true),
    Activity(createTwoPlayerOnlyGame("MtG"), false, true),
    Activity(createTwoPlayerOnlyGame("Carcassonne medieval"), false, true),
    Activity(createTwoPlayerOnlyGame("Carcassonne prehistoric"), false, true),
    Activity(createTwoPlayerOnlyGame("Dominion"), false, true)
)
val gamesWeight = allGames.map { it.weight } .sum()
val activities = allGames + listOf(
    Activity(ActivityType.Movies, true, true, gamesWeight / 3)
)