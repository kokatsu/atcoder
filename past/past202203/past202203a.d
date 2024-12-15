import std;

void main() {
    auto A = readln.chomp.split.to!(int[]);

    int X = int.max, Y = int.min;
    foreach (p; A.permutations) {
        int M = p[0] * p[1];
        X = X.min(M), Y = Y.max(M);
    }

    writeln(X, " ", Y);
}
