namespace Bowling.Tests

import System
import NUnit.Framework
import Bowling

[TestFixture]
public class BowlingTest:
	[Test]
	public def Hit1():
		game = Game()
		game.Hit(1)
		Assert.AreEqual (1, game.Score)

	[Test]
	public def Hit2():
		game = Game()
		game.Hit(2)
		Assert.AreEqual (2, game.Score)

	[Test]
	public def Hit2And3():
		game = Game()
		game.Hit(2)
		game.Hit(3)
		Assert.AreEqual (5, game.Score)


	[Test]
	public def Hit2And3And5():
		game = Game()
		game.Hit(2)
		game.Hit(3)
		game.Hit(5)
		Assert.AreEqual (10, game.Score)


	[Test]
	public def HitSpareAnd5():
		game = Game()
		game.Hit(1)
		game.Hit(9)

		game.Hit(5)

		Assert.AreEqual (20, game.Score)	
	[Test]
	public def HitSpareAnd5And2():
		game = Game()
		game.Hit(1)
		game.Hit(9)

		game.Hit(5)
		game.Hit(2)

		Assert.AreEqual (22, game.Score)

	[Test]
	public def HitStrikeAnd1And2And3And4():
		game = Game()
		game.Hit(10)

		game.Hit(1)
		game.Hit(2)

		game.Hit(3)
		game.Hit(4)

		Assert.AreEqual (23, game.Score)

	[Test]
	public def HitSpareAndSpare():
		game = Game()
		game.Hit(5)
		game.Hit(5)

		game.Hit(5)
		game.Hit(5)

		Assert.AreEqual (25, game.Score)
		
	[Test]
	public def HitSpareAndSpareAnd5():
		game = Game()
		game.Hit(5)
		game.Hit(5)

		game.Hit(5)
		game.Hit(5)
		game.Hit(5)

		Assert.AreEqual (35, game.Score)

	[Test]
	public def HitStrikeAnd5():
		game = Game()
		game.Hit(10)
		game.Hit(5)
		

		Assert.AreEqual (20, game.Score)
	
	[Test]
	public def HitStrikeAnd5And3():
		game = Game()
		game.Hit(10)
		game.Hit(5)
		game.Hit(3)
		

		Assert.AreEqual (26, game.Score)


	[Test]
	public def HitStrikeAndStrike():
		game = Game()
		game.Hit(10)
		game.Hit(10)
		

		Assert.AreEqual (30, game.Score)

	[Test]
	public def HitStrikeAndStrikeAnd5():
		game = Game()
		game.Hit(10)
		game.Hit(10)
		game.Hit(5)

		Assert.AreEqual (40, game.Score)

	[Test]
	public def HitStrikeAndSpareAnd5():
		game = Game()
		game.Hit(10)
		game.Hit(1)
		game.Hit(9)
		game.Hit(5)

		Assert.AreEqual (40, game.Score)


	[Test]
	public def HitStrikeAndSpareAnd5And2():
		game = Game()
		game.Hit(10)

		game.Hit(1)
		game.Hit(9)

		game.Hit(5)
		game.Hit(2)

		Assert.AreEqual (42, game.Score)

