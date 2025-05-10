import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(int[]);

    auto C = new int[](M + 1);
    foreach (a; A) {
        ++C[a];
    }

    int res;
    if (C[1 .. $].minElement > 0) {
        foreach_reverse (a; A) {
            --C[a];
            ++res;

            if (C[a] == 0) {
                break;
            }
        }
    }

    res.writeln;
}
