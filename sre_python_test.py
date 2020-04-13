from sre_python_def import hex_to_rgb
import pytest

@pytest.mark.parametrize('x, result', [
    ('#FFFFFF', (255, 255, 255)),
    ('#C0C0C0', (192, 192, 192))
])
def test(x, result):
    assert hex_to_rgb(x) == result
