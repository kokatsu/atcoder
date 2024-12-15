import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    if (A.canFind(0)) {
        writeln(0);
        return;
    }

    long res = 1, lim = 10L ^^ 18;
    foreach (a; A) {
        if (lim / res < a) {
            res = -1;
            break;
        }

        res *= a;
    }

    res.writeln;
}
