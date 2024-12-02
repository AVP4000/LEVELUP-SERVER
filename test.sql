SELECT * FROM levelupapi_gametype;

SELECT * FROM levelupapi_gamer;

SELECT * FROM levelupapi_game;

SELECT * FROM levelupapi_event;

db_cursor.execute("""
Insert into levelupapi_game (title, maker, number_of_players, skill_level, gamer_id, game_type_id)
values (?, ?, ?, ?, ?, ?)
""", (request.data["title"], request.data["maker"], request.data["numberOfPlayers"], request.data["skillLevel"], gamer, game_type))
