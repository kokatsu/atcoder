import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto S = new bool[][](N, M);
    foreach (i; 0 .. N) {
        string T;
        readf("%s\n", T);

        S[i] = T.map!(t => t == 'o').array;
    }

    int res;
    foreach (i; 0 .. N) {
        foreach (j; i + 1 .. N) {
            if (zip(S[i], S[j]).all!(x => x[0] || x[1])) {
                ++res;
            }
        }
    }

    res.writeln;
}
