import std;

void main() {
    int N, M, C;
    readf("%d %d %d\n", N, M, C);

    auto B = readln.chomp.split.to!(int[]);

    int res;
    foreach (_; 0 .. N) {
        auto A = readln.chomp.split.to!(int[]);

        int num = C;
        foreach (a, b; zip(A, B)) {
            num += a * b;
        }

        if (num > 0)
            ++res;
    }

    res.writeln;
}
