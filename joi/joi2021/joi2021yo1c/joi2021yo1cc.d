import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(int[]);
    auto B = readln.chomp.split.to!(int[]);

    auto C = B.sort;

    size_t res;
    foreach (a; A) {
        res += C.upperBound(a - 1).length;
    }

    res.writeln;
}
