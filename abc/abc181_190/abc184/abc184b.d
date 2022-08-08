import std;

void main() {
    int N, X;
    readf("%d %d\n", N, X);

    auto S = readln.chomp;

    int res = X;
    foreach (s; S) {
        if (s == 'o') ++res;
        else if (res > 0) --res;
    }

    res.writeln;
}