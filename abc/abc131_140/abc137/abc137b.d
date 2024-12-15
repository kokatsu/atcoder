import std;

void main() {
    int K, X;
    readf("%d %d\n", K, X);

    auto res = iota(X - K + 1, X + K).array;
    writefln("%(%s %)", res);
}
