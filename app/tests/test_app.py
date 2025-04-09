
import unittest
from fastapi.testclient import TestClient
from app.main import app  # Asegúrate de que la ruta sea correcta

class TestFastAPI(unittest.TestCase):
    def setUp(self):
        """Configura el cliente de pruebas"""
        self.client = TestClient(app)

    def test_read_root(self):
        """Verifica que la ruta raíz devuelve el JSON esperado"""
        response = self.client.get("/")
        self.assertEqual(response.status_code, 200, "Status code should be 200")
        self.assertEqual(response.json(), {"Hello": "World"}, "Response JSON should match expected value")

if __name__ == "__main__":
    unittest.main()
