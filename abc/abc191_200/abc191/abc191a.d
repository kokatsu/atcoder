import std;

void main() {
    int V, T, S, D;
    readf("%d %d %d %d\n", V, T, S, D);

    int L = V * T, R = V * S;

    bool isOK = D < L || R < D;
    writeln(isOK ? "Yes" : "No");
}
