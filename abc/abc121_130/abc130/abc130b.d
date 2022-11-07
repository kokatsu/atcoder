import std;

void main() {
    int N, X;
    readf("%d %d\n", N, X);

    auto L = readln.chomp.split.to!(int[]);

    int res = 1, D;
    foreach (l; L) {
        D += l;

        if (D <= X) ++res;
        else break;
    }

    res.writeln;
}