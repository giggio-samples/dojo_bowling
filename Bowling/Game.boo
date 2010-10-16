namespace Bowling

import System

class Game:
		
	[getter(Score)]
	_score as int

	_firstHit as bool = true

	[getter(HasStrike)]
	_hasStrike as bool = false

	[getter(HasSpare)]
	_hasSpare as bool = false

	_previousRoundPoints as int

	public def Hit(p as int):
		SetScore(p)
		PrepareNextRound(p)


	def SetScore(p as int):
		if HasSpare or HasStrike:
			_score += p*2			
		else:
			_score += p	

	def PrepareNextRound(p as int): 
		SetPreviousRoundPoint(p)
		SetStrikeForNextRound(p)
		SetSpareForNextRound()
		SetFirstHitForNextRound()
		
	def SetPreviousRoundPoint(p as int):
		if _firstHit:
			_previousRoundPoints = p
		else:
			_previousRoundPoints += p

	def SetStrikeForNextRound(p as int):
		if _firstHit and p == 10:
			_hasStrike = true 
		else: 
			if not _firstHit:
				_hasStrike = false
		
	def SetFirstHitForNextRound():
		if HasStrike:
			_firstHit = _previousRoundPoints == 10
		else:
			_firstHit = not _firstHit 

	def SetSpareForNextRound():
		if not _firstHit and _previousRoundPoints == 10:
			_hasSpare = true 
			_hasStrike = false
		else:
			if _firstHit:
				_hasSpare = false
				


	

