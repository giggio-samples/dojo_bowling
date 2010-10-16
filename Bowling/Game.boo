namespace Bowling

import System

class Game:
	
	public def Hit(p as int):
	
		SetScore(p)

		SetPreviousRoundPoint(p)
		SetStrike(p)
		SetFirstHitForNextRound()

	def SetScore(p as int):
		if HasSpare() or HasStrike:
			_score += p*2
		else:
			_score += p

	def SetStrike(p as int):
		_hasStrike = true if _firstHit and p == 10
		
	def SetPreviousRoundPoint(p as int):
		if _firstHit:
			_previousRoundPoints = p
		else:
			_previousRoundPoints += p

	def SetFirstHitForNextRound():
		_firstHit = not _firstHit if not HasStrike
		
	def HasSpare():
		return _previousRoundPoints==10 and _firstHit

	[getter(Score)]
	_score as int
	_firstHit as bool = true
	[getter(HasStrike)]
	_hasStrike as bool = false
	_previousRoundPoints as int
	

