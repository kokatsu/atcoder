import std;

void main() {
    int N, K;
    string S;
    readf("%d %d\n%s\n", N, K, S);

    int cnt;
    auto res = new dchar[](N);
    foreach (i, s; S) {
        if (s == 'o' && cnt < K) res[i] = 'o', ++cnt;
        else res[i] = 'x';
    }

    res.writeln;
}