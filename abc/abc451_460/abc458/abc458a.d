import std;

void main() {
    string S;
    readfln("%s", S);

    int N;
    readfln("%d", N);

    string res = S[N .. $ - N];
    res.writeln;
}
