import std;

void main() {
    int N, W, K;
    readfln("%d %d %d", N, W, K);

    string res = W / (N - 1) >= K ? "Yes" : "No";
    res.writeln;
}
