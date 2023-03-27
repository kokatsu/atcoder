import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(int[]);
    auto B = readln.chomp.split.to!(int[]);
    auto C = readln.chomp.split.to!(int[]);
    auto D = readln.chomp.split.to!(int[]);

    bool[int] X, Y;
    foreach (a, c; zip(A, C)) {
        foreach (b, d; zip(B, D)) {
            X[a+b] = true;
            Y[c+d] = true;
        }
    }

    bool isOK;
    foreach (x; X.byKey) {
        if (K - x in Y) {
            isOK = true;
        }
    }

    writeln(isOK ? "Yes" : "No");
}