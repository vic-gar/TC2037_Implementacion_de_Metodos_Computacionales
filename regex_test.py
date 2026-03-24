import unittest
#Cargamos el codigo de nuestro regex
from regex import test_regex

# Importamos la función para hacer los tests
class TestRegex(unittest.TestCase):
    def test_valid(self):
        self.assertTrue(test_regex('ab'))
        self.assertTrue(test_regex('cab'))
        self.assertTrue(test_regex('abc'))
        self.assertTrue(test_regex('aab'))
        self.assertTrue(test_regex('abab'))
        self.assertTrue(test_regex('cabab'))
        self.assertTrue(test_regex('abca'))
        self.assertTrue(test_regex('caab'))
        self.assertTrue(test_regex('acbab'))
        self.assertTrue(test_regex('ccabac'))

    #Inválidas por 'bbb', 'ccaa', no usar 'ab' o no usar {a, b, c}
    def test_invalid(self):
        self.assertFalse(test_regex(''))
        self.assertFalse(test_regex('a'))
        self.assertFalse(test_regex('b'))
        self.assertFalse(test_regex('c'))
        self.assertFalse(test_regex('aaa'))
        self.assertFalse(test_regex('bbb'))
        self.assertFalse(test_regex('ccaa'))
        self.assertFalse(test_regex('acbc'))
        self.assertFalse(test_regex('abbb'))
        self.assertFalse(test_regex('ccaaab'))

if __name__ == '__main__':
    unittest.main()