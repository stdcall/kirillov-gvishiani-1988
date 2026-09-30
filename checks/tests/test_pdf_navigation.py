"""Bookmark page starts, interior headings and inherited zoom."""
from io import BytesIO
from pathlib import Path
import sys
import unittest

from pypdf import PdfReader, PdfWriter
from pypdf.generic import Fit, NullObject

sys.path.insert(0, str(Path(__file__).resolve().parents[2] / 'scripts'))
from build import normalize_outline_destinations  # noqa: E402


class OutlineNavigation(unittest.TestCase):
    def test_page_start_and_nested_heading(self):
        initial = PdfWriter()
        initial.add_blank_page(width=420, height=620)
        initial.add_blank_page(width=420, height=620)
        part = initial.add_outline_item(
            'Part', 0, fit=Fit.xyz(left=20, top=582, zoom=1))
        parent = initial.add_outline_item(
            'Chapter', 0, parent=part,
            fit=Fit.xyz(left=20, top=530, zoom=1))
        initial.add_outline_item('Paragraph', 0, parent=parent,
                                 fit=Fit.xyz(left=20, top=330, zoom=2))
        initial.add_outline_item('Next chapter', 1,
                                 fit=Fit.xyz(left=20, top=582, zoom=1))
        source = BytesIO()
        initial.write(source)
        source.seek(0)
        reader = PdfReader(source)
        writer = PdfWriter(reader, incremental=True)
        headings = [
            {'level': 1, 'position': {'page': 1, 'y': '48pt'}},
            {'level': 2, 'position': {'page': 1, 'y': '100pt'}},
            {'level': 3, 'position': {'page': 1, 'y': '300pt'}},
            {'level': 2, 'position': {'page': 2, 'y': '48pt'}},
        ]
        self.assertEqual(normalize_outline_destinations(
            writer, reader, headings=headings), 4)
        output = BytesIO()
        writer.write(output)
        output.seek(0)
        checked = PdfReader(output)
        items = [checked.outline[0], checked.outline[1][0],
                 checked.outline[1][1][0],
                 checked.outline[2]]
        self.assertEqual([float(x.dest_array[3]) for x in items],
                         [620, 620, 330, 620])
        for item in items:
            self.assertEqual(str(item.dest_array[1]), '/XYZ')
            self.assertEqual(float(item.dest_array[2]), 0)
            self.assertIsInstance(item.dest_array[4], NullObject)


if __name__ == '__main__':
    unittest.main()
