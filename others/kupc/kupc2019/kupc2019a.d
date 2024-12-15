import std;

void main() {
    int N, X;
    readf("%d %d\n", N, X);

    auto a = readln.chomp.split.to!(int[]);

    int mx = a.maxElement;

    int res;
    foreach (u; a) {
        if (u + X >= mx)
            ++res;
    }

    res.writeln;
}
