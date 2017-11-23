import unittest
from cake import Cake

class TestCake(unittest.TestCase):

    def setUp(self):
        ingredients = ["sugar", "flour", "chocolate"]
        self.cake = Cake("Brownie", ingredients, 5)

    def test_cake_has_name(self):
        self.assertEquals("Brownie", self.cake.name)

unittest.main()
