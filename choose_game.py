#!/usr/bin/env python3
import random

GAMING = "gaming"
ACTIVITIES = [GAMING] * 3 + ["movies"] * 1

# Games
COMMON_VIDEOGAMES = [
    "Mario 3",
    "Keep Talking and Nobody Explodes",
    "Overcooked",
    "New Mario",
    "New Luigi",
    "Super Mario Party",
    "Minecraft",
    "Mario Kart 8",
    "Worms W.M.D"
]
MY_VIDEOGAMES = [
    # "Witcher 2"
    "Mario Kart DS"
]
TABLETOP_GAMES = [
    "MtG",
    "Carcassonne",
    "Dominion"
]

activities = ACTIVITIES
random.shuffle(activities)
activity = activities[0]
print(activity)
if activity == GAMING:
    all_games = COMMON_VIDEOGAMES + MY_VIDEOGAMES + TABLETOP_GAMES
    random.shuffle(all_games)
    print(all_games[0])