import std;

void main() {
    int N;
    readfln("%d", N);

    string S;
    readfln("%s", S);

    size_t L = S.length;

    string res = "o".replicate(N - L) ~ S;
    res.writeln;
}
