from django.db import models
from .game import Game
from .gamer import Gamer

class Event(models.Model):
    game = models.ForeignKey(Game, on_delete=models.CASCADE)
    organizer = models.ForeignKey(Gamer, on_delete=models.CASCADE)
    date = models.DateField()
    description = models.CharField(max_length=155)
    time = models.TimeField()