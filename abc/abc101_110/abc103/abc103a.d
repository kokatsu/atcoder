import std;

void main() {
    auto A = readln.chomp.split.to!(int[]);

    int res = int.max;
    foreach (a; A.permutations) {
        res = min(res, a.slide(2).map!(x => abs(x[0]-x[1])).sum);
    }

    res.writeln;
}