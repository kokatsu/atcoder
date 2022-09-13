import std;

void main() {
    int N;
    readf("%d\n", N);

    auto S = readln.chomp.to!(dchar[]);

    int l;
    while (l < N && S[l] == 'd') ++l;

    auto res = S.dup;
    foreach (r; l+1 .. N+1) {
        auto T = S[l..r].dup;
        T.reverse;
        foreach (ref t; T) {
            t = (t == 'd' ? 'p' : 'd');
        }

        dchar[] tmp = S[0..l] ~ T ~ S[r..N];
        res = min(res, tmp);
    }

    res.writeln;
}