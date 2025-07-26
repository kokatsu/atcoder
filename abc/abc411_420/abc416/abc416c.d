import std;

void main() {
    int N, K, X;
    readf("%d %d %d\n", N, K, X);

    string[] S = new string[](N);
    foreach (i; 0 .. N) {
        readf("%s\n", S[i]);
    }

    string[] L;

    void f(int x, string y) {
        if (x == K) {
            L ~= y;
            return;
        }

        foreach (i; 0 .. N) {
            f(x + 1, y ~ S[i]);
        }
    }

    f(0, "");

    L.sort;

    string res = L[X - 1];
    res.writeln;
}
