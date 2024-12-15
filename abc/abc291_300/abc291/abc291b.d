import std;

void main() {
    int N;
    readf("%d\n", N);

    auto X = readln.chomp.split.to!(int[]);

    X.sort;

    real res = 0.0;
    foreach (i; N .. N * 4) {
        res += X[i].to!real;
    }

    res /= N * 3.0;

    writefln("%.10f", res);
}
