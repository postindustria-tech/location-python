import os
import unittest

class LocationExampleTests(unittest.TestCase):
    def test_cloud_getting_started(self):
        if "resource_key" in os.environ:    
            import examples.cloud.gettingstarted