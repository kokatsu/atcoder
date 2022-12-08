import std;

void main() {
    int N;
    readf("%d\n", N);

    auto X = readln.chomp.split.to!(int[]);

    auto Y = X.dup;
    Y.sort;

    int L = Y[N/2-1], R = Y[N/2];

    foreach (x; X) {
        writeln(x > L ? L : R);
    }
}