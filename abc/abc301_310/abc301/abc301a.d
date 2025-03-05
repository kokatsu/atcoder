import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    auto T = S.count('T');

    dchar res;
    if (T * 2 == N) {
        res = S[N - 1] == 'A' ? 'T' : 'A';
    }
    else {
        res = T * 2 > N ? 'T' : 'A';
    }

    res.writeln;
}
