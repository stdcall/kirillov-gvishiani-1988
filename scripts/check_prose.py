"""Advisory Russian prose check; Vale parses Typst through typst2vast."""
import argparse
import json
from pathlib import Path
import subprocess

ROOT = Path(__file__).resolve().parents[1]


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('paths', nargs='*', type=Path,
                        help='Changed prose only; default: the whole book')
    args = parser.parse_args()
    sources = args.paths or sorted((ROOT/'content').rglob('*.typ'))
    result = subprocess.run(
        ['vale', '--config', str(ROOT/'config/vale/.vale.ini'),
         '--output', 'JSON', *map(str, sources)],
        cwd=ROOT, capture_output=True, text=True)
    if 'typst2vast not found' in result.stdout + result.stderr:
        raise SystemExit('Vale requires typst2vast to parse Typst prose.')
    if not result.stdout.strip():
        if result.returncode:
            raise SystemExit(result.stderr or 'Vale did not return a report')
        report = {}
    else:
        report = json.loads(result.stdout)
    count = 0
    for name, findings in report.items():
        for issue in findings:
            count += 1
            print(f'{Path(name).resolve().relative_to(ROOT)}:{issue["Line"]}:'
                  f'{issue["Span"][0]} {issue["Check"]}: {issue["Message"]}')
    print(f'Vale: {count} advisory findings.')


if __name__ == '__main__':
    main()
