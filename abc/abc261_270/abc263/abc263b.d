import std;

void main() {
    int N;
    readf("%d\n", N);

    auto P = readln.chomp.split.to!(int[]);

    int res, pos = N;
    while (pos > 1) {
        pos = P[pos-2];
        ++res;
    }

    res.writeln;
}